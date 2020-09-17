module top(
    input        CLOCK_50,
    input  [1:0] KEY,
    input  [9:0] SW,
    output [7:0] VGA_R,
    output [7:0] VGA_G,
    output [7:0] VGA_B,
    output       VGA_CLK,
    output       VGA_BLANK_N,
    output       VGA_HS,
    output       VGA_VS,
    output       VGA_SYNC_N
);

wire reset, pll_clk, pll_lock, hSync, vSync, vActive;
reg [9:0] hPixel;
reg [8:0] vLine;
reg [7:0] RED, GRN, BLU;

assign VGA_BLANK_N = 0'b1;
assign VGA_SYNC_N = 0'b0;

video_pll C1 (.refclk(CLOCK_50), .rst(reset), .outclk_0(pll_clk), .locked(pll_lock));

assign reset = KEY[0];      // negated based on button? tie in pll_lock?
assign VGA_CLK = pll_clk;

vtc V1 (.clock(pll_clk), .rst(reset), .vActive(vActive), .hSync(hSync), .vSync(vSync), .hPixel(hPixel), .vLine(vLine));

assign VGA_HS = hSync;
assign VGA_VS = vSync;

pg P1 (.hPixel(hPixel), .vLine(vLine), .SW(SW), .RED(RED), .GRN(GRN), .BLU(BLU));

assign VGA_R = RED;
assign VGA_G = GRN;
assign VGA_B = BLU;

endmodule