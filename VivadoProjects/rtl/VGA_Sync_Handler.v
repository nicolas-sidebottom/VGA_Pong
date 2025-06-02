// Based on documentation fromDavid J. Marion in reference to:
// 
// Chu, Pong P.
// Wiley, 2008
// "FPGA Prototyping by Verilog Examples: Xilinx Spartan-3 Version" 
//
// Based on an FPGA with 100MHz clock
//
// VGA Specs:
// 640x480 pixel resolution at 60 Hz
// Based on VGA standards, we need "extra" resolution outside visible area (porches). This gives:
// 800 pixels/line and 525 lines/screen @60Hz ==> 800*525*60 = ~25M pixels/second
//
// This means we will need a 25 MHz signal to run the VGA protocol (need to generate horizontal sync, vertical sync, 
// pixel signal, and a display on signal)


module vga_handler(
    i_clock,
    i_reset,
    o_display_on,
    o_hsync,
    o_vsync,
    o_pixel_clock,
    o_h_spot,
    o_v_spot
);

input i_clock;          //100 MHz from Artix-7
input i_reset;          // to reset system
output o_display_on;     // this is high when we are rastering within the visible display area (640x480 area)
output o_hsync;         // horizontal sync (signals when a line is finished)
output o_vsync;         // vertical sync (signals when last line on screen is finished)
output o_pixel_clock;   // 25MHz signal for controlling pixel/second display rate
output [9:0] o_h_spot;  // counter for keeping track of what pixel we are on horizontally      
output [9:0] o_v_spot;  // counter for keeping track of what pixel we are on vertically

// We now will lay out the values we will use for sectioning the total pixel area into the visible, and 
// various non-visible sections as described by the VGA standard (Included in this folder is a schematic from
// electronics stack exchange that shows the various areas outlined in the VGA standards)

//horizontal
parameter horz_dis_area = 640;      //width of horizontal display area in pixels
parameter horz_front = 48;          // horizontal front porch width in pixels
parameter horz_back = 16;           // horizontal back porch width in pixels
parameter horz_retrace = 96;        // horizontal retrace area width in pixels
parameter horz_max = (horz_dis_area + horz_front + horz_back + horz_retrace) - 1; //max number for horz_counter
                                                                                  // horz_max = 799 pixels
//vertical (all variables descriptions are same, just for vertical)
parameter vert_dis_area = 480;      
parameter vert_front = 10;          
parameter vert_back = 33;           
parameter vert_retrace = 2;        
parameter vert_max = (vert_dis_area + vert_front + vert_back + vert_retrace) - 1; //max number for horz_counter
                                                                                  // vert_max = 524 pixels

// We now will generate the 25MHz signal we will use to drive our pixel tick and increment our counters with:
      
reg [1:0] quarter_counter = 2'b00; //2 bit number that wraps every 4 increments 00,01,10,11 --> 00, . . . 

always @ (posedge i_clock)
    begin
    if(i_reset)
        quarter_counter <= 0;
    else
        quarter_counter <= quarter_counter + 1; //increment quarter counter
    end

//essentially, because quarter counter only has 2 values (2-bit binary number) we can check for one of these 
//values to be true to give us a high signal (logical true) 1/4 of the time. Therefore if we are incrementing
//quarter_counter at a rate of 100MHz with this logic, we will get a 100MHz/4 or 25MHz signal!
wire c_25MHz = (quarter_counter == 0) ? 1 : 0; //clock output (wire so that it globally updates immediately -- not registered)
assign o_pixel_clock = c_25MHz; 

// We will now move on to the generation of the syncing and pixel location signals:
// We make two temporary registers for each sync signal to cut down on any metastability issues and visual bugs:

// counters for pixel locations (two for each to ripple for stability):
reg [9:0] h_count_pre;
reg [9:0] h_count_post;
reg [9:0] v_count_pre;
reg [9:0] v_count_post;

//  syncing signal (two for each to ripple for stability):
wire h_sync_pre;
wire v_sync_pre;
reg h_sync_post;
reg v_sync_post;

//Ripple the registers (both counters and sync signals)
always @ (posedge i_clock)
    if(i_reset)
    begin
        h_count_pre <= 0;
        v_count_pre <= 0;
        h_sync_post <= 1'b0;
        v_sync_post <= 1'b0;
    end
    else begin
        h_count_post <= h_count_pre;
        v_count_post <= v_count_pre;
        h_sync_post <= h_sync_pre;
        v_sync_post <= v_sync_pre;
    end

// Now we can actually do the counter logic to generate the signals we need:
//
// For Horizontal pixel count:
always @ (posedge i_clock)       //running on the 100MHz clock to not cause clock domain issues
    begin
    if(i_reset) begin
        h_count_pre <= 0;
    end
    else if(c_25MHz)begin
            if(h_count_post == horz_max)                //This is when we reach the end of a line!
                h_count_pre <= 0;                       
            else
                h_count_pre <= h_count_post +1;         // If not at the end of line, just increase count
            end
    end

// For vertical counter:

always @ (posedge i_clock)
    begin
        if(i_reset)begin
            v_count_pre <= 0;
        end
        else if(c_25MHz) begin
                if(h_count_post == horz_max)
                begin
                    if(v_count_post == vert_max)
                        v_count_pre <= 0;
                    else
                        v_count_pre <= v_count_post + 1;
                end
        end
    end

// We can now generate the sync pulses (we want these to be high during retrace and low everywhere else)

// horizontal sync pulse:

// we make this low when we are both:
// 1) Past the visible display area and porch
// 2) Before the end of the retrace width
assign h_sync_pre = (h_count_post >= (horz_dis_area + horz_back) && h_count_post <= (horz_dis_area + horz_back + horz_retrace - 1));

// We do the same for the vertical sync pulse:

assign v_sync_pre = (v_count_post >= (vert_dis_area + vert_back) && v_count_post <= (vert_dis_area + vert_back + vert_retrace - 1));

// And now we set the display_on signal high when we are both:
// 1) within the horizontal display area
// 2) within the vertical display area

assign o_display_on = ((h_count_post < horz_dis_area) && (v_count_post < vert_dis_area)); //1 when in dis. area 0 outside of it

//Now we just assign all of our outputs from the rippled values:

assign o_hsync = h_sync_post;
assign o_vsync = v_sync_post;
assign o_h_spot = h_count_post;
assign o_v_spot = v_count_post;
assign o_pixel_clock = c_25MHz;

endmodule