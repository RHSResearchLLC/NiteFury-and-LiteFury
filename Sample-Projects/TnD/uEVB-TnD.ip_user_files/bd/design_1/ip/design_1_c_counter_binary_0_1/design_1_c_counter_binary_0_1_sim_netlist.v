// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun 15 17:44:45 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dr/GitHub/uEVB/Sample-Projects/TnD/uEVB-TnD.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_1/design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_util_ds_buf_0_0_IBUF_OUT" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 27} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 27}" *) output [26:0]Q;

  wire CLK;
  wire [26:0]Q;
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
  (* C_WIDTH = "27" *) 
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "27" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12
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
  input [26:0]L;
  output THRESH0;
  output [26:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [26:0]Q;
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
  (* C_WIDTH = "27" *) 
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
WITRe5LAi4xdKdoRt/tpCjStp1tdnkNE9V1CWmXFPRqTOirGTvHQSZBUMV2/BwH9rT7vug7+czWu
YEcwjcFnzjnp5irT/TCmTcLPifEPxWBkdPuLkPjp5+pfbTJPj8vgZLP3u3bBSoEh80LcmtClrTdn
pQrsxmYuX1UZ/8Cg8E7vTk1Bpv2OC452ngGyJr0cms6dD4bg1ZLz9dKEIIMlxaPG57HtOTweHRUW
Ay2zGZxVCIcoiMOp/im9E7H1wVghD+iXfnwPQig08NXqSMp8hhiFaI2kDqrTU0I9ekCF0hfSCEtP
UAktOQEsb8ofZRSRoCRSUEE1GtGAEpXrjaM/WQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBQKpmRvZ1qQkrQDr1nGUsCy5SAY4c5zHWF41Bdl4AkXsrqexzwhh/XHfgNBlIzrQKy0Zj37ClN/
ELpJRZw5ai2cudmWbUQk8P7Y7H5MzoH4BEirE5KYSAIuwnTZoWXf7rUqdxPVfZPVFc1m+1+gV7ge
t0e/TKGDGTIAF5DZTWqu3LBV6ibm3sQRqeXZznLxR++gPfl9f4E7myV+EUkDj5+GSXsjoA6OqWxK
SYW41Has56/KcRUNfx0hveRrLY9zI49JFgoOCK9u180ng6nKeVAOJ8sFPtM77p3iZQoLzu0rDWxO
nn597Ly5mI345M8kzInQjQbD/CtlbOztAUsj6Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15536)
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
