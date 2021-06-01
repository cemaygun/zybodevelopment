-makelib ies_lib/xilinx_vip -sv \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_5 -sv \
  "../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../psledblink.srcs/sources_1/bd/psledblink/ip/psledblink_processing_system7_0_0/sim/psledblink_processing_system7_0_0.v" \
  "../../../../psledblink.srcs/sources_1/bd/psledblink/sim/psledblink.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

