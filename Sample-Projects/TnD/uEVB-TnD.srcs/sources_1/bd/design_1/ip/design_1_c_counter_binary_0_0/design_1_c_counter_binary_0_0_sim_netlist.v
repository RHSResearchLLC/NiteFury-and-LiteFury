// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Jun 10 21:17:30 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dr/Xilinx_proj/uEVB-TnD/uEVB-TnD.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
module design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
JoUn/qNPOJN1U8Y+Rsn70IKme+Xr2tVesxGXmlWg46pM8SSwJ54GFKsSsu/Yg5GeG4VzrN3RJ3Eh
nvgyfWhJKzixLzRH4Cw54bXYGkCxMDhq7FuXYKbFr2Hp2A4kzjL+myU5PcAWkBbC8HkPBSS6H42S
UUS2h29SYqhZqmOdg2RmRv88frg7GosOsCpbqE1UYI2iZoMWlpWPV+gYEmm+BH2pwPVi0NNJky1c
wlR6xX1ClUu37gSQpUAYcXg+ty2rIjC9JUmfnqx9THm4sNB7QfuPjTchg7WY05+vpIc5VsNkGHXS
TEDEydwG7RRX5+ouxglelT1aP0bS8Nwrn9SWng==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TYc5usyyZ8GrWCUUgXwkEIGNLVIcJGFBQmVT+9V8xIYS0i6IEHTabFY+8gUaXQwibnKHKs3aiFKy
Z1mg2vBTfVp0+k3IwKvPp3Ax68peGsGXgdTz6THSVP14g6VR1NWl6yOdT8lBc+DhX2D2ufwUrpqy
Nz5+ziNO0Wc5/a0y30oznanE2fjIMT6wnNXtI1v0GVyIwWpmIA+2fnbG8+Uz+xKFqErrJZ/XYRr3
YXnwDN6BU5DLvfM35XriVxN8lldFlF33vLvdQlYQ0OMptyBBEnoqasPbZgn5KLv9Vgrw+3Ps2YwG
0y010XPDojnIACEFBLqycTQSY68OhMMlynnPaQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15168)
`pragma protect data_block
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
1NL45vax
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
