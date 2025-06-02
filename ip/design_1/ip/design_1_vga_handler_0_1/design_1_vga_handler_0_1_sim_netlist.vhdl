-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Jun  2 05:37:52 2025
-- Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_vga_handler_0_1/design_1_vga_handler_0_1_sim_netlist.vhdl
-- Design      : design_1_vga_handler_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vga_handler_0_1_vga_handler is
  port (
    \quarter_counter_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \v_count_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_display_on : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_vga_handler_0_1_vga_handler : entity is "vga_handler";
end design_1_vga_handler_0_1_vga_handler;

architecture STRUCTURE of design_1_vga_handler_0_1_vga_handler is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal display_on0 : STD_LOGIC;
  signal display_on_i_2_n_0 : STD_LOGIC;
  signal h_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \h_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[1]_i_3_n_0\ : STD_LOGIC;
  signal \h_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \h_count[9]_i_2_n_0\ : STD_LOGIC;
  signal h_sync_pre : STD_LOGIC;
  signal h_sync_pre_i_1_n_0 : STD_LOGIC;
  signal quarter_counter : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \quarter_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \quarter_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \^quarter_counter_reg[0]_0\ : STD_LOGIC;
  signal v_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \v_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_4_n_0\ : STD_LOGIC;
  signal \v_count[9]_i_5_n_0\ : STD_LOGIC;
  signal \^v_count_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal v_sync_pre : STD_LOGIC;
  signal v_sync_pre_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of display_on_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_count[1]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_count[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \h_count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \h_count[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \h_count[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \h_count[9]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \quarter_counter[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \quarter_counter[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_count[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_count[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_count[9]_i_5\ : label is "soft_lutpair3";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \quarter_counter_reg[0]_0\ <= \^quarter_counter_reg[0]_0\;
  \v_count_reg[9]_0\(9 downto 0) <= \^v_count_reg[9]_0\(9 downto 0);
display_on_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01550000"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(9),
      I4 => display_on_i_2_n_0,
      O => display_on0
    );
display_on_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(7),
      I1 => \^v_count_reg[9]_0\(5),
      I2 => \^v_count_reg[9]_0\(6),
      I3 => \^v_count_reg[9]_0\(8),
      O => display_on_i_2_n_0
    );
display_on_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => display_on0,
      Q => o_display_on,
      R => i_reset
    );
\h_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => h_count(0)
    );
\h_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFBFFFB0000"
    )
        port map (
      I0 => \h_count[1]_i_2_n_0\,
      I1 => \^q\(9),
      I2 => \^q\(7),
      I3 => \h_count[1]_i_3_n_0\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => h_count(1)
    );
\h_count[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(8),
      O => \h_count[1]_i_2_n_0\
    );
\h_count[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \h_count[1]_i_3_n_0\
    );
\h_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FBFB00FB00FB00"
    )
        port map (
      I0 => \h_count[9]_i_2_n_0\,
      I1 => \^q\(8),
      I2 => \h_count[2]_i_2_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => h_count(2)
    );
\h_count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(5),
      O => \h_count[2]_i_2_n_0\
    );
\h_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => h_count(3)
    );
\h_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => h_count(4)
    );
\h_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FFF7"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \h_count[9]_i_2_n_0\,
      O => h_count(5)
    );
\h_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \h_count[9]_i_2_n_0\,
      O => h_count(6)
    );
\h_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => \h_count[9]_i_2_n_0\,
      O => h_count(7)
    );
\h_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC3CCCCCC4"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \h_count[9]_i_2_n_0\,
      O => h_count(8)
    );
\h_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AA8AAAA"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \h_count[9]_i_2_n_0\,
      O => h_count(9)
    );
\h_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \h_count[9]_i_2_n_0\
    );
\h_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(0),
      Q => \^q\(0),
      R => i_reset
    );
\h_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(1),
      Q => \^q\(1),
      R => i_reset
    );
\h_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(2),
      Q => \^q\(2),
      R => i_reset
    );
\h_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(3),
      Q => \^q\(3),
      R => i_reset
    );
\h_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(4),
      Q => \^q\(4),
      R => i_reset
    );
\h_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(5),
      Q => \^q\(5),
      R => i_reset
    );
\h_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(6),
      Q => \^q\(6),
      R => i_reset
    );
\h_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(7),
      Q => \^q\(7),
      R => i_reset
    );
\h_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(8),
      Q => \^q\(8),
      R => i_reset
    );
\h_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_count(9),
      Q => \^q\(9),
      R => i_reset
    );
h_sync_post_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_sync_pre,
      Q => o_hsync,
      R => i_reset
    );
h_sync_pre_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF81FFFFFFFFFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(7),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => h_sync_pre_i_1_n_0
    );
