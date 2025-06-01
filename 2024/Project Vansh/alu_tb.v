module alu_tb;

    // Inputs
    reg [7:0] operand_a;
    reg [7:0] operand_b;
    reg [2:0] alu_opcode;

    // Outputs
    wire [7:0] result;

    // Instantiate the ALU module
    alu alu_inst (
        .operand_a(operand_a),
        .operand_b(operand_b),
        .alu_opcode(alu_opcode),
        .result(result)
    );

    // Testbench stimulus
    initial begin
        $dumpfile("sim.vcd");
	    $dumpvars;
        
        
        operand_a = 8'h0A;
        operand_b = 8'h05;
        alu_opcode = 3'b000;
        #2;

        operand_a = 8'h0A;
        operand_b = 8'h05;
        alu_opcode = 3'b001;
        #2;

        operand_a = 8'h0A;
        operand_b = 8'h05;
        alu_opcode = 3'b010;
        #2;

        operand_a = 8'h0A;
        operand_b = 8'h05;
        alu_opcode = 3'b011;
        #2;

        operand_a = 8'h0A;
        operand_b = 8'h05;
        alu_opcode = 3'b100;
        #2;

        operand_a = 8'h0A;
        operand_b = 8'h00;
        alu_opcode = 3'b101;
        #2;

        $finish;
    end

endmodule


