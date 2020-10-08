module top(
    input        CLOCK_50,
    input  [0:0] KEY,
    input  [2:0] SW,
    output [7:0] VGA_R,
    output [7:0] VGA_G,
    output [7:0] VGA_B,
    output       VGA_CLK,
    output       VGA_BLANK_N,
    output       VGA_HS,
    output       VGA_VS,
    output       VGA_SYNC_N
);

`define simulation
`include "params.vh"

wire reset, pll_clk, pll_lock, hSync, vSync, vActive, ff1, ff2, ffr;
wire [9:0] hPixel, vLine;
wire [7:0] RED, GRN, BLU;

assign VGA_BLANK_N = 1'b1;
assign VGA_SYNC_N = 1'b0;

video_pll C1 (.refclk(CLOCK_50), .rst(~KEY[0]), .outclk_0(pll_clk), .locked(pll_lock));

assign reset = (KEY[0] & pll_lock);

ff F1(.data(1'b1), .clk(CLOCK_50), .reset(reset), .value(ff1));
ff F2(.data(ff1), .clk(CLOCK_50), .reset(reset), .value(ff2));
ff F3(.data(ff2), .clk(CLOCK_50), .reset(reset), .value(ffr));

assign VGA_CLK = pll_clk;

vtc #(.hArea(hArea), .hFPorch(hFPorch), .hBPorch(hBPorch), .hSTime(hSTime), .vArea(vArea), .vFPorch(vFPorch), .vBPorch(vBPorch), .vSTime(vSTime)) 
    V1 (.clock(pll_clk), .rst(ffr), .vActive(vActive), .hSync(hSync), .vSync(vSync), .hPixel(hPixel), .vLine(vLine));

assign VGA_HS = hSync;
assign VGA_VS = vSync;

pg #(.min(min), .max(max)) P1 (.hPixel(hPixel), .vLine(vLine), .SW(SW), .RED(RED), .GRN(GRN), .BLU(BLU));

assign VGA_R = RED;
assign VGA_G = GRN;
assign VGA_B = BLU;

endmodule