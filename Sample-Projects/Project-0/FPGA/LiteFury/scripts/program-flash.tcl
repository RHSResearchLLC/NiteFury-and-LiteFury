set_property PROGRAM.ADDRESS_RANGE  {use_file} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.FILES [list "../mcs/out.mcs" ] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.PRM_FILE {} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.BLANK_CHECK  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.VERIFY  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
startgroup 
if {![string equal [get_property PROGRAM.HW_CFGMEM_TYPE  [lindex [get_hw_devices xc7a100t_0] 0]] [get_property MEM_TYPE [get_property CFGMEM_PART [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]]]] }  { create_hw_bitstream -hw_device [lindex [get_hw_devices xc7a100t_0] 0] [get_property PROGRAM.HW_CFGMEM_BITFILE [ lindex [get_hw_devices xc7a100t_0] 0]]; program_hw_devices [lindex [get_hw_devices xc7a100t_0] 0]; }; 
program_hw_cfgmem -hw_cfgmem [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7a100t_0] 0]]
endgroup
