// alu.v
module alu(
    input [7:0] operand_a,    // Input operand A
    input [7:0] operand_b,    // Input operand B
    input [2:0] alu_opcode,   // ALU operation code
    output reg [7:0] result   // ALU result
);

// ALU operation codes
parameter ADD = 3'b000;
parameter SUB = 3'b001;
parameter AND = 3'b010;
parameter OR  = 3'b011;
parameter XOR = 3'b100;
parameter NOT = 3'b101;

always @* begin
    case (alu_opcode)
        ADD: result = operand_a + operand_b;
        SUB: result = operand_a - operand_b;
        AND: result = operand_a & operand_b;
        OR : result = operand_a | operand_b;
        XOR: result = operand_a ^ operand_b;
        NOT: result = ~operand_a;
        default: result = 8'h00; // Default case, output 0
    endcase
end

endmodule