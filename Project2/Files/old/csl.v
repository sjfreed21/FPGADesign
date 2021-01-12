module csl (
    input            clock,
    input            reset,
    input      [3:0] ns,
    output reg [3:0] cs
);

`include "params.vh"

always @ (posedge clock, negedge reset)
    if (reset == 0)
        cs <= RESET;
    
    else
        cs <= ns;

endmodule