h_sync_pre_reg: unisim.vcomponents.FDSE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => h_sync_pre_i_1_n_0,
      Q => h_sync_pre,
      S => i_reset
    );
o_pixel_clock_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => quarter_counter(0),
      I1 => quarter_counter(1),
      O => \^quarter_counter_reg[0]_0\
    );
\quarter_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => quarter_counter(0),
      I1 => i_reset,
      O => \quarter_counter[0]_i_1_n_0\
    );
\quarter_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => quarter_counter(1),
      I1 => quarter_counter(0),
      I2 => i_reset,
      O => \quarter_counter[1]_i_1_n_0\
    );
\quarter_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clock,
      CE => '1',
      D => \quarter_counter[0]_i_1_n_0\,
      Q => quarter_counter(0),
      R => '0'
    );
\quarter_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clock,
      CE => '1',
      D => \quarter_counter[1]_i_1_n_0\,
      Q => quarter_counter(1),
      R => '0'
    );
\v_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFBF"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^v_count_reg[9]_0\(3),
      I2 => \^v_count_reg[9]_0\(2),
      I3 => \^v_count_reg[9]_0\(1),
      I4 => \^v_count_reg[9]_0\(0),
      O => v_count(0)
    );
\v_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(1),
      I1 => \^v_count_reg[9]_0\(0),
      O => v_count(1)
    );
\v_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF0F0D0"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(3),
      I1 => \v_count[9]_i_4_n_0\,
      I2 => \^v_count_reg[9]_0\(2),
      I3 => \^v_count_reg[9]_0\(0),
      I4 => \^v_count_reg[9]_0\(1),
      O => v_count(2)
    );
\v_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CC8CCCC"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^v_count_reg[9]_0\(3),
      I2 => \^v_count_reg[9]_0\(1),
      I3 => \^v_count_reg[9]_0\(0),
      I4 => \^v_count_reg[9]_0\(2),
      O => v_count(3)
    );
\v_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC8CCCCCCCCCCCC"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^v_count_reg[9]_0\(4),
      I2 => \^v_count_reg[9]_0\(1),
      I3 => \^v_count_reg[9]_0\(0),
      I4 => \^v_count_reg[9]_0\(3),
      I5 => \^v_count_reg[9]_0\(2),
      O => v_count(4)
    );
\v_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3CCCCC8CCCCCCC8"
    )
        port map (
      I0 => \v_count[9]_i_4_n_0\,
      I1 => \^v_count_reg[9]_0\(5),
      I2 => \v_count[5]_i_2_n_0\,
      I3 => \^v_count_reg[9]_0\(0),
      I4 => \^v_count_reg[9]_0\(1),
      I5 => \^v_count_reg[9]_0\(4),
      O => v_count(5)
    );
\v_count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(2),
      I1 => \^v_count_reg[9]_0\(3),
      O => \v_count[5]_i_2_n_0\
    );
\v_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FEFE00FE00FE00"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(0),
      I1 => \v_count[9]_i_3_n_0\,
      I2 => \v_count[9]_i_4_n_0\,
      I3 => \^v_count_reg[9]_0\(6),
      I4 => \v_count[9]_i_5_n_0\,
      I5 => \^v_count_reg[9]_0\(5),
      O => v_count(6)
    );
\v_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE0000FEFE00"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(0),
      I1 => \v_count[9]_i_3_n_0\,
      I2 => \v_count[9]_i_4_n_0\,
      I3 => \^v_count_reg[9]_0\(7),
      I4 => \v_count[9]_i_5_n_0\,
      I5 => \v_count[7]_i_2_n_0\,
      O => v_count(7)
    );
\v_count[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(5),
      I1 => \^v_count_reg[9]_0\(6),
      O => \v_count[7]_i_2_n_0\
    );
\v_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE0000FEFE00"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(0),
      I1 => \v_count[9]_i_3_n_0\,
      I2 => \v_count[9]_i_4_n_0\,
      I3 => \^v_count_reg[9]_0\(8),
      I4 => \v_count[9]_i_5_n_0\,
      I5 => \v_count[8]_i_2_n_0\,
      O => v_count(8)
    );
\v_count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(6),
      I1 => \^v_count_reg[9]_0\(5),
      I2 => \^v_count_reg[9]_0\(7),
      O => \v_count[8]_i_2_n_0\
    );
\v_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \^quarter_counter_reg[0]_0\,
      I1 => \h_count[1]_i_2_n_0\,
      I2 => \^q\(9),
      I3 => \^q\(7),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => \v_count[9]_i_1_n_0\
    );
