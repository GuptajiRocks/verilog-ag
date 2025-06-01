module one_tb;
  reg [3:0] A;
  reg [3:0] B;
  reg [2:0] OP;
  wire [3:0] O;

one inst (
  .A(B), 
  .B(B), 
  .OP(OP), 
  .Result(O) 
);


reg clk = 0;
always #5 clk = ~clk;
  initial begin
    $dumpfile("one_sim.vcd");
    $dumpvars;
    OP = 3'b000; A = 4'b0001; B = 4'b0001;  #5;
    OP = 3'b001; A = 4'b0001; B = 4'b0001;  #5;
    OP = 3'b010; A = 4'b0001; B = 4'b0001;  #5;
    OP = 3'b011; A = 4'b0001; B = 4'b0001;  #5;
    $finish;
  end
  endmodule