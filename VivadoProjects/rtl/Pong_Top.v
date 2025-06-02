//
//
//
//
//

module Pong_Top(
    i_clock,            //100MHz system clock
    i_reset,            // Reset button
    i_up_but,           // Button for moving paddle up
    i_down_but,         // Button for moving paddle down
    o_hsync,            // to hsync signal for vga port
    o_vsync,            // to vsync signal for vga port
    o_red,              // to red pin of vga port
    o_green,            // to green pin of vga port
    o_blue              // to blue pin of vga port
);

input i_clock;
input i_reset;
input i_up_but;
input i_down_but;
output o_hsync;
output o_vsync;
output o_red;
output o_green;
output o_blue;

wire displayOn;             // to recieve output from vga_controller and pass to pixel generator
wire pixel_refresh;         // to recieve output from vga handler
wire pushUp;                // to recieve debounce output
wire pushReset;             // to recieve debouncer output
wire pushDown;              // to recieve debouncer output
wire [2:0] rgb_pre;         // to recieve pixel generator output
reg [2:0] rgb_post;         // to facilitate color signal ripple
wire [9:0] horiz_pixel;     // to recieve from vga_controller and send to pixel generator
wire [9:0] vert_pixel;      // to recieve from vga_controller and send to pixel generator

// Instantiate all modules and connect them all together (pass all inputs/outputs between modules)
vga_handler vga(.i_clock(i_clock), .i_reset(pushReset), .o_display_on(displayOn), .o_hsync(o_hsync), .o_vsync(o_vsync), .o_pixel_clock(pixel_refresh), .o_h_spot(horiz_pixel), .o_v_spot(vert_pixel));
pixel_generator pixGen(.i_clock(i_clock), .i_reset(pushReset), .i_up_but(pushUp), .i_down_but(pushDown), .i_display_on(displayOn), .i_h_spot(horiz_pixel), .i_v_spot(vert_pixel), .o_color(rgb_pre));
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
