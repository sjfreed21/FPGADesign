`timescale 1ns/100ps
module tb_adc();

logic        CLOCK_50;
logic [3:0]  KEY;
logic [9:0]  SW;
logic [9:0]  LEDR;
logic        ADC_SCLK; 
logic        ADC_DIN;
logic        ADC_DOUT;
logic        ADC_CONVST;
logic [6:0]  HEX5, HEX4, HEX3, HEX2;
logic [15:0] GPIO;

adc DUT (.*);

always
    #10 CLOCK_50 = ~CLOCK_50;

initial 
begin
    CLOCK_50 = 1'b0;
    KEY = 4'b0;
    SW = 10'b0011001100;
    ADC_DOUT = 1'b0;
    #5000;
    $stop;
end

endmodule