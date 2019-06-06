module ps2decoder(input logic[10:0]buttonInput,
						output logic buttonOutput);
						
	always_comb
		case(buttonInput)
		
			0:		buttonOutput = 11'b000_1110_0001; //button a
			1: 	buttonOutput = 11'b011_1111_0001; //button d
			2: 	buttonOutput = 11'b000_1001_0011; //button e
			3: 	buttonOutput = 11'b011_0101_0011; //button f
			4: 	buttonOutput = 11'b000_1011_0001; //button g
			5: 	buttonOutput = 11'b010_1101_0011; //button r
			6: 	buttonOutput = 11'b010_1110_0011; //button s
			7: 	buttonOutput = 11'b000_1101_0001; //button t
			8: 	buttonOutput = 11'b010_1110_0011; //button w
			default: buttonOutput = 11'b000_0000_0000;
			
		endcase
endmodule
