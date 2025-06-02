//
//
//
//
//

module pixel_generator(
    i_clock,
    i_reset,
    i_up_but,
    i_down_but,
    i_display_on,
    i_h_spot,
    i_v_spot,
    o_color
);
 
input i_clock;                  //100MHz clock (internal from Artix-7)
input i_reset;                  // system reset
input i_up_but;                 // button input for pong paddle to move up
input i_down_but;               // ** move down
input i_display_on;             // signal that is high when currently drawing in visible area of display
input [9:0] i_h_spot;           // location of current pixel horizontally
input [9:0] i_v_spot;           // location of current pixel vertically
output reg [2:0] o_color;      // color of pixel (dont have onboard DAC, so am just using 3-bit number -- one bit for each color)

//Define maximum display area pixel values:
parameter horz_max = 639;
parameter vert_max = 479;

// Create a 60Hz tick for refresh. Can just base this off of when we hit the very bottom right of our screen.
// This is because VGA protocol always rasters from top left of screen to bottom right, just like a book
// Each line is written horizontally, then once the end is reached, it jumps back to the start and
// jumps down one line. We know that since we are runnning at 60Hz (math to calculate pixel rate) we know
// that at the very end of our visible display area, we will be at 60Hz:

wire refresh60Hz;
assign refresh60Hz = ((i_v_spot == 481) && (i_h_spot == 0)) ? 1 : 0; //pulses at very end of visible area

// We can now define parameters for the zone taken up by the wall (10 pixels wide)
// Only care about horizontal as we know wall takes up everything vertically:
parameter horz_wall_L = 10;
parameter horz_wall_R = 30;

//Now define pixel areas for paddle:

//horizontal
parameter horz_paddle_L = 610;
parameter horz_paddle_R = 614;

//vertical -- this will be more complex because it will be moving based on button input.
// will use same ripple technique from VGA_Sync_Handler to reduce graphical bugs:
wire [9:0] vert_paddle_T;
wire [9:0] vert_paddle_B;
reg [9:0] vert_paddle_post;
reg [9:0] vert_paddle_pre;

// Paddle height
parameter paddleHeight = 75;

//Paddle movement speed
parameter paddleSpeed = 2;

//Now we can work on the ball:
//define an 8x8 pixel square:
parameter ball_dimension = 8;

//make signals for the horizontal and vertical boundaries (need 10 bits as our max pixel # is 800):
wire [9:0] vert_ball_T;
wire [9:0] vert_ball_B;
wire [9:0] horz_ball_L;
wire [9:0] horz_ball_R;

// And make registers to track the ball location over time. Basing the position on the location of
// top leftmost corner:
reg [9:0] vert_ball_corner;
reg [9:0] horz_ball_corner;

// Now we make some wire signals so that we can ripple values into the corner registers (again to reduce any 
// potential metastability issues):
wire [9:0] vert_ball_c_pre;
wire [9:0] horz_ball_c_pre;

// Now we make the registers for tracking the ball speed (we make two registers for each in order to
// ripple this)
reg [9:0] horz_speed_pre;
reg [9:0] horz_speed_post;
reg [9:0] vert_speed_pre;
reg [9:0] vert_speed_post;

// Now we define the distance the ball moves every time we move it (this is essentially how fast the
// ball moves on screen)
parameter ball_speed_pos = 2;
parameter ball_speed_neg = -2;

// We can now define the signals we need to access and read the rom
wire [2:0] rom_address; // 3-bit address for rom row
wire [2:0] rom_column;  // 3-bit address for rom column
reg [7:0] rom_out;      // 8-bit register to store rom data accessed from address+column
wire rom_flag;          // flag to signal when rom is 1 or 0 for drawing ball

// Now we can define the ball rom image:
always @ (*) 
    case(rom_addr)
        3'b000 :    rom_out = 8'b00111100; 
        3'b001 :    rom_out = 8'b01111110; 
        3'b010 :    rom_out = 8'b11111111; 
        3'b011 :    rom_out = 8'b11111111; 
        3'b100 :    rom_out = 8'b11111111; 
        3'b101 :    rom_out = 8'b11111111; 
        3'b110 :    rom_out = 8'b01111110; 
        3'b111 :    rom_out = 8'b00111100; 
    endcase

// now some 3-bit rgb numbers for each of the objects on screen
wire [2:0] wall_rgb = 3'b111;         // white wall
wire [2:0] ball_rgb = 3'b001;         // green ball
wire [2:0] paddle_rgb = 3'b111;       // white paddle
wire [2:0] background_rgb = 3'b000;  // black background

// Now we can ripple through all of the registers:
always @ (posedge i_clock or posedge i_reset)
    if(i_reset)
    begin
        horz_speed_post <= 10'h002;     // This sets the horizontal speed to a hex value of 2
        vert_speed_post <= 10'h002;     // This sets the vertical speed to a hex value of 2
        vert_paddle_post <= 0;          // Set ball and paddle location to zero
        vert_ball_corner <= 0;
        horz_ball_corner <= 0;
    end
    else begin                          // Now we will ripple all values through the shift registers
        horz_speed_post <= horz_speed_pre;     
        vert_speed_post <= vert_speed_pre;     
        vert_paddle_post <= vert_paddle_pre;          
        vert_ball_corner <= vert_ball_c_pre;
        horz_ball_corner <= horz_ball_c_pre;
    end

