# aclk {FREQ_HZ 250000000 CLK_DOMAIN Top_xdma_0_0_axi_aclk PHASE 0.000} aclk1 {FREQ_HZ 100000000 CLK_DOMAIN Top_mig_7series_0_0_ui_clk PHASE 0}
# Clock Domain: Top_xdma_0_0_axi_aclk
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: Top_mig_7series_0_0_ui_clk
create_clock -name aclk1 -period 10.000 [get_ports aclk1]
# Generated clocks
