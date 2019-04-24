-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Oct 24 11:36:51 2018
-- Host        : dr-lt2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/dr-lt2/Desktop/github/NiteFury/Sample-Projects/TnD/uEVB-TnD.srcs/sources_1/bd/design_1/ip/design_1_xlslice_1_0/design_1_xlslice_1_0_sim_netlist.vhdl
-- Design      : design_1_xlslice_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 26 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xlslice_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xlslice_1_0 : entity is "design_1_xlslice_1_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xlslice_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xlslice_1_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.1";
end design_1_xlslice_1_0;

architecture STRUCTURE of design_1_xlslice_1_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 26 downto 0 );
begin
  Dout(0) <= \^din\(26);
  \^din\(26) <= Din(26);
end STRUCTURE;
