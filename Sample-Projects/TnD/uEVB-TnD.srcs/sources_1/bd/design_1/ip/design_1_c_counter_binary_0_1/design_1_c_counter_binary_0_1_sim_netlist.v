// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Oct 24 11:36:56 2018
// Host        : dr-lt2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dr-lt2/Desktop/github/NiteFury/Sample-Projects/TnD/uEVB-TnD.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_1/design_1_c_counter_binary_0_1_sim_netlist.v
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
qfMs/ujANqC66f15VGRXxChkDGlFFmK6TCszC4933l7T0TOGdsLRvLRv8r7g9ezi2E2YAqoNbGp8
w4vPmw7AEG6D+HKDrw/2Qgob4BVZrYxJq7eIzU5slhNnF1ys7fVuAM3HUCrys5jHjKE1W7gQ3O9D
cACehKdHv8yz6TuMp2/3F+bKlzprCHRvnWKwp5AdXpGFdAUvltAdu84YXxcAt+Q8FNND+lu1i5lZ
b58aL3Vql2OR0HlHlB04BPgDsSfvwHWzK+9Y0rgJPqhVog7fdJ4DoImVEwWBn8BqBRc2nqGtKdqr
oFAV9k90km0QtCxMKExMeK5XjJm8DOmQqMtrQg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ra4oKrNBPE701uTqPNoBIJy3AQxzQDLvNeeI1/qZOk1HuDpMHrZ3hMV9tbE6oEELPcEBs6uVxVsi
5wqfBiCJuhMu+ttvwOkWvLP51teeyBdDShyU522M+iGEq7Mu9mqJoE4GKOZrwRufpVSQV8BfFaYZ
ZsX5Vq7Hs6MG9sG+cTD22iFlYOZGSSP2LU1f1TCnoENpUymXSC+z/YO3EoK7HT1j1GUcPQP7mqEC
Otdc1OBOwhSc8rQqaehVFXIWGI/XE00WISKqOBicwhD+jtQ7ifRZsjHfk2giw1x6Uo5Rq4uMBwhQ
VDmoErFP8P+Tah3RL8/q7MGuXkOrDtmewkX3TQ==

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
