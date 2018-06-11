// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Jun 10 21:18:52 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/dr/Xilinx_proj/uEVB-TnD/uEVB-TnD.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_1/design_1_c_counter_binary_0_1_sim_netlist.v
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12 U0
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12_viv i_synth
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
mcOWVO+c+tl4vgF6hZnabu8LcPEhAjwPXGkTYINoidgwjdwjwPyYfnIpDB2BdfDe5AFGkI2m3eJr
IsOfPcDrswCwAVgJvrAj/UtZRLDweqdLnMSAvkFZ/Rb9rVlrC6Oqg7IQHcswiVwYFp1hd38yDJFh
gMitXfgr9b+jPkmS4Y2LwfCiMiChgouP6pQhP6LuGYRZMjrmKgDg4alH+Z4+9OfDjMiVYJrN4J1z
xGxzEQr0FMUbSFahTBi7RdH97VBpczoBQBpWWXCiFrQF2szUWTl81g1LOb1392lEyuTDtRs5sJHI
sHfzDZSJkIVdVIz9SPrhsIEv/ZjSAywBL1TJKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eX131eqpxseuSLvJUCKnzkpSwZcotMtOG9JfzVikW/gEpXlZkcKjcJ6g1rotPrQDxyMskBVReTZn
S1hDhsFxxIe5UwI4tBp7zFt/gPEX8W3V8t7KdiwMoW+md5ZvyuS5xDXoZtvVfI2k0Fcl2qEjtmMN
+38tzE+IAE0wfGH611nsQTpwy3lRDw4oGrD8oT4qAJfjOEoKLIM4fcL0q+7cfoDLKwYElcETfqPA
WjIs5EEBB4FbrHhfKL/geliMRfJByu8S645mnEEorXtkjdsImkE0omWF3txrRbFauafUkWFjeYu/
Tk41fHCXbUT85vBoYE7ELKHRSiTd2OltSbKNEw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15168)
`pragma protect data_block
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
qa/dvWtR
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
