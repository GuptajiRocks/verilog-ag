module quesfour(
  input A,
  input B,
  input C,
  output reg D0,
  output reg D1,
  output reg D2,
  output reg D3,
  output reg D4,
  output reg D5,
  output reg D6,
  output reg D7
);

  always @(*) begin
    case ({A, B, C})
      3'b000: begin D0 = 1'b1; D1 = 1'b0; D2 = 1'b0; D3 = 1'b0; D4 = 1'b0; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
      3'b001: begin D0 = 1'b0; D1 = 1'b0; D2 = 1'b0; D3 = 1'b0; D4 = 1'b0; D5 = 1'b0; D6 = 1'b1; D7 = 1'b0; end
      3'b010: begin D0 = 1'b0; D1 = 1'b0; D2 = 1'b0; D3 = 1'b0; D4 = 1'b1; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
      3'b011: begin D0 = 1'b0; D1 = 1'b0; D2 = 1'b0; D3 = 1'b1; D4 = 1'b0; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
      3'b100: begin D0 = 1'b0; D1 = 1'b0; D2 = 1'b1; D3 = 1'b0; D4 = 1'b0; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
      3'b101: begin D0 = 1'b0; D1 = 1'b1; D2 = 1'b0; D3 = 1'b0; D4 = 1'b0; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
      3'b110: begin D0 = 1'b1; D1 = 1'b0; D2 = 1'b0; D3 = 1'b0; D4 = 1'b0; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
      3'b111: begin D0 = 1'b0; D1 = 1'b0; D2 = 1'b0; D3 = 1'b0; D4 = 1'b0; D5 = 1'b0; D6 = 1'b0; D7 = 1'b0; end
    endcase
  end

endmodule