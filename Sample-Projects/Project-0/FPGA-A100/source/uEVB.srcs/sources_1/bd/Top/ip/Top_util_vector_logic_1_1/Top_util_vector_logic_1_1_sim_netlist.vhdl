-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Aug 22 14:11:18 2018
-- Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Top_util_vector_logic_1_1 -prefix
--               Top_util_vector_logic_1_1_ Top_util_vector_logic_0_1_sim_netlist.vhdl
-- Design      : Top_util_vector_logic_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Top_util_vector_logic_1_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Top_util_vector_logic_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Top_util_vector_logic_1_1 : entity is "Top_util_vector_logic_0_1,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Top_util_vector_logic_1_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Top_util_vector_logic_1_1 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.1";
end Top_util_vector_logic_1_1;

architecture STRUCTURE of Top_util_vector_logic_1_1 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Op1(0),
      I1 => Op2(0),
      O => Res(0)
    );
end STRUCTURE;
