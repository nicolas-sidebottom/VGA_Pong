-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Jun  2 05:38:43 2025
-- Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_button_Debouncer_1_0/design_1_button_Debouncer_1_0_stub.vhdl
-- Design      : design_1_button_Debouncer_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_button_Debouncer_1_0 is
  Port ( 
    i_clock : in STD_LOGIC;
    i_button : in STD_LOGIC;
    o_button : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_button_Debouncer_1_0 : entity is "design_1_button_Debouncer_1_0,button_Debouncer,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_button_Debouncer_1_0 : entity is "design_1_button_Debouncer_1_0,button_Debouncer,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=button_Debouncer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_button_Debouncer_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_button_Debouncer_1_0 : entity is "module_ref";
end design_1_button_Debouncer_1_0;

architecture stub of design_1_button_Debouncer_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "i_clock,i_button,o_button";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clock : signal is "xilinx.com:signal:clock:1.0 i_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clock : signal is "XIL_INTERFACENAME i_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "button_Debouncer,Vivado 2024.2";
begin
end;
