module questwo (
  input S1,
  input S0,
  input D0,
  input D1,
  input I2,
  output Out
);

  wire m0_out;
  wire m1_out;

  // First 2:1 MUX
  mux2to1 m0 (.S(S0), .I0(D0), .I1(D1), .O(m0_out));

  // Second 2:1 MUX (use m0_out as input for clarity)
  mux2to1 m1 (.S(S1), .I0(m0_out), .I1(I2), .O(Out));

endmodule

// Definition for the 2:1 MUX (can be a separate module or included here)
module mux2to1 (
  input S,
  input I0,
  input I1,
  output O
);

  assign O = S ? I1 : I0;

endmodule
