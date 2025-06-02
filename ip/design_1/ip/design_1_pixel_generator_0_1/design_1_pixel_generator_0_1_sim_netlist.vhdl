-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Jun  2 05:37:28 2025
-- Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_pixel_generator_0_1/design_1_pixel_generator_0_1_sim_netlist.vhdl
-- Design      : design_1_pixel_generator_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pixel_generator_0_1_pixel_generator is
  port (
    o_color : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_h_spot : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_v_spot : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_clock : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_up_but : in STD_LOGIC;
    i_down_but : in STD_LOGIC;
    i_display_on : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_pixel_generator_0_1_pixel_generator : entity is "pixel_generator";
end design_1_pixel_generator_0_1_pixel_generator;

architecture STRUCTURE of design_1_pixel_generator_0_1_pixel_generator is
  signal horz_ball_R : STD_LOGIC_VECTOR ( 1 to 1 );
  signal horz_ball_corner0 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \horz_ball_corner0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \horz_ball_corner0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \horz_ball_corner0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \horz_ball_corner0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \horz_ball_corner0_carry__0_n_1\ : STD_LOGIC;
  signal \horz_ball_corner0_carry__0_n_2\ : STD_LOGIC;
  signal \horz_ball_corner0_carry__0_n_3\ : STD_LOGIC;
  signal horz_ball_corner0_carry_i_1_n_0 : STD_LOGIC;
  signal horz_ball_corner0_carry_i_2_n_0 : STD_LOGIC;
  signal horz_ball_corner0_carry_i_3_n_0 : STD_LOGIC;
  signal horz_ball_corner0_carry_i_4_n_0 : STD_LOGIC;
  signal horz_ball_corner0_carry_n_0 : STD_LOGIC;
  signal horz_ball_corner0_carry_n_1 : STD_LOGIC;
  signal horz_ball_corner0_carry_n_2 : STD_LOGIC;
  signal horz_ball_corner0_carry_n_3 : STD_LOGIC;
  signal horz_ball_corner_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \horz_speed_post[8]_i_1_n_0\ : STD_LOGIC;
  signal \horz_speed_post[8]_i_3_n_0\ : STD_LOGIC;
  signal \horz_speed_post_reg_n_0_[8]\ : STD_LOGIC;
  signal horz_speed_pre1 : STD_LOGIC;
  signal \horz_speed_pre1_inferred__2/i___0_carry_n_0\ : STD_LOGIC;
  signal \horz_speed_pre1_inferred__2/i___0_carry_n_1\ : STD_LOGIC;
  signal \horz_speed_pre1_inferred__2/i___0_carry_n_2\ : STD_LOGIC;
  signal \horz_speed_pre1_inferred__2/i___0_carry_n_3\ : STD_LOGIC;
  signal \horz_speed_pre2__3\ : STD_LOGIC;
  signal horz_speed_pre2_carry_i_10_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_11_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_12_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_1_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_2_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_3_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_4_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_5_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_6_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_7_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_8_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_i_9_n_0 : STD_LOGIC;
  signal horz_speed_pre2_carry_n_1 : STD_LOGIC;
  signal horz_speed_pre2_carry_n_2 : STD_LOGIC;
  signal horz_speed_pre2_carry_n_3 : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \in\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \o_color[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_color[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_color[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_color[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \o_color[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \o_color[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \o_color[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_color[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_color[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal \pad_c0__4\ : STD_LOGIC;
  signal \pad_c0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pad_c0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal pad_c0_carry_i_10_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_11_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_12_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_1_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_2_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_3_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_4_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_5_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_6_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_7_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_8_n_0 : STD_LOGIC;
  signal pad_c0_carry_i_9_n_0 : STD_LOGIC;
  signal pad_c0_carry_n_0 : STD_LOGIC;
  signal pad_c0_carry_n_1 : STD_LOGIC;
  signal pad_c0_carry_n_2 : STD_LOGIC;
  signal pad_c0_carry_n_3 : STD_LOGIC;
  signal \pad_c1__4\ : STD_LOGIC;
  signal \pad_c1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pad_c1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal pad_c1_carry_i_1_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_2_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_3_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_4_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_5_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_6_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_7_n_0 : STD_LOGIC;
  signal pad_c1_carry_i_8_n_0 : STD_LOGIC;
  signal pad_c1_carry_n_0 : STD_LOGIC;
  signal pad_c1_carry_n_1 : STD_LOGIC;
  signal pad_c1_carry_n_2 : STD_LOGIC;
  signal pad_c1_carry_n_3 : STD_LOGIC;
  signal refresh60Hz : STD_LOGIC;
  signal \sq_ball_c0__4\ : STD_LOGIC;
  signal \sq_ball_c0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sq_ball_c0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal sq_ball_c0_carry_i_1_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_2_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_3_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_4_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_5_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_6_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_7_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_i_8_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_n_0 : STD_LOGIC;
  signal sq_ball_c0_carry_n_1 : STD_LOGIC;
  signal sq_ball_c0_carry_n_2 : STD_LOGIC;
  signal sq_ball_c0_carry_n_3 : STD_LOGIC;
  signal \sq_ball_c1__4\ : STD_LOGIC;
  signal \sq_ball_c1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sq_ball_c1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal sq_ball_c1_carry_i_1_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_2_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_3_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_4_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_5_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_6_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_7_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_i_8_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_n_0 : STD_LOGIC;
  signal sq_ball_c1_carry_n_1 : STD_LOGIC;
  signal sq_ball_c1_carry_n_2 : STD_LOGIC;
  signal sq_ball_c1_carry_n_3 : STD_LOGIC;
  signal sq_ball_c23_in : STD_LOGIC;
  signal \sq_ball_c2__4\ : STD_LOGIC;
  signal \sq_ball_c2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sq_ball_c2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sq_ball_c2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal sq_ball_c2_carry_i_10_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_1_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_2_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_3_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_4_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_5_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_6_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_7_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_8_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_i_9_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_n_0 : STD_LOGIC;
  signal sq_ball_c2_carry_n_1 : STD_LOGIC;
  signal sq_ball_c2_carry_n_2 : STD_LOGIC;
  signal sq_ball_c2_carry_n_3 : STD_LOGIC;
  signal \sq_ball_c2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \sq_ball_c2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \sq_ball_c2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \sq_ball_c2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal vert_ball_corner0 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \vert_ball_corner0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \vert_ball_corner0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \vert_ball_corner0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \vert_ball_corner0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \vert_ball_corner0_carry__0_n_1\ : STD_LOGIC;
  signal \vert_ball_corner0_carry__0_n_2\ : STD_LOGIC;
  signal \vert_ball_corner0_carry__0_n_3\ : STD_LOGIC;
  signal vert_ball_corner0_carry_i_1_n_0 : STD_LOGIC;
  signal vert_ball_corner0_carry_i_2_n_0 : STD_LOGIC;
  signal vert_ball_corner0_carry_i_3_n_0 : STD_LOGIC;
  signal vert_ball_corner0_carry_i_4_n_0 : STD_LOGIC;
  signal vert_ball_corner0_carry_n_0 : STD_LOGIC;
  signal vert_ball_corner0_carry_n_1 : STD_LOGIC;
  signal vert_ball_corner0_carry_n_2 : STD_LOGIC;
  signal vert_ball_corner0_carry_n_3 : STD_LOGIC;
  signal \vert_ball_corner[1]_i_1_n_0\ : STD_LOGIC;
  signal \vert_ball_corner[9]_i_2_n_0\ : STD_LOGIC;
  signal \vert_ball_corner[9]_i_3_n_0\ : STD_LOGIC;
  signal \vert_ball_corner[9]_i_4_n_0\ : STD_LOGIC;
  signal \vert_ball_corner[9]_i_5_n_0\ : STD_LOGIC;
  signal vert_ball_corner_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \vert_paddle_post[9]_i_2_n_0\ : STD_LOGIC;
  signal \vert_paddle_post[9]_i_3_n_0\ : STD_LOGIC;
  signal vert_paddle_post_reg : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal vert_paddle_pre : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_1\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_2\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_3\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_4\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_5\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_6\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__0_n_7\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__1_n_3\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__1_n_6\ : STD_LOGIC;
  signal \vert_paddle_pre0_carry__1_n_7\ : STD_LOGIC;
  signal vert_paddle_pre0_carry_i_1_n_0 : STD_LOGIC;
  signal vert_paddle_pre0_carry_i_3_n_0 : STD_LOGIC;
  signal vert_paddle_pre0_carry_i_4_n_0 : STD_LOGIC;
  signal vert_paddle_pre0_carry_i_5_n_0 : STD_LOGIC;
  signal vert_paddle_pre0_carry_i_6_n_0 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_0 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_1 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_2 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_3 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_4 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_5 : STD_LOGIC;
  signal vert_paddle_pre0_carry_n_6 : STD_LOGIC;
  signal vert_paddle_pre11_out : STD_LOGIC;
  signal \vert_speed_post[8]_i_1_n_0\ : STD_LOGIC;
  signal \vert_speed_post[8]_i_2_n_0\ : STD_LOGIC;
  signal \vert_speed_post[8]_i_3_n_0\ : STD_LOGIC;
  signal \vert_speed_post[8]_i_4_n_0\ : STD_LOGIC;
  signal \vert_speed_post[8]_i_5_n_0\ : STD_LOGIC;
  signal \vert_speed_post[8]_i_6_n_0\ : STD_LOGIC;
  signal \NLW_horz_ball_corner0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_horz_speed_pre1_inferred__2/i___0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_horz_speed_pre1_inferred__2/i___0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_horz_speed_pre1_inferred__2/i___0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_horz_speed_pre2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pad_c0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pad_c0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pad_c0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pad_c1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pad_c1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_pad_c1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sq_ball_c0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sq_ball_c0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sq_ball_c0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sq_ball_c1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sq_ball_c1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sq_ball_c1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sq_ball_c2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sq_ball_c2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sq_ball_c2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sq_ball_c2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sq_ball_c2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sq_ball_c2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_vert_ball_corner0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vert_paddle_pre0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_vert_paddle_pre0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_vert_paddle_pre0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of horz_ball_corner0_carry : label is 35;
  attribute ADDER_THRESHOLD of \horz_ball_corner0_carry__0\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \horz_speed_pre1_inferred__2/i___0_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \horz_speed_pre1_inferred__2/i___0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of horz_speed_pre2_carry : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of horz_speed_pre2_carry_i_11 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of horz_speed_pre2_carry_i_12 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_color[0]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_color[1]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute COMPARATOR_THRESHOLD of pad_c0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pad_c0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of pad_c0_carry_i_11 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of pad_c0_carry_i_12 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD of pad_c1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pad_c1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of sq_ball_c0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sq_ball_c0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of sq_ball_c1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sq_ball_c1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of sq_ball_c2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sq_ball_c2_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of sq_ball_c2_carry_i_10 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sq_ball_c2_carry_i_9 : label is "soft_lutpair3";
  attribute COMPARATOR_THRESHOLD of \sq_ball_c2_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sq_ball_c2_inferred__0/i__carry__0\ : label is 11;
  attribute ADDER_THRESHOLD of vert_ball_corner0_carry : label is 35;
  attribute ADDER_THRESHOLD of \vert_ball_corner0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of vert_paddle_pre0_carry : label is 35;
  attribute ADDER_THRESHOLD of \vert_paddle_pre0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \vert_paddle_pre0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \vert_speed_post[8]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vert_speed_post[8]_i_5\ : label is "soft_lutpair2";
begin
horz_ball_corner0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => horz_ball_corner0_carry_n_0,
      CO(2) => horz_ball_corner0_carry_n_1,
      CO(1) => horz_ball_corner0_carry_n_2,
      CO(0) => horz_ball_corner0_carry_n_3,
      CYINIT => horz_ball_corner_reg(1),
      DI(3 downto 0) => horz_ball_corner_reg(5 downto 2),
      O(3 downto 0) => horz_ball_corner0(5 downto 2),
      S(3) => horz_ball_corner0_carry_i_1_n_0,
      S(2) => horz_ball_corner0_carry_i_2_n_0,
      S(1) => horz_ball_corner0_carry_i_3_n_0,
      S(0) => horz_ball_corner0_carry_i_4_n_0
    );
\horz_ball_corner0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => horz_ball_corner0_carry_n_0,
      CO(3) => \NLW_horz_ball_corner0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \horz_ball_corner0_carry__0_n_1\,
      CO(1) => \horz_ball_corner0_carry__0_n_2\,
      CO(0) => \horz_ball_corner0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => horz_ball_corner_reg(8 downto 6),
      O(3 downto 0) => horz_ball_corner0(9 downto 6),
      S(3) => \horz_ball_corner0_carry__0_i_1_n_0\,
      S(2) => \horz_ball_corner0_carry__0_i_2_n_0\,
      S(1) => \horz_ball_corner0_carry__0_i_3_n_0\,
      S(0) => \horz_ball_corner0_carry__0_i_4_n_0\
    );
\horz_ball_corner0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \horz_speed_post_reg_n_0_[8]\,
      I1 => horz_ball_corner_reg(9),
      O => \horz_ball_corner0_carry__0_i_1_n_0\
    );
\horz_ball_corner0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(8),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => \horz_ball_corner0_carry__0_i_2_n_0\
    );
\horz_ball_corner0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(7),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => \horz_ball_corner0_carry__0_i_3_n_0\
    );
\horz_ball_corner0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(6),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => \horz_ball_corner0_carry__0_i_4_n_0\
    );
horz_ball_corner0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(5),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => horz_ball_corner0_carry_i_1_n_0
    );
horz_ball_corner0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(4),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => horz_ball_corner0_carry_i_2_n_0
    );
horz_ball_corner0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(3),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => horz_ball_corner0_carry_i_3_n_0
    );
horz_ball_corner0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => horz_ball_corner_reg(2),
      I1 => \horz_speed_post_reg_n_0_[8]\,
      O => horz_ball_corner0_carry_i_4_n_0
    );
