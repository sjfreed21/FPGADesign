module top(
    input           CLOCK_50,
    input  [9:0]    SW,
    output [9:0]    LEDR
);

wire [9:0] pio2;
wire [7:0] pio0;
wire pio1;

Lab7 L1 (.clk_clk(CLOCK_50), .pio_0_ex_export(pio0), .pio_1_ex_out_port(pio1), .pio_2_ex_export(SW));

assign LEDR[7:0] = pio0;
assign LEDR[9] = pio1;
assign LEDR[8] = 0;

endmodule