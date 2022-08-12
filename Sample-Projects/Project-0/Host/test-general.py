#!/usr/bin/env python3
import os
import struct
import time
import sys
import argparse

##############################################    
def main(board_id, board_vrsn):


    fd = os.open("/dev/xdma0_user", os.O_RDWR)

    # Product
    pid_string = os.pread(fd, 4, 0x0)[::-1]
    pvrsn = int.from_bytes(os.pread(fd, 4, 0x8), byteorder='little')

    print ("Found product ID %s version %d" % (pid_string, pvrsn))


    temp_string = os.pread(fd, 4, 0x3200)
    temp_int = int.from_bytes(temp_string, byteorder='little')
    temp_c = (float(temp_int >> 4) * 503.975 / 4096.0) - 273.15
    print("Temp C=%.1f" % temp_c)

    vccint_string = os.pread(fd, 4, 0x3204)
    vccint_int = int.from_bytes(vccint_string, byteorder='little')
    vccint_v = (float(vccint_int >> 4) * 3.0 / 4096.0)
    print("VCCInt=%.2f" % vccint_v)

    vccaux_string = os.pread(fd, 4, 0x3208)
    vccaux_int = int.from_bytes(vccaux_string, byteorder='little')
    vccaux_v = (float(vccaux_int >> 4) * 3.0 / 4096.0)
    print("vccaux=%.2f" % vccaux_v)

    os.close(fd)

    passed = True

    # Make sure its a litefury or nitefury
    if not (pid_string == b'LITE' or pid_string == b'NITE'):
        print("Not Litefury or Nitefury")
        passed = False

    # Specific check
    if board_id and (pid_string != board_id.encode('ASCII')): 
        print("Board ID mismatch")
        passed = False

    if (pvrsn >= 0) and (pvrsn != board_vrsn):
        print("Board version mismatch")
        passed = False

    # Check Voltages and temps
    if vccint_v < 1.0 or vccint_v > 1.05:
        print("VCC out of range")
        passed = False

    if vccaux_v < 1.75 or vccaux_v > 1.85:
        print("VCCAUX out of range")
        passed = False

    if temp_c > 62:
        print("Temperature out of range")
        passed = False

    if passed: print("Checkout passed")
    else:print("! Checkout failed")

    errcode = 0 if passed else 1

    sys.exit(errcode)


##############################################    

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description ='Litefury/Nitefury tester')

    parser.add_argument('-i', '--id',
                    dest='board_id',
                    default="LITE",
                    help='Board ID to expect',
                    type=str
                    )

    parser.add_argument('-v', '--version',
                    dest='board_vrsn',
                    default=1,
                    help='Board version to expect',
                    type=int
                    )

    args = parser.parse_args()

    main(args.board_id, args.board_vrsn)
