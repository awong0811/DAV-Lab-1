module displayEncoder(
	// TODO: define your input and output ports
	input [19:0] result,
	output[7:0] displayBits [5:0]
);

	
	// TODO: create signals for the six 4-bit digits
	logic [3:0] digit [5:0];
	
	// TODO: Instantiate six copies of sevenSegDigit, one for each digit (calculated below) 
	sevenSegDigit uut1 (.digit(digit[0]), .displayBits(displayBits[0]));
	sevenSegDigit uut2 (.digit(digit[1]), .displayBits(displayBits[1]));
	sevenSegDigit uut3 (.digit(digit[2]), .displayBits(displayBits[2]));
	sevenSegDigit uut4 (.digit(digit[3]), .displayBits(displayBits[3]));
	sevenSegDigit uut5 (.digit(digit[4]), .displayBits(displayBits[4]));
	sevenSegDigit uut6 (.digit(digit[5]), .displayBits(displayBits[5]));
	
	
	// The following block contains the logic of your combinational circuit
	always_comb begin
		// TODO: Convert a 20-bit input result to six individual digits (4 bits each) 
		digit[5] = result%10;
		digit[4] = (result/10)%10;
		digit[3] = (result/100)%10;
		digit[2] = (result/1000)%10;
		digit[1] = (result/10000)%10;
		digit[0] = (result/100000)%10;
	end

endmodule