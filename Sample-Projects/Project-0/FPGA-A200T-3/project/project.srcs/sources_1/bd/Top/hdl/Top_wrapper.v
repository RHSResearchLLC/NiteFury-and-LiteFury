//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Apr 24 10:52:27 2019
//Host        : dr-lt2 running 64-bit major release  (build 9200)
//Command     : generate_target Top_wrapper.bd
//Design      : Top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Top_wrapper
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
    SPI_0_io0_io,
    SPI_0_io1_io,
    SPI_0_io2_io,
    SPI_0_io3_io,
    SPI_0_ss_i,
    SPI_0_ss_t,
    pci_reset,
    pcie_clkin_clk_n,
    pcie_clkin_clk_p,
    pcie_clkreq_l,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp,
    real_spi_ss,
    sys_clk_clk_n,
    sys_clk_clk_p);
  output [14:0]DDR3_addr;
  output [2:0]DDR3_ba;
  output DDR3_cas_n;
  output [0:0]DDR3_ck_n;
  output [0:0]DDR3_ck_p;
  output [0:0]DDR3_cke;
  output [1:0]DDR3_dm;
  inout [15:0]DDR3_dq;
  inout [1:0]DDR3_dqs_n;
  inout [1:0]DDR3_dqs_p;
  output [0:0]DDR3_odt;
  output DDR3_ras_n;
  output DDR3_reset_n;
  output DDR3_we_n;
  output [0:0]LED_A1;
  output [0:0]LED_A2;
  output [0:0]LED_A3;
  output [0:0]LED_A4;
  inout SPI_0_io0_io;
  inout SPI_0_io1_io;
  inout SPI_0_io2_io;
  inout SPI_0_io3_io;
  input [0:0]SPI_0_ss_i;
  output SPI_0_ss_t;
  input pci_reset;
  input [0:0]pcie_clkin_clk_n;
  input [0:0]pcie_clkin_clk_p;
  output [0:0]pcie_clkreq_l;
  input [3:0]pcie_mgt_rxn;
  input [3:0]pcie_mgt_rxp;
  output [3:0]pcie_mgt_txn;
  output [3:0]pcie_mgt_txp;
  output [0:0]real_spi_ss;
  input sys_clk_clk_n;
  input sys_clk_clk_p;

  wire [14:0]DDR3_addr;
  wire [2:0]DDR3_ba;
  wire DDR3_cas_n;
  wire [0:0]DDR3_ck_n;
  wire [0:0]DDR3_ck_p;
  wire [0:0]DDR3_cke;
  wire [1:0]DDR3_dm;
  wire [15:0]DDR3_dq;
  wire [1:0]DDR3_dqs_n;
  wire [1:0]DDR3_dqs_p;
  wire [0:0]DDR3_odt;
  wire DDR3_ras_n;
  wire DDR3_reset_n;
  wire DDR3_we_n;
  wire [0:0]LED_A1;
  wire [0:0]LED_A2;
  wire [0:0]LED_A3;
  wire [0:0]LED_A4;
  wire SPI_0_io0_i;
  wire SPI_0_io0_io;
  wire SPI_0_io0_o;
  wire SPI_0_io0_t;
  wire SPI_0_io1_i;
  wire SPI_0_io1_io;
  wire SPI_0_io1_o;
  wire SPI_0_io1_t;
  wire SPI_0_io2_i;
  wire SPI_0_io2_io;
  wire SPI_0_io2_o;
  wire SPI_0_io2_t;
  wire SPI_0_io3_i;
  wire SPI_0_io3_io;
  wire SPI_0_io3_o;
  wire SPI_0_io3_t;
  wire [0:0]SPI_0_ss_i;
  wire SPI_0_ss_t;
  wire pci_reset;
  wire [0:0]pcie_clkin_clk_n;
  wire [0:0]pcie_clkin_clk_p;
  wire [0:0]pcie_clkreq_l;
  wire [3:0]pcie_mgt_rxn;
  wire [3:0]pcie_mgt_rxp;
  wire [3:0]pcie_mgt_txn;
  wire [3:0]pcie_mgt_txp;
  wire [0:0]real_spi_ss;
  wire sys_clk_clk_n;
  wire sys_clk_clk_p;

  IOBUF SPI_0_io0_iobuf
       (.I(SPI_0_io0_o),
        .IO(SPI_0_io0_io),
        .O(SPI_0_io0_i),
        .T(SPI_0_io0_t));
  IOBUF SPI_0_io1_iobuf
       (.I(SPI_0_io1_o),
        .IO(SPI_0_io1_io),
        .O(SPI_0_io1_i),
        .T(SPI_0_io1_t));
  IOBUF SPI_0_io2_iobuf
       (.I(SPI_0_io2_o),
        .IO(SPI_0_io2_io),
        .O(SPI_0_io2_i),
        .T(SPI_0_io2_t));
  IOBUF SPI_0_io3_iobuf
       (.I(SPI_0_io3_o),
        .IO(SPI_0_io3_io),
        .O(SPI_0_io3_i),
        .T(SPI_0_io3_t));
  Top Top_i
       (.DDR3_addr(DDR3_addr),
        .DDR3_ba(DDR3_ba),
        .DDR3_cas_n(DDR3_cas_n),
        .DDR3_ck_n(DDR3_ck_n),
        .DDR3_ck_p(DDR3_ck_p),
        .DDR3_cke(DDR3_cke),
        .DDR3_dm(DDR3_dm),
        .DDR3_dq(DDR3_dq),
        .DDR3_dqs_n(DDR3_dqs_n),
        .DDR3_dqs_p(DDR3_dqs_p),
        .DDR3_odt(DDR3_odt),
        .DDR3_ras_n(DDR3_ras_n),
        .DDR3_reset_n(DDR3_reset_n),
        .DDR3_we_n(DDR3_we_n),
        .LED_A1(LED_A1),
        .LED_A2(LED_A2),
        .LED_A3(LED_A3),
        .LED_A4(LED_A4),
        .SPI_0_io0_i(SPI_0_io0_i),
        .SPI_0_io0_o(SPI_0_io0_o),
        .SPI_0_io0_t(SPI_0_io0_t),
        .SPI_0_io1_i(SPI_0_io1_i),
        .SPI_0_io1_o(SPI_0_io1_o),
        .SPI_0_io1_t(SPI_0_io1_t),
        .SPI_0_io2_i(SPI_0_io2_i),
        .SPI_0_io2_o(SPI_0_io2_o),
        .SPI_0_io2_t(SPI_0_io2_t),
        .SPI_0_io3_i(SPI_0_io3_i),
        .SPI_0_io3_o(SPI_0_io3_o),
        .SPI_0_io3_t(SPI_0_io3_t),
        .SPI_0_ss_i(SPI_0_ss_i),
        .SPI_0_ss_t(SPI_0_ss_t),
        .pci_reset(pci_reset),
        .pcie_clkin_clk_n(pcie_clkin_clk_n),
        .pcie_clkin_clk_p(pcie_clkin_clk_p),
        .pcie_clkreq_l(pcie_clkreq_l),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp),
        .real_spi_ss(real_spi_ss),
        .sys_clk_clk_n(sys_clk_clk_n),
        .sys_clk_clk_p(sys_clk_clk_p));
endmodule