\horz_ball_corner[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => horz_ball_corner_reg(1),
      O => horz_ball_R(1)
    );
\horz_ball_corner_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_R(1),
      Q => horz_ball_corner_reg(1)
    );
\horz_ball_corner_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(2),
      Q => horz_ball_corner_reg(2)
    );
\horz_ball_corner_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(3),
      Q => horz_ball_corner_reg(3)
    );
\horz_ball_corner_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(4),
      Q => horz_ball_corner_reg(4)
    );
\horz_ball_corner_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(5),
      Q => horz_ball_corner_reg(5)
    );
\horz_ball_corner_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(6),
      Q => horz_ball_corner_reg(6)
    );
\horz_ball_corner_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(7),
      Q => horz_ball_corner_reg(7)
    );
\horz_ball_corner_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(8),
      Q => horz_ball_corner_reg(8)
    );
\horz_ball_corner_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => horz_ball_corner0(9),
      Q => horz_ball_corner_reg(9)
    );
\horz_speed_post[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA08"
    )
        port map (
      I0 => p_0_in0,
      I1 => \horz_speed_post[8]_i_3_n_0\,
      I2 => \vert_speed_post[8]_i_3_n_0\,
      I3 => \horz_speed_post_reg_n_0_[8]\,
      O => \horz_speed_post[8]_i_1_n_0\
    );
\horz_speed_post[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => horz_ball_corner_reg(6),
      I1 => horz_ball_corner_reg(5),
      I2 => horz_ball_corner_reg(7),
      I3 => horz_ball_corner_reg(8),
      I4 => horz_ball_corner_reg(9),
      O => p_0_in0
    );
\horz_speed_post[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => horz_ball_corner_reg(8),
      I1 => horz_ball_corner_reg(7),
      I2 => \sq_ball_c2_carry__0_i_3_n_0\,
      I3 => horz_ball_corner_reg(9),
      I4 => horz_speed_pre1,
      I5 => \horz_speed_pre2__3\,
      O => \horz_speed_post[8]_i_3_n_0\
    );
\horz_speed_post_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => '1',
      CLR => i_reset,
      D => \horz_speed_post[8]_i_1_n_0\,
      Q => \horz_speed_post_reg_n_0_[8]\
    );
\horz_speed_pre1_inferred__2/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \horz_speed_pre1_inferred__2/i___0_carry_n_0\,
      CO(2) => \horz_speed_pre1_inferred__2/i___0_carry_n_1\,
      CO(1) => \horz_speed_pre1_inferred__2/i___0_carry_n_2\,
      CO(0) => \horz_speed_pre1_inferred__2/i___0_carry_n_3\,
      CYINIT => '1',
      DI(3) => \i___0_carry_i_1_n_0\,
      DI(2) => \i___0_carry_i_2_n_0\,
      DI(1) => \i___0_carry_i_3_n_0\,
      DI(0) => \i___0_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_horz_speed_pre1_inferred__2/i___0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i___0_carry_i_5_n_0\,
      S(2) => \i___0_carry_i_6_n_0\,
      S(1) => \i___0_carry_i_7_n_0\,
      S(0) => \i___0_carry_i_8_n_0\
    );
