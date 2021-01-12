module nsl (
    input            in,
    input      [3:0] cs,
    output reg [3:0] ns
);

`include "params.vh"

always @(*)
    case (cs)
        RESET: ns = START;
        START: ns = SENDA;
        SENDA: if (in == 1) ns = ACK_1;
        ACK_1: if (in == 1) ns = SEND1;
               else ns = RESET;
               
        STOPC: if (in == 1) ns = RESET;
        default: ns = RESET;

    endcase

endmodule