
module Lab7 (
	clk_clk,
	pio_0_ex_export,
	pio_1_ex_in_port,
	pio_1_ex_out_port,
	pio_2_ex_export);	

	input		clk_clk;
	output	[7:0]	pio_0_ex_export;
	input		pio_1_ex_in_port;
	output		pio_1_ex_out_port;
	input	[9:0]	pio_2_ex_export;
endmodule
