module sevenSegDigit(
	// TODO: define your input and output ports
	input [3:0] digit,       // 4-bit digit input (0-9)
	output reg [7:0] displayBits // 8-bit active-low output for the display
);

	// The following block contains the logic of your combinational circuit
	always_comb begin
		// TODO: fill out the case construct below to output the correct seven-segment display bits
		case (digit)
			4'b0000: displayBits = 8'b11000000; // Display 0
			4'b0001: displayBits = 8'b11111001; // Display 1
			4'b0010: displayBits = 8'b10100100; // Display 2
			4'b0011: displayBits = 8'b10110000; // Display 3
			4'b0100: displayBits = 8'b10011001; // Display 4
			4'b0101: displayBits = 8'b10010010; // Display 5
			4'b0110: displayBits = 8'b10000010; // Display 6
			4'b0111: displayBits = 8'b11111000; // Display 7
			4'b1000: displayBits = 8'b10000000; // Display 8
			4'b1001: displayBits = 8'b10010000; // Display 9
			default: displayBits = 8'b11111111; // Default (all segments off)
		endcase
	end

endmodule
