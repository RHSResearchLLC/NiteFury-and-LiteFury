//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Sun Jun  3 19:47:44 2018
//Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
//Command     : generate_target Top.bd
//Design      : Top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Top.hwdef" *) 
module Top
   (A_in,
    B_out);
  input A_in;
  output B_out;

  wire A_in_1;

  assign A_in_1 = A_in;
  assign B_out = A_in_1;
endmodule
