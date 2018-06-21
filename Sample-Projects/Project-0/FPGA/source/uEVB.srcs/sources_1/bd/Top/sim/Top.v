//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Wed Jun 20 19:41:37 2018
//Host        : DESKTOP-HN3HE5I running 64-bit major release  (build 9200)
//Command     : generate_target Top.bd
//Design      : Top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module LED_BLINKER1_imp_104AQQN
   (CLK,
    LED_ON_L,
    OK,
    RESET_L);
  input CLK;
  output [0:0]LED_ON_L;
  input OK;
  input RESET_L;

  wire CLK_1;
  wire OK_1;
  wire RESET_L_1;
  wire [25:0]c_counter_binary_0_Q;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]xlslice_0_Dout;

  assign CLK_1 = CLK;
  assign LED_ON_L[0] = util_vector_logic_2_Res;
  assign OK_1 = OK;
  assign RESET_L_1 = RESET_L;
  Top_c_counter_binary_0_1 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  Top_util_vector_logic_0_3 util_vector_logic_0
       (.Op1(OK_1),
        .Res(util_vector_logic_0_Res));
  Top_util_vector_logic_1_1 util_vector_logic_1
       (.Op1(xlslice_0_Dout),
        .Op2(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
  Top_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(RESET_L_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
  Top_xlslice_0_1 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule

module LED_BLINKER_imp_1N3NND2
   (CLK,
    LED_ON_L,
    OK,
    RESET_L);
  input CLK;
  output [0:0]LED_ON_L;
  input OK;
  input RESET_L;

  wire CLK_1;
  wire OK_1;
  wire RESET_L_1;
  wire [25:0]c_counter_binary_0_Q;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]xlslice_0_Dout;

  assign CLK_1 = CLK;
  assign LED_ON_L[0] = util_vector_logic_2_Res;
  assign OK_1 = OK;
  assign RESET_L_1 = RESET_L;
  Top_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  Top_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(OK_1),
        .Res(util_vector_logic_0_Res));
  Top_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(xlslice_0_Dout),
        .Op2(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
  Top_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(RESET_L_1),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
  Top_xlslice_0_0 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule

(* CORE_GENERATION_INFO = "Top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=21,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=3,da_bram_cntlr_cnt=2,da_clkrst_cnt=3,da_xdma_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Top.hwdef" *) 
module Top
   (DDR3_addr,
    DDR3_ba,
    DDR3_cas_n,
    DDR3_ck_n,
    DDR3_ck_p,
    DDR3_cke,
    DDR3_dm,
    DDR3_dq,
    DDR3_dqs_n,
    DDR3_dqs_p,
    DDR3_odt,
    DDR3_ras_n,
    DDR3_reset_n,
    DDR3_we_n,
    LED_A1,
    LED_A2,
    LED_A3,
    LED_A4,
    pci_reset,
    pcie_clkin_clk_n,
    pcie_clkin_clk_p,
    pcie_clkreq_l,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    sys_clk_clk_n,
    sys_clk_clk_p);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR3, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [14:0]DDR3_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 BA" *) output [2:0]DDR3_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CAS_N" *) output DDR3_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_N" *) output [0:0]DDR3_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CK_P" *) output [0:0]DDR3_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 CKE" *) output [0:0]DDR3_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DM" *) output [1:0]DDR3_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQ" *) inout [15:0]DDR3_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_N" *) inout [1:0]DDR3_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 DQS_P" *) inout [1:0]DDR3_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 ODT" *) output [0:0]DDR3_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RAS_N" *) output DDR3_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 RESET_N" *) output DDR3_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR3 WE_N" *) output DDR3_we_n;
  output LED_A1;
  output LED_A2;
  output [0:0]LED_A3;
  output [0:0]LED_A4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCI_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCI_RESET, POLARITY ACTIVE_LOW" *) input pci_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_clkin CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pcie_clkin, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]pcie_clkin_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pcie_clkin CLK_P" *) input [0:0]pcie_clkin_clk_p;
  output [0:0]pcie_clkreq_l;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxn" *) input [3:0]pcie_mgt_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt rxp" *) input [3:0]pcie_mgt_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txn" *) output [3:0]pcie_mgt_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie_mgt txp" *) output [3:0]pcie_mgt_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, CAN_DEBUG false, FREQ_HZ 100000000" *) input sys_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 sys_clk CLK_P" *) input sys_clk_clk_p;

  wire [0:0]LED_BLINKER1_LED_ON_L;
  wire [0:0]LED_BLINKER_LED_ON_L;
  wire OK_1;
  wire [0:0]RESET_L_1;
  wire [63:0]axi_clock_converter_0_M_AXI_ARADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_ARBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_ARCACHE;
  wire [3:0]axi_clock_converter_0_M_AXI_ARID;
  wire [7:0]axi_clock_converter_0_M_AXI_ARLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_ARLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_ARPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_ARQOS;
  wire axi_clock_converter_0_M_AXI_ARREADY;
  wire [2:0]axi_clock_converter_0_M_AXI_ARSIZE;
  wire axi_clock_converter_0_M_AXI_ARVALID;
  wire [63:0]axi_clock_converter_0_M_AXI_AWADDR;
  wire [1:0]axi_clock_converter_0_M_AXI_AWBURST;
  wire [3:0]axi_clock_converter_0_M_AXI_AWCACHE;
  wire [3:0]axi_clock_converter_0_M_AXI_AWID;
  wire [7:0]axi_clock_converter_0_M_AXI_AWLEN;
  wire [0:0]axi_clock_converter_0_M_AXI_AWLOCK;
  wire [2:0]axi_clock_converter_0_M_AXI_AWPROT;
  wire [3:0]axi_clock_converter_0_M_AXI_AWQOS;
  wire axi_clock_converter_0_M_AXI_AWREADY;
  wire [2:0]axi_clock_converter_0_M_AXI_AWSIZE;
  wire axi_clock_converter_0_M_AXI_AWVALID;
  wire [3:0]axi_clock_converter_0_M_AXI_BID;
  wire axi_clock_converter_0_M_AXI_BREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_BRESP;
  wire axi_clock_converter_0_M_AXI_BVALID;
  wire [127:0]axi_clock_converter_0_M_AXI_RDATA;
  wire [3:0]axi_clock_converter_0_M_AXI_RID;
  wire axi_clock_converter_0_M_AXI_RLAST;
  wire axi_clock_converter_0_M_AXI_RREADY;
  wire [1:0]axi_clock_converter_0_M_AXI_RRESP;
  wire axi_clock_converter_0_M_AXI_RVALID;
  wire [127:0]axi_clock_converter_0_M_AXI_WDATA;
  wire axi_clock_converter_0_M_AXI_WLAST;
  wire axi_clock_converter_0_M_AXI_WREADY;
  wire [15:0]axi_clock_converter_0_M_AXI_WSTRB;
  wire axi_clock_converter_0_M_AXI_WVALID;
  wire [0:0]diff_clock_rtl_0_1_CLK_N;
  wire [0:0]diff_clock_rtl_0_1_CLK_P;
  wire diff_clock_rtl_1_1_CLK_N;
  wire diff_clock_rtl_1_1_CLK_P;
  wire [14:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [0:0]mig_7series_0_DDR3_CKE;
  wire [0:0]mig_7series_0_DDR3_CK_N;
  wire [0:0]mig_7series_0_DDR3_CK_P;
  wire [1:0]mig_7series_0_DDR3_DM;
  wire [15:0]mig_7series_0_DDR3_DQ;
  wire [1:0]mig_7series_0_DDR3_DQS_N;
  wire [1:0]mig_7series_0_DDR3_DQS_P;
  wire [0:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_mmcm_locked;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire pci_reset_1;
  wire [0:0]util_ds_buf_IBUF_OUT;
  wire [0:0]util_vector_logic_0_Res;
  wire [63:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [3:0]xdma_0_M_AXI_ARID;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [63:0]xdma_0_M_AXI_AWADDR;
  wire [1:0]xdma_0_M_AXI_AWBURST;
  wire [3:0]xdma_0_M_AXI_AWCACHE;
  wire [3:0]xdma_0_M_AXI_AWID;
  wire [7:0]xdma_0_M_AXI_AWLEN;
  wire xdma_0_M_AXI_AWLOCK;
  wire [2:0]xdma_0_M_AXI_AWPROT;
  wire xdma_0_M_AXI_AWREADY;
  wire [2:0]xdma_0_M_AXI_AWSIZE;
  wire xdma_0_M_AXI_AWVALID;
  wire [3:0]xdma_0_M_AXI_BID;
  wire xdma_0_M_AXI_BREADY;
  wire [1:0]xdma_0_M_AXI_BRESP;
  wire xdma_0_M_AXI_BVALID;
  wire [127:0]xdma_0_M_AXI_RDATA;
  wire [3:0]xdma_0_M_AXI_RID;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire [127:0]xdma_0_M_AXI_WDATA;
  wire xdma_0_M_AXI_WLAST;
  wire xdma_0_M_AXI_WREADY;
  wire [15:0]xdma_0_M_AXI_WSTRB;
  wire xdma_0_M_AXI_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [3:0]xdma_0_pcie_mgt_rxn;
  wire [3:0]xdma_0_pcie_mgt_rxp;
  wire [3:0]xdma_0_pcie_mgt_txn;
  wire [3:0]xdma_0_pcie_mgt_txp;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign DDR3_addr[14:0] = mig_7series_0_DDR3_ADDR;
  assign DDR3_ba[2:0] = mig_7series_0_DDR3_BA;
  assign DDR3_cas_n = mig_7series_0_DDR3_CAS_N;
  assign DDR3_ck_n[0] = mig_7series_0_DDR3_CK_N;
  assign DDR3_ck_p[0] = mig_7series_0_DDR3_CK_P;
  assign DDR3_cke[0] = mig_7series_0_DDR3_CKE;
  assign DDR3_dm[1:0] = mig_7series_0_DDR3_DM;
  assign DDR3_odt[0] = mig_7series_0_DDR3_ODT;
  assign DDR3_ras_n = mig_7series_0_DDR3_RAS_N;
  assign DDR3_reset_n = mig_7series_0_DDR3_RESET_N;
  assign DDR3_we_n = mig_7series_0_DDR3_WE_N;
  assign LED_A1 = mig_7series_0_init_calib_complete;
  assign LED_A2 = mig_7series_0_mmcm_locked;
  assign LED_A3[0] = LED_BLINKER_LED_ON_L;
  assign LED_A4[0] = LED_BLINKER1_LED_ON_L;
  assign diff_clock_rtl_0_1_CLK_N = pcie_clkin_clk_n[0];
  assign diff_clock_rtl_0_1_CLK_P = pcie_clkin_clk_p[0];
  assign diff_clock_rtl_1_1_CLK_N = sys_clk_clk_n;
  assign diff_clock_rtl_1_1_CLK_P = sys_clk_clk_p;
  assign pci_reset_1 = pci_reset;
  assign pcie_clkreq_l[0] = xlconstant_1_dout;
  assign pcie_mgt_txn[3:0] = xdma_0_pcie_mgt_txn;
  assign pcie_mgt_txp[3:0] = xdma_0_pcie_mgt_txp;
  assign xdma_0_pcie_mgt_rxn = pcie_mgt_rxn[3:0];
  assign xdma_0_pcie_mgt_rxp = pcie_mgt_rxp[3:0];
  LED_BLINKER_imp_1N3NND2 LED_BLINKER
       (.CLK(util_ds_buf_IBUF_OUT),
        .LED_ON_L(LED_BLINKER_LED_ON_L),
        .OK(OK_1),
        .RESET_L(pci_reset_1));
  LED_BLINKER1_imp_104AQQN LED_BLINKER1
       (.CLK(mig_7series_0_ui_clk),
        .LED_ON_L(LED_BLINKER1_LED_ON_L),
        .OK(mig_7series_0_init_calib_complete),
        .RESET_L(RESET_L_1));
  Top_axi_clock_converter_0_0 axi_clock_converter_0
       (.m_axi_aclk(mig_7series_0_ui_clk),
        .m_axi_araddr(axi_clock_converter_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_clock_converter_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_clock_converter_0_M_AXI_ARCACHE),
        .m_axi_aresetn(util_vector_logic_0_Res),
        .m_axi_arid(axi_clock_converter_0_M_AXI_ARID),
        .m_axi_arlen(axi_clock_converter_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_clock_converter_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_clock_converter_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_clock_converter_0_M_AXI_ARQOS),
        .m_axi_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_clock_converter_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .m_axi_awid(axi_clock_converter_0_M_AXI_AWID),
        .m_axi_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .m_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .m_axi_bid(axi_clock_converter_0_M_AXI_BID),
        .m_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .m_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .m_axi_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .m_axi_rid(axi_clock_converter_0_M_AXI_RID),
        .m_axi_rlast(axi_clock_converter_0_M_AXI_RLAST),
        .m_axi_rready(axi_clock_converter_0_M_AXI_RREADY),
        .m_axi_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .m_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .m_axi_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .m_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .s_axi_aclk(xdma_0_axi_aclk),
        .s_axi_araddr(xdma_0_M_AXI_ARADDR),
        .s_axi_arburst(xdma_0_M_AXI_ARBURST),
        .s_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .s_axi_aresetn(xdma_0_axi_aresetn),
        .s_axi_arid(xdma_0_M_AXI_ARID),
        .s_axi_arlen(xdma_0_M_AXI_ARLEN),
        .s_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .s_axi_arprot(xdma_0_M_AXI_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(xdma_0_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .s_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .s_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .s_axi_awburst(xdma_0_M_AXI_AWBURST),
        .s_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .s_axi_awid(xdma_0_M_AXI_AWID),
        .s_axi_awlen(xdma_0_M_AXI_AWLEN),
        .s_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .s_axi_awprot(xdma_0_M_AXI_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(xdma_0_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .s_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .s_axi_bid(xdma_0_M_AXI_BID),
        .s_axi_bready(xdma_0_M_AXI_BREADY),
        .s_axi_bresp(xdma_0_M_AXI_BRESP),
        .s_axi_bvalid(xdma_0_M_AXI_BVALID),
        .s_axi_rdata(xdma_0_M_AXI_RDATA),
        .s_axi_rid(xdma_0_M_AXI_RID),
        .s_axi_rlast(xdma_0_M_AXI_RLAST),
        .s_axi_rready(xdma_0_M_AXI_RREADY),
        .s_axi_rresp(xdma_0_M_AXI_RRESP),
        .s_axi_rvalid(xdma_0_M_AXI_RVALID),
        .s_axi_wdata(xdma_0_M_AXI_WDATA),
        .s_axi_wlast(xdma_0_M_AXI_WLAST),
        .s_axi_wready(xdma_0_M_AXI_WREADY),
        .s_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .s_axi_wvalid(xdma_0_M_AXI_WVALID));
  Top_mig_7series_0_0 mig_7series_0
       (.aresetn(xlconstant_0_dout),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(DDR3_dq[15:0]),
        .ddr3_dqs_n(DDR3_dqs_n[1:0]),
        .ddr3_dqs_p(DDR3_dqs_p[1:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .mmcm_locked(mig_7series_0_mmcm_locked),
        .s_axi_araddr(axi_clock_converter_0_M_AXI_ARADDR[28:0]),
        .s_axi_arburst(axi_clock_converter_0_M_AXI_ARBURST),
        .s_axi_arcache(axi_clock_converter_0_M_AXI_ARCACHE),
        .s_axi_arid(axi_clock_converter_0_M_AXI_ARID),
        .s_axi_arlen(axi_clock_converter_0_M_AXI_ARLEN),
        .s_axi_arlock(axi_clock_converter_0_M_AXI_ARLOCK),
        .s_axi_arprot(axi_clock_converter_0_M_AXI_ARPROT),
        .s_axi_arqos(axi_clock_converter_0_M_AXI_ARQOS),
        .s_axi_arready(axi_clock_converter_0_M_AXI_ARREADY),
        .s_axi_arsize(axi_clock_converter_0_M_AXI_ARSIZE),
        .s_axi_arvalid(axi_clock_converter_0_M_AXI_ARVALID),
        .s_axi_awaddr(axi_clock_converter_0_M_AXI_AWADDR[28:0]),
        .s_axi_awburst(axi_clock_converter_0_M_AXI_AWBURST),
        .s_axi_awcache(axi_clock_converter_0_M_AXI_AWCACHE),
        .s_axi_awid(axi_clock_converter_0_M_AXI_AWID),
        .s_axi_awlen(axi_clock_converter_0_M_AXI_AWLEN),
        .s_axi_awlock(axi_clock_converter_0_M_AXI_AWLOCK),
        .s_axi_awprot(axi_clock_converter_0_M_AXI_AWPROT),
        .s_axi_awqos(axi_clock_converter_0_M_AXI_AWQOS),
        .s_axi_awready(axi_clock_converter_0_M_AXI_AWREADY),
        .s_axi_awsize(axi_clock_converter_0_M_AXI_AWSIZE),
        .s_axi_awvalid(axi_clock_converter_0_M_AXI_AWVALID),
        .s_axi_bid(axi_clock_converter_0_M_AXI_BID),
        .s_axi_bready(axi_clock_converter_0_M_AXI_BREADY),
        .s_axi_bresp(axi_clock_converter_0_M_AXI_BRESP),
        .s_axi_bvalid(axi_clock_converter_0_M_AXI_BVALID),
        .s_axi_rdata(axi_clock_converter_0_M_AXI_RDATA),
        .s_axi_rid(axi_clock_converter_0_M_AXI_RID),
        .s_axi_rlast(axi_clock_converter_0_M_AXI_RLAST),
        .s_axi_rready(axi_clock_converter_0_M_AXI_RREADY),
        .s_axi_rresp(axi_clock_converter_0_M_AXI_RRESP),
        .s_axi_rvalid(axi_clock_converter_0_M_AXI_RVALID),
        .s_axi_wdata(axi_clock_converter_0_M_AXI_WDATA),
        .s_axi_wlast(axi_clock_converter_0_M_AXI_WLAST),
        .s_axi_wready(axi_clock_converter_0_M_AXI_WREADY),
        .s_axi_wstrb(axi_clock_converter_0_M_AXI_WSTRB),
        .s_axi_wvalid(axi_clock_converter_0_M_AXI_WVALID),
        .sys_clk_n(diff_clock_rtl_1_1_CLK_N),
        .sys_clk_p(diff_clock_rtl_1_1_CLK_P),
        .sys_rst(xlconstant_2_dout),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  Top_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(diff_clock_rtl_0_1_CLK_N),
        .IBUF_DS_P(diff_clock_rtl_0_1_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
  Top_util_vector_logic_0_4 util_vector_logic_0
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Res(util_vector_logic_0_Res));
  Top_util_vector_logic_0_2 util_vector_logic_1
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Res(RESET_L_1));
  Top_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI_ARID),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .m_axi_awburst(xdma_0_M_AXI_AWBURST),
        .m_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .m_axi_awid(xdma_0_M_AXI_AWID),
        .m_axi_awlen(xdma_0_M_AXI_AWLEN),
        .m_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_0_M_AXI_AWPROT),
        .m_axi_awready(xdma_0_M_AXI_AWREADY),
        .m_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .m_axi_bid(xdma_0_M_AXI_BID),
        .m_axi_bready(xdma_0_M_AXI_BREADY),
        .m_axi_bresp(xdma_0_M_AXI_BRESP),
        .m_axi_bvalid(xdma_0_M_AXI_BVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rid(xdma_0_M_AXI_RID),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .m_axi_wdata(xdma_0_M_AXI_WDATA),
        .m_axi_wlast(xdma_0_M_AXI_WLAST),
        .m_axi_wready(xdma_0_M_AXI_WREADY),
        .m_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_0_M_AXI_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(util_ds_buf_IBUF_OUT),
        .sys_rst_n(pci_reset_1),
        .user_lnk_up(OK_1),
        .usr_irq_req(1'b0));
  Top_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  Top_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  Top_xlconstant_0_1 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
