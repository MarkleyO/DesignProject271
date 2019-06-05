//Need to change bit size - I wasn't sure what it needed to be
//If selector is 1, output = nes controller
//If selector is 0, output = ps2 keyboard

module mux(input logic[3:0] nes, ps2,
				input logic selector,
	   output logic[3:0] outputData);
				
		assign outputData = selector ? nes : ps2;
		
endmodule

