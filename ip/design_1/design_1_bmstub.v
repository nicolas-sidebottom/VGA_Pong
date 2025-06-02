// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  o_blue,
  o_green,
  o_red,
  o_vsync,
  o_hsync,
  i_down_but,
  i_up_but,
  i_reset,
  i_clock
);

  (* X_INTERFACE_IGNORE = "true" *)
  output o_blue;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_green;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_red;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_vsync;
  (* X_INTERFACE_IGNORE = "true" *)
  output o_hsync;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_down_but;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_up_but;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.I_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_i_clock, INSERT_VIP 0" *)
  input i_clock;

  // stub module has no contents

endmodule
