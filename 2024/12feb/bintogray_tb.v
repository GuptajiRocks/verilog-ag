module bintogray_tb;

  reg  [3:0] binary;
  wire [3:0] gray;

  bintogray inst(binary, gray);

  initial begin
    $monitor("Binary = %b --> Gray = %b", binary, gray);
    $dumpfile("bintogray_sim.vcd");
    $dumpvars;

    binary = 4'b1010; #1;
    binary = 4'b0101; #1;
    binary = 4'b0010; #1;
  end

endmodule
