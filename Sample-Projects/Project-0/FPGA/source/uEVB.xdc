###############################################################################
# Pinout and Related I/O Constraints
###############################################################################


###############################################################################
# PCIe x4
###############################################################################

# PCIe lane 0
set_property PACKAGE_PIN A10 [get_ports {pcie_mgt_rxn[0]}]
set_property PACKAGE_PIN B10 [get_ports {pcie_mgt_rxp[0]}]
set_property PACKAGE_PIN A6  [get_ports {pcie_mgt_txn[0]}]
set_property PACKAGE_PIN B6  [get_ports {pcie_mgt_txp[0]}]

# PCIe lane 1
set_property PACKAGE_PIN A8 [get_ports {pcie_mgt_rxn[1]}]
set_property PACKAGE_PIN B8 [get_ports {pcie_mgt_rxp[1]}]
set_property PACKAGE_PIN A4 [get_ports {pcie_mgt_txn[1]}]
set_property PACKAGE_PIN B4 [get_ports {pcie_mgt_txp[1]}]

# PCIe lane 2
set_property PACKAGE_PIN C11 [get_ports {pcie_mgt_rxn[2]}]
set_property PACKAGE_PIN D11 [get_ports {pcie_mgt_rxp[2]}]
set_property PACKAGE_PIN C5 [get_ports {pcie_mgt_txn[2]}]
set_property PACKAGE_PIN D5 [get_ports {pcie_mgt_txp[2]}]

# PCIe lane 3
set_property PACKAGE_PIN C9 [get_ports {pcie_mgt_rxn[3]}]
set_property PACKAGE_PIN D9 [get_ports {pcie_mgt_rxp[3]}]
set_property PACKAGE_PIN C7 [get_ports {pcie_mgt_txn[3]}]
set_property PACKAGE_PIN D7 [get_ports {pcie_mgt_txp[3]}]

# PCIe refclock
set_property PACKAGE_PIN E6 [get_ports {pcie_clkin_clk_n[0]}]
set_property PACKAGE_PIN F6 [get_ports {pcie_clkin_clk_p[0]}]

# Other PCIe signals
set_property PACKAGE_PIN G1 [get_ports {pcie_clkreq_l[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {pcie_clkreq_l[0]}]
set_property PACKAGE_PIN J1 [get_ports pci_reset]
set_property IOSTANDARD LVCMOS33 [get_ports pci_reset]

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

set_property PACKAGE_PIN G4 [get_ports LED_A3]
set_property IOSTANDARD LVCMOS33 [get_ports LED_A3]
set_property PULLUP true [get_ports LED_A3]
set_property DRIVE 8 [get_ports LED_A3]

set_property PACKAGE_PIN H4 [get_ports LED_A4]
set_property IOSTANDARD LVCMOS33 [get_ports LED_A4]
set_property PULLUP true [get_ports LED_A4]
set_property DRIVE 8 [get_ports LED_A4]


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
#set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

