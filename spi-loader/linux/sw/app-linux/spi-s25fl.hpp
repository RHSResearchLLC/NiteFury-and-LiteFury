//-----------------------------------------------------------------------------
// Name: spi-s25fl.hpp
// Description: Header file for module to implement spansion S25FL flash routines
//-----------------------------------------------------------------------------
#pragma once

#include "xspi.h"

#include <cstring>
#include <functional>
#include <mutex>
#include <sstream>
#include <vector>

//-------------------------------------------------------------------------------------//
// Typedefs- should be common to all flash parts
//-------------------------------------------------------------------------------------//

struct pgm_status_s
{
   std::string msg;
   double pcnt_cmplt = std::numeric_limits<double>::quiet_NaN();
};

typedef std::function<void(const pgm_status_s& stat)> status_callback_t;

class SPI_S25FL_c
{

public:

   ~SPI_S25FL_c()
   {
      // Clean up
      XSpi_Stop(&mSPI);
      XSpi_Reset(&mSPI);
   }

/**
 * @brief Initialize this object with hardware-specific settings
 * 
 * @param cfg: The configuration structure that describes the hardware 
 */
   void Init(const XSpi_Config& cfg)
   {
      std::lock_guard<decltype(mMutex)> lock(mMutex);

      // Store settings
      mCfg = cfg;

      int Status = XSpi_CfgInitialize(&mSPI, &mCfg, mCfg.BaseAddress);
      if (Status != XST_SUCCESS)
      {
         throw std::runtime_error("Failed initializing flash library");
      }

      /*
       * Set the SPI device as a master and in manual slave select mode such
       * that the slave select signal does not toggle for every byte of a
       * transfer, this must be done before the slave select is set.
       */
      Status = XSpi_SetOptions(&mSPI, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION);
      if (Status != XST_SUCCESS)
      {
         throw std::runtime_error("Failed configuring flash library");
      }

      // We only have one slave
      Status = XSpi_SetSlaveSelect(&mSPI, 1);
      if (Status != XST_SUCCESS)
      {
         throw std::runtime_error("Failed configuring flash library");
      }

      // Get up and running, then disable interrupts before calling any other functions
      XSpi_Start(&mSPI);
      XSpi_IntrGlobalDisable(&mSPI);
   }

/**
 * @brief Register a callback function for flash status updates 
 * 
 * @param cb: The callback function to register 
 */
   void RegisterStatusCallback(const status_callback_t& cb)
   {
      mCallBacks.push_back(cb);
   }

/**
 * @brief Erase a section of the flash. 
 *  
 * @note: Flash naturally erases on sector boundaries; this function doesn't attempt to 
 * preserve data in a sector that isn't fully covered by addr, len 
 * 
 * @param addr: The Address to start erasing (will erase the entire sector containing this address) 
 * @param len: The desired number of bytes to erase. 
 */
   void EraseRange(uint32_t addr, size_t len)
   {
      // We don't support erase/write if not on an even sector boundary
      if (addr & (FLASH_ENFORCED_SECTOR_BYTES - 1))
      {
         throw std::runtime_error("Flash address must be on an even page of " + std::to_string(FLASH_ENFORCED_SECTOR_BYTES) + " bytes");
      }

      std::lock_guard<decltype(mMutex)> lock(mMutex);

      // Clear error bits
      ClearStatusRegister();

      // For now, no range checking. Just erase
      size_t num_sectors_erased = 0;
      size_t erased_bytes = 0;
      while (erased_bytes < len)
      {
         WriteEnable();
         SectorErase(addr + erased_bytes);
         erased_bytes += FLASH_SECTOR_BYTES;
         SayStatus("Erased Sector", static_cast<double>(erased_bytes) / static_cast<double>(len));
         num_sectors_erased++;
      }

      SayStatus("Erased " + std::to_string(num_sectors_erased) + " sectors", 1.0);


      // For erase, because they take so long, we'll wait here to avoid skewing stats
      WaitForFlashNotBusy(FLASH_ERASE_TIMEOUT_S);

      // Check for errors
      const auto stat = GetStatusRegister();
      if (stat & SR_ANY_ERR_MASK)
      {
         SayStatus("Warning: Flash indicated an error while erasing");
      }
   }

/**
 * @brief Write to flash 
 * 
 * @param flash_addr: First address to start writing to 
 * @param src: Pointer to source data 
 * @param len: Number of bytes to write 
 */
   void Write(uint32_t flash_addr, const uint8_t* src, const size_t len)
   {
      size_t numwritten = 0;

      std::lock_guard<decltype(mMutex)> lock(mMutex);

      // ASSUME the proper locations have been erased

      // Clear error bits
      ClearStatusRegister();

      // We can write a page at a time
      while (numwritten < len)
      {
         // Write up to one page
         const auto flash_page_bytes = FLASH_PAGE_BYTES;  // Needed to compile C++11/C++14. Fixed in C++17. See https://stackoverflow.com/questions/8016780/undefined-reference-to-static-constexpr-char
         const size_t real_count = std::min(flash_page_bytes, len - numwritten);

         // Optimize- skip whole pages of 0xFF
         bool skip = true;
         for (size_t xx = 0; xx < real_count; xx++)
         {
            if (src[numwritten + xx] != 0xFF)
            {
               skip = false;
               break;
            }
         }

         // Only execute the command if its not all FF
         if (!skip)
         {
            WriteEnable();
            StartCommand(CMD_PAGEPROGRAM_WRITE);
            AddAddr(flash_addr);
            AddFromBuffer(src + numwritten, real_count);
            Execute(0);
         }

         flash_addr += real_count;
         numwritten += real_count;

         // Report status
         std::stringstream ss;
         ss << "Wrote " << numwritten << " bytes";
         SayStatus(ss.str(), static_cast<double>(numwritten) / static_cast<double>(len));
      }

      // Check for errors
      const auto stat = GetStatusRegister();
      if (stat & SR_ANY_ERR_MASK)
      {
         SayStatus("Warning: Flash indicated an error while writing");
      }

   }


/**
 * @brief Read data from flash into buffer
 * 
 * @param flash_addr: Flash address to read from 
 * @param dst: Buffer to place data from flash into 
 * @param len: Number of bytes to read 
 */
   void Read(uint32_t flash_addr, uint8_t* dst, const size_t len)
   {
      size_t numread = 0;

      while (numread < len)
      {
         // zzqq can read cross page boundary?
         StartCommand(CMD_RANDOM_READ);
         AddAddr(flash_addr);

         // Read up to one page
         const auto flash_page_bytes = FLASH_PAGE_BYTES;  // Needed to compile C++11/C++14. Fixed in C++17. See https://stackoverflow.com/questions/8016780/undefined-reference-to-static-constexpr-char
         const size_t real_count = std::min(flash_page_bytes, len - numread);
         const auto* rezbuf = Execute(real_count);

         memcpy(dst + numread, rezbuf, real_count);

         flash_addr += real_count;
         numread += real_count;

         // Report status
         std::stringstream ss;
         ss << "Read " << numread << " bytes";
         SayStatus(ss.str(), static_cast<double>(numread) / static_cast<double>(len));
      }
   }



private:

