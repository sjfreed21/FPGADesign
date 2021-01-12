module top(
    input       CLOCK_50,
    input [1:0] KEY,
    inout       FPGA_I2C_SDAT,
    output      FPGA_I2C_SCLK,
    output      AUD_BCLK,
    output      AUD_DACDAT,
    output      AUD_DACLRCK,
    output      AUD_XCK
);

wire locked, reset, ff1, ff2, ffr, i2c_clk;
wire [19:0] aud_addr;
wire [15:0] aud_q;
wire  [7:0] i2c_addr;
wire  [1:0] i2c_q;


audio_pll P1 (.refclk(CLOCK_50), .rst(1'b0), .outclk_0(AUD_XCK), .locked(locked));
i2c_pll P2 (.refclk(CLOCK_50), .rst(1'b0), .outclk_0(i2c_clk), .locked(locked));

assign reset = (KEY[0] & locked);
assign AUD_BCLK = AUD_XCK;

ff F1(.data(1'b1), .clk(CLOCK_50), .reset(reset), .value(ff1));
ff F2(.data(ff1), .clk(CLOCK_50), .reset(reset), .value(ff2));
ff F3(.data(ff2), .clk(CLOCK_50), .reset(reset), .value(ffr));

///////////////////////// I2C Section /////////////////////////

i2c_count C1 (.clock(i2c_clk), .in(FPGA_I2C_SDAT), .address(i2c_addr));
i2c_mem M1 (.address(i2c_addr), .clock(i2c_clk), .q(i2c_q));

assign FPGA_I2C_SCLK = i2c_q[1] ? 1'bz : i2c_q[1];
assign FPGA_I2C_SDAT = i2c_q[0] ? 1'bz : i2c_q[0];

///////////////////////// DAI Section /////////////////////////

aud_count C2 (.clock(AUD_XCK), .address(aud_addr));
data M2 (.address(aud_addr), .clock(AUD_XCK), .q(aud_q));

wire [249:0] data = {aud_q, aud_q, 217'b0};

clkout O1 (.data(data), .clk(AUD_XCK), .out(AUD_DACDAT)); 
bclk O2 (.bclk(AUD_BCLK), .out(AUD_DACLRCK));

endmodule