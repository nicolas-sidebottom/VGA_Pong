// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  2 05:37:52 2025
// Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_vga_handler_0_1/design_1_vga_handler_0_1_stub.v
// Design      : design_1_vga_handler_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_vga_handler_0_1,vga_handler,{}" *) (* CORE_GENERATION_INFO = "design_1_vga_handler_0_1,vga_handler,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=vga_handler,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,horz_dis_area=640,horz_front=48,horz_back=16,horz_retrace=96,horz_max=799,vert_dis_area=480,vert_front=10,vert_back=33,vert_retrace=2,vert_max=524}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "vga_handler,Vivado 2024.2" *) 
module design_1_vga_handler_0_1(i_clock, i_reset, o_display_on, o_hsync, o_vsync, 
  o_pixel_clock, o_h_spot, o_v_spot)
/* synthesis syn_black_box black_box_pad_pin="i_reset,o_display_on,o_hsync,o_vsync,o_pixel_clock,o_h_spot[9:0],o_v_spot[9:0]" */
/* synthesis syn_force_seq_prim="i_clock" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  output o_display_on;
  output o_hsync;
  output o_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 o_pixel_clock CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_pixel_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_vga_handler_0_1_o_pixel_clock, INSERT_VIP 0" *) output o_pixel_clock;
  output [9:0]o_h_spot;
  output [9:0]o_v_spot;
endmodule
