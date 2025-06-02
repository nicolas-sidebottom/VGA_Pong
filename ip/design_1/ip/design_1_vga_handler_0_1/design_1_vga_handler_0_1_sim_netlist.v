// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  2 05:37:52 2025
// Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_vga_handler_0_1/design_1_vga_handler_0_1_sim_netlist.v
// Design      : design_1_vga_handler_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_vga_handler_0_1,vga_handler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "vga_handler,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_vga_handler_0_1
   (i_clock,
    i_reset,
    o_display_on,
    o_hsync,
    o_vsync,
    o_pixel_clock,
    o_h_spot,
    o_v_spot);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  output o_display_on;
  output o_hsync;
  output o_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 o_pixel_clock CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_pixel_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_vga_handler_0_1_o_pixel_clock, INSERT_VIP 0" *) output o_pixel_clock;
  output [9:0]o_h_spot;
  output [9:0]o_v_spot;

  wire i_clock;
  wire i_reset;
  wire o_display_on;
  wire [9:0]o_h_spot;
  wire o_hsync;
  wire o_pixel_clock;
  wire [9:0]o_v_spot;
  wire o_vsync;

  design_1_vga_handler_0_1_vga_handler inst
       (.Q(o_h_spot),
        .i_clock(i_clock),
        .i_reset(i_reset),
        .o_display_on(o_display_on),
        .o_hsync(o_hsync),
        .o_vsync(o_vsync),
        .\quarter_counter_reg[0]_0 (o_pixel_clock),
        .\v_count_reg[9]_0 (o_v_spot));
endmodule

