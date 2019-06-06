/* This clock divider divides an incoming clock frequency by 2N
 * The width paramter is the number of bits necessary to hold
 * the value "N" in binary, so WIDTH = 1 for N = 1. Futher examples:
 * WIDTH = 3 for N = 4
 * WIDTH = 5 for N = 18
 * http://referencedesigner.com/tutorials/verilogexamples/verilog_ex_04.php
 * was used as a reference
*/

module even_clock_divider #(parameter WIDTH = 1, parameter N = 1)
							 (input  logic 		  clk_in, reset,
							  output logic			  clk_out);

logic [WIDTH-1:0] r_reg;
logic [WIDTH-1:0] r_nxt;
logic clk_track;
							  
							  
always_ff @(posedge clk_in, posedge reset)
	begin
		if(reset)
			begin
				r_reg <= 0;
				clk_track <= 1'b0;
			end
		else if (r_nxt == N)
			begin
				r_reg <= 0;
				clk_track <= ~clk_track;
			end
		else
			r_reg <= r_nxt;
	end

assign r_nxt = r_reg+1;
assign clk_out = clk_track;

endmodule