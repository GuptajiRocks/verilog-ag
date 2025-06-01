module graytobin_tb;

  reg  [2:0] gray;
  wire [2:0] binary;

  graytobin inst(gray, binary);

  initial begin
    $monitor("Gray = %b --> Binary = %b", gray, binary);
    $dumpfile("graytobin_sim.vcd");
    $dumpvars;

    gray = 3'b000; #1;
    gray = 3'b001; #1;
    gray = 3'b011; #1;
    gray = 3'b010; #1;
    gray = 3'b110; #1;
    gray = 3'b111; #1;
    gray = 3'b101; #1;
    gray = 3'b100; #1;
  end

endmodule
