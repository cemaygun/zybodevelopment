vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_5
vlib activehdl/processing_system7_vip_v1_0_7
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 activehdl/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 activehdl/processing_system7_vip_v1_0_7
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/ec67/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/8c62/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ip/psledblink_processing_system7_0_0" "+incdir+D:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/ec67/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/8c62/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ip/psledblink_processing_system7_0_0" "+incdir+D:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/ec67/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/8c62/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ip/psledblink_processing_system7_0_0" "+incdir+D:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/ec67/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ipshared/8c62/hdl" "+incdir+../../../../psledblink.srcs/sources_1/bd/psledblink/ip/psledblink_processing_system7_0_0" "+incdir+D:/xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../psledblink.srcs/sources_1/bd/psledblink/ip/psledblink_processing_system7_0_0/sim/psledblink_processing_system7_0_0.v" \
"../../../../psledblink.srcs/sources_1/bd/psledblink/sim/psledblink.v" \

vlog -work xil_defaultlib \
"glbl.v"

