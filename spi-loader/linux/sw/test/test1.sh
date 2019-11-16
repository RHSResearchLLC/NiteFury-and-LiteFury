#/bin/sh

# Generate random data file
head -c 64K </dev/urandom >64KiB.bin

# Run. Start at address 240000 to avoid clobbering test bitstream
../build/spi-loader -v -a 0x240000 -f ./64KiB.bin 

