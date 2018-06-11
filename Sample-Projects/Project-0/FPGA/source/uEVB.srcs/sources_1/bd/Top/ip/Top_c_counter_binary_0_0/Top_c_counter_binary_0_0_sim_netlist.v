// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Jun 10 22:30:59 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dr/GitHub/uEVB/Sample-Projects/Project-0/FPGA/source/uEVB.srcs/sources_1/bd/Top/ip/Top_c_counter_binary_0_0/Top_c_counter_binary_0_0_sim_netlist.v
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
qT27lbrRdyvI3wNhzU26lwQJ1AmLW67eSaK/9c7l8jo4kmGcssiSiT8tGdQ8k++pPTMQ5NLd0pU/
rTVPwvpVBUzbElAzj46Rx1nIKpRnj9Hsi65QjEKWEzlgkGk7DUHOaqo5wm9HoIkjNvwJvnz2Kclk
gfpaZSqQ4/+z15jYGY9iYBRq3MCyjPGkjI6H1J0DaMGZ5JIqwmSyk+SrurHP8MI6+dK7hQqjnvZQ
c+FR+iLL0QD641toqKNJjfeip37B6+qdKz12eEPNe8M7tbU9dacVGGM3MCDgYSyItuSjSiDxGG6R
8OF4PZTHvy073KTGrKXP8EKEzGinLswcweYUNg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AbeuTi/9adbNqiLq/n0sKm07qfJUpZv1jC3XUKIkanqJkBdOvV/MfNKN577XLkn4SZ2KwhGl7+d/
dNNYuk1OIuZQTL8XCidOZFyThGU3Lj00b7CIer+cGVDk7EO3V/vndomWhiD/CpbhIItmTukODfME
lRWt1CcRM90IH+XbNs75/T8SWGBfhYC9Yf4ENV7AinlZQRwTn4cQN94pSMZWE2RrIdUP4z/goY/l
AoAgh/rQUgiphaOvzXxtLBO34b0Ts3dMQ6i51mOQgQ2a1OqPNyO8PUFrm2pvevD0F5Do95iDrShZ
7YWj45yqwXYQ01KGaDUE0HKRuus2g/ix75rmjw==

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
