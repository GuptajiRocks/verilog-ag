module tryone_tb;

reg A,B;
wire C;

tryone inst(
    .A(A),
    .B(B),
    .C(C)
);

initial begin
    $dumpfile("tryone_sim.vcd");
    $dumpvars;
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;

end
endmodule