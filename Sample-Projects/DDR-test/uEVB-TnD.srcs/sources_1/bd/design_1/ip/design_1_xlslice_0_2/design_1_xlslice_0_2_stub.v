// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun 15 17:44:27 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_xlslice_0_2 -prefix
//               design_1_xlslice_0_2_ design_1_xlslice_1_0_stub.v
// Design      : design_1_xlslice_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.1" *)
module design_1_xlslice_0_2(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[26:0],Dout[0:0]" */;
  input [26:0]Din;
  output [0:0]Dout;
endmodule
