# "Normal" constraints file- not early not late


###############################################################################
# DDR
###############################################################################
# Note: Most of the pins are set in the constraints file created by MIG
set_property IOSTANDARD LVDS_25 [get_ports sys_clk_clk_p]
set_property IOSTANDARD LVDS_25 [get_ports sys_clk_clk_n]

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

set_property PACKAGE_PIN G4 [get_ports {LED_A3}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_A3}]
set_property PULLUP true [get_ports {LED_A3}]
set_property DRIVE 8 [get_ports {LED_A3}]

set_property PACKAGE_PIN H4 [get_ports {LED_A4}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_A4}]
set_property PULLUP true [get_ports {LED_A4}]
set_property DRIVE 8 [get_ports {LED_A4}]

###############################################################################
# SPI
###############################################################################
set_property PACKAGE_PIN P22 [get_ports {SPI_0_io0_io}]
set_property PACKAGE_PIN R22 [get_ports {SPI_0_io1_io}]
set_property PACKAGE_PIN P21 [get_ports {SPI_0_io2_io}]
set_property PACKAGE_PIN R21 [get_ports {SPI_0_io3_io}]

set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_io0_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_io1_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_io2_io}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_io3_io}]

set_property PACKAGE_PIN T19 [get_ports {real_spi_ss}]
set_property IOSTANDARD LVCMOS33 [get_ports {real_spi_ss}]

set_property PACKAGE_PIN U21 [get_ports {SPI_0_ss_t}]
set_property IOSTANDARD LVCMOS33 [get_ports {SPI_0_ss_t}]

###############################################################################
# SPI
###############################################################################
# 90MHz EMCCLK
set_property PACKAGE_PIN V22 [get_ports emc_clk]
set_property IOSTANDARD LVCMOS33 [get_ports emc_clk]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets emc_clk_IBUF]



###############################################################################
# Timing Constraints
###############################################################################

#create_clock -period 10.000 -name pcie_clkin [get_ports pcie_clkin_p]

###############################################################################
# Physical Constraints
###############################################################################

# Input reset is resynchronized within FPGA design as necessary
set_false_path -from [get_ports pci_reset]



###############################################################################
# Additional design / project settings
###############################################################################

# High-speed configuration so FPGA is up in time to negotiate with PCIe root complex
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN Div-1 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

# The default image is an "update" image- can run bare or as part of a multiboot
# Just need to enable this for an update image
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]



