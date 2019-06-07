module ps2decoder(input logic[10:0]buttonInput,
		  output logic[8:0] buttonOutput);
	//buttons correspond to output bits 0-8 in the order that they appear, a corresponding to bit 0
	//and so on until bit 8, default is no leds lit up. a 1 indicates activation,
	//a 0 indicates the opposite
						
	always_comb
		case(buttonInput)
		
			225:	buttonOutput = 9'b1_0000_0000;//buttonOutput = 11'b000_1110_0001; //button a 225
			1009: 	buttonOutput = 9'b0_1000_0000;//buttonOutput = 11'b011_1111_0001; //button d 1009
			147: 	buttonOutput = 9'b0_0100_0000;//buttonOutput = 11'b000_1001_0011; //button e 147
			851: 	buttonOutput = 9'b0_0010_0000;//buttonOutput = 11'b011_0101_0011; //button f 851
			177: 	buttonOutput = 9'b0_0001_0000;//buttonOutput = 11'b000_1011_0001; //button g 177
			723: 	buttonOutput = 9'b0_0000_1000;//buttonOutput = 11'b010_1101_0011; //button r 723
			739: 	buttonOutput = 9'b0_0000_0101;//buttonOutput = 11'b010_1110_0011; //button s 739
			209: 	buttonOutput = 9'b0_0000_0010;//buttonOutput = 11'b000_1101_0001; //button t 209
			739: 	buttonOutput = 9'b0_0000_0101;//buttonOutput = 11'b010_1110_0011; //button w 739
			default: buttonOutput = 9'b0_0000_0000;//buttonOutput = 11'b000_0000_0000; // 0
			
		endcase
endmodule
