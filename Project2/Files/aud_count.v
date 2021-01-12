module aud_count(
    input        clock,
    output [19:0] address
);

reg [19:0] count = 0;

always @ (negedge clock)
    if (count >= 240255)
        count = 0;
    else
        count = count + 1;

assign address = count;

endmodule