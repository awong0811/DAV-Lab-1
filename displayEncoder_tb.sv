`timescale 1ns/1ns

module displayEncoder_tb(output[7:0] displayBits [5:0]);

	reg [19:0] result;
	
	displayEncoder uut (
		.result(result),
		.displayBits(displayBits)
	);
	
	initial begin
		#5 result = 123456;
		#5 result = 280659;
		#5 result = 431078;
		#5
		$stop;
	end
	
endmodule