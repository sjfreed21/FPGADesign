`timescale 1ns/100ps
module tb_top();

reg        CLOCK_50;
reg        KEY;
reg  [2:0] SW;
wire [7:0] VGA_R, VGA_G, VGA_B;
wire       VGA_CLK, VGA_BLANK_N, VGA_HS, VGA_VS, VGA_SYNC_N;

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
   #10 CLOCK_50 = ~CLOCK_50;

initial
  begin
  CLOCK_50 = 1'b0;
  KEY = 1'b0;
  SW[2:0] = 3'b100;
  #500;
  KEY = 1'b1;
  #5000;
  SW[2:0] = 3'b110;
  #5000;
  SW[2:0] = 3'b011;
  #5000;
  $stop;
  end

endmodule