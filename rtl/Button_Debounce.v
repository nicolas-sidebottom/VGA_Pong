// debouncer to ensure our button reads are always stable and we never have questions of metastability
// just use a simple shift register -- three layers for very high stability 

module button_Debouncer(
    i_clock,    // 100MHz internal from the Artix-7
    i_button,
    o_button
);

input i_clock;
input i_button;
output o_button;

reg temp1,temp2,temp3;      //temporary registers to ripple the button input 

always @ (posedge i_clock)
    begin
        temp1 <= i_button;
        temp2 <= temp1;
        temp3 <= temp2;
    end

    assign o_button = temp3;

endmodule