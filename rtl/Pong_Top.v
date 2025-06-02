//
//
//
//
//

module Pong_Top(
i_clock,
i_reset,
i_up_but,
i_down_but,
o_red,
o_green,
o_blue,
o_hsync,
o_vsync
    );  
input i_clock;
input i_reset;
input i_up_but;
input i_down_but;
output o_red;
output o_green;
output o_blue;
output o_hsync;
output o_vsync;

wire displayOn;
wire pushDown;
wire pushUp;
wire pushReset;
wire [2:0] rgb_pre;
reg [2:0] rgb_post;
wire [9:0] horiz_pixel;
wire [9:0] vert_pixel;

vga_handler vga(.i_clock(i_clock), .i_reset(i_reset), .o_display_on(displayOn), .o_hsync(o_hsync), .o_vsync(o_vsync), .o_pixel_clock(pixel_refresh), .o_h_spot(horiz_pixel), .o_v_spot(vert_pixel));
pixel_generator pixGen(.i_clock(i_clock), .i_reset(i_reset), .i_up_but(i_up_but), .i_down_but(i_down_but), .i_display_on(displayOn), .i_h_spot(horiz_pixel), .i_v_spot(vert_pixel), .o_color(rgb_pre));
button_Debouncer debounceUp(.i_clock(i_clock), .i_button(i_up_but), .o_button(pushUp));
button_Debouncer debounceDown(.i_clock(i_clock), .i_button(i_down_but), .o_button(pushDown));
button_Debouncer debounceReset(.i_clock(i_clock), .i_button(i_reset), .o_button(pushReset));

//color signal generation:
always @ (posedge i_clock)
    begin
    if (pixel_refresh)
        rgb_post <= rgb_pre;
    end

assign o_red = rgb_post[2];
assign o_green = rgb_post[1];
assign o_blue = rgb_post[0];    
   
endmodule