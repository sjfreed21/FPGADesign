module ECEN3002_Lab1(
    input 		          		CLOCK_50,
	input 		     [1:0]		KEY,
    input 		     [9:0]		SW,
	output		     [9:0]		LEDR
);

reg [2:0] sOut;
wire KEY0, KEY1;

issp_test I1 (.probe(KEY), .source(sOut));

assign KEY0 = KEY[0] | sOut[0];
assign KEY1 = KEY[1] | sOut[1];

parameter clock_div = 5_000_000;        // edited for Modelsim sim. 5_000_000 for normal running, 5 for ModelSim.
parameter clock_div_width = 32;         // also edited for Modelsim sim. 32 for normal running, 3 for ModelSim.

reg [9:0] count;
reg [clock_div_width-1:0] div_counter;
reg slow_clk;

// create 5 Hz clock
always @(negedge KEY0, posedge CLOCK_50)
    if (KEY0 == 0)
        begin
            div_counter <= 0;
            slow_clk <= 0;
        end
    else if (CLOCK_50 == 1)
        begin
            if (div_counter == clock_div)
                begin
                    div_counter <= 0;
                    slow_clk <= ~slow_clk;
                end
            else
                div_counter <= div_counter + 1;
        end

// create counter
always @(negedge KEY0, negedge KEY1, posedge slow_clk)
    if (KEY0 == 0)
        count <= 0;
    else if (KEY1 == 0)
        count[9:0] <= SW[9:0];
    else
        count <= count + 1;

assign LEDR[9:0] = count[9:0];

endmodule