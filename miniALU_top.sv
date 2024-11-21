module miniALU_top (
	input [9:0] switches,
	//output [9:0] leds,
	output [7:0] displayBits [0:5]
);

	logic [19:0] result;
	miniALU mini_instance1(switches[9:6], switches[5:2], switches[1], switches[0], result);
	displayEncoder disp_instance1(result, displayBits);
	
endmodule