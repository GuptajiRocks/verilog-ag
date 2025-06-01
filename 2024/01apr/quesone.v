module quesone (
  input A,
  input B,
  input C,
  output F
);

  // Data lines for the multiplexer
  wire d0, d1, d2, d3;

  // Logic for data lines based on minterms
  assign d0 = ~A & ~B & ~C;  // Minterm 3
  assign d1 = ~A & ~B & C;    // Minterm 5
  assign d2 = ~A & B & C;     // Minterm 6
  assign d3 = A & ~B & C;     // Minterm 7

  // Select lines for the multiplexer (B is MSB, C is LSB)
  assign F = (B & C) ? d3 :  // When BC = 11
             (B & ~C) ? d2 :  // When BC = 10
                         (~B & C) ? d1 :  // When BC = 01
                                      d0;   // When BC = 00

endmodule
