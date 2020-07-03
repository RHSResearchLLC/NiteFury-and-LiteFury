# Clean up
reset_run synth_1

# Run synthesis & implementation
launch_runs synth_1 -jobs 6
wait_on_run synth_1
launch_runs impl_1 -jobs 6 -to_step write_bitstream
wait_on_run impl_1
 
# At this point, the "update" image is done, which is the default image and can work standalone
# Next lets build the "golden" image
open_run impl_1
set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x680000 [current_design]

# Watchdog clock is 65MHz +-50%, divided by 256. So, 127-380kHz. Assume 380KHz
# so a value of 38000 (decimal) is .1s
set_property BITSTREAM.CONFIG.TIMER_CFG 0x2E630 [current_design]
write_bitstream -force ./project.runs/impl_1/Top_wrapper_golden.bit
 
# Clean up so subsequent runs from the GUI work
close_design  

puts "Implementation done!"
