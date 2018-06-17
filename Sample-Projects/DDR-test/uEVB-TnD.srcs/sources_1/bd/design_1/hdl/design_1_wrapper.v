//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Jun 15 20:18:52 2018
//Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (LED_A1,
    LED_A2,
    LED_A3,
    LED_A4,
    ddr_clk_n,
    ddr_clk_p,
    emc_clk);
  output [0:0]LED_A1;
  output [0:0]LED_A2;
  output [0:0]LED_A3;
  output [0:0]LED_A4;
  input [0:0]ddr_clk_n;
  input [0:0]ddr_clk_p;
  input emc_clk;

  wire [0:0]LED_A1;
  wire [0:0]LED_A2;
  wire [0:0]LED_A3;
  wire [0:0]LED_A4;
  wire [0:0]ddr_clk_n;
  wire [0:0]ddr_clk_p;
  wire emc_clk;

  design_1 design_1_i
       (.LED_A1(LED_A1),
        .LED_A2(LED_A2),
        .LED_A3(LED_A3),
        .LED_A4(LED_A4),
        .ddr_clk_n(ddr_clk_n),
        .ddr_clk_p(ddr_clk_p),
        .emc_clk(emc_clk));
endmodule
