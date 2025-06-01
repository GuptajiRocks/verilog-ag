module one_tb;

  reg [7:0] A, B;
  reg [3:0] Opcode;
  wire [7:0] Result;
  wire Zero, CarryOut;

  one ONE (A, B, Opcode, Result, Zero, CarryOut);

  initial begin
    $dumpfile("one_sim.vcd");
    $dumpvars;
    // Test addition with different values
    A = 8'd5; B = 8'd3; Opcode = 4'b0000;
    #10;
    $display("A = %d, B = %d, Opcode = ADD, Result = %d, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    A = 8'd255; B = 8'd1; Opcode = 4'b0000;
    #10;
    $display("A = %d, B = %d, Opcode = ADD, Result = %d, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    // Test subtraction with different values (check for borrow)
    A = 8'd5; B = 8'd8; Opcode = 4'b0001;
    #10;
    $display("A = %d, B = %d, Opcode = SUB, Result = %d, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    A = 8'd0; B = 8'd1; Opcode = 4'b0001;
    #10;
    $display("A = %d, B = %d, Opcode = SUB, Result = %d, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    // Test logical operations
    A = 8'b10101010; B = 8'b01010101; Opcode = 4'b0010; #10;
    $display("A = %b, B = %b, Opcode = AND, Result = %b, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    A = 8'b10101010; B = 8'b01010101; Opcode = 4'b0011; #10;
    $display("A = %b, B = %b, Opcode = OR, Result = %b, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    A = 8'b10101010; B = 8'b01010101; Opcode = 4'b0100; #10;
    $display("A = %b, B = %b, Opcode = XOR, Result = %b, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);

    // Test one's complement (NOT)
    A = 8'b10101010; Opcode = 4'b0101; #10;
    $display("A = %b, Opcode = NOT, Result = %b, Zero = %b, CarryOut = %b", A, Result, Zero, CarryOut);

    // Test shift operations with different values
    A = 8'b10101010; B = 8'd2; Opcode = 4'b0110; #10
    $display("A = %b, B = %d, Opcode = SLL, Result = %b, Zero = %b, CarryOut = %b", A, B, Result, Zero, CarryOut);
    
  end

endmodule