// We can now make some flags for locating the ball relative to the other objects on screen
wire wall_c;    // wall contact
wire pad_c;     // paddle contact
wire sq_ball_c; // square ball outline contact
wire ball_c;    // round ball contact

// Now we can start to locate the flags using horizontal and vertical pixel locations:
// for wall contact:
assign wall_c = ((horz_wall_L <= i_h_spot) && (i_h_spot <= horz_wall_R)) ? 1 : 0;
// for the paddle:
assign vert_paddle_T = vert_paddle_post;                    // set paddle top position
// paddle bottom position (add paddleHeight as VGA writes from top to bottom, so larger vert# is lower on screen)
assign vert_paddle_B = vert_paddle_T + paddleHeight - 1;
// Now, set the contact flag for the paddle high if our currently drawn pixel is in the paddle bounds    
assign pad_c = (horz_paddle_L <= i_h_spot) && (i_h_spot <= horz_paddle_R) && (vert_paddle_T <= i_v_spot) && (i_v_spot <= vert_paddle_B);

// we can now wire the logic for moving the paddle:

always @ (*)
    begin
        vert_paddle_pre = vert_paddle_post; // this is when the paddle is stationary
        if (refresh60Hz)
            if(i_up_but & (vert_paddle_T > paddleSpeed))  //we check to see if the paddle top is higher because big vert# means lower on screen 
                vert_paddle_pre = vert_paddle_post - paddleSpeed;   //move up by paddleSpeed pixels
            else
            if(i_down_but & (vert_paddle_B < (vert_max - paddleSpeed))) //need to make sure we dont go off screen
                vert_paddle_pre = vert_paddle_post + paddleSpeed;       // move down by paddleSpeed pixels
    end

// Now we can impliment the ball motion:

// first assign the ball boundaries so we know where the 8x8 pixel ball zone is:
assign horz_ball_L = horz_ball_corner;
assign vert_ball_T = vert_ball_corner;
assign horz_ball_R = horz_ball_L + ball_dimension - 1;
assign vert_ball_B = vert_ball_T + ball_dimension - 1;
// now we can implement logic to produce a signal which is high when in the 8x8 ball boundaries. This is 
// essentially the same logic we used previously for the paddle contact:
assign sq_ball_c = (horz_ball_L <= i_h_spot) && (i_h_spot <= horz_ball_R) && (vert_ball_T <= i_v_spot) && (i_v_spot <= vert_ball_B);
// Now comes the part where we make the ball round -- we first "overlay" the rom onto the current 8x8 ball 
// area. We can do this by taking an 8-bit slice of the screen area as follows:
assign rom_addr = i_v_spot[2:0] - vert_ball_T[2:0];     //locates the rom to the top of the ball
assign rom_column = i_h_spot[2:0] - horz_ball_L[2:0];    // locates rom to left of ball. . . now top leftmost corner!
assign rom_flag = rom_out[rom_column];                  // this is the signal that tells us what pixels should be on in 8x8 area to make a circle
// now we can make the flag for drawing the ball in general which will animate a round ball:
assign ball_c = sq_ball_c && rom_flag;  // is true when we are both in the 8x8pixel ball area and the rom data is true

//now the ball position can be updated:
assign horz_ball_c_pre = (refresh60Hz) ? horz_ball_corner + horz_speed_post : horz_ball_corner;
assign vert_ball_c_pre = (refresh60Hz) ? vert_ball_corner + vert_speed_post : vert_ball_corner;

// Lastly, we can control the ball's change of direction on contact with a surface. Essentially, we know that there
// are only 4 surfaces the ball can hit -- right wall, top wall, bottom wall, and paddle. When hitting a 
// vertical surface, we just invert the horizontal speed. when hitting a horizontal surface we invert the
// vertical speed

always @ (*)
    begin
        horz_speed_pre = horz_speed_post;
        vert_speed_pre = vert_speed_post;
        if(vert_ball_T < 1)                          // ball hit the "top"
            vert_speed_pre = ball_speed_pos;         // remember, for vertical VGA indices, positive moves down
        else
        if(vert_ball_B > vert_max)                   // ball hit the "bottom"
            vert_speed_pre = ball_speed_neg;
        else
        if(horz_ball_L <= horz_wall_R)               // ball hit the wall
            horz_speed_pre = ball_speed_pos;
        else 
        if((horz_paddle_L <= horz_ball_L) && (horz_ball_R <= horz_paddle_R) && (vert_paddle_T <= vert_ball_B) && (vert_ball_T <= vert_paddle_B)) //hit paddle
            horz_speed_pre = ball_speed_neg;          // ball moves left
    end     

// Lastly, we can do the color control. We just have an asynchronus multiplexer controlling all 
// of the pixel colors based off of the "contact" flags we defined earlier:

always @ (*)
    if (~i_display_on)              // display is off
        o_color = 3'b000;           // all zero -- black screen
    else
    if (wall_c)                     // in wall zone
        o_color = wall_rgb;         // set pixel to wall color
    else
    if (pad_c)                      // in paddle zone
        o_color = paddle_rgb;       // set pixel to paddle color
    else
    if (ball_c)                     // in round ball area
        o_color = ball_rgb;         // set pixel to ball color
    else
        o_color = background_rgb;   // if not in zone of any structures, just set pixel to background color

endmodule 