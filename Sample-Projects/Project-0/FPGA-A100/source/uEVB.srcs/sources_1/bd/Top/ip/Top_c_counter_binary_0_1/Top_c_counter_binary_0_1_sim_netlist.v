// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Wed Aug 22 14:08:52 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/dr/GitHub/uEVB/Sample-Projects/Project-0/FPGA-A100/source/uEVB.srcs/sources_1/bd/Top/ip/Top_c_counter_binary_0_1/Top_c_counter_binary_0_1_sim_netlist.v
// Design      : Top_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Top_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module Top_c_counter_binary_0_1
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
  Top_c_counter_binary_0_1_c_counter_binary_v12_0_12 U0
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
module Top_c_counter_binary_0_1_c_counter_binary_v12_0_12
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
  Top_c_counter_binary_0_1_c_counter_binary_v12_0_12_viv i_synth
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
Tf/RZp7Vs6MklrtZN9jij4lL296WvK4oru/U50hZvdpyryN4UKaVRUSmS62OYcZx8nyH9jYMDIhT
4fDYRTyxeA4MNrR6oxtOEmz0IOhaiRY5TOvZ0fjzxbGg6e6YaLyVz7HdN48ARHoYAyengnnC+zxx
6smzKvNuWXblm+HdsP7oZtW02KB/ofpEg4vwJE36Yvc4BEL5NO0vikfy1WmvcXOBWQktq6ur1uvD
8FhA1LDyg+0BFTRWPZs4coYTtELi6bjlPx5P0AXdXYCiV6X/Hu5YPgO8HLJNRq9zzhPcVAsHiqkk
Hkb+w7LfnjVP4jURFSlDxwzbOJDoG2DpAhXlKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PgTFAlTz6yZEfVXqn61w2H5ww2QgrTDuN5zNiM7eYQiPyOO8fYaGtFp+CGrtifTHl+d3VIZvu+Rp
+xo45uW2EbUiPHTwZE4rc0e3s147U+sqE7QhUjHfpn9eINgH08p/YUe3OiPrTceL6llFdZSLuX62
uKgnLQAF/8y81B3hQN4s+UmCLtwpuw9dgV3xxOsKGGeriXvudO+iVUHl0p1/SQKlbFdT4gMwyH4/
Zeauor7j6rT4V21TysQcKb404fPaZ1XHS48gsiURX1zWCA9YL5m6He80w0oUBiwL7KuVL3E0Cuts
scm47zIl2tGE/4OzBCYG5CK+2am/WQXmGOvoRA==

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
