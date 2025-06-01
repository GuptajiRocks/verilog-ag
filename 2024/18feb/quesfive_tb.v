module quesfive_tb;

  reg A, B, C;
  wire F;

  // Instantiate the F_function module
  quesfive dut (A, B, C, F);

  initial begin
    // Apply all possible input combinations with a delay
    $dumpfile("quesfive_sim.vcd");
    $dumpvars;
    $display("A B C | F");
    $display("-------");
    $monitor("%b %b %b | %b", A, B, C, F);

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
