module ff(
    input data,
    input clk,
    input reset,
    output value
);
reg val = 1'b0;

always @(posedge clk or posedge reset)
begin
    if(reset == 1'b1)
        val = 1'b0;
    else
        val = data;
end

assign value = val;
endmodule
