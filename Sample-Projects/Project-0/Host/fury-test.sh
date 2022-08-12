#!/bin/sh

# usage fury-test ID VERSION MIB
# Runs test, expecting board id ID, board version VERSION, with memory size MIB MiB

#$1: ID from ID register, IE 'LITE' or 'NITE'
#$2: version from register
#$3: DDR size in MiB


# exit when any command fails
set -e

until [ -e /dev/xdma0_user ]
do
    echo "Waiting for XDMA device..."
    sleep 1
done

echo "--->Checking version, voltages, etc"
./test-general.py --id $1 --version $2

echo "--->Testing DDR..."
./test-ddr.py --size $3 --iterations 1

echo "!!!! ALL TESTS PASS !!!!"


