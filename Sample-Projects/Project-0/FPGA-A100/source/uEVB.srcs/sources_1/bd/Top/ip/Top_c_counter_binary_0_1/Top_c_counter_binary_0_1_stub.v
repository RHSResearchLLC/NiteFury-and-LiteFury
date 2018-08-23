// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Aug 22 14:08:52 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/dr/GitHub/uEVB/Sample-Projects/Project-0/FPGA-A100/source/uEVB.srcs/sources_1/bd/Top/ip/Top_c_counter_binary_0_1/Top_c_counter_binary_0_1_stub.v
// Design      : Top_c_counter_binary_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *)
module Top_c_counter_binary_0_1(CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,Q[25:0]" */;
  input CLK;
  output [25:0]Q;
endmodule
