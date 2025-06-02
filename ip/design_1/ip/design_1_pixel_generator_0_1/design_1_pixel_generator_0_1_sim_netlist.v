// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  2 05:37:28 2025
// Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_pixel_generator_0_1/design_1_pixel_generator_0_1_sim_netlist.v
// Design      : design_1_pixel_generator_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pixel_generator_0_1,pixel_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pixel_generator,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_pixel_generator_0_1
   (i_clock,
    i_reset,
    i_up_but,
    i_down_but,
    i_display_on,
    i_h_spot,
    i_v_spot,
    o_color);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  input i_up_but;
  input i_down_but;
  input i_display_on;
  input [9:0]i_h_spot;
  input [9:0]i_v_spot;
  output [2:0]o_color;

  wire i_clock;
  wire i_display_on;
  wire i_down_but;
  wire [9:0]i_h_spot;
  wire i_reset;
  wire i_up_but;
  wire [9:0]i_v_spot;
  wire [2:0]\^o_color ;

  assign o_color[2] = \^o_color [2];
  assign o_color[1] = \^o_color [2];
  assign o_color[0] = \^o_color [0];
  design_1_pixel_generator_0_1_pixel_generator inst
       (.i_clock(i_clock),
        .i_display_on(i_display_on),
        .i_down_but(i_down_but),
        .i_h_spot(i_h_spot),
        .i_reset(i_reset),
        .i_up_but(i_up_but),
        .i_v_spot(i_v_spot),
        .o_color({\^o_color [2],\^o_color [0]}));
endmodule

