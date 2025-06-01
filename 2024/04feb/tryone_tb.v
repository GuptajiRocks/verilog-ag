module tryone_tb;

reg A;
reg B;
wire Y;

trytwo inst(
    .M(Y),
    .C(A),
    .D(B)
);

initial begin 
    $dumpfile("tryone_sim.vcd");
    $dumpvars;
    A = 0; B = 0;
    #10;
    A = 1; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 1;
    #10;

    $finish;

end
endmodule
