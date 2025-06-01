module one_tb;

  // Inputs
  reg X1, X0;

  // Outputs
  wire D3, D2, D1, D0;

  // DUT (Device Under Test) instantiation
  one dut (X1, X0, D3, D2, D1, D0);

  initial begin
    $dumpfile("questhree_sim.vcd");
    $dumpvars;
    // Apply all possible input combinations with a delay
    X1 = 0; X0 = 0; #10;
    X1 = 0; X0 = 1; #10;
    X1 = 1; X0 = 0; #10;
    X1 = 1; X0 = 1; #10;
    $finish;  // Stop simulation after applying all inputs
  end

  // Monitor the inputs and outputs for verification
  always @(X1 or X0) begin
    $monitor("X1 = %b, X0 = %b | D3 = %b, D2 = %b, D1 = %b, D0 = %b", 
             X1, X0, D3, D2, D1, D0);
  end

endmodule
