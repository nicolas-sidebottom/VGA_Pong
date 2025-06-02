-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon Jun  2 05:38:43 2025
-- Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_button_Debouncer_1_0/design_1_button_Debouncer_1_0_sim_netlist.vhdl
-- Design      : design_1_button_Debouncer_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_button_Debouncer_1_0_button_Debouncer is
  port (
    o_button : out STD_LOGIC;
    i_button : in STD_LOGIC;
    i_clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_button_Debouncer_1_0_button_Debouncer : entity is "button_Debouncer";
end design_1_button_Debouncer_1_0_button_Debouncer;

architecture STRUCTURE of design_1_button_Debouncer_1_0_button_Debouncer is
  signal temp1 : STD_LOGIC;
  signal temp2 : STD_LOGIC;
begin
temp1_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => '1',
      D => i_button,
      Q => temp1,
      R => '0'
    );
temp2_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => '1',
      D => temp1,
      Q => temp2,
      R => '0'
    );
temp3_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clock,
      CE => '1',
      D => temp2,
      Q => o_button,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_button_Debouncer_1_0 is
  port (
    i_clock : in STD_LOGIC;
    i_button : in STD_LOGIC;
    o_button : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_button_Debouncer_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_button_Debouncer_1_0 : entity is "design_1_button_Debouncer_1_0,button_Debouncer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_button_Debouncer_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_button_Debouncer_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_button_Debouncer_1_0 : entity is "button_Debouncer,Vivado 2024.2";
end design_1_button_Debouncer_1_0;

architecture STRUCTURE of design_1_button_Debouncer_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clock : signal is "xilinx.com:signal:clock:1.0 i_clock CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_clock : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clock : signal is "XIL_INTERFACENAME i_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.design_1_button_Debouncer_1_0_button_Debouncer
     port map (
      i_button => i_button,
      i_clock => i_clock,
      o_button => o_button
    );
end STRUCTURE;
