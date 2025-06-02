`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/02/2025 05:03:23 AM
// Design Name: 
// Module Name: color_Splitter
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


module color_Splitter(
i_clock,
i_pixel_refresh,
i_color,
o_red,
o_green,
o_blue
    );  
input i_clock;
input i_pixel_refresh;
input i_color;
output o_red;
output o_green;
output o_blue;

reg [2:0] rgb_post;
    
  //color signal generation:
always @ (posedge i_clock)
    begin
    if (i_pixel_refresh)
        rgb_post <= i_color;
    end
assign o_red = rgb_post[2];
assign o_green = rgb_post[1];
assign o_blue = rgb_post[0];  

endmodule
