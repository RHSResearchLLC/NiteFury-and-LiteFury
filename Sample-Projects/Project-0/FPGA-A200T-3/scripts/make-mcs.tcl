# Generate an MCS from bit
# This must be run from the same directory where the project was created (.xpr file)
write_cfgmem -format mcs -size 16 -interface SPIx4 -force -loadbit "up 0x00000000 ./${new_project_name}.runs/impl_1/Top_wrapper.bit" -file "./mcs/out.mcs"
