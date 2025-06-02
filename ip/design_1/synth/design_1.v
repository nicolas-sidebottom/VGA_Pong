//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Jun  2 06:13:07 2025
//Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=12,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (i_clock,
    i_down_but,
    i_reset,
    i_up_but,
    o_blue,
    o_green,
    o_hsync,
    o_red,
    o_vsync);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLOCK, CLK_DOMAIN design_1_i_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input i_clock;
  input i_down_but;
  input i_reset;
  input i_up_but;
  output o_blue;
  output o_green;
  output o_hsync;
  output o_red;
  output o_vsync;

  wire button_Debouncer_Down_o_button;
  wire button_Debouncer_Reset_o_button;
  wire button_Debouncer_Up_o_button;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire i_clock;
  wire i_down_but;
  wire i_reset;
  wire i_up_but;
  wire o_blue;
  wire o_green;
  wire o_hsync;
  wire o_red;
  wire o_vsync;
  wire proc_sys_reset_0_mb_reset;
  wire vga_handler_0_o_display_on;
  wire [9:0]vga_handler_0_o_h_spot;
  wire [9:0]vga_handler_0_o_v_spot;

  design_1_Pong_Top_0_2 Pong_Top_0
       (.i_clock(clk_wiz_0_clk_out1),
        .i_down_but(button_Debouncer_Down_o_button),
        .i_reset(proc_sys_reset_0_mb_reset),
        .i_up_but(button_Debouncer_Up_o_button),
        .o_blue(o_blue),
        .o_green(o_green),
        .o_hsync(o_hsync),
        .o_red(o_red),
        .o_vsync(o_vsync));
  design_1_button_Debouncer_0_3 button_Debouncer_Down
       (.i_button(i_down_but),
        .i_clock(clk_wiz_0_clk_out1),
        .o_button(button_Debouncer_Down_o_button));
  design_1_button_Debouncer_2_0 button_Debouncer_Reset
       (.i_button(i_reset),
        .i_clock(clk_wiz_0_clk_out1),
        .o_button(button_Debouncer_Reset_o_button));
  design_1_button_Debouncer_1_0 button_Debouncer_Up
       (.i_button(i_up_but),
        .i_clock(clk_wiz_0_clk_out1),
        .o_button(button_Debouncer_Up_o_button));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(i_clock),
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
