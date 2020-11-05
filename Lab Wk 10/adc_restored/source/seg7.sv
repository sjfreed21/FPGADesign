// Simple 7 segment decoder for DE10-Standard board.
// Decimal points are not connected.

module seg7	(input logic [3:0] din, output logic [6:0] segs);

always_comb
	unique case(din)
		4'h0:     segs = 7'b1000000;		    
        4'h1:     segs = 7'b1111001;	
		4'h2:     segs = 7'b0100100; 	
		4'h3:     segs = 7'b0110000; 	
		4'h4:     segs = 7'b0011001; 
		4'h5:     segs = 7'b0010010; 
		4'h6:     segs = 7'b0000010; 	
		4'h7:     segs = 7'b1111000; 	
		4'h8:     segs = 7'b0000000; 	
		4'h9:     segs = 7'b0011000; 
		4'ha:     segs = 7'b0001000;
		4'hb:     segs = 7'b0000011;
		4'hc:     segs = 7'b1000110;
		4'hd:     segs = 7'b0100001;
		4'he:     segs = 7'b0000110;
		4'hf:     segs = 7'b0001110;
        default:  segs = 7'b1111111;
	endcase

endmodule