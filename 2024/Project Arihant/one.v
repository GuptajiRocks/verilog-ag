module one (
  input [7:0] A,
  input [7:0] B,
  input [3:0] Opcode,
  output reg [7:0] Result,
  output reg Zero,
  output reg CarryOut
);

  // Define operations
  localparam ADD  = 4'b0000;
  localparam SUB  = 4'b0001;
  localparam AND  = 4'b0010;
  localparam OR   = 4'b0011;
  localparam XOR  = 4'b0100;
  localparam NOT  = 4'b0101;  // One's complement (invert)
  localparam SLL  = 4'b0110;  // Shift Left
  localparam SRL  = 4'b0111;  // Shift Right Logical
  localparam SRA  = 4'b1000;  // Shift Right Arithmetic

  always @(A or B or Opcode) begin
    case (Opcode)
      ADD: begin
        Result = A + B;
        CarryOut = (A[7] ^ B[7]) & (A[7] ^ Result[7]);
      end
      SUB: begin
        Result = A - B;
        CarryOut = ~A[7] & B[7] | A[7] & ~Result[7];
      end
      AND: Result = A & B;
      OR:  Result = A | B;
      XOR: Result = A ^ B;
      NOT: Result = ~A;  // Invert all bits
      SLL: Result = A << B[2:0];  // Shift Left by lower 3 bits of B
      SRL: Result = A >> B[2:0];  // Shift Right Logical by lower 3 bits of B
      SRA: Result = A >>> B[2:0]; // Shift Right Arithmetic by lower 3 bits of B
      default: Result = 8'bX;  // Set result to unknown (X) for invalid opcode
    endcase
    Zero = (Result == 8'b0);  // Check for zero output
  end

endmodule
