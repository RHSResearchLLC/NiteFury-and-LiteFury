#include "xil_io.h"

#include <unistd.h> // pread/pwrite
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <stdio.h>

// Defined somewhere else
extern const char* gAXI_FNAME;

// Static data
static int sfAXI = -1;
static int sComplained = 0;

// Static functions
static int CheckAndOpen(void)
{
   if (sfAXI < 0)
   {
      sfAXI = open(gAXI_FNAME, O_RDWR);
   }

   if ((sfAXI < 0) && !sComplained)
   {
      printf("Error opening device %s:%s", gAXI_FNAME, strerror(errno));
      sComplained = 1;
   }

   return (sfAXI >= 0);
}

//-------------------------------------------------------------------------------------------------
// Xil_In32
//-------------------------------------------------------------------------------------------------
u32 Xil_In32(UINTPTR Addr)
{
   u32 rez;
   if(CheckAndOpen())
   {
      ssize_t nread = pread(sfAXI, &rez, sizeof(rez), (off_t) Addr);
      if (nread != sizeof(rez))
      {
         printf("Error writing to device:%s", strerror(errno));
      }
   }
   return rez;
}

//-------------------------------------------------------------------------------------------------
// Xil_In32
//-------------------------------------------------------------------------------------------------
void Xil_Out32(UINTPTR Addr, u32 Value)
{
   if(CheckAndOpen())
   {
      ssize_t nsent = pwrite(sfAXI, &Value, sizeof(Value), (off_t) Addr); 
      if (nsent != sizeof(Value))
      {
         printf("Error writing to device:%s", strerror(errno));
      }
   }
}