   //-------------------------------------------------------------------------------------//
   // Private functions
   //-------------------------------------------------------------------------------------//


//--------------------------------------------------------------------------------
// GetStatusRegister
// Reads status register and returns it
//--------------------------------------------------------------------------------
   uint8_t GetStatusRegister(void)
   {
      // Special case- don't call execute
      // Don't need to wait for flash to be un-busy before reading status register
      uint8_t sendbuf[16];
      uint8_t recvbuf[16];

      sendbuf[0] = CMD_STATUSREG_READ;

      // Execute
      const int status = XSpi_Transfer(&mSPI, sendbuf, recvbuf, 2);
      if (status != XST_SUCCESS)
      {
         throw std::runtime_error("SPI transaction failed getting status register code " + std::to_string((int)status));
      }

      return recvbuf[1];
   }


//--------------------------------------------------------------------------------
// ClearStatusRegister
// Clears volatile/error bits in the status register
//--------------------------------------------------------------------------------
   void ClearStatusRegister(void)
   {
      StartCommand(CMD_STATUSREG_CLEAR);
      Execute(0);
   }



//--------------------------------------------------------------------------------
// WaitForFlashNotBusy
// Waits up to wait_s seconds for flash to indicate it is done with the previous operation
//--------------------------------------------------------------------------------
   void WaitForFlashNotBusy(double wait_s)
   {
      // Get the current time
      const auto start = std::chrono::steady_clock::now();
      while (1)
      {
         if ((GetStatusRegister() & SR_IS_READY_MASK) == 0)
         {
            break;
         }

         // Get the elapsed time in s
         const std::chrono::duration<double> dt = std::chrono::steady_clock::now() - start;
         if (dt.count() > wait_s)
         {
            throw std::runtime_error("Timeout waiting for flash ready");
         }
      }
   }


//--------------------------------------------------------------------------------
// StartCommand
// Initialize the system in prep for sending a flash command
//--------------------------------------------------------------------------------
   void StartCommand(uint8_t cmd)
   {
      mCurrWriteBufInx = 0;
      mWriteBuf[mCurrWriteBufInx++] = cmd;
   }

   void AddAddr(uint32_t addr)
   {
      mWriteBuf[mCurrWriteBufInx++] = (uint8_t)(addr >> 24);
      mWriteBuf[mCurrWriteBufInx++] = (uint8_t)(addr >> 16);
      mWriteBuf[mCurrWriteBufInx++] = (uint8_t)(addr >> 8);
      mWriteBuf[mCurrWriteBufInx++] = (uint8_t)(addr);
   }


//--------------------------------------------------------------------------------
// AddFromBuffer
// Add len bytes from buf into transmit buffer to send to flash
//--------------------------------------------------------------------------------
   void AddFromBuffer(const uint8_t* buf, size_t len)
   {
      if ((len + mCurrWriteBufInx) > TOTAL_BUFFER_SIZE)
      {
         throw std::runtime_error("Attempt to write too many bytes");
      }

      memcpy(mWriteBuf + mCurrWriteBufInx, buf, len);
      mCurrWriteBufInx += len;
   }

