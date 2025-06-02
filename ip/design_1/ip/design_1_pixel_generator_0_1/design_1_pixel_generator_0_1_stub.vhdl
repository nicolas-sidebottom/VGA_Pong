-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Jun  2 05:37:28 2025
-- Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_pixel_generator_0_1/design_1_pixel_generator_0_1_stub.vhdl
-- Design      : design_1_pixel_generator_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pixel_generator_0_1 is
  Port ( 
    i_clock : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_up_but : in STD_LOGIC;
    i_down_but : in STD_LOGIC;
    i_display_on : in STD_LOGIC;
    i_h_spot : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_v_spot : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_color : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_pixel_generator_0_1 : entity is "design_1_pixel_generator_0_1,pixel_generator,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_pixel_generator_0_1 : entity is "design_1_pixel_generator_0_1,pixel_generator,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=pixel_generator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG,horz_max=639,vert_max=479,horz_wall_L=10,horz_wall_R=30,horz_paddle_L=610,horz_paddle_R=614,paddleHeight=75,paddleSpeed=2,ball_dimension=8,ball_speed_pos=2,ball_speed_neg=-2}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_pixel_generator_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_pixel_generator_0_1 : entity is "module_ref";
end design_1_pixel_generator_0_1;

architecture stub of design_1_pixel_generator_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "i_clock,i_reset,i_up_but,i_down_but,i_display_on,i_h_spot[9:0],i_v_spot[9:0],o_color[2:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clock : signal is "xilinx.com:signal:clock:1.0 i_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clock : signal is "XIL_INTERFACENAME i_clock, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute X_INTERFACE_MODE of i_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "pixel_generator,Vivado 2024.2";
begin
end;
