module questhree_tb;

  // Inputs for the decoder3to8 module
  reg A2, A1, A0;

  // Outputs from the decoder3to8 module
  wire [7:0] Y;

  // Instantiate the decoder3to8 module
  questhree dut (A2, A1, A0, Y);

  initial begin
    // Apply all possible input combinations
    $display("A2 A1 A0 | Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0");
    $display("---------| -------- -------- --------");
    $monitor("%b %b %b | %b %b %b %b %b %b %b %b", A2, A1, A0, Y[7], Y[6], Y[5], Y[4], Y[3], Y[2], Y[1], Y[0]);
    $dumpfile("questhree_sim.vcd");
    $dumpvars;

    A2 = 0; A1 = 0; A0 = 0; #10;
    A2 = 0; A1 = 0; A0 = 1; #10;
    A2 = 0; A1 = 1; A0 = 0; #10;
    A2 = 0; A1 = 1; A0 = 1; #10;
    A2 = 1; A1 = 0; A0 = 0; #10;
    A2 = 1; A1 = 0; A0 = 1; #10;
    A2 = 1; A1 = 1; A0 = 0; #10;
    A2 = 1; A1 = 1; A0 = 1; #10;

    $finish;
  end

endmodule
