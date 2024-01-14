##################################################################################
# Fix incorrect auto-generated PCIe GTs constraints and reload regular constraints
##################################################################################

refresh_design

# Reset GTs generated from IP
reset_property LOC [get_cells {Top_i/xdma_0/inst/Top_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
reset_property LOC [get_cells {Top_i/xdma_0/inst/Top_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
reset_property LOC [get_cells {Top_i/xdma_0/inst/Top_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[2].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
reset_property LOC [get_cells {Top_i/xdma_0/inst/Top_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_lane[3].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]

# Load regular constraints with the proper pin assignments
read_xdc ./project.srcs/constrs_1/imports/constraints/early.xdc
read_xdc ./project.srcs/constrs_1/imports/constraints/normal.xdc

refresh_design
