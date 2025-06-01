module quesone_tb;

  // Inputs for the F_function module
  reg A, B, C;

  // Output from the F_function module
  wire F;

  // Instantiate the F_function module
  quesone dut (A, B, C, F);

  initial begin
    // Apply all possible input combinations
    $display("A B C | F");
    $display("-------");
    $monitor("%b %b %b | %b", A, B, C, F);
    $dumpfile("quesone_sim.vcd");
    $dumpvars;

    A = 0; B = 0; C = 0; #10;
    A = 0; B = 0; C = 1; #10;
    A = 0; B = 1; C = 0; #10;
    A = 0; B = 1; C = 1; #10;
    A = 1; B = 0; C = 0; #10;
    A = 1; B = 0; C = 1; #10;
    A = 1; B = 1; C = 0; #10;
    A = 1; B = 1; C = 1; #10;

    $finish;
  end

endmodule
