# Use these to run synth/implementation
reset_run synth_1
launch_runs synth_1 -jobs 6
launch_runs impl_1 -jobs 6 -to_step write_bitstream
