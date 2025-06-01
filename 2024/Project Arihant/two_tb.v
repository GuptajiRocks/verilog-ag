module two_tb;

  reg [2:0] opcode;
  reg [7:0] A, B;
  wire [7:0] Y;

  two uut (
    .opcode(opcode),
    .A(A),
    .B(B),
    .Y(Y)
  );

  initial begin
    $dumpfile("alu.vcd");
    $dumpvars;

    $monitor("opcode = %b, A = %d, B = %d, Y = %d\n", opcode, A, B, Y);

    #100 $finish;
  end

  always #10 begin
    opcode = 3'b100;
    A = 4'b1010;
    B = 4'b0011;
  end

endmodule