\horz_speed_pre1_inferred__2/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \horz_speed_pre1_inferred__2/i___0_carry_n_0\,
      CO(3 downto 1) => \NLW_horz_speed_pre1_inferred__2/i___0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => horz_speed_pre1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i___0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_horz_speed_pre1_inferred__2/i___0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i___0_carry__0_i_2_n_0\
    );
horz_speed_pre2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \horz_speed_pre2__3\,
      CO(2) => horz_speed_pre2_carry_n_1,
      CO(1) => horz_speed_pre2_carry_n_2,
      CO(0) => horz_speed_pre2_carry_n_3,
      CYINIT => horz_speed_pre2_carry_i_1_n_0,
      DI(3) => horz_speed_pre2_carry_i_2_n_0,
      DI(2) => horz_speed_pre2_carry_i_3_n_0,
      DI(1) => horz_speed_pre2_carry_i_4_n_0,
      DI(0) => horz_speed_pre2_carry_i_5_n_0,
      O(3 downto 0) => NLW_horz_speed_pre2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => horz_speed_pre2_carry_i_6_n_0,
      S(2) => horz_speed_pre2_carry_i_7_n_0,
      S(1) => horz_speed_pre2_carry_i_8_n_0,
      S(0) => horz_speed_pre2_carry_i_9_n_0
    );
horz_speed_pre2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => vert_paddle_post_reg(1),
      I1 => vert_ball_corner_reg(1),
      O => horz_speed_pre2_carry_i_1_n_0
    );
horz_speed_pre2_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFFFFFFFFFFFF"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => vert_ball_corner_reg(3),
      I2 => vert_ball_corner_reg(2),
      I3 => vert_ball_corner_reg(1),
      I4 => vert_ball_corner_reg(4),
      I5 => vert_ball_corner_reg(6),
      O => horz_speed_pre2_carry_i_10_n_0
    );
horz_speed_pre2_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFFFFF"
    )
        port map (
      I0 => vert_ball_corner_reg(4),
      I1 => vert_ball_corner_reg(1),
      I2 => vert_ball_corner_reg(2),
      I3 => vert_ball_corner_reg(3),
      I4 => vert_ball_corner_reg(5),
      O => horz_speed_pre2_carry_i_11_n_0
    );
horz_speed_pre2_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vert_ball_corner_reg(2),
      I1 => vert_ball_corner_reg(1),
      O => horz_speed_pre2_carry_i_12_n_0
    );
horz_speed_pre2_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551000CF755510"
    )
        port map (
      I0 => vert_paddle_post_reg(9),
      I1 => horz_speed_pre2_carry_i_10_n_0,
      I2 => vert_ball_corner_reg(7),
      I3 => vert_ball_corner_reg(8),
      I4 => vert_ball_corner_reg(9),
      I5 => vert_paddle_post_reg(8),
      O => horz_speed_pre2_carry_i_2_n_0
    );
horz_speed_pre2_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4510C751"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => horz_speed_pre2_carry_i_11_n_0,
      I2 => vert_ball_corner_reg(6),
      I3 => vert_ball_corner_reg(7),
      I4 => vert_paddle_post_reg(6),
      O => horz_speed_pre2_carry_i_3_n_0
    );
horz_speed_pre2_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51550400F35D5504"
    )
        port map (
      I0 => vert_paddle_post_reg(5),
      I1 => vert_ball_corner_reg(3),
      I2 => horz_speed_pre2_carry_i_12_n_0,
      I3 => vert_ball_corner_reg(4),
      I4 => vert_ball_corner_reg(5),
      I5 => vert_paddle_post_reg(4),
      O => horz_speed_pre2_carry_i_4_n_0
    );
horz_speed_pre2_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"015443D5"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      I1 => vert_ball_corner_reg(2),
      I2 => vert_ball_corner_reg(1),
      I3 => vert_ball_corner_reg(3),
      I4 => vert_paddle_post_reg(2),
      O => horz_speed_pre2_carry_i_5_n_0
    );
horz_speed_pre2_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009909009600909"
    )
        port map (
      I0 => vert_ball_corner_reg(9),
      I1 => vert_paddle_post_reg(9),
      I2 => vert_ball_corner_reg(8),
      I3 => horz_speed_pre2_carry_i_10_n_0,
      I4 => vert_ball_corner_reg(7),
      I5 => vert_paddle_post_reg(8),
      O => horz_speed_pre2_carry_i_6_n_0
    );
horz_speed_pre2_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => vert_ball_corner_reg(7),
      I1 => vert_paddle_post_reg(7),
      I2 => vert_ball_corner_reg(6),
      I3 => horz_speed_pre2_carry_i_11_n_0,
      I4 => vert_paddle_post_reg(6),
      O => horz_speed_pre2_carry_i_7_n_0
    );
horz_speed_pre2_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090099009096009"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => vert_paddle_post_reg(5),
      I2 => vert_ball_corner_reg(4),
      I3 => vert_ball_corner_reg(3),
      I4 => horz_speed_pre2_carry_i_12_n_0,
      I5 => vert_paddle_post_reg(4),
      O => horz_speed_pre2_carry_i_8_n_0
    );
horz_speed_pre2_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60090660"
    )
        port map (
      I0 => vert_ball_corner_reg(3),
      I1 => vert_paddle_post_reg(3),
      I2 => vert_ball_corner_reg(2),
      I3 => vert_ball_corner_reg(1),
      I4 => vert_paddle_post_reg(2),
      O => horz_speed_pre2_carry_i_9_n_0
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551000CF755510"
    )
        port map (
      I0 => vert_ball_corner_reg(9),
      I1 => pad_c0_carry_i_9_n_0,
      I2 => vert_paddle_post_reg(7),
      I3 => vert_paddle_post_reg(8),
      I4 => vert_paddle_post_reg(9),
      I5 => vert_ball_corner_reg(8),
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009909009600909"
    )
        port map (
      I0 => vert_paddle_post_reg(9),
      I1 => vert_ball_corner_reg(9),
      I2 => vert_paddle_post_reg(8),
      I3 => pad_c0_carry_i_9_n_0,
      I4 => vert_paddle_post_reg(7),
      I5 => vert_ball_corner_reg(8),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0909099F"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => pad_c0_carry_i_9_n_0,
      I2 => vert_ball_corner_reg(7),
      I3 => vert_ball_corner_reg(6),
      I4 => pad_c0_carry_i_10_n_0,
      O => \i___0_carry_i_1_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => pad_c0_carry_i_11_n_0,
      I2 => vert_ball_corner_reg(4),
      I3 => pad_c0_carry_i_12_n_0,
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4015543D"
    )
        port map (
      I0 => vert_ball_corner_reg(3),
      I1 => vert_paddle_post_reg(1),
      I2 => vert_paddle_post_reg(2),
      I3 => vert_paddle_post_reg(3),
      I4 => vert_ball_corner_reg(2),
      O => \i___0_carry_i_3_n_0\
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vert_paddle_post_reg(1),
      I1 => vert_ball_corner_reg(1),
      O => \i___0_carry_i_4_n_0\
    );
\i___0_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00969600"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => pad_c0_carry_i_9_n_0,
      I2 => vert_ball_corner_reg(7),
      I3 => pad_c0_carry_i_10_n_0,
      I4 => vert_ball_corner_reg(6),
      O => \i___0_carry_i_5_n_0\
    );
\i___0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => pad_c0_carry_i_11_n_0,
      I1 => vert_ball_corner_reg(5),
      I2 => pad_c0_carry_i_12_n_0,
      I3 => vert_ball_corner_reg(4),
      O => \i___0_carry_i_6_n_0\
    );
\i___0_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609006"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      I1 => vert_ball_corner_reg(3),
      I2 => vert_paddle_post_reg(1),
      I3 => vert_paddle_post_reg(2),
      I4 => vert_ball_corner_reg(2),
      O => \i___0_carry_i_7_n_0\
    );
