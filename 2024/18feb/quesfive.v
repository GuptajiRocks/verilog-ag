module quesfive (
  input A,
  input B,
  input C,
  output F
);

  // Data lines for the multiplexer
  wire d0, d1, d2, d3;

  // Assign values to data lines based on the function definition
  assign d0 = C;  // Σ(3)
  assign d1 = ~A;  // Σ(5)
  assign d2 = A & ~C; // Σ(6)
  assign d3 = ~A & ~C; // Σ(7)

  // Select lines for the multiplexer (AB selects between d0-d3)
  assign F = (A & ~B) ? d0 :  // When AB = 00
             (~A & B) ? d1 :  // When AB = 01
             (A & B) ? d2 :    // When AB = 10
                         d3;    // When AB = 11

endmodule
