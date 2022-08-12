#!/usr/bin/env python3
import os
import time
import numpy
import sys
import argparse
  
def mem_test_random(size_in_MiB):
    # This is the only number that should need to change- how many MB to generate/test
    # 256M16 part is 512MB; 512M16 part is 1024MB
    NUM_MB=size_in_MiB

    # Generate some data
    TRANSFER_SIZE = 1024*1024*4 #4M at a time
    NUM_TRANSFERS = int(NUM_MB/4)
    tx_data=[]
    rx_data=[]
    for page in range(NUM_TRANSFERS):
       tx_data.append(bytearray(numpy.random.bytes(TRANSFER_SIZE)))

    # Open files
    fd_h2c = os.open("/dev/xdma0_h2c_0", os.O_WRONLY)
    fd_c2h = os.open("/dev/xdma0_c2h_0", os.O_RDONLY)

    # Send to FPGA block RAM
    start = time.time()
    for page in range(NUM_TRANSFERS):
       os.pwrite(fd_h2c, tx_data[page], page * TRANSFER_SIZE);
    end = time.time()
    duration = end-start;

    # Print time
    BPS = TRANSFER_SIZE * NUM_TRANSFERS / (duration);
    print("Sent %d MiB in %.3fs (%.3fMBPS)" % (NUM_MB, duration, BPS/1000000))

    # Receive from FPGA block RAM
    start = time.time()
    for page in range(NUM_TRANSFERS):
       rx_data.append(os.pread(fd_c2h, TRANSFER_SIZE, page * TRANSFER_SIZE))
    end = time.time()
    duration = end-start;

    # Print time
    BPS = TRANSFER_SIZE * NUM_TRANSFERS / (duration);
    print("Received %d MiB in %.3fs (%.3fMBPS)" % (NUM_MB, duration, BPS/1000000))

    # Make sure data matches
    passed = True
    for page in range(NUM_TRANSFERS):
       if tx_data[page] != rx_data[page]:
           print ("Whoops on page %d\n" % (page))
           passed = False

    os.close(fd_h2c)
    os.close(fd_c2h)

    return passed


##############################################    

if __name__ == '__main__':

    # status
    exitcode = 0 # default to OK

    parser = argparse.ArgumentParser(description ='Litefury/Nitefury memory test over PCIe')

    parser.add_argument('-s', '--size',
                    default=256,
                    dest='size_mib',
                    help='Memory size in MiB',
                    type=int
                    )

    parser.add_argument('-i', '--iterations',
                    default=1,
                    dest='test_iters',
                    help='Number of times to write/read memory',
                    type=int
                    )


    args = parser.parse_args()

    # Clean error log
    with open('ddrtest-err.log', 'w') as errlog:
        errlog.write("Starting test. size=%d\n" % (args.size_mib))

    # Run test
    for iter in range(args.test_iters):
        passed = mem_test_random(args.size_mib)

        if passed: print ("DDR test passed")
        else: 
            exitcode = 1
            print ("! DDR test failed")
            with open('ddrtest-err.log', 'a') as errlog:
               errlog.write("Iteration %d failed\n" % (iter))
    
    sys.exit(exitcode)
