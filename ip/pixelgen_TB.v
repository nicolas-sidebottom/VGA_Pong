`timescale 1ns / 1ps
`include "Pixel_Generator.v"
`include "VGA_Sync_Handler.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2025 03:30:44 AM
// Design Name: 
// Module Name: pixelgen_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pixelgen_TB();

//inputs
reg i_clock;                  //100MHz clock (internal from Artix-7)
reg tb_reset = 1'b0;                  // system reset
reg pushUp;
reg pushDown;


//outputs
wire [2:0] o_color;       // signal to vga
wire displayOn;     // this is high when we are rastering within the visible display area (640x480 area)
wire ohsync;         // horizontal sync (signals when a line is finished)
wire ovsync;         // vertical sync (signals when last line on screen is finished)
wire pixel_refresh;   // 25MHz signal for controlling pixel/second display rate
wire [9:0] horiz_pixel;  // counter for keeping track of what pixel we are on horizontally      
wire [9:0] horiz_pixel;

vga_handler handlerUT 
(.i_clock(i_clock),
 .i_reset(tb_reset),
 .o_display_on(displayOn),
 .o_hsync(ohsync),
 .o_vsync(ovsync),
 .o_pixel_clock(pixel_refresh),
 .o_h_spot(horiz_pixel), 
 .o_v_spot(vert_pixel)
);

pixel_generator pixelUT
(.i_clock(i_clock), 
.i_reset(tb_reset), 
.i_up_but(pushUp), 
.i_down_but(pushDown), 
.i_display_on(displayOn), 
.i_h_spot(horiz_pixel), 
.i_v_spot(vert_pixel), 
.o_color(rgb_pre)

);

initial begin
pushUp = 0;
pushDown = 0;
tb_reset = 1'b1;
#10000
tb_reset = 1'b0;

end

always #5 i_clock <= !i_clock;  //toggle the value from 0 -> 1 -> 0 -> ... makes square wave => Clock signal!

endmodule
