module ol(
    input  [3:0]  cs,
    inout  reg [3:0]  reg_no,
    input         clk,
    output [7:0]  data
);

`include "params.vh"

reg [7:0] d;

always @ (*)
    if (cs == SENDA)
        d = 8'h34;
    else if (cs == SEND1)
    begin
        if (reg_no == 0) d = 8'b000_0111_0;
        if (reg_no == 1) d = 8'b000_0010_1;
        if (reg_no == 2) d = 8'b000_0110_0;
        if (reg_no == 3) d = 8'b000_1000_0;
        if (reg_no == 4) d = 8'b000_1001_1;
        if (reg_no == 5) d = 8'b000_1000_0;
        if (reg_no == 6) d = 8'b000_1111_0;
    end
    else if (cs == SEND2)
    begin
        if (reg_no == 0) d = 8'b0001_0011;
        if (reg_no == 1) d = 8'b0111_1001;
        if (reg_no == 2) d = 8'b0000_0111;
        if (reg_no == 3) d = 8'b0000_0001;
        if (reg_no == 4) d = 8'b1111_1111;
        if (reg_no == 5) d = 8'b0001_0010;
        if (reg_no == 6) d = 8'b0; 
        reg_no = reg_no + 1;
    end
    else 
        d = 8'b0;

assign data = d;

endmodule