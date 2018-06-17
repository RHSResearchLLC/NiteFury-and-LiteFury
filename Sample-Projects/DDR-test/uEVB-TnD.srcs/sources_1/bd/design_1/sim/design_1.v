//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Fri Jun 15 20:18:52 2018
//Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]ddr_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 ddr CLK_P" *) input [0:0]ddr_clk_p;
  input emc_clk;

  wire [26:0]c_counter_binary_0_Q;
  wire [26:0]c_counter_binary_1_Q;
  wire [0:0]ddr_1_CLK_N;
  wire [0:0]ddr_1_CLK_P;
  wire emc_clk_1;
  wire [0:0]util_ds_buf_0_IBUF_OUT;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;

  assign LED_A1[0] = xlslice_0_Dout;
  assign LED_A2[0] = xlslice_2_Dout;
  assign LED_A3[0] = xlslice_1_Dout;
  assign LED_A4[0] = xlslice_3_Dout;
  assign ddr_1_CLK_N = ddr_clk_n[0];
  assign ddr_1_CLK_P = ddr_clk_p[0];
  assign emc_clk_1 = emc_clk;
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(util_ds_buf_0_IBUF_OUT),
        .Q(c_counter_binary_0_Q));
  design_1_c_counter_binary_0_1 c_counter_binary_1
       (.CLK(emc_clk_1),
        .Q(c_counter_binary_1_Q));
  design_1_util_ds_buf_0_0 util_ds_buf_0
       (.IBUF_DS_N(ddr_1_CLK_N),
        .IBUF_DS_P(ddr_1_CLK_P),
        .IBUF_OUT(util_ds_buf_0_IBUF_OUT));
  design_1_xlslice_0_0 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_0_1 xlslice_1
       (.Din(c_counter_binary_1_Q),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_0_2 xlslice_2
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_2_Dout));
  design_1_xlslice_1_0 xlslice_3
       (.Din(c_counter_binary_1_Q),
        .Dout(xlslice_3_Dout));
endmodule