\i___0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(1),
      I1 => vert_paddle_post_reg(1),
      O => \i___0_carry_i_8_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => horz_ball_corner_reg(9),
      I1 => i_h_spot(9),
      I2 => i_h_spot(8),
      I3 => horz_ball_corner_reg(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_h_spot(9),
      I1 => horz_ball_corner_reg(9),
      I2 => horz_ball_corner_reg(8),
      I3 => i_h_spot(8),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_h_spot(7),
      I1 => horz_ball_corner_reg(7),
      I2 => i_h_spot(6),
      I3 => horz_ball_corner_reg(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_h_spot(5),
      I1 => horz_ball_corner_reg(5),
      I2 => i_h_spot(4),
      I3 => horz_ball_corner_reg(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => i_h_spot(3),
      I1 => horz_ball_corner_reg(3),
      I2 => horz_ball_corner_reg(2),
      I3 => i_h_spot(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => i_h_spot(0),
      I1 => i_h_spot(1),
      I2 => horz_ball_corner_reg(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => horz_ball_corner_reg(7),
      I1 => i_h_spot(7),
      I2 => horz_ball_corner_reg(6),
      I3 => i_h_spot(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => horz_ball_corner_reg(5),
      I1 => i_h_spot(5),
      I2 => horz_ball_corner_reg(4),
      I3 => i_h_spot(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => horz_ball_corner_reg(3),
      I1 => i_h_spot(3),
      I2 => horz_ball_corner_reg(2),
      I3 => i_h_spot(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => i_h_spot(0),
      I1 => horz_ball_corner_reg(1),
      I2 => i_h_spot(1),
      O => \i__carry_i_8_n_0\
    );
\o_color[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45FF4545"
    )
        port map (
      I0 => \o_color[0]_INST_0_i_1_n_0\,
      I1 => \o_color[1]_INST_0_i_1_n_0\,
      I2 => i_h_spot(9),
      I3 => \o_color[0]_INST_0_i_2_n_0\,
      I4 => \o_color[0]_INST_0_i_3_n_0\,
      O => o_color(0)
    );
\o_color[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF00FE"
    )
        port map (
      I0 => i_h_spot(6),
      I1 => i_h_spot(5),
      I2 => \o_color[0]_INST_0_i_4_n_0\,
      I3 => i_h_spot(9),
      I4 => \o_color[1]_INST_0_i_3_n_0\,
      I5 => \o_color[1]_INST_0_i_2_n_0\,
      O => \o_color[0]_INST_0_i_1_n_0\
    );
\o_color[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \o_color[0]_INST_0_i_5_n_0\,
      I1 => \sq_ball_c1__4\,
      I2 => i_display_on,
      I3 => sq_ball_c23_in,
      I4 => \sq_ball_c2__4\,
      I5 => \sq_ball_c0__4\,
      O => \o_color[0]_INST_0_i_2_n_0\
    );
\o_color[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF44F4FF4FFFF"
    )
        port map (
      I0 => i_h_spot(0),
      I1 => i_v_spot(0),
      I2 => i_h_spot(2),
      I3 => horz_ball_corner_reg(2),
      I4 => horz_ball_corner_reg(1),
      I5 => i_h_spot(1),
      O => \o_color[0]_INST_0_i_3_n_0\
    );
\o_color[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_h_spot(3),
      I1 => i_h_spot(4),
      O => \o_color[0]_INST_0_i_4_n_0\
    );
\o_color[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7007000000007007"
    )
        port map (
      I0 => i_v_spot(0),
      I1 => i_h_spot(0),
      I2 => i_h_spot(2),
      I3 => horz_ball_corner_reg(2),
      I4 => horz_ball_corner_reg(1),
      I5 => i_h_spot(1),
      O => \o_color[0]_INST_0_i_5_n_0\
    );
\o_color[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000D"
    )
        port map (
      I0 => i_h_spot(9),
      I1 => \o_color[1]_INST_0_i_1_n_0\,
      I2 => \o_color[1]_INST_0_i_2_n_0\,
      I3 => \o_color[1]_INST_0_i_3_n_0\,
      I4 => \o_color[1]_INST_0_i_4_n_0\,
      O => o_color(1)
    );
\o_color[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => i_h_spot(4),
      I1 => i_h_spot(3),
      I2 => i_h_spot(5),
      I3 => \pad_c1__4\,
      I4 => i_h_spot(6),
      I5 => \pad_c0__4\,
      O => \o_color[1]_INST_0_i_1_n_0\
    );
\o_color[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080000000"
    )
        port map (
      I0 => i_h_spot(1),
      I1 => i_h_spot(0),
      I2 => i_h_spot(2),
      I3 => i_h_spot(3),
      I4 => i_h_spot(4),
      I5 => i_h_spot(9),
      O => \o_color[1]_INST_0_i_2_n_0\
    );
\o_color[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF01FF"
    )
        port map (
      I0 => i_h_spot(4),
      I1 => i_h_spot(1),
      I2 => i_h_spot(2),
      I3 => i_display_on,
      I4 => i_h_spot(7),
      I5 => i_h_spot(8),
      O => \o_color[1]_INST_0_i_3_n_0\
    );
\o_color[1]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555501"
    )
        port map (
      I0 => i_h_spot(9),
      I1 => i_h_spot(3),
      I2 => i_h_spot(4),
      I3 => i_h_spot(5),
      I4 => i_h_spot(6),
      O => \o_color[1]_INST_0_i_4_n_0\
    );
pad_c0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pad_c0_carry_n_0,
      CO(2) => pad_c0_carry_n_1,
      CO(1) => pad_c0_carry_n_2,
      CO(0) => pad_c0_carry_n_3,
      CYINIT => '1',
      DI(3) => pad_c0_carry_i_1_n_0,
      DI(2) => pad_c0_carry_i_2_n_0,
      DI(1) => pad_c0_carry_i_3_n_0,
      DI(0) => pad_c0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pad_c0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pad_c0_carry_i_5_n_0,
      S(2) => pad_c0_carry_i_6_n_0,
      S(1) => pad_c0_carry_i_7_n_0,
      S(0) => pad_c0_carry_i_8_n_0
    );
\pad_c0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pad_c0_carry_n_0,
      CO(3 downto 1) => \NLW_pad_c0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pad_c0__4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pad_c0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_pad_c0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pad_c0_carry__0_i_2_n_0\
    );
\pad_c0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551000CF755510"
    )
        port map (
      I0 => i_v_spot(9),
      I1 => pad_c0_carry_i_9_n_0,
      I2 => vert_paddle_post_reg(7),
      I3 => vert_paddle_post_reg(8),
      I4 => vert_paddle_post_reg(9),
      I5 => i_v_spot(8),
      O => \pad_c0_carry__0_i_1_n_0\
    );
\pad_c0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009909009600909"
    )
        port map (
      I0 => vert_paddle_post_reg(9),
      I1 => i_v_spot(9),
      I2 => vert_paddle_post_reg(8),
      I3 => pad_c0_carry_i_9_n_0,
      I4 => vert_paddle_post_reg(7),
      I5 => i_v_spot(8),
      O => \pad_c0_carry__0_i_2_n_0\
    );
pad_c0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0909099F"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => pad_c0_carry_i_9_n_0,
      I2 => i_v_spot(7),
      I3 => i_v_spot(6),
      I4 => pad_c0_carry_i_10_n_0,
      O => pad_c0_carry_i_1_n_0
    );
pad_c0_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A6A6A6A6AAAAAAA"
    )
        port map (
      I0 => vert_paddle_post_reg(6),
      I1 => vert_paddle_post_reg(5),
      I2 => vert_paddle_post_reg(4),
      I3 => vert_paddle_post_reg(1),
      I4 => vert_paddle_post_reg(2),
      I5 => vert_paddle_post_reg(3),
      O => pad_c0_carry_i_10_n_0
    );
pad_c0_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9995555"
    )
        port map (
      I0 => vert_paddle_post_reg(5),
      I1 => vert_paddle_post_reg(3),
      I2 => vert_paddle_post_reg(2),
      I3 => vert_paddle_post_reg(1),
      I4 => vert_paddle_post_reg(4),
      O => pad_c0_carry_i_11_n_0
    );
pad_c0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA95"
    )
        port map (
      I0 => vert_paddle_post_reg(4),
      I1 => vert_paddle_post_reg(1),
      I2 => vert_paddle_post_reg(2),
      I3 => vert_paddle_post_reg(3),
      O => pad_c0_carry_i_12_n_0
    );
pad_c0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1117"
    )
        port map (
      I0 => i_v_spot(5),
      I1 => pad_c0_carry_i_11_n_0,
      I2 => i_v_spot(4),
      I3 => pad_c0_carry_i_12_n_0,
      O => pad_c0_carry_i_2_n_0
    );
pad_c0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4015543D"
    )
        port map (
      I0 => i_v_spot(3),
      I1 => vert_paddle_post_reg(1),
      I2 => vert_paddle_post_reg(2),
      I3 => vert_paddle_post_reg(3),
      I4 => i_v_spot(2),
      O => pad_c0_carry_i_3_n_0
    );
pad_c0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_v_spot(1),
      I1 => vert_paddle_post_reg(1),
      O => pad_c0_carry_i_4_n_0
    );
