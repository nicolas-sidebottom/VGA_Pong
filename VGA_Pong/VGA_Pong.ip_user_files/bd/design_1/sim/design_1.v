//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Jun  2 04:44:41 2025
//Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=12,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in1_0,
    i_button_0,
    i_button_1,
    i_button_2,
    o_blue_0,
    o_green_0,
    o_hsync_0,
    o_red_0,
    o_vsync_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_0;
  input i_button_0;
  input i_button_1;
  input i_button_2;
  output o_blue_0;
  output o_green_0;
  output o_hsync_0;
  output o_red_0;
  output o_vsync_0;

  wire button_Debouncer_Down_o_button;
  wire button_Debouncer_Reset_o_button;
  wire button_Debouncer_Up_o_button;
  wire clk_in1_0;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire i_button_0;
  wire i_button_1;
  wire i_button_2;
  wire o_blue_0;
  wire o_green_0;
  wire o_hsync_0;
  wire o_red_0;
  wire o_vsync_0;
  wire proc_sys_reset_0_mb_reset;
  wire vga_handler_0_o_display_on;
  wire [9:0]vga_handler_0_o_h_spot;
  wire [9:0]vga_handler_0_o_v_spot;

  design_1_Pong_Top_0_1 Pong_Top_0
       (.i_clock(clk_wiz_0_clk_out1),
        .i_color(1'b0),
        .i_down_but(button_Debouncer_Down_o_button),
        .i_hsync(1'b0),
        .i_pixel_refresh(1'b0),
        .i_reset(proc_sys_reset_0_mb_reset),
        .i_up_but(button_Debouncer_Up_o_button),
        .i_vsync(1'b0),
        .o_blue(o_blue_0),
        .o_green(o_green_0),
        .o_hsync(o_hsync_0),
        .o_red(o_red_0),
        .o_vsync(o_vsync_0));
  design_1_button_Debouncer_0_3 button_Debouncer_Down
       (.i_button(i_button_0),
        .i_clock(clk_wiz_0_clk_out1),
        .o_button(button_Debouncer_Down_o_button));
  design_1_button_Debouncer_2_0 button_Debouncer_Reset
       (.i_button(i_button_2),
        .i_clock(clk_wiz_0_clk_out1),
        .o_button(button_Debouncer_Reset_o_button));
  design_1_button_Debouncer_1_0 button_Debouncer_Up
       (.i_button(i_button_1),
        .i_clock(clk_wiz_0_clk_out1),
        .o_button(button_Debouncer_Up_o_button));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked));
  design_1_pixel_generator_0_1 pixel_generator_0
       (.i_clock(clk_wiz_0_clk_out1),
        .i_display_on(vga_handler_0_o_display_on),
        .i_down_but(button_Debouncer_Down_o_button),
        .i_h_spot(vga_handler_0_o_h_spot),
        .i_reset(proc_sys_reset_0_mb_reset),
        .i_up_but(button_Debouncer_Up_o_button),
        .i_v_spot(vga_handler_0_o_v_spot));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(button_Debouncer_Reset_o_button),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_vga_handler_0_1 vga_handler_0
       (.i_clock(clk_wiz_0_clk_out1),
        .i_reset(proc_sys_reset_0_mb_reset),
        .o_display_on(vga_handler_0_o_display_on),
        .o_h_spot(vga_handler_0_o_h_spot),
        .o_v_spot(vga_handler_0_o_v_spot));
endmodule
