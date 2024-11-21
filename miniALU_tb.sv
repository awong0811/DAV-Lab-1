`timescale 1ns/1ns

module miniALU_tb(output reg [19:0] result);

    // Declare inputs as registers and outputs as wires
    reg [3:0] op1;
    reg [3:0] op2;
    reg operation;
    reg sign;

    // Instantiate the ALU module
    miniALU uut (
        .op1(op1),
        .op2(op2),
        .operation(operation),
        .sign(sign),
        .result(result)
    );

    // Task to perform addition operation
    task addition_operation;
        begin
            #5 operation = 0;
            #5 sign = 0;
        end
    endtask

    // Task to perform subtraction operation
    task subtraction_operation;
        begin
            #5 operation = 0;
            #5 sign = 1;
        end
    endtask

    // Task to perform left shift
    task left_shift_operation;
        begin
            #5 operation = 1;
            #5 sign = 0;
        end
    endtask

    // Task to perform right shift
    task right_shift_operation;
        begin
            #5 operation = 1;
            #5 sign = 1;
        end
    endtask
// Initial block to test different cases
    initial begin
		  op2=3;
			for (integer i = 0; i < 15; i = i + 1) begin
				op1=i;
				addition_operation;
				subtraction_operation;
				left_shift_operation;
				right_shift_operation;
			end
        $stop; // Stop simulation
    end

endmodule