pad_c0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00969600"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => pad_c0_carry_i_9_n_0,
      I2 => i_v_spot(7),
      I3 => pad_c0_carry_i_10_n_0,
      I4 => i_v_spot(6),
      O => pad_c0_carry_i_5_n_0
    );
pad_c0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => pad_c0_carry_i_11_n_0,
      I1 => i_v_spot(5),
      I2 => pad_c0_carry_i_12_n_0,
      I3 => i_v_spot(4),
      O => pad_c0_carry_i_6_n_0
    );
pad_c0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06609006"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      I1 => i_v_spot(3),
      I2 => vert_paddle_post_reg(1),
      I3 => vert_paddle_post_reg(2),
      I4 => i_v_spot(2),
      O => pad_c0_carry_i_7_n_0
    );
pad_c0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => vert_paddle_post_reg(1),
      I1 => i_v_spot(1),
      I2 => i_v_spot(0),
      O => pad_c0_carry_i_8_n_0
    );
pad_c0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515151515555555"
    )
        port map (
      I0 => vert_paddle_post_reg(6),
      I1 => vert_paddle_post_reg(5),
      I2 => vert_paddle_post_reg(4),
      I3 => vert_paddle_post_reg(1),
      I4 => vert_paddle_post_reg(2),
      I5 => vert_paddle_post_reg(3),
      O => pad_c0_carry_i_9_n_0
    );
pad_c1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pad_c1_carry_n_0,
      CO(2) => pad_c1_carry_n_1,
      CO(1) => pad_c1_carry_n_2,
      CO(0) => pad_c1_carry_n_3,
      CYINIT => '1',
      DI(3) => pad_c1_carry_i_1_n_0,
      DI(2) => pad_c1_carry_i_2_n_0,
      DI(1) => pad_c1_carry_i_3_n_0,
      DI(0) => pad_c1_carry_i_4_n_0,
      O(3 downto 0) => NLW_pad_c1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pad_c1_carry_i_5_n_0,
      S(2) => pad_c1_carry_i_6_n_0,
      S(1) => pad_c1_carry_i_7_n_0,
      S(0) => pad_c1_carry_i_8_n_0
    );
\pad_c1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pad_c1_carry_n_0,
      CO(3 downto 1) => \NLW_pad_c1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \pad_c1__4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \pad_c1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_pad_c1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \pad_c1_carry__0_i_2_n_0\
    );
\pad_c1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(9),
      I1 => vert_paddle_post_reg(9),
      I2 => i_v_spot(8),
      I3 => vert_paddle_post_reg(8),
      O => \pad_c1_carry__0_i_1_n_0\
    );
\pad_c1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_paddle_post_reg(9),
      I1 => i_v_spot(9),
      I2 => i_v_spot(8),
      I3 => vert_paddle_post_reg(8),
      O => \pad_c1_carry__0_i_2_n_0\
    );
pad_c1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(7),
      I1 => vert_paddle_post_reg(7),
      I2 => i_v_spot(6),
      I3 => vert_paddle_post_reg(6),
      O => pad_c1_carry_i_1_n_0
    );
pad_c1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(5),
      I1 => vert_paddle_post_reg(5),
      I2 => i_v_spot(4),
      I3 => vert_paddle_post_reg(4),
      O => pad_c1_carry_i_2_n_0
    );
pad_c1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(3),
      I1 => vert_paddle_post_reg(3),
      I2 => i_v_spot(2),
      I3 => vert_paddle_post_reg(2),
      O => pad_c1_carry_i_3_n_0
    );
pad_c1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => i_v_spot(1),
      I1 => vert_paddle_post_reg(1),
      I2 => i_v_spot(0),
      O => pad_c1_carry_i_4_n_0
    );
pad_c1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => i_v_spot(7),
      I2 => vert_paddle_post_reg(6),
      I3 => i_v_spot(6),
      O => pad_c1_carry_i_5_n_0
    );
pad_c1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_paddle_post_reg(5),
      I1 => i_v_spot(5),
      I2 => vert_paddle_post_reg(4),
      I3 => i_v_spot(4),
      O => pad_c1_carry_i_6_n_0
    );
pad_c1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      I1 => i_v_spot(3),
      I2 => vert_paddle_post_reg(2),
      I3 => i_v_spot(2),
      O => pad_c1_carry_i_7_n_0
    );
pad_c1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => i_v_spot(0),
      I1 => vert_paddle_post_reg(1),
      I2 => i_v_spot(1),
      O => pad_c1_carry_i_8_n_0
    );
sq_ball_c0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sq_ball_c0_carry_n_0,
      CO(2) => sq_ball_c0_carry_n_1,
      CO(1) => sq_ball_c0_carry_n_2,
      CO(0) => sq_ball_c0_carry_n_3,
      CYINIT => '1',
      DI(3) => sq_ball_c0_carry_i_1_n_0,
      DI(2) => sq_ball_c0_carry_i_2_n_0,
      DI(1) => sq_ball_c0_carry_i_3_n_0,
      DI(0) => sq_ball_c0_carry_i_4_n_0,
      O(3 downto 0) => NLW_sq_ball_c0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sq_ball_c0_carry_i_5_n_0,
      S(2) => sq_ball_c0_carry_i_6_n_0,
      S(1) => sq_ball_c0_carry_i_7_n_0,
      S(0) => sq_ball_c0_carry_i_8_n_0
    );
\sq_ball_c0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sq_ball_c0_carry_n_0,
      CO(3 downto 1) => \NLW_sq_ball_c0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sq_ball_c0__4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sq_ball_c0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_sq_ball_c0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sq_ball_c0_carry__0_i_2_n_0\
    );
\sq_ball_c0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45551000CF755510"
    )
        port map (
      I0 => i_v_spot(9),
      I1 => horz_speed_pre2_carry_i_10_n_0,
      I2 => vert_ball_corner_reg(7),
      I3 => vert_ball_corner_reg(8),
      I4 => vert_ball_corner_reg(9),
      I5 => i_v_spot(8),
      O => \sq_ball_c0_carry__0_i_1_n_0\
    );
\sq_ball_c0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009909009600909"
    )
        port map (
      I0 => vert_ball_corner_reg(9),
      I1 => i_v_spot(9),
      I2 => vert_ball_corner_reg(8),
      I3 => horz_speed_pre2_carry_i_10_n_0,
      I4 => vert_ball_corner_reg(7),
      I5 => i_v_spot(8),
      O => \sq_ball_c0_carry__0_i_2_n_0\
    );
sq_ball_c0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4510C751"
    )
        port map (
      I0 => i_v_spot(7),
      I1 => horz_speed_pre2_carry_i_11_n_0,
      I2 => vert_ball_corner_reg(6),
      I3 => vert_ball_corner_reg(7),
      I4 => i_v_spot(6),
      O => sq_ball_c0_carry_i_1_n_0
    );
sq_ball_c0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51550400F35D5504"
    )
        port map (
      I0 => i_v_spot(5),
      I1 => vert_ball_corner_reg(3),
      I2 => horz_speed_pre2_carry_i_12_n_0,
      I3 => vert_ball_corner_reg(4),
      I4 => vert_ball_corner_reg(5),
      I5 => i_v_spot(4),
      O => sq_ball_c0_carry_i_2_n_0
    );
sq_ball_c0_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"015443D5"
    )
        port map (
      I0 => i_v_spot(3),
      I1 => vert_ball_corner_reg(2),
      I2 => vert_ball_corner_reg(1),
      I3 => vert_ball_corner_reg(3),
      I4 => i_v_spot(2),
      O => sq_ball_c0_carry_i_3_n_0
    );
sq_ball_c0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => i_v_spot(0),
      I1 => i_v_spot(1),
      I2 => vert_ball_corner_reg(1),
      O => sq_ball_c0_carry_i_4_n_0
    );
sq_ball_c0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => vert_ball_corner_reg(7),
      I1 => i_v_spot(7),
      I2 => vert_ball_corner_reg(6),
      I3 => horz_speed_pre2_carry_i_11_n_0,
      I4 => i_v_spot(6),
      O => sq_ball_c0_carry_i_5_n_0
    );
sq_ball_c0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090099009096009"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => i_v_spot(5),
      I2 => vert_ball_corner_reg(4),
      I3 => vert_ball_corner_reg(3),
      I4 => horz_speed_pre2_carry_i_12_n_0,
      I5 => i_v_spot(4),
      O => sq_ball_c0_carry_i_6_n_0
    );
sq_ball_c0_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60090660"
    )
        port map (
      I0 => vert_ball_corner_reg(3),
      I1 => i_v_spot(3),
      I2 => vert_ball_corner_reg(2),
      I3 => vert_ball_corner_reg(1),
      I4 => i_v_spot(2),
      O => sq_ball_c0_carry_i_7_n_0
    );
