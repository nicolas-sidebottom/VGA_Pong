// This is a rom meant to allow the animation of a round ping-pong ball as opposed to a square ball
// It is based on  documentation from David J. Marion. 
//
// Essentially, the rom is a structure where we pass in a 3-bit address (8 different values) and get out an
// 8-bit number. These 8, 8-bit numbers are high where we want to draw a pixel. We can essentially "overlay"
// this over the square ball zone (anding the ball zone and the ROM data) so that we can draw a "circular"
// object 

module Ball_Rom(
        addr,
        data
    );
    input [2:0] addr;           // 3-bit address
    output reg [7:0] data;      // 8-bit data
    
    always @ (*)
        case(addr)
            3'b000 :    data = 8'b00111100; //   ****  
            3'b001 :    data = 8'b01111110; //  ******
            3'b010 :    data = 8'b11111111; // ********
            3'b011 :    data = 8'b11111111; // ********
            3'b100 :    data = 8'b11111111; // ********
            3'b101 :    data = 8'b11111111; // ********
            3'b110 :    data = 8'b01111110; //  ******
            3'b111 :    data = 8'b00111100; //   ****
        endcase
    
endmodule