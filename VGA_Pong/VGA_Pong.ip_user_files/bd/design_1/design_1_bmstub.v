// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  o_blue_0,
  o_green_0,
  o_red_0,
  o_vsync_0,
  o_hsync_0,
  i_button_0,
  i_button_1,
  i_button_2,
  clk_in1_0
);

  (* X_INTERFACE_IGNORE = "true" *)
  output o_blue_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_green_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_red_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_vsync_0;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_hsync_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_button_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_button_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_button_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_IN1_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_in1_0, INSERT_VIP 0" *)
  input clk_in1_0;

  // stub module has no contents

endmodule
