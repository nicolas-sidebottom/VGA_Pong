//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Mon Jun  2 06:13:07 2025
//Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (i_clock,
    i_down_but,
    i_reset,
    i_up_but,
    o_blue,
    o_green,
    o_hsync,
    o_red,
    o_vsync);
  input i_clock;
  input i_down_but;
  input i_reset;
  input i_up_but;
  output o_blue;
  output o_green;
  output o_hsync;
  output o_red;
  output o_vsync;

  wire i_clock;
  wire i_down_but;
  wire i_reset;
  wire i_up_but;
  wire o_blue;
  wire o_green;
  wire o_hsync;
  wire o_red;
  wire o_vsync;

  design_1 design_1_i
       (.i_clock(i_clock),
        .i_down_but(i_down_but),
        .i_reset(i_reset),
        .i_up_but(i_up_but),
        .o_blue(o_blue),
        .o_green(o_green),
        .o_hsync(o_hsync),
        .o_red(o_red),
        .o_vsync(o_vsync));
endmodule
