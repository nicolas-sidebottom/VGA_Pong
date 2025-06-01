`timescale 1ns / 1ps
`include "VGA_Sync_Handler.v"

module  VGA_Sync_HandlerTB;

//define signals from test bench

reg tb_clock = 1'b0;
reg tb_reset = 1'b1;

wire tb_display_on;
wire tb_hsync;
wire tb_vsync;
wire tb_pixel_clock;
wire [9:0] tb_h_spot;
wire [9:0] tb_v_spot;

vga_handler UUT
(
    .i_clock(tb_clock),
    .i_reset(tb_reset),
    .o_display_on(tb_display_on),
    .o_hsync(tb_hsync),
    .o_vsync(tb_vsync),
    .o_pixel_clock(tb_pixel_clock),
    .o_h_spot(tb_h_spot),
    .o_v_spot(tb_v_spot)
);

initial begin
    $dumpfile("VGA_Sync_HandlerTB.vcd"); //dump file name
    $dumpvars(0, VGA_Sync_HandlerTB);  //dumps all signals in test bench
end

// Here we are generating a 100kHz clock signal. We can do this by using # to pause for the
// correct number of loops so that our period we are using to define tb_clock is equal to the period
// of a 100kHz clock --> 100kHz = 1/100,000 seconds = 0.00001 seconds or 10us. it takes 2 toggles for 
//a complete period so we divide the waitcount by 2. This means we need to wait for 10 us so we use #5000

always #5 tb_clock <= !tb_clock;  //toggle the value from 0 -> 1 -> 0 -> ... makes square wave => Clock signal!

// run code that we run only once to set up test environment. This is why we use "initial"
initial begin

    $display("Testing VGA_Handler");

    tb_reset <= 1'b0;
    #200000
    tb_reset <= 1'b1;

    $display("Test Complete");  //to make sure test finishes!
    $finish;

end

endmodule