module questhree (
  input A2,
  input A1,
  input A0,
  output reg [7:0] Y
);

  always @(*) begin
    // Assign each output based on the input combination
    Y[0] <= ~A2 & ~A1 & ~A0;  // Y0 is active when A2, A1, and A0 are all low
    Y[1] <= ~A2 & ~A1 & A0;    // Y1 is active when A2 and A1 are low, A0 is high
    Y[2] <= ~A2 & A1 & ~A0;    // Y2 is active when A2 is low, A1 is high, A0 is low
    Y[3] <= ~A2 & A1 & A0;     // Y3 is active when A2 is low, A1 and A0 are high
    Y[4] <= A2 & ~A1 & ~A0;    // Y4 is active when A2 is high, A1 is low, A0 is low
    Y[5] <= A2 & ~A1 & A0;     // Y5 is active when A2 is high, A1 is low, A0 is high
    Y[6] <= A2 & A1 & ~A0;     // Y6 is active when A2 and A1 are high, A0 is low
    Y[7] <= A2 & A1 & A0;      // Y7 is active when A2 and A1 are high, A0 is high
  end

endmodule
