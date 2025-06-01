module quesfour_tb;

  // Inputs for the encoder8to3 module
  reg D7, D6, D5, D4, D3, D2, D1, D0;

  // Outputs from the encoder8to3 module
  wire [2:0] Y;

  // Instantiate the encoder8to3 module
  quesfour dut (D7, D6, D5, D4, D3, D2, D1, D0, Y);

  initial begin
    // Apply all possible input combinations
    $display("D7 D6 D5 D4 D3 D2 D1 D0 | Y2 Y1 Y0");
    $display("------------------------| --------");
    $monitor("%b %b %b %b %b %b %b %b | %b %b %b", D7, D6, D5, D4, D3, D2, D1, D0, Y[2], Y[1], Y[0]);
    $dumpfile("quesfour_sim.vcd");
    $dumpvars;

    // Test cases covering single active inputs with priority
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 1; #10;  // D0 (lowest priority)
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 1; D0 = 0; #10;  // D1
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 1; D1 = 0; D0 = 0; #10;  // D2
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 1; D2 = 0; D1 = 0; #10;  // D3
    D7 = 0; D6 = 0; D5 = 0; D4 = 1; D3 = 0; D2 = 0; D1 = 0; #10;  // D4
    D7 = 0; D6 = 0; D5 = 1; D4 = 0; D3 = 0; D2 = 0; D1 = 0; #10;  // D5
    D7 = 0; D6 = 1; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 0; #10;  // D6 (highest priority)
    D7 = 1; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;  // D7 (highest priority) - overrides lower active inputs

    // Test case for multiple active inputs (undefined behavior - X)
    D7 = 1; D6 = 0; D5 = 1; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;  // Multiple active inputs (X)

    $finish;
  end

endmodule