sq_ball_c0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => vert_ball_corner_reg(1),
      I1 => i_v_spot(1),
      I2 => i_v_spot(0),
      O => sq_ball_c0_carry_i_8_n_0
    );
sq_ball_c1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sq_ball_c1_carry_n_0,
      CO(2) => sq_ball_c1_carry_n_1,
      CO(1) => sq_ball_c1_carry_n_2,
      CO(0) => sq_ball_c1_carry_n_3,
      CYINIT => '1',
      DI(3) => sq_ball_c1_carry_i_1_n_0,
      DI(2) => sq_ball_c1_carry_i_2_n_0,
      DI(1) => sq_ball_c1_carry_i_3_n_0,
      DI(0) => sq_ball_c1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sq_ball_c1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sq_ball_c1_carry_i_5_n_0,
      S(2) => sq_ball_c1_carry_i_6_n_0,
      S(1) => sq_ball_c1_carry_i_7_n_0,
      S(0) => sq_ball_c1_carry_i_8_n_0
    );
\sq_ball_c1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sq_ball_c1_carry_n_0,
      CO(3 downto 1) => \NLW_sq_ball_c1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sq_ball_c1__4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sq_ball_c1_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_sq_ball_c1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sq_ball_c1_carry__0_i_2_n_0\
    );
\sq_ball_c1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(9),
      I1 => vert_ball_corner_reg(9),
      I2 => i_v_spot(8),
      I3 => vert_ball_corner_reg(8),
      O => \sq_ball_c1_carry__0_i_1_n_0\
    );
\sq_ball_c1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_ball_corner_reg(9),
      I1 => i_v_spot(9),
      I2 => vert_ball_corner_reg(8),
      I3 => i_v_spot(8),
      O => \sq_ball_c1_carry__0_i_2_n_0\
    );
sq_ball_c1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(7),
      I1 => vert_ball_corner_reg(7),
      I2 => i_v_spot(6),
      I3 => vert_ball_corner_reg(6),
      O => sq_ball_c1_carry_i_1_n_0
    );
sq_ball_c1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(5),
      I1 => vert_ball_corner_reg(5),
      I2 => i_v_spot(4),
      I3 => vert_ball_corner_reg(4),
      O => sq_ball_c1_carry_i_2_n_0
    );
sq_ball_c1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => i_v_spot(3),
      I1 => vert_ball_corner_reg(3),
      I2 => i_v_spot(2),
      I3 => vert_ball_corner_reg(2),
      O => sq_ball_c1_carry_i_3_n_0
    );
sq_ball_c1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => i_v_spot(1),
      I1 => vert_ball_corner_reg(1),
      I2 => i_v_spot(0),
      O => sq_ball_c1_carry_i_4_n_0
    );
sq_ball_c1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_ball_corner_reg(7),
      I1 => i_v_spot(7),
      I2 => vert_ball_corner_reg(6),
      I3 => i_v_spot(6),
      O => sq_ball_c1_carry_i_5_n_0
    );
sq_ball_c1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => i_v_spot(5),
      I2 => vert_ball_corner_reg(4),
      I3 => i_v_spot(4),
      O => sq_ball_c1_carry_i_6_n_0
    );
sq_ball_c1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => vert_ball_corner_reg(3),
      I1 => i_v_spot(3),
      I2 => vert_ball_corner_reg(2),
      I3 => i_v_spot(2),
      O => sq_ball_c1_carry_i_7_n_0
    );
sq_ball_c1_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => i_v_spot(0),
      I1 => vert_ball_corner_reg(1),
      I2 => i_v_spot(1),
      O => sq_ball_c1_carry_i_8_n_0
    );
sq_ball_c2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sq_ball_c2_carry_n_0,
      CO(2) => sq_ball_c2_carry_n_1,
      CO(1) => sq_ball_c2_carry_n_2,
      CO(0) => sq_ball_c2_carry_n_3,
      CYINIT => '1',
      DI(3) => sq_ball_c2_carry_i_1_n_0,
      DI(2) => sq_ball_c2_carry_i_2_n_0,
      DI(1) => sq_ball_c2_carry_i_3_n_0,
      DI(0) => sq_ball_c2_carry_i_4_n_0,
      O(3 downto 0) => NLW_sq_ball_c2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sq_ball_c2_carry_i_5_n_0,
      S(2) => sq_ball_c2_carry_i_6_n_0,
      S(1) => sq_ball_c2_carry_i_7_n_0,
      S(0) => sq_ball_c2_carry_i_8_n_0
    );
\sq_ball_c2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sq_ball_c2_carry_n_0,
      CO(3 downto 1) => \NLW_sq_ball_c2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sq_ball_c2__4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sq_ball_c2_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_sq_ball_c2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sq_ball_c2_carry__0_i_2_n_0\
    );
\sq_ball_c2_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55150040DD3D4454"
    )
        port map (
      I0 => i_h_spot(9),
      I1 => horz_ball_corner_reg(8),
      I2 => horz_ball_corner_reg(7),
      I3 => \sq_ball_c2_carry__0_i_3_n_0\,
      I4 => horz_ball_corner_reg(9),
      I5 => i_h_spot(8),
      O => \sq_ball_c2_carry__0_i_1_n_0\
    );
\sq_ball_c2_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099090006009099"
    )
        port map (
      I0 => horz_ball_corner_reg(9),
      I1 => i_h_spot(9),
      I2 => \sq_ball_c2_carry__0_i_3_n_0\,
      I3 => horz_ball_corner_reg(7),
      I4 => horz_ball_corner_reg(8),
      I5 => i_h_spot(8),
      O => \sq_ball_c2_carry__0_i_2_n_0\
    );
\sq_ball_c2_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777FFFFFFFFFFFFF"
    )
        port map (
      I0 => horz_ball_corner_reg(5),
      I1 => horz_ball_corner_reg(3),
      I2 => horz_ball_corner_reg(2),
      I3 => horz_ball_corner_reg(1),
      I4 => horz_ball_corner_reg(4),
      I5 => horz_ball_corner_reg(6),
      O => \sq_ball_c2_carry__0_i_3_n_0\
    );
sq_ball_c2_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4510C751"
    )
        port map (
      I0 => i_h_spot(7),
      I1 => sq_ball_c2_carry_i_9_n_0,
      I2 => horz_ball_corner_reg(6),
      I3 => horz_ball_corner_reg(7),
      I4 => i_h_spot(6),
      O => sq_ball_c2_carry_i_1_n_0
    );
sq_ball_c2_carry_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => horz_ball_corner_reg(1),
      I1 => horz_ball_corner_reg(2),
      I2 => horz_ball_corner_reg(3),
      O => sq_ball_c2_carry_i_10_n_0
    );
sq_ball_c2_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4510C751"
    )
        port map (
      I0 => i_h_spot(5),
      I1 => sq_ball_c2_carry_i_10_n_0,
      I2 => horz_ball_corner_reg(4),
      I3 => horz_ball_corner_reg(5),
      I4 => i_h_spot(4),
      O => sq_ball_c2_carry_i_2_n_0
    );
sq_ball_c2_carry_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"015443D5"
    )
        port map (
      I0 => i_h_spot(3),
      I1 => horz_ball_corner_reg(2),
      I2 => horz_ball_corner_reg(1),
      I3 => horz_ball_corner_reg(3),
      I4 => i_h_spot(2),
      O => sq_ball_c2_carry_i_3_n_0
    );
sq_ball_c2_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => i_h_spot(0),
      I1 => i_h_spot(1),
      I2 => horz_ball_corner_reg(1),
      O => sq_ball_c2_carry_i_4_n_0
    );
sq_ball_c2_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => horz_ball_corner_reg(7),
      I1 => i_h_spot(7),
      I2 => horz_ball_corner_reg(6),
      I3 => sq_ball_c2_carry_i_9_n_0,
      I4 => i_h_spot(6),
      O => sq_ball_c2_carry_i_5_n_0
    );
sq_ball_c2_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090960"
    )
        port map (
      I0 => horz_ball_corner_reg(5),
      I1 => i_h_spot(5),
      I2 => horz_ball_corner_reg(4),
      I3 => sq_ball_c2_carry_i_10_n_0,
      I4 => i_h_spot(4),
      O => sq_ball_c2_carry_i_6_n_0
    );
sq_ball_c2_carry_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60090660"
    )
        port map (
      I0 => horz_ball_corner_reg(3),
      I1 => i_h_spot(3),
      I2 => horz_ball_corner_reg(2),
      I3 => horz_ball_corner_reg(1),
      I4 => i_h_spot(2),
      O => sq_ball_c2_carry_i_7_n_0
    );
