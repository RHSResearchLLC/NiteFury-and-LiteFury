// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Jun 15 17:44:43 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_0 -prefix
//               design_1_c_counter_binary_0_0_ design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
PPomFh44QU/zF2Y4O1equs7s/dC8mziKKj+01xD22rMdQ67eFNknSCEw+5+zfb7uwgMnolgODTF5
RbeGnUxLTrGUq3zf981MhV3TOCPU2i5iOpEg6be4wbtXqSkOzhZSqRFsxlzCkbeJ14iFuLlsphBa
NzRAy2EeH9pikOZlVE4qIAHONXI3u77tlQz1a1I7QV8maHA22YY+5WejjA8Bx1rrNj+PtZIirrfd
ten+hXPaR1bRV+fIWkWXwvKXrOfYY8ZixZeF6pZdiIIs9FTHPLU10+YXPv1Vi4b9HORUnNRqa6A0
ch+n863JGb8XZqeUAsvJFLmaPh4WKZU4EmfpEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pPks4IkL1qZyB0Nty2SFpYuaV7BGgudYmuc3Me5p8AOTOzO2M376N0zrHABgpFxRZDxDllsS6Iin
kVHK8xVhKPub4iHKlqSMHDdlcRsRDPdDaglCwfpGX8J67m5rr3MoMjpP/9VQTCHvZ1vAAz0w6m57
twvict7MxFtRts32+asxD6B5f7oBbnLkeOsk14FaQ1Igfj9HKY2knwo8a1lRbjoTykQmL/OjAykv
TYWGHVeqCaBRJCUVzUL/JeVzPkx5UBakgGwaa7hQNUn7F0txShs6U94OmnGJo4bRFmRJS3iDojxm
3hRtKRB4ISrKRyw5b3UdFSwQUZZAbVBYaoDZ3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15344)
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
