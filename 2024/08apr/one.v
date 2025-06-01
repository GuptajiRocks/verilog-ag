module one (
  input X1, X0,
  output reg D3, D2, D1, D0
);

  always @(*) begin
    case ({X1, X0})
      2'b00: begin  // Input = 00
        D3 = 0;
        D2 = 0;
        D1 = 0;
        D0 = 1;
      end
      2'b01: begin  // Input = 01
        D3 = 0;
        D2 = 0;
        D1 = 1;
        D0 = 0;
      end
      2'b10: begin  // Input = 10
        D3 = 0;
        D2 = 1;
        D1 = 0;
        D0 = 0;
      end
      2'b11: begin  // Input = 11
        D3 = 1;
        D2 = 0;
        D1 = 0;
        D0 = 0;
      end
      default: begin // Any other case (shouldn't happen)
        D3 = 0;
        D2 = 0;
        D1 = 0;
        D0 = 0;
      end
    endcase
  end
endmodule
