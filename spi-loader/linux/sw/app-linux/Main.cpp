//******************************************************************************
// Main program for SPI loader
//******************************************************************************

// Includes
#include "spi-s25fl.hpp"

#include <getopt.h>
#include <cstdlib>
#include <sys/stat.h>
#include <unistd.h>

// This is ugly, but a side effect of reusing Xilinx code
// We need another parameter to do I/O via XDMA, namely, the dev file to perform I/O on
// gAXI_FNAME is a global.
const char *gAXI_FNAME = "/dev/xdma0_user";


/**
 * @brief Parse 2 character literal as hex byte
 * @return The byte
 */
static unsigned char readHexByte(char *data)
{
   int val = 0;
   if (data[0] >= '0' && data[0] <= '9')
   {val = (val + (data[0] - '0')) << 4;}
   else if (data[0] >= 'a' && data[0] <= 'f')
   {val = (val + ((data[0] - 'a') + 10)) << 4;}
   else if (data[0] >= 'A' && data[0] <= 'F')
   {val = (val + ((data[0] - 'A') + 10)) << 4;}
   else
   {throw std::runtime_error("Invalid character in file");}

   if (data[1] >= '0' && data[1] <= '9')
   {val = val + (data[1] - '0');}
   else if (data[1] >= 'a' && data[1] <= 'f')
   {val = val + ((data[1] - 'a') + 10);}
   else if (data[1] >= 'A' && data[1] <= 'F')
   {val = val + ((data[1] - 'A') + 10);}
   else
   {throw std::runtime_error("Invalid character in file");}

   return val;
}


/**
 * @brief Load a MCS file into memory for programming
 * @return Raw data to program
 */
static std::vector<uint8_t> LoadMCS(const char *fname)
{
   std::vector<uint8_t> rez;
   char *line;
   char lineBuf[1024];
   int curline = 0;
   int len = 0;
   int lastReport = 0;
   int lba = 0;

   FILE* inmc = fopen(fname, "rb");
   if (!inmc)
   {
      throw std::runtime_error("Unable to open " + std::string(fname));
   }


   while ((line = fgets(lineBuf, 1024, inmc)))
   {
      if (line[0] == ':')
      {
         // Valid MCS
         int length = readHexByte(line + 1);
         int off_hi = readHexByte(line + 3);
         int off_lo = readHexByte(line + 5);
         int recordType = readHexByte(line + 7);

         if (recordType == 4)
         {
            // Gap in data - new lba
            int lba_hi = readHexByte(line + 9);
            int lba_lo = readHexByte(line + 11);
            lba = (lba_hi << 24) | (lba_lo << 16);
         }
         if (recordType == 0)
         {
            int skip = 0;
            while ((lba | ((off_hi << 8) | off_lo)) > len)
            {
               unsigned char fill = 0xFF;
               rez.push_back(fill);
               len++;
               skip++;
            }
            if (skip > 0)
            {
               printf("Skipped %i bytes from %08x to %08x\n", skip, len - skip, len);
            }
            for (int i = 0; i < length; i++)
            {
               unsigned char byte = readHexByte(line + 9 + i * 2);
               rez.push_back(byte);
            }
            len += length;
            if (len - lastReport > 1024)
            {
               lastReport = len;
            }
         }
      }
      curline++;
   }
   fclose(inmc);
   return rez;

}

/**
 * @brief Load a raw binary file into memory for programming 
 * @param aOffset: offset into the file to start loading 
 * @param alen: Number of bytes to load (0=read all) 
 * @return Raw data to program
 */
static std::vector<uint8_t> LoadBin(const char *fname, long int aOffset, long int aLen)
{
   // Load file data into a vector
   std::vector<uint8_t> rez(aLen);
   FILE *fp = fopen(fname, "rb");
   if (fp)
   {
      // obtain file size
      fseek(fp, 0, SEEK_END);
      const auto fsize = ftell(fp);

      // Seek to the desired offset
      if (aOffset >= fsize)
      {
         throw std::runtime_error("File offset index exceeds file size");
      }

      // OK seek to desired offset.
      fseek(fp, aOffset, SEEK_SET);

      // Compute the number of bytes to program
      if (0 == aLen)
      {
         // Whole file
         aLen = fsize - aOffset;
      }

      // Read into rez
      rez.resize(aLen);
      const size_t num_read = fread(rez.data(), 1, aLen, fp);
      rez.resize(num_read);

      // Done
      fclose(fp);
   }
   else
   {
      char msg[256];
      snprintf(msg, sizeof(msg), "Failed to open %s:%s\n", fname, strerror(errno));
      throw std::runtime_error(std::string(msg));
   }

   return rez;

}



