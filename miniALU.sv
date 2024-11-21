module miniALU (
    input [3:0] op1,        // First operand
    input [3:0] op2,        // Second operand
    input operation,        // Selects between addition/subtraction and shift
    input sign,             // Selects between positive and negative operation
    output reg [19:0] result // 20-bit output for the result
);

    always_comb begin
        case (operation)
            1'b0: // Addition/Subtraction mode
                if (sign == 1'b0) begin
                    // Addition
                    result = op1 + op2;
                end else begin
                    // Subtraction
                    result = op1 - op2;
                end

            1'b1: // Shift mode
                if (sign == 1'b0) begin
                    // Arithmetic Left Shift
                    result = op1 <<< op2;
                end else begin
                    // Arithmetic Right Shift
                    result = op1 >>> op2;
                end
        endcase
    end

endmodule