sq_ball_c2_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => horz_ball_corner_reg(1),
      I1 => i_h_spot(1),
      I2 => i_h_spot(0),
      O => sq_ball_c2_carry_i_8_n_0
    );
sq_ball_c2_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFFFFF"
    )
        port map (
      I0 => horz_ball_corner_reg(4),
      I1 => horz_ball_corner_reg(1),
      I2 => horz_ball_corner_reg(2),
      I3 => horz_ball_corner_reg(3),
      I4 => horz_ball_corner_reg(5),
      O => sq_ball_c2_carry_i_9_n_0
    );
\sq_ball_c2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sq_ball_c2_inferred__0/i__carry_n_0\,
      CO(2) => \sq_ball_c2_inferred__0/i__carry_n_1\,
      CO(1) => \sq_ball_c2_inferred__0/i__carry_n_2\,
      CO(0) => \sq_ball_c2_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_sq_ball_c2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\sq_ball_c2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sq_ball_c2_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_sq_ball_c2_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => sq_ball_c23_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_sq_ball_c2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2_n_0\
    );
vert_ball_corner0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vert_ball_corner0_carry_n_0,
      CO(2) => vert_ball_corner0_carry_n_1,
      CO(1) => vert_ball_corner0_carry_n_2,
      CO(0) => vert_ball_corner0_carry_n_3,
      CYINIT => vert_ball_corner_reg(1),
      DI(3 downto 0) => vert_ball_corner_reg(5 downto 2),
      O(3 downto 0) => vert_ball_corner0(5 downto 2),
      S(3) => vert_ball_corner0_carry_i_1_n_0,
      S(2) => vert_ball_corner0_carry_i_2_n_0,
      S(1) => vert_ball_corner0_carry_i_3_n_0,
      S(0) => vert_ball_corner0_carry_i_4_n_0
    );
\vert_ball_corner0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => vert_ball_corner0_carry_n_0,
      CO(3) => \NLW_vert_ball_corner0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \vert_ball_corner0_carry__0_n_1\,
      CO(1) => \vert_ball_corner0_carry__0_n_2\,
      CO(0) => \vert_ball_corner0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => vert_ball_corner_reg(8 downto 6),
      O(3 downto 0) => vert_ball_corner0(9 downto 6),
      S(3) => \vert_ball_corner0_carry__0_i_1_n_0\,
      S(2) => \vert_ball_corner0_carry__0_i_2_n_0\,
      S(1) => \vert_ball_corner0_carry__0_i_3_n_0\,
      S(0) => \vert_ball_corner0_carry__0_i_4_n_0\
    );
\vert_ball_corner0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(8),
      I1 => vert_ball_corner_reg(9),
      O => \vert_ball_corner0_carry__0_i_1_n_0\
    );
\vert_ball_corner0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(8),
      I1 => \in\(8),
      O => \vert_ball_corner0_carry__0_i_2_n_0\
    );
\vert_ball_corner0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(7),
      I1 => \in\(8),
      O => \vert_ball_corner0_carry__0_i_3_n_0\
    );
\vert_ball_corner0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(6),
      I1 => \in\(8),
      O => \vert_ball_corner0_carry__0_i_4_n_0\
    );
vert_ball_corner0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => \in\(8),
      O => vert_ball_corner0_carry_i_1_n_0
    );
vert_ball_corner0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(4),
      I1 => \in\(8),
      O => vert_ball_corner0_carry_i_2_n_0
    );
vert_ball_corner0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(3),
      I1 => \in\(8),
      O => vert_ball_corner0_carry_i_3_n_0
    );
vert_ball_corner0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_ball_corner_reg(2),
      I1 => \in\(8),
      O => vert_ball_corner0_carry_i_4_n_0
    );
\vert_ball_corner[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vert_ball_corner_reg(1),
      O => \vert_ball_corner[1]_i_1_n_0\
    );
\vert_ball_corner[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \vert_ball_corner[9]_i_2_n_0\,
      I1 => i_h_spot(8),
      I2 => i_h_spot(7),
      I3 => i_h_spot(4),
      I4 => i_h_spot(0),
      I5 => \vert_ball_corner[9]_i_3_n_0\,
      O => refresh60Hz
    );
\vert_ball_corner[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => i_h_spot(6),
      I1 => i_h_spot(5),
      I2 => i_h_spot(9),
      I3 => i_v_spot(4),
      O => \vert_ball_corner[9]_i_2_n_0\
    );
\vert_ball_corner[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => i_v_spot(0),
      I1 => i_v_spot(6),
      I2 => i_v_spot(3),
      I3 => i_v_spot(5),
      I4 => \vert_ball_corner[9]_i_4_n_0\,
      I5 => \vert_ball_corner[9]_i_5_n_0\,
      O => \vert_ball_corner[9]_i_3_n_0\
    );
\vert_ball_corner[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => i_h_spot(1),
      I1 => i_v_spot(1),
      I2 => i_v_spot(7),
      I3 => i_v_spot(2),
      O => \vert_ball_corner[9]_i_4_n_0\
    );
\vert_ball_corner[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => i_v_spot(8),
      I1 => i_h_spot(3),
      I2 => i_h_spot(2),
      I3 => i_v_spot(9),
      O => \vert_ball_corner[9]_i_5_n_0\
    );
\vert_ball_corner_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => \vert_ball_corner[1]_i_1_n_0\,
      Q => vert_ball_corner_reg(1)
    );
\vert_ball_corner_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(2),
      Q => vert_ball_corner_reg(2)
    );
\vert_ball_corner_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(3),
      Q => vert_ball_corner_reg(3)
    );
\vert_ball_corner_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(4),
      Q => vert_ball_corner_reg(4)
    );
\vert_ball_corner_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(5),
      Q => vert_ball_corner_reg(5)
    );
\vert_ball_corner_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(6),
      Q => vert_ball_corner_reg(6)
    );
\vert_ball_corner_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(7),
      Q => vert_ball_corner_reg(7)
    );
\vert_ball_corner_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(8),
      Q => vert_ball_corner_reg(8)
    );
\vert_ball_corner_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => refresh60Hz,
      CLR => i_reset,
      D => vert_ball_corner0(9),
      Q => vert_ball_corner_reg(9)
    );
\vert_paddle_post[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => refresh60Hz,
      I1 => \vert_paddle_post[9]_i_2_n_0\,
      I2 => vert_paddle_pre11_out,
      O => vert_paddle_pre
    );
\vert_paddle_post[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30008EFF00000000"
    )
        port map (
      I0 => \vert_paddle_post[9]_i_3_n_0\,
      I1 => pad_c0_carry_i_9_n_0,
      I2 => vert_paddle_post_reg(7),
      I3 => vert_paddle_post_reg(8),
      I4 => vert_paddle_post_reg(9),
      I5 => i_down_but,
      O => \vert_paddle_post[9]_i_2_n_0\
    );
\vert_paddle_post[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEA0011FF"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      I1 => vert_paddle_post_reg(2),
      I2 => vert_paddle_post_reg(1),
      I3 => vert_paddle_post_reg(4),
      I4 => vert_paddle_post_reg(5),
      I5 => vert_paddle_post_reg(6),
      O => \vert_paddle_post[9]_i_3_n_0\
    );
\vert_paddle_post_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => vert_paddle_pre0_carry_n_6,
      Q => vert_paddle_post_reg(1)
    );
\vert_paddle_post_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => vert_paddle_pre0_carry_n_5,
      Q => vert_paddle_post_reg(2)
    );
\vert_paddle_post_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => vert_paddle_pre0_carry_n_4,
      Q => vert_paddle_post_reg(3)
    );
\vert_paddle_post_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => \vert_paddle_pre0_carry__0_n_7\,
      Q => vert_paddle_post_reg(4)
    );
\vert_paddle_post_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => \vert_paddle_pre0_carry__0_n_6\,
      Q => vert_paddle_post_reg(5)
    );
\vert_paddle_post_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => \vert_paddle_pre0_carry__0_n_5\,
      Q => vert_paddle_post_reg(6)
    );
\vert_paddle_post_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => \vert_paddle_pre0_carry__0_n_4\,
      Q => vert_paddle_post_reg(7)
    );
\vert_paddle_post_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => \vert_paddle_pre0_carry__1_n_7\,
      Q => vert_paddle_post_reg(8)
    );
\vert_paddle_post_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => vert_paddle_pre,
      CLR => i_reset,
      D => \vert_paddle_pre0_carry__1_n_6\,
      Q => vert_paddle_post_reg(9)
    );
