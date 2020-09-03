`timescale 1 ns / 100 ps

// NOTE:
// The timescale probably should have been further adjusted in order to make ModelSim viewing easier. The screenshot in the Lab1 directory
// was taken after zooming in to the first ~0.03 ms, since otherwise the waveform of the counter would be too small to easily see. 

module tb_counter();

reg        CLOCK_50;
reg  [1:0] KEY;
wire [9:0] LEDR;
reg  [9:0] SW;

ECEN3002_Lab1 DUT
(
  .CLOCK_50(CLOCK_50),
  .KEY(KEY),
  .LEDR(LEDR),
  .SW(SW)
);

always
  #100 CLOCK_50 = ~CLOCK_50;
  
initial
  begin
	CLOCK_50 = 1'b0;
	KEY[0] = 1'b0;
	KEY[1] = 1'b1;
	SW[9:0] = 10'b01_0101_0101;
  #5000;
  KEY[0] = 1'b1;
  #10000;
  KEY[1] = 1'b0;
  #1000;
  KEY[1] = 1'b1;
  #10000;
  end

endmodule