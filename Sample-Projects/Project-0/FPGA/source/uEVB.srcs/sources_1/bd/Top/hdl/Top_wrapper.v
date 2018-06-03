//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Sun Jun  3 19:47:44 2018
//Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
//Command     : generate_target Top_wrapper.bd
//Design      : Top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Top_wrapper
   (A_in,
    B_out);
  input A_in;
  output B_out;

  wire A_in;
  wire B_out;

  Top Top_i
       (.A_in(A_in),
        .B_out(B_out));
endmodule
