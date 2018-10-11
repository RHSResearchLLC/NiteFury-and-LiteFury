#!/usr/bin/env python3
import os
import time
import numpy

def mem_test_random():
    # Status
    test_ok = True
    test_msg="OK\n"

    # This is the only number that should need to change- how many MB to generate
    # 256M16 part is 512MB; 512M16 part is 1024GB
    NUM_MB=1024

    # Generate some data
    TRANSFER_SIZE = 1024*1024*4
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
    print("Sent in " + str((duration)*1000.0) + " milliseconds (" + str(BPS/1000000) + " MBPS)")

    # Receive from FPGA block RAM
    start = time.time()
    for page in range(NUM_TRANSFERS):
       rx_data.append(os.pread(fd_c2h, TRANSFER_SIZE, page * TRANSFER_SIZE))
    end = time.time()
    duration = end-start;

    # Print time
    BPS = TRANSFER_SIZE * NUM_TRANSFERS / (duration);
    print("Received in " + str((duration)*1000.0) + " milliseconds (" + str(BPS/1000000) + " MBPS)")

    # Make sure data matches
    for page in range(NUM_TRANSFERS):
       if tx_data[page] != rx_data[page]:
           test_ok = False
           test_msg = "Whoops on page " + str(page) + "\n"
           print (test_msg)

    with open('err.log', 'a') as errlog:
       errlog.write(test_msg)

    os.close(fd_h2c)
    os.close(fd_c2h)


##############################################    
def main():

    for iter in range(1000000):
       print("#" + str(iter))
       mem_test_random()

           
    print ("Done")

    # done
    os.close(fd_h2c)
    os.close(fd_c2h)


##############################################    

if __name__ == '__main__':
    main()


