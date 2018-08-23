// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Aug 22 14:08:51 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Top_c_counter_binary_0_0 -prefix
//               Top_c_counter_binary_0_0_ Top_c_counter_binary_0_1_sim_netlist.v
// Design      : Top_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Top_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module Top_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0, CLK_DOMAIN Top_mig_7series_0_0_ui_clk" *) input CLK;
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
RD3G0NbqiUkWEYq1JpKaWvxbOnOJf8aU/Qdd2ST9FdsYvUkpRFFOUsN/3mtwxR455CCczDqZUXsx
WIJg7pDM8SNU67mwQRuJQelaJwJXbyZCKTO9nuUbyZ25X1k4LhliPBaLjWlFhTFLeJQbgpgOi7Dl
9V/mETzlhvMcEvWETk/I3Fu688YV1XEr2W4f/nDuLnuw4p1xr6+jpALO1nYtcmzgGICg4QsACUm7
fk6HPno2OLtMhGznmehdAPhyUbYNk8+HyEkHz78o6umor+mVmECgKWafNHN9axMurT0DRjxZy8uA
qIe3yZAumJcJ4VY/jg4isGRcsIuXnYgCrWRkMw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QHnEIrZrp+9e1T5ykj7OlXQPH2+g5UPtcmSqc7bKj1H2ea9Yuox7vHvv7Ju3st6Owr/kylvCRbJR
jrM6KHBfn1pS5IdeN4E5sCF005oxrgYdD3nc7i4176umz9ajY9sfMRvtO+UttwjQFormNED2/FTf
p5o0qSXSVznp1qtSiWKvyjRMGpDFCw/PL3txa4dGqZxcx3VK48+O/B1NR7HyR6Ra+56WhRRJGMoz
pYavN87czTglsutHTNgjZ7NFR9tFEVbx0HjgVj1KfBhlKdOdI1PyEOk3REZt5v41GIZXLKZTg1fo
kV3H+IHeIMsd0EYGQIn3hVipJzMSsT3g63WWDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14976)
`pragma protect data_block
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
fKwiFfKoxIbDovXPNL5YAgF2Lulv
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