(* ORIG_REF_NAME = "pixel_generator" *) 
module design_1_pixel_generator_0_1_pixel_generator
   (o_color,
    i_h_spot,
    i_v_spot,
    i_clock,
    i_reset,
    i_up_but,
    i_down_but,
    i_display_on);
  output [1:0]o_color;
  input [9:0]i_h_spot;
  input [9:0]i_v_spot;
  input i_clock;
  input i_reset;
  input i_up_but;
  input i_down_but;
  input i_display_on;

  wire [1:1]horz_ball_R;
  wire [9:2]horz_ball_corner0;
  wire horz_ball_corner0_carry__0_i_1_n_0;
  wire horz_ball_corner0_carry__0_i_2_n_0;
  wire horz_ball_corner0_carry__0_i_3_n_0;
  wire horz_ball_corner0_carry__0_i_4_n_0;
  wire horz_ball_corner0_carry__0_n_1;
  wire horz_ball_corner0_carry__0_n_2;
  wire horz_ball_corner0_carry__0_n_3;
  wire horz_ball_corner0_carry_i_1_n_0;
  wire horz_ball_corner0_carry_i_2_n_0;
  wire horz_ball_corner0_carry_i_3_n_0;
  wire horz_ball_corner0_carry_i_4_n_0;
  wire horz_ball_corner0_carry_n_0;
  wire horz_ball_corner0_carry_n_1;
  wire horz_ball_corner0_carry_n_2;
  wire horz_ball_corner0_carry_n_3;
  wire [9:1]horz_ball_corner_reg;
  wire \horz_speed_post[8]_i_1_n_0 ;
  wire \horz_speed_post[8]_i_3_n_0 ;
  wire \horz_speed_post_reg_n_0_[8] ;
  wire horz_speed_pre1;
  wire \horz_speed_pre1_inferred__2/i___0_carry_n_0 ;
  wire \horz_speed_pre1_inferred__2/i___0_carry_n_1 ;
  wire \horz_speed_pre1_inferred__2/i___0_carry_n_2 ;
  wire \horz_speed_pre1_inferred__2/i___0_carry_n_3 ;
  wire horz_speed_pre2__3;
  wire horz_speed_pre2_carry_i_10_n_0;
  wire horz_speed_pre2_carry_i_11_n_0;
  wire horz_speed_pre2_carry_i_12_n_0;
  wire horz_speed_pre2_carry_i_1_n_0;
  wire horz_speed_pre2_carry_i_2_n_0;
  wire horz_speed_pre2_carry_i_3_n_0;
  wire horz_speed_pre2_carry_i_4_n_0;
  wire horz_speed_pre2_carry_i_5_n_0;
  wire horz_speed_pre2_carry_i_6_n_0;
  wire horz_speed_pre2_carry_i_7_n_0;
  wire horz_speed_pre2_carry_i_8_n_0;
  wire horz_speed_pre2_carry_i_9_n_0;
  wire horz_speed_pre2_carry_n_1;
  wire horz_speed_pre2_carry_n_2;
  wire horz_speed_pre2_carry_n_3;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry_i_1_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_3_n_0;
  wire i___0_carry_i_4_n_0;
  wire i___0_carry_i_5_n_0;
  wire i___0_carry_i_6_n_0;
  wire i___0_carry_i_7_n_0;
  wire i___0_carry_i_8_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i_clock;
  wire i_display_on;
  wire i_down_but;
  wire [9:0]i_h_spot;
  wire i_reset;
  wire i_up_but;
  wire [9:0]i_v_spot;
  wire [8:8]in;
  wire [1:0]o_color;
  wire \o_color[0]_INST_0_i_1_n_0 ;
  wire \o_color[0]_INST_0_i_2_n_0 ;
  wire \o_color[0]_INST_0_i_3_n_0 ;
  wire \o_color[0]_INST_0_i_4_n_0 ;
  wire \o_color[0]_INST_0_i_5_n_0 ;
  wire \o_color[1]_INST_0_i_1_n_0 ;
  wire \o_color[1]_INST_0_i_2_n_0 ;
  wire \o_color[1]_INST_0_i_3_n_0 ;
  wire \o_color[1]_INST_0_i_4_n_0 ;
  wire p_0_in0;
  wire pad_c0__4;
  wire pad_c0_carry__0_i_1_n_0;
  wire pad_c0_carry__0_i_2_n_0;
  wire pad_c0_carry_i_10_n_0;
  wire pad_c0_carry_i_11_n_0;
  wire pad_c0_carry_i_12_n_0;
  wire pad_c0_carry_i_1_n_0;
  wire pad_c0_carry_i_2_n_0;
  wire pad_c0_carry_i_3_n_0;
  wire pad_c0_carry_i_4_n_0;
  wire pad_c0_carry_i_5_n_0;
  wire pad_c0_carry_i_6_n_0;
  wire pad_c0_carry_i_7_n_0;
  wire pad_c0_carry_i_8_n_0;
  wire pad_c0_carry_i_9_n_0;
  wire pad_c0_carry_n_0;
  wire pad_c0_carry_n_1;
  wire pad_c0_carry_n_2;
  wire pad_c0_carry_n_3;
  wire pad_c1__4;
  wire pad_c1_carry__0_i_1_n_0;
  wire pad_c1_carry__0_i_2_n_0;
  wire pad_c1_carry_i_1_n_0;
  wire pad_c1_carry_i_2_n_0;
  wire pad_c1_carry_i_3_n_0;
  wire pad_c1_carry_i_4_n_0;
  wire pad_c1_carry_i_5_n_0;
  wire pad_c1_carry_i_6_n_0;
  wire pad_c1_carry_i_7_n_0;
  wire pad_c1_carry_i_8_n_0;
  wire pad_c1_carry_n_0;
  wire pad_c1_carry_n_1;
  wire pad_c1_carry_n_2;
  wire pad_c1_carry_n_3;
  wire refresh60Hz;
  wire sq_ball_c0__4;
  wire sq_ball_c0_carry__0_i_1_n_0;
  wire sq_ball_c0_carry__0_i_2_n_0;
  wire sq_ball_c0_carry_i_1_n_0;
  wire sq_ball_c0_carry_i_2_n_0;
  wire sq_ball_c0_carry_i_3_n_0;
  wire sq_ball_c0_carry_i_4_n_0;
  wire sq_ball_c0_carry_i_5_n_0;
  wire sq_ball_c0_carry_i_6_n_0;
  wire sq_ball_c0_carry_i_7_n_0;
  wire sq_ball_c0_carry_i_8_n_0;
  wire sq_ball_c0_carry_n_0;
  wire sq_ball_c0_carry_n_1;
  wire sq_ball_c0_carry_n_2;
  wire sq_ball_c0_carry_n_3;
  wire sq_ball_c1__4;
  wire sq_ball_c1_carry__0_i_1_n_0;
  wire sq_ball_c1_carry__0_i_2_n_0;
  wire sq_ball_c1_carry_i_1_n_0;
  wire sq_ball_c1_carry_i_2_n_0;
  wire sq_ball_c1_carry_i_3_n_0;
  wire sq_ball_c1_carry_i_4_n_0;
  wire sq_ball_c1_carry_i_5_n_0;
  wire sq_ball_c1_carry_i_6_n_0;
  wire sq_ball_c1_carry_i_7_n_0;
  wire sq_ball_c1_carry_i_8_n_0;
  wire sq_ball_c1_carry_n_0;
  wire sq_ball_c1_carry_n_1;
  wire sq_ball_c1_carry_n_2;
  wire sq_ball_c1_carry_n_3;
  wire sq_ball_c23_in;
  wire sq_ball_c2__4;
  wire sq_ball_c2_carry__0_i_1_n_0;
  wire sq_ball_c2_carry__0_i_2_n_0;
  wire sq_ball_c2_carry__0_i_3_n_0;
  wire sq_ball_c2_carry_i_10_n_0;
  wire sq_ball_c2_carry_i_1_n_0;
  wire sq_ball_c2_carry_i_2_n_0;
  wire sq_ball_c2_carry_i_3_n_0;
  wire sq_ball_c2_carry_i_4_n_0;
  wire sq_ball_c2_carry_i_5_n_0;
  wire sq_ball_c2_carry_i_6_n_0;
  wire sq_ball_c2_carry_i_7_n_0;
  wire sq_ball_c2_carry_i_8_n_0;
  wire sq_ball_c2_carry_i_9_n_0;
  wire sq_ball_c2_carry_n_0;
  wire sq_ball_c2_carry_n_1;
  wire sq_ball_c2_carry_n_2;
  wire sq_ball_c2_carry_n_3;
  wire \sq_ball_c2_inferred__0/i__carry_n_0 ;
  wire \sq_ball_c2_inferred__0/i__carry_n_1 ;
  wire \sq_ball_c2_inferred__0/i__carry_n_2 ;
  wire \sq_ball_c2_inferred__0/i__carry_n_3 ;
  wire [9:2]vert_ball_corner0;
  wire vert_ball_corner0_carry__0_i_1_n_0;
  wire vert_ball_corner0_carry__0_i_2_n_0;
  wire vert_ball_corner0_carry__0_i_3_n_0;
  wire vert_ball_corner0_carry__0_i_4_n_0;
  wire vert_ball_corner0_carry__0_n_1;
  wire vert_ball_corner0_carry__0_n_2;
  wire vert_ball_corner0_carry__0_n_3;
  wire vert_ball_corner0_carry_i_1_n_0;
  wire vert_ball_corner0_carry_i_2_n_0;
  wire vert_ball_corner0_carry_i_3_n_0;
  wire vert_ball_corner0_carry_i_4_n_0;
  wire vert_ball_corner0_carry_n_0;
  wire vert_ball_corner0_carry_n_1;
  wire vert_ball_corner0_carry_n_2;
  wire vert_ball_corner0_carry_n_3;
  wire \vert_ball_corner[1]_i_1_n_0 ;
  wire \vert_ball_corner[9]_i_2_n_0 ;
  wire \vert_ball_corner[9]_i_3_n_0 ;
  wire \vert_ball_corner[9]_i_4_n_0 ;
  wire \vert_ball_corner[9]_i_5_n_0 ;
  wire [9:1]vert_ball_corner_reg;
  wire \vert_paddle_post[9]_i_2_n_0 ;
  wire \vert_paddle_post[9]_i_3_n_0 ;
  wire [9:1]vert_paddle_post_reg;
  wire vert_paddle_pre;
  wire vert_paddle_pre0_carry__0_i_1_n_0;
  wire vert_paddle_pre0_carry__0_i_2_n_0;
  wire vert_paddle_pre0_carry__0_i_3_n_0;
  wire vert_paddle_pre0_carry__0_i_4_n_0;
  wire vert_paddle_pre0_carry__0_n_0;
  wire vert_paddle_pre0_carry__0_n_1;
  wire vert_paddle_pre0_carry__0_n_2;
  wire vert_paddle_pre0_carry__0_n_3;
  wire vert_paddle_pre0_carry__0_n_4;
  wire vert_paddle_pre0_carry__0_n_5;
  wire vert_paddle_pre0_carry__0_n_6;
  wire vert_paddle_pre0_carry__0_n_7;
  wire vert_paddle_pre0_carry__1_i_1_n_0;
  wire vert_paddle_pre0_carry__1_i_2_n_0;
  wire vert_paddle_pre0_carry__1_n_3;
  wire vert_paddle_pre0_carry__1_n_6;
  wire vert_paddle_pre0_carry__1_n_7;
  wire vert_paddle_pre0_carry_i_1_n_0;
  wire vert_paddle_pre0_carry_i_3_n_0;
  wire vert_paddle_pre0_carry_i_4_n_0;
  wire vert_paddle_pre0_carry_i_5_n_0;
  wire vert_paddle_pre0_carry_i_6_n_0;
  wire vert_paddle_pre0_carry_n_0;
  wire vert_paddle_pre0_carry_n_1;
  wire vert_paddle_pre0_carry_n_2;
  wire vert_paddle_pre0_carry_n_3;
  wire vert_paddle_pre0_carry_n_4;
  wire vert_paddle_pre0_carry_n_5;
  wire vert_paddle_pre0_carry_n_6;
  wire vert_paddle_pre11_out;
  wire \vert_speed_post[8]_i_1_n_0 ;
  wire \vert_speed_post[8]_i_2_n_0 ;
  wire \vert_speed_post[8]_i_3_n_0 ;
  wire \vert_speed_post[8]_i_4_n_0 ;
  wire \vert_speed_post[8]_i_5_n_0 ;
  wire \vert_speed_post[8]_i_6_n_0 ;
  wire [3:3]NLW_horz_ball_corner0_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_horz_speed_pre1_inferred__2/i___0_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_horz_speed_pre1_inferred__2/i___0_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_horz_speed_pre1_inferred__2/i___0_carry__0_O_UNCONNECTED ;
  wire [3:0]NLW_horz_speed_pre2_carry_O_UNCONNECTED;
  wire [3:0]NLW_pad_c0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pad_c0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pad_c0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pad_c1_carry_O_UNCONNECTED;
  wire [3:1]NLW_pad_c1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pad_c1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sq_ball_c0_carry_O_UNCONNECTED;
  wire [3:1]NLW_sq_ball_c0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sq_ball_c0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sq_ball_c1_carry_O_UNCONNECTED;
  wire [3:1]NLW_sq_ball_c1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sq_ball_c1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_sq_ball_c2_carry_O_UNCONNECTED;
  wire [3:1]NLW_sq_ball_c2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_sq_ball_c2_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_sq_ball_c2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_sq_ball_c2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_sq_ball_c2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]NLW_vert_ball_corner0_carry__0_CO_UNCONNECTED;
  wire [0:0]NLW_vert_paddle_pre0_carry_O_UNCONNECTED;
  wire [3:1]NLW_vert_paddle_pre0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_vert_paddle_pre0_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 horz_ball_corner0_carry
       (.CI(1'b0),
        .CO({horz_ball_corner0_carry_n_0,horz_ball_corner0_carry_n_1,horz_ball_corner0_carry_n_2,horz_ball_corner0_carry_n_3}),
        .CYINIT(horz_ball_corner_reg[1]),
        .DI(horz_ball_corner_reg[5:2]),
        .O(horz_ball_corner0[5:2]),
        .S({horz_ball_corner0_carry_i_1_n_0,horz_ball_corner0_carry_i_2_n_0,horz_ball_corner0_carry_i_3_n_0,horz_ball_corner0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 horz_ball_corner0_carry__0
       (.CI(horz_ball_corner0_carry_n_0),
        .CO({NLW_horz_ball_corner0_carry__0_CO_UNCONNECTED[3],horz_ball_corner0_carry__0_n_1,horz_ball_corner0_carry__0_n_2,horz_ball_corner0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,horz_ball_corner_reg[8:6]}),
        .O(horz_ball_corner0[9:6]),
        .S({horz_ball_corner0_carry__0_i_1_n_0,horz_ball_corner0_carry__0_i_2_n_0,horz_ball_corner0_carry__0_i_3_n_0,horz_ball_corner0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry__0_i_1
       (.I0(\horz_speed_post_reg_n_0_[8] ),
        .I1(horz_ball_corner_reg[9]),
        .O(horz_ball_corner0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry__0_i_2
       (.I0(horz_ball_corner_reg[8]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry__0_i_3
       (.I0(horz_ball_corner_reg[7]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry__0_i_4
       (.I0(horz_ball_corner_reg[6]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry_i_1
       (.I0(horz_ball_corner_reg[5]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry_i_2
       (.I0(horz_ball_corner_reg[4]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry_i_3
       (.I0(horz_ball_corner_reg[3]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    horz_ball_corner0_carry_i_4
       (.I0(horz_ball_corner_reg[2]),
        .I1(\horz_speed_post_reg_n_0_[8] ),
        .O(horz_ball_corner0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \horz_ball_corner[1]_i_1 
       (.I0(horz_ball_corner_reg[1]),
        .O(horz_ball_R));
  FDCE \horz_ball_corner_reg[1] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_R),
        .Q(horz_ball_corner_reg[1]));
  FDCE \horz_ball_corner_reg[2] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[2]),
        .Q(horz_ball_corner_reg[2]));
  FDCE \horz_ball_corner_reg[3] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[3]),
        .Q(horz_ball_corner_reg[3]));
  FDCE \horz_ball_corner_reg[4] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[4]),
        .Q(horz_ball_corner_reg[4]));
  FDCE \horz_ball_corner_reg[5] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[5]),
        .Q(horz_ball_corner_reg[5]));
  FDCE \horz_ball_corner_reg[6] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[6]),
        .Q(horz_ball_corner_reg[6]));
  FDCE \horz_ball_corner_reg[7] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[7]),
        .Q(horz_ball_corner_reg[7]));
  FDCE \horz_ball_corner_reg[8] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[8]),
        .Q(horz_ball_corner_reg[8]));
  FDCE \horz_ball_corner_reg[9] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(horz_ball_corner0[9]),
        .Q(horz_ball_corner_reg[9]));
  LUT4 #(
    .INIT(16'hFA08)) 
    \horz_speed_post[8]_i_1 
       (.I0(p_0_in0),
        .I1(\horz_speed_post[8]_i_3_n_0 ),
        .I2(\vert_speed_post[8]_i_3_n_0 ),
        .I3(\horz_speed_post_reg_n_0_[8] ),
        .O(\horz_speed_post[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \horz_speed_post[8]_i_2 
       (.I0(horz_ball_corner_reg[6]),
        .I1(horz_ball_corner_reg[5]),
        .I2(horz_ball_corner_reg[7]),
        .I3(horz_ball_corner_reg[8]),
        .I4(horz_ball_corner_reg[9]),
        .O(p_0_in0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \horz_speed_post[8]_i_3 
       (.I0(horz_ball_corner_reg[8]),
        .I1(horz_ball_corner_reg[7]),
        .I2(sq_ball_c2_carry__0_i_3_n_0),
        .I3(horz_ball_corner_reg[9]),
        .I4(horz_speed_pre1),
        .I5(horz_speed_pre2__3),
        .O(\horz_speed_post[8]_i_3_n_0 ));
  FDCE \horz_speed_post_reg[8] 
       (.C(i_clock),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\horz_speed_post[8]_i_1_n_0 ),
        .Q(\horz_speed_post_reg_n_0_[8] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \horz_speed_pre1_inferred__2/i___0_carry 
       (.CI(1'b0),
        .CO({\horz_speed_pre1_inferred__2/i___0_carry_n_0 ,\horz_speed_pre1_inferred__2/i___0_carry_n_1 ,\horz_speed_pre1_inferred__2/i___0_carry_n_2 ,\horz_speed_pre1_inferred__2/i___0_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i___0_carry_i_1_n_0,i___0_carry_i_2_n_0,i___0_carry_i_3_n_0,i___0_carry_i_4_n_0}),
        .O(\NLW_horz_speed_pre1_inferred__2/i___0_carry_O_UNCONNECTED [3:0]),
        .S({i___0_carry_i_5_n_0,i___0_carry_i_6_n_0,i___0_carry_i_7_n_0,i___0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \horz_speed_pre1_inferred__2/i___0_carry__0 
       (.CI(\horz_speed_pre1_inferred__2/i___0_carry_n_0 ),
        .CO({\NLW_horz_speed_pre1_inferred__2/i___0_carry__0_CO_UNCONNECTED [3:1],horz_speed_pre1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i___0_carry__0_i_1_n_0}),
        .O(\NLW_horz_speed_pre1_inferred__2/i___0_carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i___0_carry__0_i_2_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 horz_speed_pre2_carry
       (.CI(1'b0),
        .CO({horz_speed_pre2__3,horz_speed_pre2_carry_n_1,horz_speed_pre2_carry_n_2,horz_speed_pre2_carry_n_3}),
        .CYINIT(horz_speed_pre2_carry_i_1_n_0),
        .DI({horz_speed_pre2_carry_i_2_n_0,horz_speed_pre2_carry_i_3_n_0,horz_speed_pre2_carry_i_4_n_0,horz_speed_pre2_carry_i_5_n_0}),
        .O(NLW_horz_speed_pre2_carry_O_UNCONNECTED[3:0]),
        .S({horz_speed_pre2_carry_i_6_n_0,horz_speed_pre2_carry_i_7_n_0,horz_speed_pre2_carry_i_8_n_0,horz_speed_pre2_carry_i_9_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    horz_speed_pre2_carry_i_1
       (.I0(vert_paddle_post_reg[1]),
        .I1(vert_ball_corner_reg[1]),
        .O(horz_speed_pre2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    horz_speed_pre2_carry_i_10
       (.I0(vert_ball_corner_reg[5]),
        .I1(vert_ball_corner_reg[3]),
        .I2(vert_ball_corner_reg[2]),
        .I3(vert_ball_corner_reg[1]),
        .I4(vert_ball_corner_reg[4]),
        .I5(vert_ball_corner_reg[6]),
        .O(horz_speed_pre2_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    horz_speed_pre2_carry_i_11
       (.I0(vert_ball_corner_reg[4]),
        .I1(vert_ball_corner_reg[1]),
        .I2(vert_ball_corner_reg[2]),
        .I3(vert_ball_corner_reg[3]),
        .I4(vert_ball_corner_reg[5]),
        .O(horz_speed_pre2_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    horz_speed_pre2_carry_i_12
       (.I0(vert_ball_corner_reg[2]),
        .I1(vert_ball_corner_reg[1]),
        .O(horz_speed_pre2_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h45551000CF755510)) 
    horz_speed_pre2_carry_i_2
       (.I0(vert_paddle_post_reg[9]),
        .I1(horz_speed_pre2_carry_i_10_n_0),
        .I2(vert_ball_corner_reg[7]),
        .I3(vert_ball_corner_reg[8]),
        .I4(vert_ball_corner_reg[9]),
        .I5(vert_paddle_post_reg[8]),
        .O(horz_speed_pre2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h4510C751)) 
    horz_speed_pre2_carry_i_3
       (.I0(vert_paddle_post_reg[7]),
        .I1(horz_speed_pre2_carry_i_11_n_0),
        .I2(vert_ball_corner_reg[6]),
        .I3(vert_ball_corner_reg[7]),
        .I4(vert_paddle_post_reg[6]),
        .O(horz_speed_pre2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h51550400F35D5504)) 
    horz_speed_pre2_carry_i_4
       (.I0(vert_paddle_post_reg[5]),
        .I1(vert_ball_corner_reg[3]),
        .I2(horz_speed_pre2_carry_i_12_n_0),
        .I3(vert_ball_corner_reg[4]),
        .I4(vert_ball_corner_reg[5]),
        .I5(vert_paddle_post_reg[4]),
        .O(horz_speed_pre2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h015443D5)) 
    horz_speed_pre2_carry_i_5
       (.I0(vert_paddle_post_reg[3]),
        .I1(vert_ball_corner_reg[2]),
        .I2(vert_ball_corner_reg[1]),
        .I3(vert_ball_corner_reg[3]),
        .I4(vert_paddle_post_reg[2]),
        .O(horz_speed_pre2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009909009600909)) 
    horz_speed_pre2_carry_i_6
       (.I0(vert_ball_corner_reg[9]),
        .I1(vert_paddle_post_reg[9]),
        .I2(vert_ball_corner_reg[8]),
        .I3(horz_speed_pre2_carry_i_10_n_0),
        .I4(vert_ball_corner_reg[7]),
        .I5(vert_paddle_post_reg[8]),
        .O(horz_speed_pre2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    horz_speed_pre2_carry_i_7
       (.I0(vert_ball_corner_reg[7]),
        .I1(vert_paddle_post_reg[7]),
        .I2(vert_ball_corner_reg[6]),
        .I3(horz_speed_pre2_carry_i_11_n_0),
        .I4(vert_paddle_post_reg[6]),
        .O(horz_speed_pre2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9090099009096009)) 
    horz_speed_pre2_carry_i_8
       (.I0(vert_ball_corner_reg[5]),
        .I1(vert_paddle_post_reg[5]),
        .I2(vert_ball_corner_reg[4]),
        .I3(vert_ball_corner_reg[3]),
        .I4(horz_speed_pre2_carry_i_12_n_0),
        .I5(vert_paddle_post_reg[4]),
        .O(horz_speed_pre2_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h60090660)) 
    horz_speed_pre2_carry_i_9
       (.I0(vert_ball_corner_reg[3]),
        .I1(vert_paddle_post_reg[3]),
        .I2(vert_ball_corner_reg[2]),
        .I3(vert_ball_corner_reg[1]),
        .I4(vert_paddle_post_reg[2]),
        .O(horz_speed_pre2_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h45551000CF755510)) 
    i___0_carry__0_i_1
       (.I0(vert_ball_corner_reg[9]),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(vert_paddle_post_reg[7]),
        .I3(vert_paddle_post_reg[8]),
        .I4(vert_paddle_post_reg[9]),
        .I5(vert_ball_corner_reg[8]),
        .O(i___0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009909009600909)) 
    i___0_carry__0_i_2
       (.I0(vert_paddle_post_reg[9]),
        .I1(vert_ball_corner_reg[9]),
        .I2(vert_paddle_post_reg[8]),
        .I3(pad_c0_carry_i_9_n_0),
        .I4(vert_paddle_post_reg[7]),
        .I5(vert_ball_corner_reg[8]),
        .O(i___0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h0909099F)) 
    i___0_carry_i_1
       (.I0(vert_paddle_post_reg[7]),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(vert_ball_corner_reg[7]),
        .I3(vert_ball_corner_reg[6]),
        .I4(pad_c0_carry_i_10_n_0),
        .O(i___0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h1117)) 
    i___0_carry_i_2
       (.I0(vert_ball_corner_reg[5]),
        .I1(pad_c0_carry_i_11_n_0),
        .I2(vert_ball_corner_reg[4]),
        .I3(pad_c0_carry_i_12_n_0),
        .O(i___0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h4015543D)) 
    i___0_carry_i_3
       (.I0(vert_ball_corner_reg[3]),
        .I1(vert_paddle_post_reg[1]),
        .I2(vert_paddle_post_reg[2]),
        .I3(vert_paddle_post_reg[3]),
        .I4(vert_ball_corner_reg[2]),
        .O(i___0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i___0_carry_i_4
       (.I0(vert_paddle_post_reg[1]),
        .I1(vert_ball_corner_reg[1]),
        .O(i___0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00969600)) 
    i___0_carry_i_5
       (.I0(vert_paddle_post_reg[7]),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(vert_ball_corner_reg[7]),
        .I3(pad_c0_carry_i_10_n_0),
        .I4(vert_ball_corner_reg[6]),
        .O(i___0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    i___0_carry_i_6
       (.I0(pad_c0_carry_i_11_n_0),
        .I1(vert_ball_corner_reg[5]),
        .I2(pad_c0_carry_i_12_n_0),
        .I3(vert_ball_corner_reg[4]),
        .O(i___0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h06609006)) 
    i___0_carry_i_7
       (.I0(vert_paddle_post_reg[3]),
        .I1(vert_ball_corner_reg[3]),
        .I2(vert_paddle_post_reg[1]),
        .I3(vert_paddle_post_reg[2]),
        .I4(vert_ball_corner_reg[2]),
        .O(i___0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___0_carry_i_8
       (.I0(vert_ball_corner_reg[1]),
        .I1(vert_paddle_post_reg[1]),
        .O(i___0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    i__carry__0_i_1
       (.I0(horz_ball_corner_reg[9]),
        .I1(i_h_spot[9]),
        .I2(i_h_spot[8]),
        .I3(horz_ball_corner_reg[8]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_2
       (.I0(i_h_spot[9]),
        .I1(horz_ball_corner_reg[9]),
        .I2(horz_ball_corner_reg[8]),
        .I3(i_h_spot[8]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(i_h_spot[7]),
        .I1(horz_ball_corner_reg[7]),
        .I2(i_h_spot[6]),
        .I3(horz_ball_corner_reg[6]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(i_h_spot[5]),
        .I1(horz_ball_corner_reg[5]),
        .I2(i_h_spot[4]),
        .I3(horz_ball_corner_reg[4]),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2B22)) 
    i__carry_i_3
       (.I0(i_h_spot[3]),
        .I1(horz_ball_corner_reg[3]),
        .I2(horz_ball_corner_reg[2]),
        .I3(i_h_spot[2]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h8E)) 
    i__carry_i_4
       (.I0(i_h_spot[0]),
        .I1(i_h_spot[1]),
        .I2(horz_ball_corner_reg[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(horz_ball_corner_reg[7]),
        .I1(i_h_spot[7]),
        .I2(horz_ball_corner_reg[6]),
        .I3(i_h_spot[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(horz_ball_corner_reg[5]),
        .I1(i_h_spot[5]),
        .I2(horz_ball_corner_reg[4]),
        .I3(i_h_spot[4]),
        .O(i__carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(horz_ball_corner_reg[3]),
        .I1(i_h_spot[3]),
        .I2(horz_ball_corner_reg[2]),
        .I3(i_h_spot[2]),
        .O(i__carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry_i_8
       (.I0(i_h_spot[0]),
        .I1(horz_ball_corner_reg[1]),
        .I2(i_h_spot[1]),
        .O(i__carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h45FF4545)) 
    \o_color[0]_INST_0 
       (.I0(\o_color[0]_INST_0_i_1_n_0 ),
        .I1(\o_color[1]_INST_0_i_1_n_0 ),
        .I2(i_h_spot[9]),
        .I3(\o_color[0]_INST_0_i_2_n_0 ),
        .I4(\o_color[0]_INST_0_i_3_n_0 ),
        .O(o_color[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00FE)) 
    \o_color[0]_INST_0_i_1 
       (.I0(i_h_spot[6]),
        .I1(i_h_spot[5]),
        .I2(\o_color[0]_INST_0_i_4_n_0 ),
        .I3(i_h_spot[9]),
        .I4(\o_color[1]_INST_0_i_3_n_0 ),
        .I5(\o_color[1]_INST_0_i_2_n_0 ),
        .O(\o_color[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \o_color[0]_INST_0_i_2 
       (.I0(\o_color[0]_INST_0_i_5_n_0 ),
        .I1(sq_ball_c1__4),
        .I2(i_display_on),
        .I3(sq_ball_c23_in),
        .I4(sq_ball_c2__4),
        .I5(sq_ball_c0__4),
        .O(\o_color[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF44F4FF4FFFF)) 
    \o_color[0]_INST_0_i_3 
       (.I0(i_h_spot[0]),
        .I1(i_v_spot[0]),
        .I2(i_h_spot[2]),
        .I3(horz_ball_corner_reg[2]),
        .I4(horz_ball_corner_reg[1]),
        .I5(i_h_spot[1]),
        .O(\o_color[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \o_color[0]_INST_0_i_4 
       (.I0(i_h_spot[3]),
        .I1(i_h_spot[4]),
        .O(\o_color[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7007000000007007)) 
    \o_color[0]_INST_0_i_5 
       (.I0(i_v_spot[0]),
        .I1(i_h_spot[0]),
        .I2(i_h_spot[2]),
        .I3(horz_ball_corner_reg[2]),
        .I4(horz_ball_corner_reg[1]),
        .I5(i_h_spot[1]),
        .O(\o_color[0]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000000D)) 
    \o_color[1]_INST_0 
       (.I0(i_h_spot[9]),
        .I1(\o_color[1]_INST_0_i_1_n_0 ),
        .I2(\o_color[1]_INST_0_i_2_n_0 ),
        .I3(\o_color[1]_INST_0_i_3_n_0 ),
        .I4(\o_color[1]_INST_0_i_4_n_0 ),
        .O(o_color[1]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \o_color[1]_INST_0_i_1 
       (.I0(i_h_spot[4]),
        .I1(i_h_spot[3]),
        .I2(i_h_spot[5]),
        .I3(pad_c1__4),
        .I4(i_h_spot[6]),
        .I5(pad_c0__4),
        .O(\o_color[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080000000)) 
    \o_color[1]_INST_0_i_2 
       (.I0(i_h_spot[1]),
        .I1(i_h_spot[0]),
        .I2(i_h_spot[2]),
        .I3(i_h_spot[3]),
        .I4(i_h_spot[4]),
        .I5(i_h_spot[9]),
        .O(\o_color[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF01FF)) 
    \o_color[1]_INST_0_i_3 
       (.I0(i_h_spot[4]),
        .I1(i_h_spot[1]),
        .I2(i_h_spot[2]),
        .I3(i_display_on),
        .I4(i_h_spot[7]),
        .I5(i_h_spot[8]),
        .O(\o_color[1]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55555501)) 
    \o_color[1]_INST_0_i_4 
       (.I0(i_h_spot[9]),
        .I1(i_h_spot[3]),
        .I2(i_h_spot[4]),
        .I3(i_h_spot[5]),
        .I4(i_h_spot[6]),
        .O(\o_color[1]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pad_c0_carry
       (.CI(1'b0),
        .CO({pad_c0_carry_n_0,pad_c0_carry_n_1,pad_c0_carry_n_2,pad_c0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({pad_c0_carry_i_1_n_0,pad_c0_carry_i_2_n_0,pad_c0_carry_i_3_n_0,pad_c0_carry_i_4_n_0}),
        .O(NLW_pad_c0_carry_O_UNCONNECTED[3:0]),
        .S({pad_c0_carry_i_5_n_0,pad_c0_carry_i_6_n_0,pad_c0_carry_i_7_n_0,pad_c0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pad_c0_carry__0
       (.CI(pad_c0_carry_n_0),
        .CO({NLW_pad_c0_carry__0_CO_UNCONNECTED[3:1],pad_c0__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pad_c0_carry__0_i_1_n_0}),
        .O(NLW_pad_c0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pad_c0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h45551000CF755510)) 
    pad_c0_carry__0_i_1
       (.I0(i_v_spot[9]),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(vert_paddle_post_reg[7]),
        .I3(vert_paddle_post_reg[8]),
        .I4(vert_paddle_post_reg[9]),
        .I5(i_v_spot[8]),
        .O(pad_c0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009909009600909)) 
    pad_c0_carry__0_i_2
       (.I0(vert_paddle_post_reg[9]),
        .I1(i_v_spot[9]),
        .I2(vert_paddle_post_reg[8]),
        .I3(pad_c0_carry_i_9_n_0),
        .I4(vert_paddle_post_reg[7]),
        .I5(i_v_spot[8]),
        .O(pad_c0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h0909099F)) 
    pad_c0_carry_i_1
       (.I0(vert_paddle_post_reg[7]),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(i_v_spot[7]),
        .I3(i_v_spot[6]),
        .I4(pad_c0_carry_i_10_n_0),
        .O(pad_c0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h6A6A6A6A6AAAAAAA)) 
    pad_c0_carry_i_10
       (.I0(vert_paddle_post_reg[6]),
        .I1(vert_paddle_post_reg[5]),
        .I2(vert_paddle_post_reg[4]),
        .I3(vert_paddle_post_reg[1]),
        .I4(vert_paddle_post_reg[2]),
        .I5(vert_paddle_post_reg[3]),
        .O(pad_c0_carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA9995555)) 
    pad_c0_carry_i_11
       (.I0(vert_paddle_post_reg[5]),
        .I1(vert_paddle_post_reg[3]),
        .I2(vert_paddle_post_reg[2]),
        .I3(vert_paddle_post_reg[1]),
        .I4(vert_paddle_post_reg[4]),
        .O(pad_c0_carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA95)) 
    pad_c0_carry_i_12
       (.I0(vert_paddle_post_reg[4]),
        .I1(vert_paddle_post_reg[1]),
        .I2(vert_paddle_post_reg[2]),
        .I3(vert_paddle_post_reg[3]),
        .O(pad_c0_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h1117)) 
    pad_c0_carry_i_2
       (.I0(i_v_spot[5]),
        .I1(pad_c0_carry_i_11_n_0),
        .I2(i_v_spot[4]),
        .I3(pad_c0_carry_i_12_n_0),
        .O(pad_c0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h4015543D)) 
    pad_c0_carry_i_3
       (.I0(i_v_spot[3]),
        .I1(vert_paddle_post_reg[1]),
        .I2(vert_paddle_post_reg[2]),
        .I3(vert_paddle_post_reg[3]),
        .I4(i_v_spot[2]),
        .O(pad_c0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    pad_c0_carry_i_4
       (.I0(i_v_spot[1]),
        .I1(vert_paddle_post_reg[1]),
        .O(pad_c0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00969600)) 
    pad_c0_carry_i_5
       (.I0(vert_paddle_post_reg[7]),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(i_v_spot[7]),
        .I3(pad_c0_carry_i_10_n_0),
        .I4(i_v_spot[6]),
        .O(pad_c0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0660)) 
    pad_c0_carry_i_6
       (.I0(pad_c0_carry_i_11_n_0),
        .I1(i_v_spot[5]),
        .I2(pad_c0_carry_i_12_n_0),
        .I3(i_v_spot[4]),
        .O(pad_c0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h06609006)) 
    pad_c0_carry_i_7
       (.I0(vert_paddle_post_reg[3]),
        .I1(i_v_spot[3]),
        .I2(vert_paddle_post_reg[1]),
        .I3(vert_paddle_post_reg[2]),
        .I4(i_v_spot[2]),
        .O(pad_c0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h06)) 
    pad_c0_carry_i_8
       (.I0(vert_paddle_post_reg[1]),
        .I1(i_v_spot[1]),
        .I2(i_v_spot[0]),
        .O(pad_c0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h1515151515555555)) 
    pad_c0_carry_i_9
       (.I0(vert_paddle_post_reg[6]),
        .I1(vert_paddle_post_reg[5]),
        .I2(vert_paddle_post_reg[4]),
        .I3(vert_paddle_post_reg[1]),
        .I4(vert_paddle_post_reg[2]),
        .I5(vert_paddle_post_reg[3]),
        .O(pad_c0_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pad_c1_carry
       (.CI(1'b0),
        .CO({pad_c1_carry_n_0,pad_c1_carry_n_1,pad_c1_carry_n_2,pad_c1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({pad_c1_carry_i_1_n_0,pad_c1_carry_i_2_n_0,pad_c1_carry_i_3_n_0,pad_c1_carry_i_4_n_0}),
        .O(NLW_pad_c1_carry_O_UNCONNECTED[3:0]),
        .S({pad_c1_carry_i_5_n_0,pad_c1_carry_i_6_n_0,pad_c1_carry_i_7_n_0,pad_c1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pad_c1_carry__0
       (.CI(pad_c1_carry_n_0),
        .CO({NLW_pad_c1_carry__0_CO_UNCONNECTED[3:1],pad_c1__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pad_c1_carry__0_i_1_n_0}),
        .O(NLW_pad_c1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pad_c1_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    pad_c1_carry__0_i_1
       (.I0(i_v_spot[9]),
        .I1(vert_paddle_post_reg[9]),
        .I2(i_v_spot[8]),
        .I3(vert_paddle_post_reg[8]),
        .O(pad_c1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pad_c1_carry__0_i_2
       (.I0(vert_paddle_post_reg[9]),
        .I1(i_v_spot[9]),
        .I2(i_v_spot[8]),
        .I3(vert_paddle_post_reg[8]),
        .O(pad_c1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pad_c1_carry_i_1
       (.I0(i_v_spot[7]),
        .I1(vert_paddle_post_reg[7]),
        .I2(i_v_spot[6]),
        .I3(vert_paddle_post_reg[6]),
        .O(pad_c1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pad_c1_carry_i_2
       (.I0(i_v_spot[5]),
        .I1(vert_paddle_post_reg[5]),
        .I2(i_v_spot[4]),
        .I3(vert_paddle_post_reg[4]),
        .O(pad_c1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pad_c1_carry_i_3
       (.I0(i_v_spot[3]),
        .I1(vert_paddle_post_reg[3]),
        .I2(i_v_spot[2]),
        .I3(vert_paddle_post_reg[2]),
        .O(pad_c1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    pad_c1_carry_i_4
       (.I0(i_v_spot[1]),
        .I1(vert_paddle_post_reg[1]),
        .I2(i_v_spot[0]),
        .O(pad_c1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pad_c1_carry_i_5
       (.I0(vert_paddle_post_reg[7]),
        .I1(i_v_spot[7]),
        .I2(vert_paddle_post_reg[6]),
        .I3(i_v_spot[6]),
        .O(pad_c1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pad_c1_carry_i_6
       (.I0(vert_paddle_post_reg[5]),
        .I1(i_v_spot[5]),
        .I2(vert_paddle_post_reg[4]),
        .I3(i_v_spot[4]),
        .O(pad_c1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pad_c1_carry_i_7
       (.I0(vert_paddle_post_reg[3]),
        .I1(i_v_spot[3]),
        .I2(vert_paddle_post_reg[2]),
        .I3(i_v_spot[2]),
        .O(pad_c1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    pad_c1_carry_i_8
       (.I0(i_v_spot[0]),
        .I1(vert_paddle_post_reg[1]),
        .I2(i_v_spot[1]),
        .O(pad_c1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sq_ball_c0_carry
       (.CI(1'b0),
        .CO({sq_ball_c0_carry_n_0,sq_ball_c0_carry_n_1,sq_ball_c0_carry_n_2,sq_ball_c0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({sq_ball_c0_carry_i_1_n_0,sq_ball_c0_carry_i_2_n_0,sq_ball_c0_carry_i_3_n_0,sq_ball_c0_carry_i_4_n_0}),
        .O(NLW_sq_ball_c0_carry_O_UNCONNECTED[3:0]),
        .S({sq_ball_c0_carry_i_5_n_0,sq_ball_c0_carry_i_6_n_0,sq_ball_c0_carry_i_7_n_0,sq_ball_c0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sq_ball_c0_carry__0
       (.CI(sq_ball_c0_carry_n_0),
        .CO({NLW_sq_ball_c0_carry__0_CO_UNCONNECTED[3:1],sq_ball_c0__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sq_ball_c0_carry__0_i_1_n_0}),
        .O(NLW_sq_ball_c0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sq_ball_c0_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h45551000CF755510)) 
    sq_ball_c0_carry__0_i_1
       (.I0(i_v_spot[9]),
        .I1(horz_speed_pre2_carry_i_10_n_0),
        .I2(vert_ball_corner_reg[7]),
        .I3(vert_ball_corner_reg[8]),
        .I4(vert_ball_corner_reg[9]),
        .I5(i_v_spot[8]),
        .O(sq_ball_c0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009909009600909)) 
    sq_ball_c0_carry__0_i_2
       (.I0(vert_ball_corner_reg[9]),
        .I1(i_v_spot[9]),
        .I2(vert_ball_corner_reg[8]),
        .I3(horz_speed_pre2_carry_i_10_n_0),
        .I4(vert_ball_corner_reg[7]),
        .I5(i_v_spot[8]),
        .O(sq_ball_c0_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h4510C751)) 
    sq_ball_c0_carry_i_1
       (.I0(i_v_spot[7]),
        .I1(horz_speed_pre2_carry_i_11_n_0),
        .I2(vert_ball_corner_reg[6]),
        .I3(vert_ball_corner_reg[7]),
        .I4(i_v_spot[6]),
        .O(sq_ball_c0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h51550400F35D5504)) 
    sq_ball_c0_carry_i_2
       (.I0(i_v_spot[5]),
        .I1(vert_ball_corner_reg[3]),
        .I2(horz_speed_pre2_carry_i_12_n_0),
        .I3(vert_ball_corner_reg[4]),
        .I4(vert_ball_corner_reg[5]),
        .I5(i_v_spot[4]),
        .O(sq_ball_c0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h015443D5)) 
    sq_ball_c0_carry_i_3
       (.I0(i_v_spot[3]),
        .I1(vert_ball_corner_reg[2]),
        .I2(vert_ball_corner_reg[1]),
        .I3(vert_ball_corner_reg[3]),
        .I4(i_v_spot[2]),
        .O(sq_ball_c0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    sq_ball_c0_carry_i_4
       (.I0(i_v_spot[0]),
        .I1(i_v_spot[1]),
        .I2(vert_ball_corner_reg[1]),
        .O(sq_ball_c0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    sq_ball_c0_carry_i_5
       (.I0(vert_ball_corner_reg[7]),
        .I1(i_v_spot[7]),
        .I2(vert_ball_corner_reg[6]),
        .I3(horz_speed_pre2_carry_i_11_n_0),
        .I4(i_v_spot[6]),
        .O(sq_ball_c0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9090099009096009)) 
    sq_ball_c0_carry_i_6
       (.I0(vert_ball_corner_reg[5]),
        .I1(i_v_spot[5]),
        .I2(vert_ball_corner_reg[4]),
        .I3(vert_ball_corner_reg[3]),
        .I4(horz_speed_pre2_carry_i_12_n_0),
        .I5(i_v_spot[4]),
        .O(sq_ball_c0_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h60090660)) 
    sq_ball_c0_carry_i_7
       (.I0(vert_ball_corner_reg[3]),
        .I1(i_v_spot[3]),
        .I2(vert_ball_corner_reg[2]),
        .I3(vert_ball_corner_reg[1]),
        .I4(i_v_spot[2]),
        .O(sq_ball_c0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    sq_ball_c0_carry_i_8
       (.I0(vert_ball_corner_reg[1]),
        .I1(i_v_spot[1]),
        .I2(i_v_spot[0]),
        .O(sq_ball_c0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sq_ball_c1_carry
       (.CI(1'b0),
        .CO({sq_ball_c1_carry_n_0,sq_ball_c1_carry_n_1,sq_ball_c1_carry_n_2,sq_ball_c1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({sq_ball_c1_carry_i_1_n_0,sq_ball_c1_carry_i_2_n_0,sq_ball_c1_carry_i_3_n_0,sq_ball_c1_carry_i_4_n_0}),
        .O(NLW_sq_ball_c1_carry_O_UNCONNECTED[3:0]),
        .S({sq_ball_c1_carry_i_5_n_0,sq_ball_c1_carry_i_6_n_0,sq_ball_c1_carry_i_7_n_0,sq_ball_c1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sq_ball_c1_carry__0
       (.CI(sq_ball_c1_carry_n_0),
        .CO({NLW_sq_ball_c1_carry__0_CO_UNCONNECTED[3:1],sq_ball_c1__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sq_ball_c1_carry__0_i_1_n_0}),
        .O(NLW_sq_ball_c1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sq_ball_c1_carry__0_i_2_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    sq_ball_c1_carry__0_i_1
       (.I0(i_v_spot[9]),
        .I1(vert_ball_corner_reg[9]),
        .I2(i_v_spot[8]),
        .I3(vert_ball_corner_reg[8]),
        .O(sq_ball_c1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sq_ball_c1_carry__0_i_2
       (.I0(vert_ball_corner_reg[9]),
        .I1(i_v_spot[9]),
        .I2(vert_ball_corner_reg[8]),
        .I3(i_v_spot[8]),
        .O(sq_ball_c1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sq_ball_c1_carry_i_1
       (.I0(i_v_spot[7]),
        .I1(vert_ball_corner_reg[7]),
        .I2(i_v_spot[6]),
        .I3(vert_ball_corner_reg[6]),
        .O(sq_ball_c1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sq_ball_c1_carry_i_2
       (.I0(i_v_spot[5]),
        .I1(vert_ball_corner_reg[5]),
        .I2(i_v_spot[4]),
        .I3(vert_ball_corner_reg[4]),
        .O(sq_ball_c1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    sq_ball_c1_carry_i_3
       (.I0(i_v_spot[3]),
        .I1(vert_ball_corner_reg[3]),
        .I2(i_v_spot[2]),
        .I3(vert_ball_corner_reg[2]),
        .O(sq_ball_c1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    sq_ball_c1_carry_i_4
       (.I0(i_v_spot[1]),
        .I1(vert_ball_corner_reg[1]),
        .I2(i_v_spot[0]),
        .O(sq_ball_c1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sq_ball_c1_carry_i_5
       (.I0(vert_ball_corner_reg[7]),
        .I1(i_v_spot[7]),
        .I2(vert_ball_corner_reg[6]),
        .I3(i_v_spot[6]),
        .O(sq_ball_c1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sq_ball_c1_carry_i_6
       (.I0(vert_ball_corner_reg[5]),
        .I1(i_v_spot[5]),
        .I2(vert_ball_corner_reg[4]),
        .I3(i_v_spot[4]),
        .O(sq_ball_c1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sq_ball_c1_carry_i_7
       (.I0(vert_ball_corner_reg[3]),
        .I1(i_v_spot[3]),
        .I2(vert_ball_corner_reg[2]),
        .I3(i_v_spot[2]),
        .O(sq_ball_c1_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    sq_ball_c1_carry_i_8
       (.I0(i_v_spot[0]),
        .I1(vert_ball_corner_reg[1]),
        .I2(i_v_spot[1]),
        .O(sq_ball_c1_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sq_ball_c2_carry
       (.CI(1'b0),
        .CO({sq_ball_c2_carry_n_0,sq_ball_c2_carry_n_1,sq_ball_c2_carry_n_2,sq_ball_c2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({sq_ball_c2_carry_i_1_n_0,sq_ball_c2_carry_i_2_n_0,sq_ball_c2_carry_i_3_n_0,sq_ball_c2_carry_i_4_n_0}),
        .O(NLW_sq_ball_c2_carry_O_UNCONNECTED[3:0]),
        .S({sq_ball_c2_carry_i_5_n_0,sq_ball_c2_carry_i_6_n_0,sq_ball_c2_carry_i_7_n_0,sq_ball_c2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sq_ball_c2_carry__0
       (.CI(sq_ball_c2_carry_n_0),
        .CO({NLW_sq_ball_c2_carry__0_CO_UNCONNECTED[3:1],sq_ball_c2__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sq_ball_c2_carry__0_i_1_n_0}),
        .O(NLW_sq_ball_c2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sq_ball_c2_carry__0_i_2_n_0}));
  LUT6 #(
    .INIT(64'h55150040DD3D4454)) 
    sq_ball_c2_carry__0_i_1
       (.I0(i_h_spot[9]),
        .I1(horz_ball_corner_reg[8]),
        .I2(horz_ball_corner_reg[7]),
        .I3(sq_ball_c2_carry__0_i_3_n_0),
        .I4(horz_ball_corner_reg[9]),
        .I5(i_h_spot[8]),
        .O(sq_ball_c2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9099090006009099)) 
    sq_ball_c2_carry__0_i_2
       (.I0(horz_ball_corner_reg[9]),
        .I1(i_h_spot[9]),
        .I2(sq_ball_c2_carry__0_i_3_n_0),
        .I3(horz_ball_corner_reg[7]),
        .I4(horz_ball_corner_reg[8]),
        .I5(i_h_spot[8]),
        .O(sq_ball_c2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h777FFFFFFFFFFFFF)) 
    sq_ball_c2_carry__0_i_3
       (.I0(horz_ball_corner_reg[5]),
        .I1(horz_ball_corner_reg[3]),
        .I2(horz_ball_corner_reg[2]),
        .I3(horz_ball_corner_reg[1]),
        .I4(horz_ball_corner_reg[4]),
        .I5(horz_ball_corner_reg[6]),
        .O(sq_ball_c2_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h4510C751)) 
    sq_ball_c2_carry_i_1
       (.I0(i_h_spot[7]),
        .I1(sq_ball_c2_carry_i_9_n_0),
        .I2(horz_ball_corner_reg[6]),
        .I3(horz_ball_corner_reg[7]),
        .I4(i_h_spot[6]),
        .O(sq_ball_c2_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    sq_ball_c2_carry_i_10
       (.I0(horz_ball_corner_reg[1]),
        .I1(horz_ball_corner_reg[2]),
        .I2(horz_ball_corner_reg[3]),
        .O(sq_ball_c2_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h4510C751)) 
    sq_ball_c2_carry_i_2
       (.I0(i_h_spot[5]),
        .I1(sq_ball_c2_carry_i_10_n_0),
        .I2(horz_ball_corner_reg[4]),
        .I3(horz_ball_corner_reg[5]),
        .I4(i_h_spot[4]),
        .O(sq_ball_c2_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h015443D5)) 
    sq_ball_c2_carry_i_3
       (.I0(i_h_spot[3]),
        .I1(horz_ball_corner_reg[2]),
        .I2(horz_ball_corner_reg[1]),
        .I3(horz_ball_corner_reg[3]),
        .I4(i_h_spot[2]),
        .O(sq_ball_c2_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    sq_ball_c2_carry_i_4
       (.I0(i_h_spot[0]),
        .I1(i_h_spot[1]),
        .I2(horz_ball_corner_reg[1]),
        .O(sq_ball_c2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    sq_ball_c2_carry_i_5
       (.I0(horz_ball_corner_reg[7]),
        .I1(i_h_spot[7]),
        .I2(horz_ball_corner_reg[6]),
        .I3(sq_ball_c2_carry_i_9_n_0),
        .I4(i_h_spot[6]),
        .O(sq_ball_c2_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h90090960)) 
    sq_ball_c2_carry_i_6
       (.I0(horz_ball_corner_reg[5]),
        .I1(i_h_spot[5]),
        .I2(horz_ball_corner_reg[4]),
        .I3(sq_ball_c2_carry_i_10_n_0),
        .I4(i_h_spot[4]),
        .O(sq_ball_c2_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h60090660)) 
    sq_ball_c2_carry_i_7
       (.I0(horz_ball_corner_reg[3]),
        .I1(i_h_spot[3]),
        .I2(horz_ball_corner_reg[2]),
        .I3(horz_ball_corner_reg[1]),
        .I4(i_h_spot[2]),
        .O(sq_ball_c2_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h60)) 
    sq_ball_c2_carry_i_8
       (.I0(horz_ball_corner_reg[1]),
        .I1(i_h_spot[1]),
        .I2(i_h_spot[0]),
        .O(sq_ball_c2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h57FFFFFF)) 
    sq_ball_c2_carry_i_9
       (.I0(horz_ball_corner_reg[4]),
        .I1(horz_ball_corner_reg[1]),
        .I2(horz_ball_corner_reg[2]),
        .I3(horz_ball_corner_reg[3]),
        .I4(horz_ball_corner_reg[5]),
        .O(sq_ball_c2_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sq_ball_c2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\sq_ball_c2_inferred__0/i__carry_n_0 ,\sq_ball_c2_inferred__0/i__carry_n_1 ,\sq_ball_c2_inferred__0/i__carry_n_2 ,\sq_ball_c2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_sq_ball_c2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sq_ball_c2_inferred__0/i__carry__0 
       (.CI(\sq_ball_c2_inferred__0/i__carry_n_0 ),
        .CO({\NLW_sq_ball_c2_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],sq_ball_c23_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}),
        .O(\NLW_sq_ball_c2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 vert_ball_corner0_carry
       (.CI(1'b0),
        .CO({vert_ball_corner0_carry_n_0,vert_ball_corner0_carry_n_1,vert_ball_corner0_carry_n_2,vert_ball_corner0_carry_n_3}),
        .CYINIT(vert_ball_corner_reg[1]),
        .DI(vert_ball_corner_reg[5:2]),
        .O(vert_ball_corner0[5:2]),
        .S({vert_ball_corner0_carry_i_1_n_0,vert_ball_corner0_carry_i_2_n_0,vert_ball_corner0_carry_i_3_n_0,vert_ball_corner0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 vert_ball_corner0_carry__0
       (.CI(vert_ball_corner0_carry_n_0),
        .CO({NLW_vert_ball_corner0_carry__0_CO_UNCONNECTED[3],vert_ball_corner0_carry__0_n_1,vert_ball_corner0_carry__0_n_2,vert_ball_corner0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,vert_ball_corner_reg[8:6]}),
        .O(vert_ball_corner0[9:6]),
        .S({vert_ball_corner0_carry__0_i_1_n_0,vert_ball_corner0_carry__0_i_2_n_0,vert_ball_corner0_carry__0_i_3_n_0,vert_ball_corner0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry__0_i_1
       (.I0(in),
        .I1(vert_ball_corner_reg[9]),
        .O(vert_ball_corner0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry__0_i_2
       (.I0(vert_ball_corner_reg[8]),
        .I1(in),
        .O(vert_ball_corner0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry__0_i_3
       (.I0(vert_ball_corner_reg[7]),
        .I1(in),
        .O(vert_ball_corner0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry__0_i_4
       (.I0(vert_ball_corner_reg[6]),
        .I1(in),
        .O(vert_ball_corner0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry_i_1
       (.I0(vert_ball_corner_reg[5]),
        .I1(in),
        .O(vert_ball_corner0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry_i_2
       (.I0(vert_ball_corner_reg[4]),
        .I1(in),
        .O(vert_ball_corner0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry_i_3
       (.I0(vert_ball_corner_reg[3]),
        .I1(in),
        .O(vert_ball_corner0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_ball_corner0_carry_i_4
       (.I0(vert_ball_corner_reg[2]),
        .I1(in),
        .O(vert_ball_corner0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \vert_ball_corner[1]_i_1 
       (.I0(vert_ball_corner_reg[1]),
        .O(\vert_ball_corner[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \vert_ball_corner[9]_i_1 
       (.I0(\vert_ball_corner[9]_i_2_n_0 ),
        .I1(i_h_spot[8]),
        .I2(i_h_spot[7]),
        .I3(i_h_spot[4]),
        .I4(i_h_spot[0]),
        .I5(\vert_ball_corner[9]_i_3_n_0 ),
        .O(refresh60Hz));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vert_ball_corner[9]_i_2 
       (.I0(i_h_spot[6]),
        .I1(i_h_spot[5]),
        .I2(i_h_spot[9]),
        .I3(i_v_spot[4]),
        .O(\vert_ball_corner[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \vert_ball_corner[9]_i_3 
       (.I0(i_v_spot[0]),
        .I1(i_v_spot[6]),
        .I2(i_v_spot[3]),
        .I3(i_v_spot[5]),
        .I4(\vert_ball_corner[9]_i_4_n_0 ),
        .I5(\vert_ball_corner[9]_i_5_n_0 ),
        .O(\vert_ball_corner[9]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \vert_ball_corner[9]_i_4 
       (.I0(i_h_spot[1]),
        .I1(i_v_spot[1]),
        .I2(i_v_spot[7]),
        .I3(i_v_spot[2]),
        .O(\vert_ball_corner[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \vert_ball_corner[9]_i_5 
       (.I0(i_v_spot[8]),
        .I1(i_h_spot[3]),
        .I2(i_h_spot[2]),
        .I3(i_v_spot[9]),
        .O(\vert_ball_corner[9]_i_5_n_0 ));
  FDCE \vert_ball_corner_reg[1] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(\vert_ball_corner[1]_i_1_n_0 ),
        .Q(vert_ball_corner_reg[1]));
  FDCE \vert_ball_corner_reg[2] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[2]),
        .Q(vert_ball_corner_reg[2]));
  FDCE \vert_ball_corner_reg[3] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[3]),
        .Q(vert_ball_corner_reg[3]));
  FDCE \vert_ball_corner_reg[4] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[4]),
        .Q(vert_ball_corner_reg[4]));
  FDCE \vert_ball_corner_reg[5] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[5]),
        .Q(vert_ball_corner_reg[5]));
  FDCE \vert_ball_corner_reg[6] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[6]),
        .Q(vert_ball_corner_reg[6]));
  FDCE \vert_ball_corner_reg[7] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[7]),
        .Q(vert_ball_corner_reg[7]));
  FDCE \vert_ball_corner_reg[8] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[8]),
        .Q(vert_ball_corner_reg[8]));
  FDCE \vert_ball_corner_reg[9] 
       (.C(i_clock),
        .CE(refresh60Hz),
        .CLR(i_reset),
        .D(vert_ball_corner0[9]),
        .Q(vert_ball_corner_reg[9]));
  LUT3 #(
    .INIT(8'hA8)) 
    \vert_paddle_post[9]_i_1 
       (.I0(refresh60Hz),
        .I1(\vert_paddle_post[9]_i_2_n_0 ),
        .I2(vert_paddle_pre11_out),
        .O(vert_paddle_pre));
  LUT6 #(
    .INIT(64'h30008EFF00000000)) 
    \vert_paddle_post[9]_i_2 
       (.I0(\vert_paddle_post[9]_i_3_n_0 ),
        .I1(pad_c0_carry_i_9_n_0),
        .I2(vert_paddle_post_reg[7]),
        .I3(vert_paddle_post_reg[8]),
        .I4(vert_paddle_post_reg[9]),
        .I5(i_down_but),
        .O(\vert_paddle_post[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEA0011FF)) 
    \vert_paddle_post[9]_i_3 
       (.I0(vert_paddle_post_reg[3]),
        .I1(vert_paddle_post_reg[2]),
        .I2(vert_paddle_post_reg[1]),
        .I3(vert_paddle_post_reg[4]),
        .I4(vert_paddle_post_reg[5]),
        .I5(vert_paddle_post_reg[6]),
        .O(\vert_paddle_post[9]_i_3_n_0 ));
  FDCE \vert_paddle_post_reg[1] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry_n_6),
        .Q(vert_paddle_post_reg[1]));
  FDCE \vert_paddle_post_reg[2] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry_n_5),
        .Q(vert_paddle_post_reg[2]));
  FDCE \vert_paddle_post_reg[3] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry_n_4),
        .Q(vert_paddle_post_reg[3]));
  FDCE \vert_paddle_post_reg[4] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry__0_n_7),
        .Q(vert_paddle_post_reg[4]));
  FDCE \vert_paddle_post_reg[5] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry__0_n_6),
        .Q(vert_paddle_post_reg[5]));
  FDCE \vert_paddle_post_reg[6] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry__0_n_5),
        .Q(vert_paddle_post_reg[6]));
  FDCE \vert_paddle_post_reg[7] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry__0_n_4),
        .Q(vert_paddle_post_reg[7]));
  FDCE \vert_paddle_post_reg[8] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry__1_n_7),
        .Q(vert_paddle_post_reg[8]));
  FDCE \vert_paddle_post_reg[9] 
       (.C(i_clock),
        .CE(vert_paddle_pre),
        .CLR(i_reset),
        .D(vert_paddle_pre0_carry__1_n_6),
        .Q(vert_paddle_post_reg[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 vert_paddle_pre0_carry
       (.CI(1'b0),
        .CO({vert_paddle_pre0_carry_n_0,vert_paddle_pre0_carry_n_1,vert_paddle_pre0_carry_n_2,vert_paddle_pre0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({vert_paddle_pre0_carry_i_1_n_0,vert_paddle_pre11_out,vert_paddle_post_reg[1],1'b0}),
        .O({vert_paddle_pre0_carry_n_4,vert_paddle_pre0_carry_n_5,vert_paddle_pre0_carry_n_6,NLW_vert_paddle_pre0_carry_O_UNCONNECTED[0]}),
        .S({vert_paddle_pre0_carry_i_3_n_0,vert_paddle_pre0_carry_i_4_n_0,vert_paddle_pre0_carry_i_5_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 vert_paddle_pre0_carry__0
       (.CI(vert_paddle_pre0_carry_n_0),
        .CO({vert_paddle_pre0_carry__0_n_0,vert_paddle_pre0_carry__0_n_1,vert_paddle_pre0_carry__0_n_2,vert_paddle_pre0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(vert_paddle_post_reg[6:3]),
        .O({vert_paddle_pre0_carry__0_n_4,vert_paddle_pre0_carry__0_n_5,vert_paddle_pre0_carry__0_n_6,vert_paddle_pre0_carry__0_n_7}),
        .S({vert_paddle_pre0_carry__0_i_1_n_0,vert_paddle_pre0_carry__0_i_2_n_0,vert_paddle_pre0_carry__0_i_3_n_0,vert_paddle_pre0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    vert_paddle_pre0_carry__0_i_1
       (.I0(vert_paddle_post_reg[6]),
        .I1(vert_paddle_post_reg[7]),
        .O(vert_paddle_pre0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vert_paddle_pre0_carry__0_i_2
       (.I0(vert_paddle_post_reg[5]),
        .I1(vert_paddle_post_reg[6]),
        .O(vert_paddle_pre0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vert_paddle_pre0_carry__0_i_3
       (.I0(vert_paddle_post_reg[4]),
        .I1(vert_paddle_post_reg[5]),
        .O(vert_paddle_pre0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vert_paddle_pre0_carry__0_i_4
       (.I0(vert_paddle_post_reg[3]),
        .I1(vert_paddle_post_reg[4]),
        .O(vert_paddle_pre0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 vert_paddle_pre0_carry__1
       (.CI(vert_paddle_pre0_carry__0_n_0),
        .CO({NLW_vert_paddle_pre0_carry__1_CO_UNCONNECTED[3:1],vert_paddle_pre0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vert_paddle_post_reg[7]}),
        .O({NLW_vert_paddle_pre0_carry__1_O_UNCONNECTED[3:2],vert_paddle_pre0_carry__1_n_6,vert_paddle_pre0_carry__1_n_7}),
        .S({1'b0,1'b0,vert_paddle_pre0_carry__1_i_1_n_0,vert_paddle_pre0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    vert_paddle_pre0_carry__1_i_1
       (.I0(vert_paddle_post_reg[8]),
        .I1(vert_paddle_post_reg[9]),
        .O(vert_paddle_pre0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vert_paddle_pre0_carry__1_i_2
       (.I0(vert_paddle_post_reg[7]),
        .I1(vert_paddle_post_reg[8]),
        .O(vert_paddle_pre0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vert_paddle_pre0_carry_i_1
       (.I0(vert_paddle_post_reg[3]),
        .O(vert_paddle_pre0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    vert_paddle_pre0_carry_i_2
       (.I0(i_up_but),
        .I1(vert_paddle_pre0_carry_i_6_n_0),
        .I2(vert_paddle_post_reg[6]),
        .I3(vert_paddle_post_reg[5]),
        .I4(vert_paddle_post_reg[4]),
        .I5(vert_paddle_post_reg[2]),
        .O(vert_paddle_pre11_out));
  LUT2 #(
    .INIT(4'h6)) 
    vert_paddle_pre0_carry_i_3
       (.I0(vert_paddle_pre11_out),
        .I1(vert_paddle_post_reg[3]),
        .O(vert_paddle_pre0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vert_paddle_pre0_carry_i_4
       (.I0(vert_paddle_pre11_out),
        .I1(vert_paddle_post_reg[2]),
        .O(vert_paddle_pre0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vert_paddle_pre0_carry_i_5
       (.I0(vert_paddle_post_reg[1]),
        .O(vert_paddle_pre0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    vert_paddle_pre0_carry_i_6
       (.I0(vert_paddle_post_reg[9]),
        .I1(vert_paddle_post_reg[8]),
        .I2(vert_paddle_post_reg[7]),
        .I3(vert_paddle_post_reg[3]),
        .O(vert_paddle_pre0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h74)) 
    \vert_speed_post[8]_i_1 
       (.I0(\vert_speed_post[8]_i_2_n_0 ),
        .I1(\vert_speed_post[8]_i_3_n_0 ),
        .I2(in),
        .O(\vert_speed_post[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \vert_speed_post[8]_i_2 
       (.I0(vert_ball_corner_reg[3]),
        .I1(vert_ball_corner_reg[2]),
        .I2(vert_ball_corner_reg[1]),
        .I3(\vert_speed_post[8]_i_4_n_0 ),
        .O(\vert_speed_post[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8000FFFFFFFF)) 
    \vert_speed_post[8]_i_3 
       (.I0(\vert_speed_post[8]_i_5_n_0 ),
        .I1(vert_ball_corner_reg[6]),
        .I2(vert_ball_corner_reg[7]),
        .I3(vert_ball_corner_reg[8]),
        .I4(\vert_speed_post[8]_i_2_n_0 ),
        .I5(\vert_speed_post[8]_i_6_n_0 ),
        .O(\vert_speed_post[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \vert_speed_post[8]_i_4 
       (.I0(vert_ball_corner_reg[6]),
        .I1(vert_ball_corner_reg[5]),
        .I2(vert_ball_corner_reg[9]),
        .I3(vert_ball_corner_reg[4]),
        .I4(vert_ball_corner_reg[7]),
        .I5(vert_ball_corner_reg[8]),
        .O(\vert_speed_post[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h666AAAAA)) 
    \vert_speed_post[8]_i_5 
       (.I0(vert_ball_corner_reg[5]),
        .I1(vert_ball_corner_reg[4]),
        .I2(vert_ball_corner_reg[1]),
        .I3(vert_ball_corner_reg[2]),
        .I4(vert_ball_corner_reg[3]),
        .O(\vert_speed_post[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5595)) 
    \vert_speed_post[8]_i_6 
       (.I0(vert_ball_corner_reg[9]),
        .I1(vert_ball_corner_reg[8]),
        .I2(vert_ball_corner_reg[7]),
        .I3(horz_speed_pre2_carry_i_10_n_0),
        .O(\vert_speed_post[8]_i_6_n_0 ));
  FDCE \vert_speed_post_reg[8] 
       (.C(i_clock),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\vert_speed_post[8]_i_1_n_0 ),
        .Q(in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
