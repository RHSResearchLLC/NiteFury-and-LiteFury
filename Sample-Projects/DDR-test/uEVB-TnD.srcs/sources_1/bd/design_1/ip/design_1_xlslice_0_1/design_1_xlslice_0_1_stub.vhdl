-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Jun 15 17:42:26 2018
-- Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/dr/GitHub/uEVB/Sample-Projects/TnD/uEVB-TnD.srcs/sources_1/bd/design_1/ip/design_1_xlslice_0_1/design_1_xlslice_0_1_stub.vhdl
-- Design      : design_1_xlslice_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_xlslice_0_1 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 26 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_xlslice_0_1;

architecture stub of design_1_xlslice_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[26:0],Dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice_v1_0_1_xlslice,Vivado 2018.1";
begin
end;