   // Executes the command. Returns a pointer to read data.
   uint8_t* Execute(size_t num2read, double timeout_s = FLASH_DEFAULT_CMD_TIMEOUT_S)
   {
      if (0 == mCurrWriteBufInx)
      {
         throw std::runtime_error("No command specified");
      }

      if (((mCurrWriteBufInx - 1) + num2read) >= TOTAL_BUFFER_SIZE)
      {
         throw std::runtime_error("Attempt to read/write too many bytes");
      }

      // Make sure flash isn't busy
      WaitForFlashNotBusy(timeout_s);

      // Execute
      const int status = XSpi_Transfer(&mSPI, mWriteBuf, num2read ? mReadBuf : NULL, mCurrWriteBufInx + num2read);
      if (status != XST_SUCCESS)
      {
         throw std::runtime_error("SPI transaction failed"
                                    " code " + std::to_string((int)status) 
                                  + " cmd "  + std::to_string((int)mWriteBuf[0])
                                  );
      }

      // Get the return value before zeroing index
      const auto rez = num2read ? (mReadBuf + mCurrWriteBufInx) : NULL; 
      mCurrWriteBufInx = 0;

      // Return a pointer to the first byte read (if any)
      return rez;
   }


//--------------------------------------------------------------------------------
// WriteEnable
// Spansion flash requires this to be sent before writing/erasing
//--------------------------------------------------------------------------------
   void WriteEnable(void)
   {
      StartCommand(CMD_WRITE_ENABLE);
      Execute(0);
   }


//--------------------------------------------------------------------------------
// SectorErase
// Erases the sector that contans address addr
//--------------------------------------------------------------------------------
   void SectorErase(u32 addr)
   {
      StartCommand(CMD_SECTOR_ERASE);
      AddAddr(addr);
      Execute(0);
   }


//--------------------------------------------------------------------------------
// SayStatus
// Report status to any registered callback functions
//--------------------------------------------------------------------------------
   void SayStatus(const std::string& msg, double pcnt_cplt = std::numeric_limits<double>::quiet_NaN())
   {
      // Build a status structure
      pgm_status_s stat;
      stat.msg = msg;
      stat.pcnt_cmplt = pcnt_cplt;

      // Call all callbacks.
      for (auto& cb : mCallBacks)
      {
         cb(stat);
      }
   }

   //-------------------------------------------------------------------------------------//
   // Private data
   //-------------------------------------------------------------------------------------//

   //-------------------------------------------------------------------------------------//
   // Details of this flash

   // Settings
   static constexpr double FLASH_ERASE_TIMEOUT_S = 10.0; 
   static constexpr double FLASH_DEFAULT_CMD_TIMEOUT_S = 10.0;
   static constexpr size_t FLASH_ENFORCED_SECTOR_BYTES = 256 * 1024; // Some parts have 256K pages. 
                                                                     // Since we don't check the part type, we must enforce the largest size

   // Sizes
   static constexpr size_t FLASH_PAGE_BYTES = 256;
   static constexpr size_t FLASH_MAX_CMD_BYTES = 5;
   static constexpr size_t FLASH_SECTOR_BYTES = 64 * 1024;        // Not true for S25FL128xxxxxx1 devices, which have 256K

   // Commands. Note: All commands must use 4 byte addressing
   static constexpr uint8_t CMD_RANDOM_READ       = 0x13;
   static constexpr uint8_t CMD_PAGEPROGRAM_WRITE = 0x12;
   static constexpr uint8_t CMD_WRITE_ENABLE	  = 0x06;
   static constexpr uint8_t CMD_SECTOR_ERASE	  = 0xDC;
   static constexpr uint8_t CMD_STATUSREG_READ    = 0x05;
   static constexpr uint8_t CMD_STATUSREG_WRITE   = 0x01;
   static constexpr uint8_t CMD_STATUSREG_CLEAR   = 0x30;

   // Register defs
   static constexpr uint8_t SR_IS_READY_MASK = 0x01; // D0 is 1 when busy
   static constexpr uint8_t SR_E_ERR_MASK = 0x20;       // D5 is 1 if erase error
   static constexpr uint8_t SR_P_ERR_MASK = 0x40;       // D6 is 1 if program error
   static constexpr uint8_t SR_ANY_ERR_MASK = (SR_P_ERR_MASK | SR_E_ERR_MASK);  // Any error
   //-------------------------------------------------------------------------------------//


   // Mutex to make the API thread safe. Must be locked by any public functions
   std::recursive_mutex mMutex;

   // Registered callback functions
   std::vector<status_callback_t> mCallBacks;

   // Xilinx-like SPI access classes
   XSpi_Config mCfg;
   XSpi        mSPI;

   // Buffers for interaction with Xilinx library
   static constexpr size_t TOTAL_BUFFER_SIZE = FLASH_MAX_CMD_BYTES + FLASH_PAGE_BYTES;
   uint8_t mWriteBuf[TOTAL_BUFFER_SIZE];
   uint8_t mReadBuf[TOTAL_BUFFER_SIZE];
   size_t mCurrWriteBufInx = 0;

};