\v_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FE0000FEFE00"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(0),
      I1 => \v_count[9]_i_3_n_0\,
      I2 => \v_count[9]_i_4_n_0\,
      I3 => \^v_count_reg[9]_0\(9),
      I4 => \v_count[9]_i_5_n_0\,
      I5 => display_on_i_2_n_0,
      O => v_count(9)
    );
\v_count[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(3),
      I1 => \^v_count_reg[9]_0\(2),
      I2 => \^v_count_reg[9]_0\(1),
      O => \v_count[9]_i_3_n_0\
    );
\v_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(8),
      I1 => \^v_count_reg[9]_0\(9),
      I2 => \^v_count_reg[9]_0\(6),
      I3 => \^v_count_reg[9]_0\(7),
      I4 => \^v_count_reg[9]_0\(5),
      I5 => \^v_count_reg[9]_0\(4),
      O => \v_count[9]_i_4_n_0\
    );
\v_count[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(2),
      I1 => \^v_count_reg[9]_0\(3),
      I2 => \^v_count_reg[9]_0\(0),
      I3 => \^v_count_reg[9]_0\(1),
      I4 => \^v_count_reg[9]_0\(4),
      O => \v_count[9]_i_5_n_0\
    );
\v_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(0),
      Q => \^v_count_reg[9]_0\(0),
      R => i_reset
    );
\v_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(1),
      Q => \^v_count_reg[9]_0\(1),
      R => i_reset
    );
\v_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(2),
      Q => \^v_count_reg[9]_0\(2),
      R => i_reset
    );
\v_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(3),
      Q => \^v_count_reg[9]_0\(3),
      R => i_reset
    );
\v_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(4),
      Q => \^v_count_reg[9]_0\(4),
      R => i_reset
    );
\v_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(5),
      Q => \^v_count_reg[9]_0\(5),
      R => i_reset
    );
\v_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(6),
      Q => \^v_count_reg[9]_0\(6),
      R => i_reset
    );
\v_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(7),
      Q => \^v_count_reg[9]_0\(7),
      R => i_reset
    );
\v_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(8),
      Q => \^v_count_reg[9]_0\(8),
      R => i_reset
    );
\v_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \v_count[9]_i_1_n_0\,
      D => v_count(9),
      Q => \^v_count_reg[9]_0\(9),
      R => i_reset
    );
v_sync_post_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => v_sync_pre,
      Q => o_vsync,
      R => i_reset
    );
v_sync_pre_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF9"
    )
        port map (
      I0 => \^v_count_reg[9]_0\(0),
      I1 => \^v_count_reg[9]_0\(1),
      I2 => \^v_count_reg[9]_0\(2),
      I3 => \v_count[9]_i_4_n_0\,
      I4 => \^v_count_reg[9]_0\(3),
      O => v_sync_pre_i_1_n_0
    );
v_sync_pre_reg: unisim.vcomponents.FDSE
     port map (
      C => i_clock,
      CE => \^quarter_counter_reg[0]_0\,
      D => v_sync_pre_i_1_n_0,
      Q => v_sync_pre,
      S => i_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_vga_handler_0_1 is
  port (
    i_clock : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    o_display_on : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vsync : out STD_LOGIC;
    o_pixel_clock : out STD_LOGIC;
    o_h_spot : out STD_LOGIC_VECTOR ( 9 downto 0 );
    o_v_spot : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_vga_handler_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vga_handler_0_1 : entity is "design_1_vga_handler_0_1,vga_handler,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_vga_handler_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_vga_handler_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_vga_handler_0_1 : entity is "vga_handler,Vivado 2024.2";
end design_1_vga_handler_0_1;

architecture STRUCTURE of design_1_vga_handler_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clock : signal is "xilinx.com:signal:clock:1.0 i_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clock : signal is "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute X_INTERFACE_MODE of i_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_pixel_clock : signal is "xilinx.com:signal:clock:1.0 o_pixel_clock CLK";
  attribute X_INTERFACE_MODE of o_pixel_clock : signal is "master";
  attribute X_INTERFACE_PARAMETER of o_pixel_clock : signal is "XIL_INTERFACENAME o_pixel_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_vga_handler_0_1_o_pixel_clock, INSERT_VIP 0";
begin
inst: entity work.design_1_vga_handler_0_1_vga_handler
     port map (
      Q(9 downto 0) => o_h_spot(9 downto 0),
      i_clock => i_clock,
      i_reset => i_reset,
      o_display_on => o_display_on,
      o_hsync => o_hsync,
      o_vsync => o_vsync,
      \quarter_counter_reg[0]_0\ => o_pixel_clock,
      \v_count_reg[9]_0\(9 downto 0) => o_v_spot(9 downto 0)
    );
end STRUCTURE;
