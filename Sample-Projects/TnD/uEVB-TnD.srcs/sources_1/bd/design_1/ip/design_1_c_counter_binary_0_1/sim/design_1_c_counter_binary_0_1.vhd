-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:c_counter_binary:12.0
-- IP Revision: 12

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY c_counter_binary_v12_0_12;
USE c_counter_binary_v12_0_12.c_counter_binary_v12_0_12;

ENTITY design_1_c_counter_binary_0_1 IS
  PORT (
    CLK : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
  );
END design_1_c_counter_binary_0_1;

ARCHITECTURE design_1_c_counter_binary_0_1_arch OF design_1_c_counter_binary_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_c_counter_binary_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT c_counter_binary_v12_0_12 IS
    GENERIC (
      C_IMPLEMENTATION : INTEGER;
      C_VERBOSITY : INTEGER;
      C_XDEVICEFAMILY : STRING;
      C_WIDTH : INTEGER;
      C_HAS_CE : INTEGER;
      C_HAS_SCLR : INTEGER;
      C_RESTRICT_COUNT : INTEGER;
      C_COUNT_TO : STRING;
      C_COUNT_BY : STRING;
      C_COUNT_MODE : INTEGER;
      C_THRESH0_VALUE : STRING;
      C_CE_OVERRIDES_SYNC : INTEGER;
      C_HAS_THRESH0 : INTEGER;
      C_HAS_LOAD : INTEGER;
      C_LOAD_LOW : INTEGER;
      C_LATENCY : INTEGER;
      C_FB_LATENCY : INTEGER;
      C_AINIT_VAL : STRING;
      C_SINIT_VAL : STRING;
      C_SCLR_OVERRIDES_SSET : INTEGER;
      C_HAS_SSET : INTEGER;
      C_HAS_SINIT : INTEGER
    );
    PORT (
      CLK : IN STD_LOGIC;
      CE : IN STD_LOGIC;
      SCLR : IN STD_LOGIC;
      SSET : IN STD_LOGIC;
      SINIT : IN STD_LOGIC;
      UP : IN STD_LOGIC;
      LOAD : IN STD_LOGIC;
      L : IN STD_LOGIC_VECTOR(25 DOWNTO 0);
      THRESH0 : OUT STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(25 DOWNTO 0)
    );
  END COMPONENT c_counter_binary_v12_0_12;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Q: SIGNAL IS "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 26} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}" & 
"} value false}}}} DATA_WIDTH 26}";
  ATTRIBUTE X_INTERFACE_INFO OF Q: SIGNAL IS "xilinx.com:signal:data:1.0 q_intf DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_util_ds_buf_0_0_IBUF_OUT";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_intf CLK";
BEGIN
  U0 : c_counter_binary_v12_0_12
    GENERIC MAP (
      C_IMPLEMENTATION => 0,
      C_VERBOSITY => 0,
      C_XDEVICEFAMILY => "artix7",
      C_WIDTH => 26,
      C_HAS_CE => 0,
      C_HAS_SCLR => 0,
      C_RESTRICT_COUNT => 0,
      C_COUNT_TO => "1",
      C_COUNT_BY => "1",
      C_COUNT_MODE => 0,
      C_THRESH0_VALUE => "1",
      C_CE_OVERRIDES_SYNC => 0,
      C_HAS_THRESH0 => 0,
      C_HAS_LOAD => 0,
      C_LOAD_LOW => 0,
      C_LATENCY => 1,
      C_FB_LATENCY => 0,
      C_AINIT_VAL => "0",
      C_SINIT_VAL => "0",
      C_SCLR_OVERRIDES_SSET => 1,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0
    )
    PORT MAP (
      CLK => CLK,
      CE => '1',
      SCLR => '0',
      SSET => '0',
      SINIT => '0',
      UP => '1',
      LOAD => '0',
      L => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 26)),
      Q => Q
    );
END design_1_c_counter_binary_0_1_arch;
