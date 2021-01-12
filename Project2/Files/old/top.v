module top(
    input       CLOCK_50,
    input [0:0] KEY,
    output      AUD_BCLK,
    output      AUD_DACDAT,
    output      AUD_DACLRCK,
    inout       FPGA_I2C_SDAT,
    output      FPGA_I2C_SCLK,
    output      AUD_XCK
);

`include "params.vh"

wire locked, reset, ff1, ff2, ffr, in, sda;
wire [23:0] addr;
wire [15:0] q;
wire [3:0] cs, ns, data, reg_no = 0;

audio_pll C1 (.refclk(CLOCK_50), .rst(1'b0), .outclk_0(AUD_XCK), .locked(locked));

assign reset = (KEY & locked);
assign AUD_BCLK = AUD_XCK;

ff F1(.data(1'b1), .clk(CLOCK_50), .reset(reset), .value(ff1));
ff F2(.data(ff1), .clk(CLOCK_50), .reset(reset), .value(ff2));
ff F3(.data(ff2), .clk(CLOCK_50), .reset(reset), .value(ffr));

///////////////////////// I2C Section /////////////////////////

csl S1 (.clock(FPGA_I2C_SCLK), .reset(ffr), .ns(ns), .cs(cs));

nsl S2 (.in((in & FPGA_I2C_SDAT)), .cs(cs), .ns(ns));

ol S3 (.cs(cs), .reg_no(reg_no), .clk(FPGA_I2C_SCLK), .data(data));

clkout S4 (.data(data), .clk(FPGA_I2C_SCLK), .out(sda), .done(in));

assign FPGA_I2C_SDAT = sda ? 1'bz : sda;

///////////////////////// DAI Section /////////////////////////

data DA (.address(addr), .clock(AUD_XCK), .q(q));

// clkout DB (.data(q), .clk(AUD_XCK), .out(AUD_DACDAT)); // Resize for larger data

endmodule