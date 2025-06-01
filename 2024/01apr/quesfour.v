module quesfour (
  input D7,
  input D6,
  input D5,
  input D4,
  input D3,
  input D2,
  input D1,
  input D0,
  output reg [2:0] Y
);

  always @(*) begin
    // Assign default value (no active input)
    Y = 3'b000;

    // Check for active inputs with priority (highest to lowest)
    if (D7) begin
      Y = 3'b111;  // D7 has highest priority
    end else if (D6) begin
      Y = 3'b110;
    end else if (D5) begin
      Y = 3'b101;
    end else if (D4) begin
      Y = 3'b100;
    end else if (D3) begin
      Y = 3'b011;
    end else if (D2) begin
      Y = 3'b010;
    end else if (D1) begin
      Y = 3'b001;
    end else if (D0) begin
      Y = 3'b000;  // D0 has lowest priority (already assigned as default)
    end
  end

endmodule
