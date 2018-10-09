// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Sep 23 19:24:49 2018
// Host        : dr-lt2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dr-lt2/Desktop/github/NiteFury/Sample-Projects/Project-0/FPGA/source/uEVB.srcs/sources_1/bd/Top/ip/Top_c_counter_binary_0_0/Top_c_counter_binary_0_0_sim_netlist.v
// Design      : Top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Top_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module Top_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Top_util_ds_buf_0_IBUF_OUT" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 26} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 26}" *) output [25:0]Q;

  wire CLK;
  wire [25:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Top_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "26" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module Top_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [25:0]L;
  output THRESH0;
  output [25:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [25:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "26" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Top_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HXV4h5+M0Gyv7vvpLcg9doICq0dE9GVjJBO+hNdPTJvgX0VGA4ugqBKlkEqGuOyKztRGzLB27s8X
6i5leC2InQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
dAxa0GFtAgoazxeRmxSl0Yps/nJ8Rpb3lCs3dkGXEdmxjp4N5EFfyS7U0FLTPNVV4xnePCr4q647
L4KcUzdGFlWPqo/QF8lyz6PEdU6dW8BktZKhrZHQ5uhG7d/Bf0EOVUn0mzfj8sgbaKWZYTEDERK6
pLNcwS3fMTcRzexShzE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qFA2Sas20o42qyLKUfSMJZGJ7FMOuYDRWyURzBBH3n2Qkaa75HLaliBCTs00LUZYplObnmj1+ZAf
80sKN7qGXguQ1PwKDYYHAVh9l9yGVlyNwObLOec7nrtHIPRPZ1Am330sVZYMipFnG9PAZanD2fe4
zBKk26jw4HdRQmG3vM1SWF3vXt1VR+UBS5eMUwG6haQqtGIZWHz48uyl4zc44Tqr2H4sR+yo0gE9
bXUY7Oc0GQvnczTzBftbc9jGOvnoi8sVcybTki5B/gTVWkBqcYl+Bx+SSOCo+FyQZGBqrUAFnf1m
pKFCRJnXqs4g3cmrmEG2RflwrWfJCOs3QdUjPQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EHIPCw3tqvASBeRc846RSvWMIU/QBgZYfNTkmzG9OlWqwIA3ukwCJx+dEAZCMyg/i7GW815EkwKE
ar/FOnRiTLMQpurIVTi3As1Sl6c1DkXq90HBljZSq18EFjvlH8nsGa0654mVCFQN3PiQfUfggiqD
LwP079R222U916zaDIMw6ZgRcbfM7bBAp73emqe6OC5mrt4mMGZ9AbQkGRU4iJeWX5x5zM0ev20/
2HCVT3rThYEK/hMu/29O6ZYpOwhKqVFUV8jaodAIgDRiYY0qd/CTZK9mvOgSUj0t6cJN4/Q/wVKt
mcOTr4F5A5rnCTva3pM2/SBekXOwQb01/rlfUQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L4GJr0S0dl+C4k+rj1r/KaqPKn7XGNysYQlDBTRHxj0Zgto0TejuU3cSjQJkMo/IlhkL5vx3hSMx
8DXh0KGY4W7Mmk5SffBJgti7D1pd1YP3w0zgDKIAkTLpoXaZECn77Jp9JWvdxrSHUb44QeC0VkRr
TT67tMIjtV+eqkCUfUiCSGq39iRyI7EpdVInAevmPCNIG5K4rHLTX0aJWAbgDwBRaTpw7W4wOBUe
Kag07iTsJYfG9TBJdRao3h4g2IyFjrcf4tdYFjQEIGB4Vfxhy6K9JjnkkfxGJQ4A0VrJVKlHsJFv
1+MmwN5+h/oRYCFJgcCtGfttJc2/AOQ8JKB8cw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gW6aOcJbrDMK7JqUnzFxAaYM2DL8EnxF345IOLkdfKxGnLCsw0mROpfP26LD91CJidCf9vaqLHsN
jwsLktZ7qUykkQzv9vOvGkB2KoLh32fPvZjhbcdDei3fy9cH8haCHJCiSghwIIOfzcXDyQO7+mpH
LfBUho9v0PmfLkeqSuE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOgS+O+OWj8gVxfmdd2e+iTOOA4l1LloRJHtygw6wsU5a/FGoLxtLFOm39pCwOesAIo5cgP1cY7j
GMsvnPuTgP6YVNEPrLenO+0bM+rFgEpkVPDLGiQdrj+9tlcVifFJGGcDEFMtdjPm7SvdpsEh2Fzk
ZyTciJbc1vOSbmNUfL7f5SyT4X8NVQCnr4aIhzmrObrl+d/HXH5pWY0/wveklgGbBxwN3pI0aNdn
cY/a3XotdDTVTgdYnz9zaxscNhKuVHf6BpyCfI+XDdopSBDa7E47+Tot6Ck17VwjOOAKkqSNjD7+
HzzA77lmBhIrUxZnuOejS1O/VD/gmpze9ZPaeA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jhLMd1GnQu9uIofOxccmUag+u+du3Ts4LYUn+SS/Gn3E7sUoVjVBKfkrb780PwXYcmmDd7A2WPkf
Twz8EXy2A46CZHPtBPekR/udkeeNIjpV2IRBAWFDmS/cNCbx1BP7EjYhONG2gLoOHHBERBDLayNY
f93i1cq9VT1jFpUPqj8m9LPy9L/OCArK0XSQv3t9jQswGl6V7X8Q2djj0fTUs0jAnObT3I71+2wa
wwvcjySmkyhrNNOpmNs8Zm9tiMbVvE39J6ln+THml15ibgdre5GrBa/Tu/tqH8JQyhxSwqpfUCxe
GsYxxVcgQB+eMfo9FRwoM+YDscbPIqP2fguglQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6FspUDvj+iqkD+YB18bL1KRUc1djx4nrk1tl0XZHCtRT5jiTbJRhwsafqNM+GU0Caa17CpdQloJA
cKqwPFwScdudaMLJprRKv6WlNaljZ975ULglaF0i8gdWw4yFqoLQLSNIRhtk8WjA0nFDbe3lfvD2
ECJtdOr4BCriY+ennmyiOUYfX6f5pssg3/zbem5XpjRTKdTZDoCotbuxW+/VET17O2VWPqbR/arV
bCnKR+ds8qGUuz9J8s3rICTpi6soqA4p12dorYMFfIlUXCqSCqmGm3AOmxkOeFbs/v93dZ/O6nl9
56OHFDLYaDlovNhV4FGzaYFbh+OvWCE4GRty4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15104)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
