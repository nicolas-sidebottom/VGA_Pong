// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  2 05:37:28 2025
// Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_pixel_generator_0_1/design_1_pixel_generator_0_1_stub.v
// Design      : design_1_pixel_generator_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_pixel_generator_0_1,pixel_generator,{}" *) (* CORE_GENERATION_INFO = "design_1_pixel_generator_0_1,pixel_generator,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pixel_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,horz_max=639,vert_max=479,horz_wall_L=10,horz_wall_R=30,horz_paddle_L=610,horz_paddle_R=614,paddleHeight=75,paddleSpeed=2,ball_dimension=8,ball_speed_pos=2,ball_speed_neg=-2}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "pixel_generator,Vivado 2024.2" *) 
module design_1_pixel_generator_0_1(i_clock, i_reset, i_up_but, i_down_but, 
  i_display_on, i_h_spot, i_v_spot, o_color)
/* synthesis syn_black_box black_box_pad_pin="i_reset,i_up_but,i_down_but,i_display_on,i_h_spot[9:0],i_v_spot[9:0],o_color[2:0]" */
/* synthesis syn_force_seq_prim="i_clock" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  input i_up_but;
  input i_down_but;
  input i_display_on;
  input [9:0]i_h_spot;
  input [9:0]i_v_spot;
  output [2:0]o_color;
endmodule
