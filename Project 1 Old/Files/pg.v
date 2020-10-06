module pg(
    input  [9:0] hPixel,
    input  [8:0] vLine,
    input  [9:0] SW,
    output [7:0] RED,
    output [7:0] GRN,
    output [7:0] BLU
);

reg val = 1'b0;

always @(hPixel)
begin
    if(hPixel > 100 && hPixel < 200)
        val = 1'b1;
    else
        val = 1'b0;
end

assign RED = (val & SW[2]) ? 8'b1111_1111 : 8'b0000_0000;
assign GRN = (val & SW[1]) ? 8'b1111_1111 : 8'b0000_0000;
assign BLU = (val & SW[0]) ? 8'b1111_1111 : 8'b0000_0000;

endmodule