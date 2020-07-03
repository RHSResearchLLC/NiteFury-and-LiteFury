# Generate an MCS from bit
# This must be run from the same directory where the project was created (.xpr file)
write_cfgmem -format mcs -size 16 -interface SPIx4 -force -loadbit "up 0 ./project.runs/impl_1/Top_wrapper_golden.bit up 0x680000 ./project.runs/impl_1/Top_wrapper.bit" -file "../mcs/combined.mcs"

# hex format is actually raw binary
write_cfgmem -format bin -size 16 -interface SPIx4 -force -loadbit "up 0 ./project.runs/impl_1/Top_wrapper_golden.bit" -file "../mcs/golden.bin"
write_cfgmem -format bin -size 16 -interface SPIx4 -force -loadbit "up 0 ./project.runs/impl_1/Top_wrapper.bit" -file "../mcs/update.bin"
write_cfgmem -format bin -size 16 -interface SPIx4 -force -loadbit "up 0 ./project.runs/impl_1/Top_wrapper_golden.bit up 0x680000 ./project.runs/impl_1/Top_wrapper.bit" -file "../mcs/combined.bin"

