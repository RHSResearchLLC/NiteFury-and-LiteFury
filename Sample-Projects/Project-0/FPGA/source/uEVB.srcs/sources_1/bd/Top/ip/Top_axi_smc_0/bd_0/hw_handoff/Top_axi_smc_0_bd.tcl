
################################################################
# This is a generated script based on design: bd_d445
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source bd_d445_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name bd_d445

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design -bdsource SBD $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: s00_nodes
proc create_hier_cell_s00_nodes { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_s00_nodes() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AR
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_AW
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_B
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_R
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:sc_rtl:1.0 M_SC_W
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AR
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_AW
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_B
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_R
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:sc_rtl:1.0 S_SC_W

  # Create pins
  create_bd_pin -dir I -type clk m_sc_clk
  create_bd_pin -dir I -type rst m_sc_resetn
  create_bd_pin -dir I -type clk s_sc_clk
  create_bd_pin -dir I -type rst s_sc_resetn

  # Create instance: s00_ar_node, and set properties
  set s00_ar_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_ar_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {0} \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.CHANNEL {2} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {8} \
   CONFIG.M01_NUM_BYTES {8} \
   CONFIG.M02_NUM_BYTES {8} \
   CONFIG.M03_NUM_BYTES {8} \
   CONFIG.M04_NUM_BYTES {8} \
   CONFIG.M05_NUM_BYTES {8} \
   CONFIG.M06_NUM_BYTES {8} \
   CONFIG.M07_NUM_BYTES {8} \
   CONFIG.M08_NUM_BYTES {8} \
   CONFIG.M09_NUM_BYTES {8} \
   CONFIG.M10_NUM_BYTES {8} \
   CONFIG.M11_NUM_BYTES {8} \
   CONFIG.M12_NUM_BYTES {8} \
   CONFIG.M13_NUM_BYTES {8} \
   CONFIG.M14_NUM_BYTES {8} \
   CONFIG.M15_NUM_BYTES {8} \
   CONFIG.MAX_PAYLD_BYTES {8} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {170} \
   CONFIG.S00_NUM_BYTES {8} \
   CONFIG.S01_NUM_BYTES {8} \
   CONFIG.S02_NUM_BYTES {8} \
   CONFIG.S03_NUM_BYTES {8} \
   CONFIG.S04_NUM_BYTES {8} \
   CONFIG.S05_NUM_BYTES {8} \
   CONFIG.S06_NUM_BYTES {8} \
   CONFIG.S07_NUM_BYTES {8} \
   CONFIG.S08_NUM_BYTES {8} \
   CONFIG.S09_NUM_BYTES {8} \
   CONFIG.S10_NUM_BYTES {8} \
   CONFIG.S11_NUM_BYTES {8} \
   CONFIG.S12_NUM_BYTES {8} \
   CONFIG.S13_NUM_BYTES {8} \
   CONFIG.S14_NUM_BYTES {8} \
   CONFIG.S15_NUM_BYTES {8} \
   CONFIG.SC_ROUTE_WIDTH {1} \
   CONFIG.USER_WIDTH {0} \
 ] $s00_ar_node

  # Create instance: s00_aw_node, and set properties
  set s00_aw_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_aw_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {0} \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.CHANNEL {3} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {8} \
   CONFIG.M01_NUM_BYTES {8} \
   CONFIG.M02_NUM_BYTES {8} \
   CONFIG.M03_NUM_BYTES {8} \
   CONFIG.M04_NUM_BYTES {8} \
   CONFIG.M05_NUM_BYTES {8} \
   CONFIG.M06_NUM_BYTES {8} \
   CONFIG.M07_NUM_BYTES {8} \
   CONFIG.M08_NUM_BYTES {8} \
   CONFIG.M09_NUM_BYTES {8} \
   CONFIG.M10_NUM_BYTES {8} \
   CONFIG.M11_NUM_BYTES {8} \
   CONFIG.M12_NUM_BYTES {8} \
   CONFIG.M13_NUM_BYTES {8} \
   CONFIG.M14_NUM_BYTES {8} \
   CONFIG.M15_NUM_BYTES {8} \
   CONFIG.MAX_PAYLD_BYTES {8} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {170} \
   CONFIG.S00_NUM_BYTES {8} \
   CONFIG.S01_NUM_BYTES {8} \
   CONFIG.S02_NUM_BYTES {8} \
   CONFIG.S03_NUM_BYTES {8} \
   CONFIG.S04_NUM_BYTES {8} \
   CONFIG.S05_NUM_BYTES {8} \
   CONFIG.S06_NUM_BYTES {8} \
   CONFIG.S07_NUM_BYTES {8} \
   CONFIG.S08_NUM_BYTES {8} \
   CONFIG.S09_NUM_BYTES {8} \
   CONFIG.S10_NUM_BYTES {8} \
   CONFIG.S11_NUM_BYTES {8} \
   CONFIG.S12_NUM_BYTES {8} \
   CONFIG.S13_NUM_BYTES {8} \
   CONFIG.S14_NUM_BYTES {8} \
   CONFIG.S15_NUM_BYTES {8} \
   CONFIG.SC_ROUTE_WIDTH {1} \
   CONFIG.USER_WIDTH {0} \
 ] $s00_aw_node

  # Create instance: s00_b_node, and set properties
  set s00_b_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_b_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {0} \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.CHANNEL {4} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {8} \
   CONFIG.M01_NUM_BYTES {8} \
   CONFIG.M02_NUM_BYTES {8} \
   CONFIG.M03_NUM_BYTES {8} \
   CONFIG.M04_NUM_BYTES {8} \
   CONFIG.M05_NUM_BYTES {8} \
   CONFIG.M06_NUM_BYTES {8} \
   CONFIG.M07_NUM_BYTES {8} \
   CONFIG.M08_NUM_BYTES {8} \
   CONFIG.M09_NUM_BYTES {8} \
   CONFIG.M10_NUM_BYTES {8} \
   CONFIG.M11_NUM_BYTES {8} \
   CONFIG.M12_NUM_BYTES {8} \
   CONFIG.M13_NUM_BYTES {8} \
   CONFIG.M14_NUM_BYTES {8} \
   CONFIG.M15_NUM_BYTES {8} \
   CONFIG.MAX_PAYLD_BYTES {8} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {5} \
   CONFIG.S00_NUM_BYTES {8} \
   CONFIG.S01_NUM_BYTES {8} \
   CONFIG.S02_NUM_BYTES {8} \
   CONFIG.S03_NUM_BYTES {8} \
   CONFIG.S04_NUM_BYTES {8} \
   CONFIG.S05_NUM_BYTES {8} \
   CONFIG.S06_NUM_BYTES {8} \
   CONFIG.S07_NUM_BYTES {8} \
   CONFIG.S08_NUM_BYTES {8} \
   CONFIG.S09_NUM_BYTES {8} \
   CONFIG.S10_NUM_BYTES {8} \
   CONFIG.S11_NUM_BYTES {8} \
   CONFIG.S12_NUM_BYTES {8} \
   CONFIG.S13_NUM_BYTES {8} \
   CONFIG.S14_NUM_BYTES {8} \
   CONFIG.S15_NUM_BYTES {8} \
   CONFIG.SC_ROUTE_WIDTH {1} \
   CONFIG.USER_WIDTH {0} \
 ] $s00_b_node

  # Create instance: s00_r_node, and set properties
  set s00_r_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_r_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {0} \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.CHANNEL {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {8} \
   CONFIG.M01_NUM_BYTES {8} \
   CONFIG.M02_NUM_BYTES {8} \
   CONFIG.M03_NUM_BYTES {8} \
   CONFIG.M04_NUM_BYTES {8} \
   CONFIG.M05_NUM_BYTES {8} \
   CONFIG.M06_NUM_BYTES {8} \
   CONFIG.M07_NUM_BYTES {8} \
   CONFIG.M08_NUM_BYTES {8} \
   CONFIG.M09_NUM_BYTES {8} \
   CONFIG.M10_NUM_BYTES {8} \
   CONFIG.M11_NUM_BYTES {8} \
   CONFIG.M12_NUM_BYTES {8} \
   CONFIG.M13_NUM_BYTES {8} \
   CONFIG.M14_NUM_BYTES {8} \
   CONFIG.M15_NUM_BYTES {8} \
   CONFIG.MAX_PAYLD_BYTES {8} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {83} \
   CONFIG.S00_NUM_BYTES {8} \
   CONFIG.S01_NUM_BYTES {8} \
   CONFIG.S02_NUM_BYTES {8} \
   CONFIG.S03_NUM_BYTES {8} \
   CONFIG.S04_NUM_BYTES {8} \
   CONFIG.S05_NUM_BYTES {8} \
   CONFIG.S06_NUM_BYTES {8} \
   CONFIG.S07_NUM_BYTES {8} \
   CONFIG.S08_NUM_BYTES {8} \
   CONFIG.S09_NUM_BYTES {8} \
   CONFIG.S10_NUM_BYTES {8} \
   CONFIG.S11_NUM_BYTES {8} \
   CONFIG.S12_NUM_BYTES {8} \
   CONFIG.S13_NUM_BYTES {8} \
   CONFIG.S14_NUM_BYTES {8} \
   CONFIG.S15_NUM_BYTES {8} \
   CONFIG.SC_ROUTE_WIDTH {1} \
   CONFIG.USER_BITS_PER_BYTE {0} \
 ] $s00_r_node

  # Create instance: s00_w_node, and set properties
  set s00_w_node [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_node:1.0 s00_w_node ]
  set_property -dict [ list \
   CONFIG.ACLKEN_CONVERSION {0} \
   CONFIG.ACLK_RELATIONSHIP {0} \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.CHANNEL {1} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.M00_NUM_BYTES {8} \
   CONFIG.M01_NUM_BYTES {8} \
   CONFIG.M02_NUM_BYTES {8} \
   CONFIG.M03_NUM_BYTES {8} \
   CONFIG.M04_NUM_BYTES {8} \
   CONFIG.M05_NUM_BYTES {8} \
   CONFIG.M06_NUM_BYTES {8} \
   CONFIG.M07_NUM_BYTES {8} \
   CONFIG.M08_NUM_BYTES {8} \
   CONFIG.M09_NUM_BYTES {8} \
   CONFIG.M10_NUM_BYTES {8} \
   CONFIG.M11_NUM_BYTES {8} \
   CONFIG.M12_NUM_BYTES {8} \
   CONFIG.M13_NUM_BYTES {8} \
   CONFIG.M14_NUM_BYTES {8} \
   CONFIG.M15_NUM_BYTES {8} \
   CONFIG.MAX_PAYLD_BYTES {8} \
   CONFIG.M_SEND_PIPELINE {0} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {1} \
   CONFIG.PAYLD_WIDTH {88} \
   CONFIG.S00_NUM_BYTES {8} \
   CONFIG.S01_NUM_BYTES {8} \
   CONFIG.S02_NUM_BYTES {8} \
   CONFIG.S03_NUM_BYTES {8} \
   CONFIG.S04_NUM_BYTES {8} \
   CONFIG.S05_NUM_BYTES {8} \
   CONFIG.S06_NUM_BYTES {8} \
   CONFIG.S07_NUM_BYTES {8} \
   CONFIG.S08_NUM_BYTES {8} \
   CONFIG.S09_NUM_BYTES {8} \
   CONFIG.S10_NUM_BYTES {8} \
   CONFIG.S11_NUM_BYTES {8} \
   CONFIG.S12_NUM_BYTES {8} \
   CONFIG.S13_NUM_BYTES {8} \
   CONFIG.S14_NUM_BYTES {8} \
   CONFIG.S15_NUM_BYTES {8} \
   CONFIG.SC_ROUTE_WIDTH {1} \
   CONFIG.USER_BITS_PER_BYTE {0} \
 ] $s00_w_node

  # Create interface connections
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins S_SC_AR] [get_bd_intf_pins s00_ar_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins S_SC_AW] [get_bd_intf_pins s00_aw_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins S_SC_B] [get_bd_intf_pins s00_b_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins S_SC_R] [get_bd_intf_pins s00_r_node/S_SC]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins S_SC_W] [get_bd_intf_pins s00_w_node/S_SC]
  connect_bd_intf_net -intf_net s00_ar_node_M_SC [get_bd_intf_pins M_SC_AR] [get_bd_intf_pins s00_ar_node/M_SC]
  connect_bd_intf_net -intf_net s00_aw_node_M_SC [get_bd_intf_pins M_SC_AW] [get_bd_intf_pins s00_aw_node/M_SC]
  connect_bd_intf_net -intf_net s00_b_node_M_SC [get_bd_intf_pins M_SC_B] [get_bd_intf_pins s00_b_node/M_SC]
  connect_bd_intf_net -intf_net s00_r_node_M_SC [get_bd_intf_pins M_SC_R] [get_bd_intf_pins s00_r_node/M_SC]
  connect_bd_intf_net -intf_net s00_w_node_M_SC [get_bd_intf_pins M_SC_W] [get_bd_intf_pins s00_w_node/M_SC]

  # Create port connections
  connect_bd_net -net m_sc_clk_1 [get_bd_pins m_sc_clk] [get_bd_pins s00_ar_node/m_sc_aclk] [get_bd_pins s00_aw_node/m_sc_aclk] [get_bd_pins s00_b_node/s_sc_aclk] [get_bd_pins s00_r_node/s_sc_aclk] [get_bd_pins s00_w_node/m_sc_aclk]
  connect_bd_net -net m_sc_resetn_1 [get_bd_pins m_sc_resetn] [get_bd_pins s00_ar_node/m_sc_aresetn] [get_bd_pins s00_aw_node/m_sc_aresetn] [get_bd_pins s00_b_node/s_sc_aresetn] [get_bd_pins s00_r_node/s_sc_aresetn] [get_bd_pins s00_w_node/m_sc_aresetn]
  connect_bd_net -net s_sc_clk_1 [get_bd_pins s_sc_clk] [get_bd_pins s00_ar_node/s_sc_aclk] [get_bd_pins s00_aw_node/s_sc_aclk] [get_bd_pins s00_b_node/m_sc_aclk] [get_bd_pins s00_r_node/m_sc_aclk] [get_bd_pins s00_w_node/s_sc_aclk]
  connect_bd_net -net s_sc_resetn_1 [get_bd_pins s_sc_resetn] [get_bd_pins s00_ar_node/s_sc_aresetn] [get_bd_pins s00_aw_node/s_sc_aresetn] [get_bd_pins s00_b_node/m_sc_aresetn] [get_bd_pins s00_r_node/m_sc_aresetn] [get_bd_pins s00_w_node/s_sc_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: s00_entry_pipeline
proc create_hier_cell_s00_entry_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_s00_entry_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: s00_mmu, and set properties
  set s00_mmu [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_mmu:1.0 s00_mmu ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.ID_WIDTH {4} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MSC000_ROUTE {0b1} \
   CONFIG.MSC_ROUTE_WIDTH {1} \
   CONFIG.NUM_MSC {1} \
   CONFIG.NUM_SEG {1} \
   CONFIG.RDATA_WIDTH {64} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SEG000_BASE_ADDR {0x0000000080000000} \
   CONFIG.SEG000_SECURE_READ {0} \
   CONFIG.SEG000_SECURE_WRITE {0} \
   CONFIG.SEG000_SEP_ROUTE {0b0000000000000000000000000000000000000000000000000000000000000000} \
   CONFIG.SEG000_SIZE {29} \
   CONFIG.SEG000_SUPPORTS_READ {1} \
   CONFIG.SEG000_SUPPORTS_WRITE {1} \
   CONFIG.SUPPORTS_READ_DECERR {1} \
   CONFIG.SUPPORTS_WRITE_DECERR {1} \
   CONFIG.S_ARUSER_WIDTH {0} \
   CONFIG.S_AWUSER_WIDTH {0} \
   CONFIG.S_BUSER_WIDTH {0} \
   CONFIG.S_PROTOCOL {AXI4} \
   CONFIG.S_RUSER_WIDTH {0} \
   CONFIG.S_WUSER_WIDTH {0} \
   CONFIG.WDATA_WIDTH {64} \
 ] $s00_mmu

  # Create instance: s00_si_converter, and set properties
  set s00_si_converter [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_si_converter:1.0 s00_si_converter ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.HAS_BURST {0} \
   CONFIG.ID_WIDTH {1} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.LIMIT_READ_LENGTH {0} \
   CONFIG.LIMIT_WRITE_LENGTH {0} \
   CONFIG.MAX_RUSER_BITS_PER_BYTE {0} \
   CONFIG.MAX_WUSER_BITS_PER_BYTE {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.MSC000_RDATA_WIDTH {64} \
   CONFIG.MSC000_WDATA_WIDTH {64} \
   CONFIG.NUM_MSC {1} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_SEG {1} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.RDATA_WIDTH {64} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SEP000_PROTOCOL {AXI4} \
   CONFIG.SEP000_RDATA_WIDTH {64} \
   CONFIG.SEP000_WDATA_WIDTH {64} \
   CONFIG.SUPPORTS_NARROW {0} \
   CONFIG.S_RUSER_BITS_PER_BYTE {0} \
   CONFIG.S_WUSER_BITS_PER_BYTE {0} \
   CONFIG.WDATA_WIDTH {64} \
 ] $s00_si_converter

  # Create instance: s00_transaction_regulator, and set properties
  set s00_transaction_regulator [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_transaction_regulator:1.0 s00_transaction_regulator ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {64} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MEP_IDENTIFIER {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.RDATA_WIDTH {64} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SEP_ROUTE_WIDTH {1} \
   CONFIG.SUPPORTS_READ_DEADLOCK {0} \
   CONFIG.SUPPORTS_WRITE_DEADLOCK {0} \
   CONFIG.S_ID_WIDTH {4} \
   CONFIG.WDATA_WIDTH {64} \
 ] $s00_transaction_regulator

  # Create interface connections
  connect_bd_intf_net -intf_net s00_mmu_M_AXI [get_bd_intf_pins s00_mmu/M_AXI] [get_bd_intf_pins s00_transaction_regulator/S_AXI]
  connect_bd_intf_net -intf_net s00_si_converter_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins s00_si_converter/M_AXI]
  connect_bd_intf_net -intf_net s00_transaction_regulator_M_AXI [get_bd_intf_pins s00_si_converter/S_AXI] [get_bd_intf_pins s00_transaction_regulator/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins s00_mmu/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins s00_mmu/aclk] [get_bd_pins s00_si_converter/aclk] [get_bd_pins s00_transaction_regulator/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins s00_mmu/aresetn] [get_bd_pins s00_si_converter/aresetn] [get_bd_pins s00_transaction_regulator/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: m00_exit_pipeline
proc create_hier_cell_m00_exit_pipeline { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_m00_exit_pipeline() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 m_axi
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn

  # Create instance: m00_exit, and set properties
  set m00_exit [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_exit:1.0 m00_exit ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {29} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_LOCK {0} \
   CONFIG.IS_CASCADED {0} \
   CONFIG.MAX_RUSER_BITS_PER_BYTE {0} \
   CONFIG.MAX_WUSER_BITS_PER_BYTE {0} \
   CONFIG.MEP_IDENTIFIER_WIDTH {1} \
   CONFIG.M_ARUSER_WIDTH {0} \
   CONFIG.M_AWUSER_WIDTH {0} \
   CONFIG.M_BUSER_WIDTH {0} \
   CONFIG.M_ID_WIDTH {0} \
   CONFIG.M_MAX_BURST_LENGTH {256} \
   CONFIG.M_PROTOCOL {AXI4} \
   CONFIG.M_RUSER_BITS_PER_BYTE {0} \
   CONFIG.M_RUSER_WIDTH {0} \
   CONFIG.M_WUSER_BITS_PER_BYTE {0} \
   CONFIG.M_WUSER_WIDTH {0} \
   CONFIG.NUM_MSC {1} \
   CONFIG.RDATA_WIDTH {64} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SSC000_ROUTE {0b1} \
   CONFIG.SSC001_ROUTE {0b0} \
   CONFIG.SSC_ROUTE_WIDTH {1} \
   CONFIG.S_ID_WIDTH {1} \
   CONFIG.WDATA_WIDTH {64} \
 ] $m00_exit

  # Create interface connections
  connect_bd_intf_net -intf_net m00_exit_M_AXI [get_bd_intf_pins m_axi] [get_bd_intf_pins m00_exit/M_AXI]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins m00_exit/S_AXI]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins m00_exit/aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins m00_exit/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: clk_map
proc create_hier_cell_clk_map { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_clk_map() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -type clk M00_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst M00_ARESETN
  create_bd_pin -dir O -type clk S00_ACLK
  create_bd_pin -dir O -from 0 -to 0 -type rst S00_ARESETN
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type clk aclk1
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O -type rst aresetn_out
  create_bd_pin -dir O -type clk swbd_aclk
  create_bd_pin -dir O -from 0 -to 0 -type rst swbd_aresetn

  # Create instance: one, and set properties
  set one [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 one ]

  # Create instance: psr0, and set properties
  set psr0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr0 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
 ] $psr0

  # Create instance: psr_aclk, and set properties
  set psr_aclk [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_aclk ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
 ] $psr_aclk

  # Create instance: psr_aclk1, and set properties
  set psr_aclk1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 psr_aclk1 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
   CONFIG.C_AUX_RST_WIDTH {1} \
 ] $psr_aclk1

  # Create port connections
  connect_bd_net -net clk_map_aclk1_net [get_bd_pins M00_ACLK] [get_bd_pins aclk1] [get_bd_pins psr0/slowest_sync_clk] [get_bd_pins psr_aclk1/slowest_sync_clk]
  connect_bd_net -net clk_map_aclk_net [get_bd_pins S00_ACLK] [get_bd_pins aclk] [get_bd_pins swbd_aclk] [get_bd_pins psr_aclk/slowest_sync_clk]
  connect_bd_net -net clk_map_aresetn_net [get_bd_pins aresetn] [get_bd_pins psr0/aux_reset_in] [get_bd_pins psr_aclk/aux_reset_in] [get_bd_pins psr_aclk1/aux_reset_in]
  connect_bd_net -net one_dout [get_bd_pins one/dout] [get_bd_pins psr0/ext_reset_in]
  connect_bd_net -net psr0_interconnect_aresetn [get_bd_pins psr0/interconnect_aresetn] [get_bd_pins psr_aclk/ext_reset_in] [get_bd_pins psr_aclk1/ext_reset_in]
  connect_bd_net -net psr_aclk1_interconnect_aresetn [get_bd_pins M00_ARESETN] [get_bd_pins psr_aclk1/interconnect_aresetn]
  connect_bd_net -net psr_aclk_interconnect_aresetn [get_bd_pins S00_ARESETN] [get_bd_pins swbd_aresetn] [get_bd_pins psr_aclk/interconnect_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M00_AXI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M00_AXI ]
  set_property -dict [ list \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   ] $M00_AXI
  set S00_AXI [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI ]

  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {S00_AXI} \
 ] $aclk
  set aclk1 [ create_bd_port -dir I -type clk aclk1 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {M00_AXI} \
 ] $aclk1
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $aresetn

  # Create instance: clk_map
  create_hier_cell_clk_map [current_bd_instance .] clk_map

  # Create instance: m00_exit_pipeline
  create_hier_cell_m00_exit_pipeline [current_bd_instance .] m00_exit_pipeline

  # Create instance: m00_sc2axi, and set properties
  set m00_sc2axi [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_sc2axi:1.0 m00_sc2axi ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {29} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {64} \
   CONFIG.AXI_WDATA_WIDTH {64} \
   CONFIG.MSC_ROUTE_WIDTH {1} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {64} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {64} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {64} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {1} \
 ] $m00_sc2axi

  # Create instance: s00_axi2sc, and set properties
  set s00_axi2sc [ create_bd_cell -type ip -vlnv xilinx.com:ip:sc_axi2sc:1.0 s00_axi2sc ]
  set_property -dict [ list \
   CONFIG.AXI_ADDR_WIDTH {64} \
   CONFIG.AXI_ID_WIDTH {1} \
   CONFIG.AXI_RDATA_WIDTH {64} \
   CONFIG.AXI_WDATA_WIDTH {64} \
   CONFIG.MSC_ROUTE_WIDTH {1} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.SC_ADDR_WIDTH {64} \
   CONFIG.SC_ARUSER_WIDTH {0} \
   CONFIG.SC_AWUSER_WIDTH {0} \
   CONFIG.SC_BUSER_WIDTH {0} \
   CONFIG.SC_ID_WIDTH {1} \
   CONFIG.SC_RDATA_WIDTH {64} \
   CONFIG.SC_RUSER_BITS_PER_BYTE {0} \
   CONFIG.SC_WDATA_WIDTH {64} \
   CONFIG.SC_WUSER_BITS_PER_BYTE {0} \
   CONFIG.SSC_ROUTE_WIDTH {1} \
 ] $s00_axi2sc

  # Create instance: s00_entry_pipeline
  create_hier_cell_s00_entry_pipeline [current_bd_instance .] s00_entry_pipeline

  # Create instance: s00_nodes
  create_hier_cell_s00_nodes [current_bd_instance .] s00_nodes

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_ports S00_AXI] [get_bd_intf_pins s00_entry_pipeline/s_axi]
  connect_bd_intf_net -intf_net S_SC_AR_1 [get_bd_intf_pins s00_axi2sc/M_SC_AR] [get_bd_intf_pins s00_nodes/S_SC_AR]
  connect_bd_intf_net -intf_net S_SC_AW_1 [get_bd_intf_pins s00_axi2sc/M_SC_AW] [get_bd_intf_pins s00_nodes/S_SC_AW]
  connect_bd_intf_net -intf_net S_SC_B_1 [get_bd_intf_pins m00_sc2axi/M_SC_B] [get_bd_intf_pins s00_nodes/S_SC_B]
  connect_bd_intf_net -intf_net S_SC_R_1 [get_bd_intf_pins m00_sc2axi/M_SC_R] [get_bd_intf_pins s00_nodes/S_SC_R]
  connect_bd_intf_net -intf_net S_SC_W_1 [get_bd_intf_pins s00_axi2sc/M_SC_W] [get_bd_intf_pins s00_nodes/S_SC_W]
  connect_bd_intf_net -intf_net m00_exit_pipeline_m_axi [get_bd_intf_ports M00_AXI] [get_bd_intf_pins m00_exit_pipeline/m_axi]
  connect_bd_intf_net -intf_net m00_sc2axi_M_AXI [get_bd_intf_pins m00_exit_pipeline/s_axi] [get_bd_intf_pins m00_sc2axi/M_AXI]
  connect_bd_intf_net -intf_net s00_entry_pipeline_m_axi [get_bd_intf_pins s00_axi2sc/S_AXI] [get_bd_intf_pins s00_entry_pipeline/m_axi]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_AR [get_bd_intf_pins m00_sc2axi/S_SC_AR] [get_bd_intf_pins s00_nodes/M_SC_AR]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_AW [get_bd_intf_pins m00_sc2axi/S_SC_AW] [get_bd_intf_pins s00_nodes/M_SC_AW]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_B [get_bd_intf_pins s00_axi2sc/S_SC_B] [get_bd_intf_pins s00_nodes/M_SC_B]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_R [get_bd_intf_pins s00_axi2sc/S_SC_R] [get_bd_intf_pins s00_nodes/M_SC_R]
  connect_bd_intf_net -intf_net s00_nodes_M_SC_W [get_bd_intf_pins m00_sc2axi/S_SC_W] [get_bd_intf_pins s00_nodes/M_SC_W]

  # Create port connections
  connect_bd_net -net aclk1_1 [get_bd_ports aclk1] [get_bd_pins clk_map/aclk1]
  connect_bd_net -net aclk_1 [get_bd_pins clk_map/S00_ACLK] [get_bd_pins s00_axi2sc/aclk] [get_bd_pins s00_entry_pipeline/aclk] [get_bd_pins s00_nodes/s_sc_clk]
  connect_bd_net -net aclk_net [get_bd_ports aclk] [get_bd_pins clk_map/aclk]
  connect_bd_net -net aresetn_1 [get_bd_ports aresetn] [get_bd_pins clk_map/aresetn]
  connect_bd_net -net aresetn_2 [get_bd_pins clk_map/S00_ARESETN] [get_bd_pins s00_entry_pipeline/aresetn] [get_bd_pins s00_nodes/s_sc_resetn]
  connect_bd_net -net aresetn_net -boundary_type upper [get_bd_pins clk_map/aresetn_out]
  connect_bd_net -net m_sc_clk_1 [get_bd_pins clk_map/M00_ACLK] [get_bd_pins m00_exit_pipeline/aclk] [get_bd_pins m00_sc2axi/aclk] [get_bd_pins s00_nodes/m_sc_clk]
  connect_bd_net -net m_sc_resetn_1 [get_bd_pins clk_map/M00_ARESETN] [get_bd_pins m00_exit_pipeline/aresetn] [get_bd_pins s00_nodes/m_sc_resetn]
  connect_bd_net -net swbd_aclk_net -boundary_type upper [get_bd_pins clk_map/swbd_aclk]
  connect_bd_net -net swbd_aresetn_net -boundary_type upper [get_bd_pins clk_map/swbd_aresetn]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