/**
 * @brief Verify the existance of a file 
 * 
 * @param fname: The file to check 
 * @param perm: Permissions to check for; a bitmask of the following: 
 *   R_OK  readable                             
 *   W_OK  writable                             
 *   X_OK  executable                           
 *   F_OK  exists                               
 * 
 * @return bool T if file exists with specified permissions, F otherwise
 */
static bool FileCheck(const char *fname, int perm = R_OK)
{
   return (access(fname, perm) != -1);
}

/**
 * @brief Print command line args and usage 
 */
static void PrintUsage(void)
{
   printf("\nspi-loader V1.5 copyright 2019 RHS Research LLC"
          "\nUsage: spi-loader [-v][-c] [-a flashaddr] [-b fileoffset] [-l len] [-d device] [-r deviceoffset] [-f binary file] [-m mcs file] -t[0|1]"
          "\n Loads len bytes from file at fileoffset into flash at address flashaddr\n"

          "\n Programming specification options"
          "\n   -a: Address of first byte in flash to overwrite"
          "\n   -b: Byte index into file to start reading (default to 0)"
          "\n   -l: Number of bytes to write (default of 0 means write all bytes in file)"
          "\n   -f: Data file to load (raw binary)"
          "\n   -m: Data file to load (MCS)"
          "\n   -t: Select the flash chip to target. 0=primary chip, 1=second chip"

          "\n AXI-SPI core access configuration options"
          "\n   -d: Device filename where SPI core can be accessed"
          "\n   -r: Address (offset) of AXI-SPI core in device file"

          "\n Other options"
          "\n   -v: Verify after programming"
          "\n   -c: Verify only (skip erase/program)"

          "\n Note: Numeric values default to decimal, unless prefixed with 0x\n"
         );
}

/**
 * @brief This function gets called by the SPI programming library when status changes 
 * 
 * @param stat: New status being reported by the library 
 */
static void MyStatusCallback(const pgm_status_s& stat)
{
   printf("\r(%.1f%%):%-60s", stat.pcnt_cmplt * 100.0, stat.msg.c_str());
}

/** 
 * MAIN 
 */
