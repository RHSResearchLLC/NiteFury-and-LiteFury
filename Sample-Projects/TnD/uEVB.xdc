###############################################################################
# Pinout and Related I/O Constraints
###############################################################################



###############################################################################
# LEDs (4)
###############################################################################

set_property PACKAGE_PIN G3 [get_ports LED_A1]
set_property IOSTANDARD LVCMOS33 [get_ports LED_A1]
set_property PULLUP true [get_ports LED_A1]
set_property DRIVE 8 [get_ports LED_A1]

set_property PACKAGE_PIN H3 [get_ports LED_A2]
set_property IOSTANDARD LVCMOS33 [get_ports LED_A2]
set_property PULLUP true [get_ports LED_A2]
set_property DRIVE 8 [get_ports LED_A2]

set_property PACKAGE_PIN G4 [get_ports LED_A3]
set_property IOSTANDARD LVCMOS33 [get_ports LED_A3]
set_property PULLUP true [get_ports LED_A3]
set_property DRIVE 8 [get_ports LED_A3]

set_property PACKAGE_PIN H4 [get_ports LED_A4]
set_property IOSTANDARD LVCMOS33 [get_ports LED_A4]
set_property PULLUP true [get_ports LED_A4]
set_property DRIVE 8 [get_ports LED_A4]

###############################################################################
# Clocks
###############################################################################
set_property PACKAGE_PIN J19 [get_ports ddr_clk_p]
set_property PACKAGE_PIN H19 [get_ports ddr_clk_n]
set_property IOSTANDARD LVDS_25 [get_ports ddr_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports ddr_clk_n]
set_property PACKAGE_PIN V22 [get_ports emc_clk]
set_property IOSTANDARD LVCMOS33 [get_ports emc_clk]

create_clock -period 5.000  -name ddr_clk [get_ports ddr_clk_p]
create_clock -period 10.000 -name emc_clk [get_ports emc_clk]


###############################################################################
# Additional design / project settings
###############################################################################

# High-speed configuration so FPGA is up in time to negotiate with PCIe root complex
#set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Div-1 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