(* ORIG_REF_NAME = "vga_handler" *) 
module design_1_vga_handler_0_1_vga_handler
   (\quarter_counter_reg[0]_0 ,
    Q,
    \v_count_reg[9]_0 ,
    o_display_on,
    o_hsync,
    o_vsync,
    i_reset,
    i_clock);
  output \quarter_counter_reg[0]_0 ;
  output [9:0]Q;
  output [9:0]\v_count_reg[9]_0 ;
  output o_display_on;
  output o_hsync;
  output o_vsync;
  input i_reset;
  input i_clock;

  wire [9:0]Q;
  wire display_on0;
  wire display_on_i_2_n_0;
  wire [9:0]h_count;
  wire \h_count[1]_i_2_n_0 ;
  wire \h_count[1]_i_3_n_0 ;
  wire \h_count[2]_i_2_n_0 ;
  wire \h_count[9]_i_2_n_0 ;
  wire h_sync_pre;
  wire h_sync_pre_i_1_n_0;
  wire i_clock;
  wire i_reset;
  wire o_display_on;
  wire o_hsync;
  wire o_vsync;
  wire [1:0]quarter_counter;
  wire \quarter_counter[0]_i_1_n_0 ;
  wire \quarter_counter[1]_i_1_n_0 ;
  wire \quarter_counter_reg[0]_0 ;
  wire [9:0]v_count;
  wire \v_count[5]_i_2_n_0 ;
  wire \v_count[7]_i_2_n_0 ;
  wire \v_count[8]_i_2_n_0 ;
  wire \v_count[9]_i_1_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire [9:0]\v_count_reg[9]_0 ;
  wire v_sync_pre;
  wire v_sync_pre_i_1_n_0;

  LUT5 #(
    .INIT(32'h01550000)) 
    display_on_i_1
       (.I0(\v_count_reg[9]_0 [9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(display_on_i_2_n_0),
        .O(display_on0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    display_on_i_2
       (.I0(\v_count_reg[9]_0 [7]),
        .I1(\v_count_reg[9]_0 [5]),
        .I2(\v_count_reg[9]_0 [6]),
        .I3(\v_count_reg[9]_0 [8]),
        .O(display_on_i_2_n_0));
  FDRE display_on_reg
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(display_on0),
        .Q(o_display_on),
        .R(i_reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_count[0]_i_1 
       (.I0(Q[0]),
        .O(h_count[0]));
  LUT6 #(
    .INIT(64'h0000FFFBFFFB0000)) 
    \h_count[1]_i_1 
       (.I0(\h_count[1]_i_2_n_0 ),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(\h_count[1]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(h_count[1]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_count[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[8]),
        .O(\h_count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \h_count[1]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\h_count[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FBFB00FB00FB00)) 
    \h_count[2]_i_1 
       (.I0(\h_count[9]_i_2_n_0 ),
        .I1(Q[8]),
        .I2(\h_count[2]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(h_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \h_count[2]_i_2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\h_count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \h_count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(h_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \h_count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(h_count[4]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \h_count[5]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(\h_count[9]_i_2_n_0 ),
        .O(h_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \h_count[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(\h_count[9]_i_2_n_0 ),
        .O(h_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \h_count[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(\h_count[9]_i_2_n_0 ),
        .O(h_count[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \h_count[8]_i_1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(\h_count[9]_i_2_n_0 ),
        .O(h_count[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    \h_count[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\h_count[9]_i_2_n_0 ),
        .O(h_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_count[9]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\h_count[9]_i_2_n_0 ));
  FDRE \h_count_reg[0] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[0]),
        .Q(Q[0]),
        .R(i_reset));
  FDRE \h_count_reg[1] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[1]),
        .Q(Q[1]),
        .R(i_reset));
  FDRE \h_count_reg[2] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[2]),
        .Q(Q[2]),
        .R(i_reset));
  FDRE \h_count_reg[3] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[3]),
        .Q(Q[3]),
        .R(i_reset));
  FDRE \h_count_reg[4] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[4]),
        .Q(Q[4]),
        .R(i_reset));
  FDRE \h_count_reg[5] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[5]),
        .Q(Q[5]),
        .R(i_reset));
  FDRE \h_count_reg[6] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[6]),
        .Q(Q[6]),
        .R(i_reset));
  FDRE \h_count_reg[7] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[7]),
        .Q(Q[7]),
        .R(i_reset));
  FDRE \h_count_reg[8] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[8]),
        .Q(Q[8]),
        .R(i_reset));
  FDRE \h_count_reg[9] 
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_count[9]),
        .Q(Q[9]),
        .R(i_reset));
  FDRE h_sync_post_reg
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_sync_pre),
        .Q(o_hsync),
        .R(i_reset));
  LUT6 #(
    .INIT(64'hFFFF81FFFFFFFFFF)) 
    h_sync_pre_i_1
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(h_sync_pre_i_1_n_0));
  FDSE h_sync_pre_reg
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(h_sync_pre_i_1_n_0),
        .Q(h_sync_pre),
        .S(i_reset));
  LUT2 #(
    .INIT(4'h1)) 
    o_pixel_clock_INST_0
       (.I0(quarter_counter[0]),
        .I1(quarter_counter[1]),
        .O(\quarter_counter_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \quarter_counter[0]_i_1 
       (.I0(quarter_counter[0]),
        .I1(i_reset),
        .O(\quarter_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \quarter_counter[1]_i_1 
       (.I0(quarter_counter[1]),
        .I1(quarter_counter[0]),
        .I2(i_reset),
        .O(\quarter_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \quarter_counter_reg[0] 
       (.C(i_clock),
        .CE(1'b1),
        .D(\quarter_counter[0]_i_1_n_0 ),
        .Q(quarter_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \quarter_counter_reg[1] 
       (.C(i_clock),
        .CE(1'b1),
        .D(\quarter_counter[1]_i_1_n_0 ),
        .Q(quarter_counter[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \v_count[0]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count_reg[9]_0 [3]),
        .I2(\v_count_reg[9]_0 [2]),
        .I3(\v_count_reg[9]_0 [1]),
        .I4(\v_count_reg[9]_0 [0]),
        .O(v_count[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \v_count[1]_i_1 
       (.I0(\v_count_reg[9]_0 [1]),
        .I1(\v_count_reg[9]_0 [0]),
        .O(v_count[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FF0F0D0)) 
    \v_count[2]_i_1 
       (.I0(\v_count_reg[9]_0 [3]),
        .I1(\v_count[9]_i_4_n_0 ),
        .I2(\v_count_reg[9]_0 [2]),
        .I3(\v_count_reg[9]_0 [0]),
        .I4(\v_count_reg[9]_0 [1]),
        .O(v_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3CC8CCCC)) 
    \v_count[3]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count_reg[9]_0 [3]),
        .I2(\v_count_reg[9]_0 [1]),
        .I3(\v_count_reg[9]_0 [0]),
        .I4(\v_count_reg[9]_0 [2]),
        .O(v_count[3]));
  LUT6 #(
    .INIT(64'h3CC8CCCCCCCCCCCC)) 
    \v_count[4]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count_reg[9]_0 [4]),
        .I2(\v_count_reg[9]_0 [1]),
        .I3(\v_count_reg[9]_0 [0]),
        .I4(\v_count_reg[9]_0 [3]),
        .I5(\v_count_reg[9]_0 [2]),
        .O(v_count[4]));
  LUT6 #(
    .INIT(64'hC3CCCCC8CCCCCCC8)) 
    \v_count[5]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(\v_count_reg[9]_0 [5]),
        .I2(\v_count[5]_i_2_n_0 ),
        .I3(\v_count_reg[9]_0 [0]),
        .I4(\v_count_reg[9]_0 [1]),
        .I5(\v_count_reg[9]_0 [4]),
        .O(v_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[5]_i_2 
       (.I0(\v_count_reg[9]_0 [2]),
        .I1(\v_count_reg[9]_0 [3]),
        .O(\v_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFE00FE00FE00)) 
    \v_count[6]_i_1 
       (.I0(\v_count_reg[9]_0 [0]),
        .I1(\v_count[9]_i_3_n_0 ),
        .I2(\v_count[9]_i_4_n_0 ),
        .I3(\v_count_reg[9]_0 [6]),
        .I4(\v_count[9]_i_5_n_0 ),
        .I5(\v_count_reg[9]_0 [5]),
        .O(v_count[6]));
  LUT6 #(
    .INIT(64'hFE00FE0000FEFE00)) 
    \v_count[7]_i_1 
       (.I0(\v_count_reg[9]_0 [0]),
        .I1(\v_count[9]_i_3_n_0 ),
        .I2(\v_count[9]_i_4_n_0 ),
        .I3(\v_count_reg[9]_0 [7]),
        .I4(\v_count[9]_i_5_n_0 ),
        .I5(\v_count[7]_i_2_n_0 ),
        .O(v_count[7]));
  LUT2 #(
    .INIT(4'h7)) 
    \v_count[7]_i_2 
       (.I0(\v_count_reg[9]_0 [5]),
        .I1(\v_count_reg[9]_0 [6]),
        .O(\v_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE0000FEFE00)) 
    \v_count[8]_i_1 
       (.I0(\v_count_reg[9]_0 [0]),
        .I1(\v_count[9]_i_3_n_0 ),
        .I2(\v_count[9]_i_4_n_0 ),
        .I3(\v_count_reg[9]_0 [8]),
        .I4(\v_count[9]_i_5_n_0 ),
        .I5(\v_count[8]_i_2_n_0 ),
        .O(v_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \v_count[8]_i_2 
       (.I0(\v_count_reg[9]_0 [6]),
        .I1(\v_count_reg[9]_0 [5]),
        .I2(\v_count_reg[9]_0 [7]),
        .O(\v_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \v_count[9]_i_1 
       (.I0(\quarter_counter_reg[0]_0 ),
        .I1(\h_count[1]_i_2_n_0 ),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\v_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FE0000FEFE00)) 
    \v_count[9]_i_2 
       (.I0(\v_count_reg[9]_0 [0]),
        .I1(\v_count[9]_i_3_n_0 ),
        .I2(\v_count[9]_i_4_n_0 ),
        .I3(\v_count_reg[9]_0 [9]),
        .I4(\v_count[9]_i_5_n_0 ),
        .I5(display_on_i_2_n_0),
        .O(v_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \v_count[9]_i_3 
       (.I0(\v_count_reg[9]_0 [3]),
        .I1(\v_count_reg[9]_0 [2]),
        .I2(\v_count_reg[9]_0 [1]),
        .O(\v_count[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \v_count[9]_i_4 
       (.I0(\v_count_reg[9]_0 [8]),
        .I1(\v_count_reg[9]_0 [9]),
        .I2(\v_count_reg[9]_0 [6]),
        .I3(\v_count_reg[9]_0 [7]),
        .I4(\v_count_reg[9]_0 [5]),
        .I5(\v_count_reg[9]_0 [4]),
        .O(\v_count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count[9]_i_5 
       (.I0(\v_count_reg[9]_0 [2]),
        .I1(\v_count_reg[9]_0 [3]),
        .I2(\v_count_reg[9]_0 [0]),
        .I3(\v_count_reg[9]_0 [1]),
        .I4(\v_count_reg[9]_0 [4]),
        .O(\v_count[9]_i_5_n_0 ));
  FDRE \v_count_reg[0] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[0]),
        .Q(\v_count_reg[9]_0 [0]),
        .R(i_reset));
  FDRE \v_count_reg[1] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[1]),
        .Q(\v_count_reg[9]_0 [1]),
        .R(i_reset));
  FDRE \v_count_reg[2] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[2]),
        .Q(\v_count_reg[9]_0 [2]),
        .R(i_reset));
  FDRE \v_count_reg[3] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[3]),
        .Q(\v_count_reg[9]_0 [3]),
        .R(i_reset));
  FDRE \v_count_reg[4] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[4]),
        .Q(\v_count_reg[9]_0 [4]),
        .R(i_reset));
  FDRE \v_count_reg[5] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[5]),
        .Q(\v_count_reg[9]_0 [5]),
        .R(i_reset));
  FDRE \v_count_reg[6] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[6]),
        .Q(\v_count_reg[9]_0 [6]),
        .R(i_reset));
  FDRE \v_count_reg[7] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[7]),
        .Q(\v_count_reg[9]_0 [7]),
        .R(i_reset));
  FDRE \v_count_reg[8] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[8]),
        .Q(\v_count_reg[9]_0 [8]),
        .R(i_reset));
  FDRE \v_count_reg[9] 
       (.C(i_clock),
        .CE(\v_count[9]_i_1_n_0 ),
        .D(v_count[9]),
        .Q(\v_count_reg[9]_0 [9]),
        .R(i_reset));
  FDRE v_sync_post_reg
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(v_sync_pre),
        .Q(o_vsync),
        .R(i_reset));
  LUT5 #(
    .INIT(32'hFFFFFFF9)) 
    v_sync_pre_i_1
       (.I0(\v_count_reg[9]_0 [0]),
        .I1(\v_count_reg[9]_0 [1]),
        .I2(\v_count_reg[9]_0 [2]),
        .I3(\v_count[9]_i_4_n_0 ),
        .I4(\v_count_reg[9]_0 [3]),
        .O(v_sync_pre_i_1_n_0));
  FDSE v_sync_pre_reg
       (.C(i_clock),
        .CE(\quarter_counter_reg[0]_0 ),
        .D(v_sync_pre_i_1_n_0),
        .Q(v_sync_pre),
        .S(i_reset));
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