int main(int argc, char *argv[])
{
   try
   {
      // Since our erase/program reports don't have a newline, we disable stdout buffering
      // to achieve the desired effect
      setbuf(stdout, NULL);

      // Default SPI settings
      XSpi_Config cfg;
      cfg.BaseAddress = 0x10000;                /**< Base address of the device */
      cfg.HasFifos = 1;                         /**< Does device have FIFOs? */
      cfg.SlaveOnly = 0;                        /**< Is the device slave only? */
      cfg.NumSlaveBits = 2;                     /**< Num of slave select bits on the device */
      cfg.DataWidth = XSP_DATAWIDTH_BYTE;       /**< Data transfer Width. 0=byte */
      cfg.SpiMode = XSP_QUAD_MODE;              /**< Standard/Dual/Quad mode */
      cfg.AxiFullBaseAddress = 0x10000;         /**< AXI Full Interface Base address of the device */
      cfg.XipMode = 0;                          /**< 0 if Non-XIP, 1 if XIP Mode */
      cfg.Use_Startup = 1;                      /**< 1 if Starup block is used in h/w */
      cfg.dev_fname = "/dev/xdma0_user";        // Default to XDMA driver, first device

      // Unused properties
      cfg.AxiInterface = 0;             /**< AXI-Lite/AXI Full Interface */
      cfg.DeviceId = 0;                 /**< Unique ID  of device */

      // Storage for arguments
      char *dataFileMCS = NULL;
      char *dataFileBIN = NULL;
      long int byteLen = 0;
      long int srcInx = 0;
      long int dstInx = 0x680000;      // Default to safe area outside of bootloader area
      bool verify = false;
      bool verifyonly = false;
      long int slave_id = 0;

      // Process command line args
      int option;
      while ((option = getopt(argc, argv, "a:b:l:d:r:f:m:vct:")) != -1)
      {
         switch (option)
         {
         case 'a':
            dstInx = strtol(optarg, NULL, 0);
            break;

         case 'b':
            srcInx = strtol(optarg, NULL, 0);
            break;

         case 'l':
            byteLen = strtol(optarg, NULL, 0);
            break;

         case 'd':
            cfg.dev_fname = optarg;
            break;

         case 'r':
            cfg.BaseAddress = strtol(optarg, NULL, 0);
            cfg.AxiFullBaseAddress = cfg.BaseAddress;
            break;

         case 'f':
            dataFileBIN = optarg;
            break;

         case 'm':
            dataFileMCS = optarg;
            break;

         case 'v':
            verify = true;
            break;

         case 'c':
            verifyonly = true;
            break;

         case 't':
            slave_id = strtol(optarg, NULL, 0);
            break;


         default:
            break;
         }
      }

      // Make sure the user specified a data file to load into flash
      if ((!dataFileBIN) && (!dataFileMCS))
      {
         PrintUsage();
         return 1;
// << early exit
      }

      // Make sure the user didn't specify both types
      if (dataFileBIN && dataFileMCS)
      {
         printf("Cannot specify both a bin file (-f) and MCS file (-m)\n");
         return 1;
// << early exit
      }

      // If user specified MCS, don't let them change offset and length
      if (dataFileMCS && (srcInx || byteLen))
      {
         printf("When specifying MCS file (-m), cannot change source index (-b) or length (-l)\n");
         return 1;
// << early exit
      }


      // Make sure the device file to access the AXI-SPI block exists
      if (!FileCheck(cfg.dev_fname, R_OK | W_OK))
      {
         printf("Device file not found:%s. Is the XDMA driver installed and working?\n", cfg.dev_fname);
         return 1;
// << early exit
      }

      // Check slave_id
      if (slave_id > 1)
      {
         printf("Slave ID must be 0 (primary flash) or 1 (secondary flash)\n");
         return 1;
// << early exit
      }

      // Load file
      std::vector<uint8_t> data_to_write;
      if (dataFileMCS)
      {
         data_to_write = LoadMCS(dataFileMCS);
      }
      else
      {
         data_to_write = LoadBin(dataFileBIN, srcInx, byteLen);
      }

      // Make sure we have at least one byte to write
      if (data_to_write.empty())
      {
         printf("Data file empty- no data to write\n");
         return 1;
// << early exit
      }

      // At this point, we have a device and some data to write to it.
      // Reveal final plans to the user
      printf("Loading %ld bytes from %s[%ld] to flash[%ld] using %s[%ld]\n"
             , data_to_write.size()
             , dataFileMCS ? dataFileMCS : dataFileBIN
             , srcInx
             , dstInx
             , cfg.dev_fname
             , cfg.BaseAddress
            );

      // This is ugly, but a side effect of reusing Xilinx code
      // We need another parameter to do I/O via XDMA, namely, the dev file to perform I/O on
      // gAXI_FNAME is a global.
      // Assign the user-specified device filename to the global
      gAXI_FNAME = cfg.dev_fname;

      // Instantiate flash programming class
      SPI_S25FL_c fifc;
      fifc.RegisterStatusCallback(MyStatusCallback);

      // Init
      printf("\nInitializing flash index %ld...\n", slave_id);
      fifc.Init(cfg, slave_id);

      // Mark erase/program start
      const auto elap_start = std::chrono::steady_clock::now();
      auto start = std::chrono::steady_clock::now();

      // Erase
      if (!verifyonly)
      {
         printf("\nErasing...\n");
         fifc.EraseRange(dstInx, data_to_write.size());
         std::chrono::duration<double> dt = std::chrono::steady_clock::now() - start;
         printf("\nErased in %.3fs...\n", dt.count());

         // Program
         printf("\nProgramming...\n");
         start = std::chrono::steady_clock::now();
         fifc.Write(dstInx, data_to_write.data(), data_to_write.size());
         dt = std::chrono::steady_clock::now() - start;
         printf("\nProgrammed in %.3fs...\n", dt.count());

         // Report erase/program time
         dt = std::chrono::steady_clock::now() - elap_start;
         printf("\nErase/Program took %.3fs (%.0fKiB/s)\n", dt.count(), ((static_cast<double>(data_to_write.size()) / dt.count())) / 1024.0);
      }

      // Verify
      bool verify_failed = false;
      if (verify || verifyonly)
      {
         const size_t real_num_to_verify = data_to_write.size();

         printf("\nVerifying...\n");
         start = std::chrono::steady_clock::now();

         // Read section into vector
         std::vector<uint8_t> tmp(real_num_to_verify);
         fifc.Read(dstInx, tmp.data(), real_num_to_verify);

         std::chrono::duration<double> dt = std::chrono::steady_clock::now() - start;
         printf("\nRead in %.3fs...\n", dt.count());

         for (size_t xx = 0; xx < real_num_to_verify; xx++)
         {
            if (tmp[xx] != data_to_write[xx])
            {
               verify_failed = true;
               printf("Failed at index %u(0x%X):0x%X/0x%X\n", (unsigned int) xx, (unsigned int) xx, (unsigned int) tmp[xx], (unsigned int) data_to_write[xx]);
               break;
            }
         }

         if (verify_failed)
         {
            printf("\nVerify failed\n");
            return 1;
         }
         else
         {
            printf("\nVerify OK\n");
         }
      }

   }
   catch (const std::exception& ex)
   {
      printf("\nException occurred: %s\n", ex.what());

      return 1;
   }

   return 0;



}



