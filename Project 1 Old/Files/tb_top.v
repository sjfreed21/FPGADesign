`timescale 1ns/100ps
module tb_top();

reg        CLOCK_50, VGA_CLK, VGA_BLANK_N, VGA_HS, VGA_VS, VGA_SYNC_N;
reg  [1:0] KEY;
reg  [9:0] SW;
reg  [8:0] VGA_R, VGA_G, VGA_B;

top DUT
(
  .CLOCK_50(CLOCK_50),
  .KEY(KEY),
  .SW(SW),
  .VGA_R(VGA_R),
  .VGA_G(VGA_G),
  .VGA_B(VGA_B),
  .VGA_CLK(VGA_CLK),
  .VGA_BLANK_N(VGA_BLANK_N),
  .VGA_HS(VGA_HS),
  .VGA_VS(VGA_VS),
  .VGA_SYNC_N(VGA_SYNC_N)
);

always
   #100 CLOCK_50 = ~CLOCK_50;

initial
  begin
  CLOCK_50 = 1'b0;
  KEY = 2'b10;
  SW[9:0] = {7'b0, 1'b1, 2'b0};
  #5000;
  KEY = 2'b11;
  end

endmodule