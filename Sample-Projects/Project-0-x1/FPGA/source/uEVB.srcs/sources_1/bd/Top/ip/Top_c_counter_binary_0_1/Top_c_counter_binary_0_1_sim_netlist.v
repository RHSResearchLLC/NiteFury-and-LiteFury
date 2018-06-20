// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Jun 10 22:30:58 2018
// Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Top_c_counter_binary_0_1 -prefix
//               Top_c_counter_binary_0_1_ Top_c_counter_binary_0_0_sim_netlist.v
// Design      : Top_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Top_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module Top_c_counter_binary_0_1
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
XS2cUKfcCDyNhCMgRliEmhwr1fjpOoy20e1Fr4g8jKnJDjJaXnkzQv1NWl01Q2dwqfCeic8Z/QrZ
JCtrHTC9DaCH03pDlRR53t8EzsHCgI1/b762Tx1u9Yu/nCIWQXVLdZLtNUtbWypyBzFVvBjuZifU
xDXWUZt7im3HgOdy5EidDIeyDNP3MQ6RRt9NFY0WPEqZP87382+VO1F8WT5ulS4APyKoUXRjIXSI
vfE16FS34UsjieGz1g9ExFqs1GelDJgDDcyYValt1DwG37L5IgUQ35YbCXE9rY2hasR/Iy7Zn7FN
9zD8KvjMp5+mBuY4rswNmEklAJTiqP5N8Jm61A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RSpX2hjvHhutJkhmXuPyfO5DjH6rwIVMKKB1etmVxaNaKbquePcWMeQFSo9QgsDp1ytQSLc9Y8Yi
CCgNzIphD3tdiIN2phGvj5Ehs+F0eIcUdWe9a9SfHScHEH5hWtVRP2ZR9iny1cBd+PRRicWAMq+y
CO9LOMmJyGQ3vP4zoS6D9n9MkxHa2Jqj9W8X/6/KIprwicLOvkZVsFil0SQHl6UA4w3Dg7tI0tIF
wXM/ZgBJGnJwq88Rq4hyFEQM9+BFFWsO+oUoHjYMlHKHqaeJO9Mqx9DsuuoJF0XujoE/GezPLHbD
GAGDu40FN2gWYyEvkrqmevZua/k49Bef6wfZqQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14976)
`pragma protect data_block
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
dy3DJvzkDaPNLTNBnDH5kgoHD6We
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
