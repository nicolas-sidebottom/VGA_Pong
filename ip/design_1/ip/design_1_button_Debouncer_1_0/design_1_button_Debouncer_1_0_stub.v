// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Mon Jun  2 05:38:43 2025
// Host        : DESKTOP-CSP9PGO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Locke/VivadoProjects/ip/design_1/ip/design_1_button_Debouncer_1_0/design_1_button_Debouncer_1_0_stub.v
// Design      : design_1_button_Debouncer_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_button_Debouncer_1_0,button_Debouncer,{}" *) (* CORE_GENERATION_INFO = "design_1_button_Debouncer_1_0,button_Debouncer,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=button_Debouncer,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=VERILOG}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "button_Debouncer,Vivado 2024.2" *) 
module design_1_button_Debouncer_1_0(i_clock, i_button, o_button)
/* synthesis syn_black_box black_box_pad_pin="i_button,o_button" */
/* synthesis syn_force_seq_prim="i_clock" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_clock /* synthesis syn_isclock = 1 */;
  input i_button;
  output o_button;
endmodule
