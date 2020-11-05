module component_tutorial (CLOCK_50, KEY, HEX0, HEX1, HEX2, HEX3);

input CLOCK_50;
input [0:0] KEY;
output [0:6] HEX0, HEX1, HEX2, HEX3;
wire [15:0] to_HEX;

embedded_system U0 ( .clk_clk(CLOCK_50), .reset_reset_n(KEY[0]), .to_hex_readdata(to_HEX));

hex7seg H0(to_HEX[3:0], HEX0);
hex7seg H1(to_HEX[7:4], HEX1);
hex7seg H2(to_HEX[11:8], HEX2);

endmodule