vert_paddle_pre0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vert_paddle_pre0_carry_n_0,
      CO(2) => vert_paddle_pre0_carry_n_1,
      CO(1) => vert_paddle_pre0_carry_n_2,
      CO(0) => vert_paddle_pre0_carry_n_3,
      CYINIT => '0',
      DI(3) => vert_paddle_pre0_carry_i_1_n_0,
      DI(2) => vert_paddle_pre11_out,
      DI(1) => vert_paddle_post_reg(1),
      DI(0) => '0',
      O(3) => vert_paddle_pre0_carry_n_4,
      O(2) => vert_paddle_pre0_carry_n_5,
      O(1) => vert_paddle_pre0_carry_n_6,
      O(0) => NLW_vert_paddle_pre0_carry_O_UNCONNECTED(0),
      S(3) => vert_paddle_pre0_carry_i_3_n_0,
      S(2) => vert_paddle_pre0_carry_i_4_n_0,
      S(1) => vert_paddle_pre0_carry_i_5_n_0,
      S(0) => '0'
    );
\vert_paddle_pre0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => vert_paddle_pre0_carry_n_0,
      CO(3) => \vert_paddle_pre0_carry__0_n_0\,
      CO(2) => \vert_paddle_pre0_carry__0_n_1\,
      CO(1) => \vert_paddle_pre0_carry__0_n_2\,
      CO(0) => \vert_paddle_pre0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => vert_paddle_post_reg(6 downto 3),
      O(3) => \vert_paddle_pre0_carry__0_n_4\,
      O(2) => \vert_paddle_pre0_carry__0_n_5\,
      O(1) => \vert_paddle_pre0_carry__0_n_6\,
      O(0) => \vert_paddle_pre0_carry__0_n_7\,
      S(3) => \vert_paddle_pre0_carry__0_i_1_n_0\,
      S(2) => \vert_paddle_pre0_carry__0_i_2_n_0\,
      S(1) => \vert_paddle_pre0_carry__0_i_3_n_0\,
      S(0) => \vert_paddle_pre0_carry__0_i_4_n_0\
    );
\vert_paddle_pre0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vert_paddle_post_reg(6),
      I1 => vert_paddle_post_reg(7),
      O => \vert_paddle_pre0_carry__0_i_1_n_0\
    );
\vert_paddle_pre0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vert_paddle_post_reg(5),
      I1 => vert_paddle_post_reg(6),
      O => \vert_paddle_pre0_carry__0_i_2_n_0\
    );
\vert_paddle_pre0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vert_paddle_post_reg(4),
      I1 => vert_paddle_post_reg(5),
      O => \vert_paddle_pre0_carry__0_i_3_n_0\
    );
\vert_paddle_pre0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      I1 => vert_paddle_post_reg(4),
      O => \vert_paddle_pre0_carry__0_i_4_n_0\
    );
\vert_paddle_pre0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \vert_paddle_pre0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_vert_paddle_pre0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \vert_paddle_pre0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vert_paddle_post_reg(7),
      O(3 downto 2) => \NLW_vert_paddle_pre0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \vert_paddle_pre0_carry__1_n_6\,
      O(0) => \vert_paddle_pre0_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \vert_paddle_pre0_carry__1_i_1_n_0\,
      S(0) => \vert_paddle_pre0_carry__1_i_2_n_0\
    );
\vert_paddle_pre0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vert_paddle_post_reg(8),
      I1 => vert_paddle_post_reg(9),
      O => \vert_paddle_pre0_carry__1_i_1_n_0\
    );
\vert_paddle_pre0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vert_paddle_post_reg(7),
      I1 => vert_paddle_post_reg(8),
      O => \vert_paddle_pre0_carry__1_i_2_n_0\
    );
vert_paddle_pre0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vert_paddle_post_reg(3),
      O => vert_paddle_pre0_carry_i_1_n_0
    );
vert_paddle_pre0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => i_up_but,
      I1 => vert_paddle_pre0_carry_i_6_n_0,
      I2 => vert_paddle_post_reg(6),
      I3 => vert_paddle_post_reg(5),
      I4 => vert_paddle_post_reg(4),
      I5 => vert_paddle_post_reg(2),
      O => vert_paddle_pre11_out
    );
vert_paddle_pre0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_paddle_pre11_out,
      I1 => vert_paddle_post_reg(3),
      O => vert_paddle_pre0_carry_i_3_n_0
    );
vert_paddle_pre0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vert_paddle_pre11_out,
      I1 => vert_paddle_post_reg(2),
      O => vert_paddle_pre0_carry_i_4_n_0
    );
vert_paddle_pre0_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vert_paddle_post_reg(1),
      O => vert_paddle_pre0_carry_i_5_n_0
    );
vert_paddle_pre0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => vert_paddle_post_reg(9),
      I1 => vert_paddle_post_reg(8),
      I2 => vert_paddle_post_reg(7),
      I3 => vert_paddle_post_reg(3),
      O => vert_paddle_pre0_carry_i_6_n_0
    );
\vert_speed_post[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \vert_speed_post[8]_i_2_n_0\,
      I1 => \vert_speed_post[8]_i_3_n_0\,
      I2 => \in\(8),
      O => \vert_speed_post[8]_i_1_n_0\
    );
\vert_speed_post[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => vert_ball_corner_reg(3),
      I1 => vert_ball_corner_reg(2),
      I2 => vert_ball_corner_reg(1),
      I3 => \vert_speed_post[8]_i_4_n_0\,
      O => \vert_speed_post[8]_i_2_n_0\
    );
\vert_speed_post[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8000FFFFFFFF"
    )
        port map (
      I0 => \vert_speed_post[8]_i_5_n_0\,
      I1 => vert_ball_corner_reg(6),
      I2 => vert_ball_corner_reg(7),
      I3 => vert_ball_corner_reg(8),
      I4 => \vert_speed_post[8]_i_2_n_0\,
      I5 => \vert_speed_post[8]_i_6_n_0\,
      O => \vert_speed_post[8]_i_3_n_0\
    );
\vert_speed_post[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => vert_ball_corner_reg(6),
      I1 => vert_ball_corner_reg(5),
      I2 => vert_ball_corner_reg(9),
      I3 => vert_ball_corner_reg(4),
      I4 => vert_ball_corner_reg(7),
      I5 => vert_ball_corner_reg(8),
      O => \vert_speed_post[8]_i_4_n_0\
    );
\vert_speed_post[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"666AAAAA"
    )
        port map (
      I0 => vert_ball_corner_reg(5),
      I1 => vert_ball_corner_reg(4),
      I2 => vert_ball_corner_reg(1),
      I3 => vert_ball_corner_reg(2),
      I4 => vert_ball_corner_reg(3),
      O => \vert_speed_post[8]_i_5_n_0\
    );
\vert_speed_post[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5595"
    )
        port map (
      I0 => vert_ball_corner_reg(9),
      I1 => vert_ball_corner_reg(8),
      I2 => vert_ball_corner_reg(7),
      I3 => horz_speed_pre2_carry_i_10_n_0,
      O => \vert_speed_post[8]_i_6_n_0\
    );
\vert_speed_post_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clock,
      CE => '1',
      CLR => i_reset,
      D => \vert_speed_post[8]_i_1_n_0\,
      Q => \in\(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_pixel_generator_0_1 is
  port (
    i_clock : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_up_but : in STD_LOGIC;
    i_down_but : in STD_LOGIC;
    i_display_on : in STD_LOGIC;
    i_h_spot : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_v_spot : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_color : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_pixel_generator_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pixel_generator_0_1 : entity is "design_1_pixel_generator_0_1,pixel_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pixel_generator_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pixel_generator_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_pixel_generator_0_1 : entity is "pixel_generator,Vivado 2024.2";
end design_1_pixel_generator_0_1;

architecture STRUCTURE of design_1_pixel_generator_0_1 is
  signal \^o_color\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clock : signal is "xilinx.com:signal:clock:1.0 i_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clock : signal is "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute X_INTERFACE_MODE of i_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
  o_color(2) <= \^o_color\(2);
  o_color(1) <= \^o_color\(2);
  o_color(0) <= \^o_color\(0);
inst: entity work.design_1_pixel_generator_0_1_pixel_generator
     port map (
      i_clock => i_clock,
      i_display_on => i_display_on,
      i_down_but => i_down_but,
      i_h_spot(9 downto 0) => i_h_spot(9 downto 0),
      i_reset => i_reset,
      i_up_but => i_up_but,
      i_v_spot(9 downto 0) => i_v_spot(9 downto 0),
      o_color(1) => \^o_color\(2),
      o_color(0) => \^o_color\(0)
    );
end STRUCTURE;
