module clkout(
    inout [249:0] data,
    input       clk,
    output reg  out,
    output reg  done
);

reg [249:0] dreg;

always @(posedge clk)
begin
    dreg = data;
    out = dreg[249];
    dreg = {dreg[248:0] + 1'b0};
end
endmodule