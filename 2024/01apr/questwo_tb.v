module questwo_tb;

  // Inputs for the mux3to1 module
  reg S1, S0, D0, D1, I2;

  // Output from the mux3to1 module
  wire Out;

  // Instantiate the mux3to1 module
  questwo dut (S1, S0, D0, D1, I2, Out);

  initial begin
    // Apply all possible input combinations
    $display("S1 S0 D0 D1 I2 | Out");
    $display("-----------------");
    $monitor("%b %b %b %b %b | %b", S1, S0, D0, D1, I2, Out);
    $dumpfile("questwo_sim.vcd");
    $dumpvars;

    S1 = 0; S0 = 0; D0 = 0; D1 = 1; I2 = 0; #10;
    S1 = 0; S0 = 1; D0 = 0; D1 = 1; I2 = 0; #10;
    S1 = 1; S0 = 0; D0 = 0; D1 = 1; I2 = 1; #10;
    S1 = 1; S0 = 1; D0 = 0; D1 = 1; I2 = 1; #10;

    $finish;
  end

endmodule
