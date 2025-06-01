module nandtwo_tb;
reg A;
reg B;
wire Y;
wire Z;

nandtwo inst(
    .A(A),
    .B(B),
    .Y(Y),
    .Z(Z)
);

initial begin
    $dumpfile("nandtwo_sim.vcd");
    $dumpvars;
    A = 0; B = 0;
    #10;
    A = 0; B = 1;
    #10;
    A = 1; B = 0;
    #10;
    A = 1; B = 1;
    #10;

    $finish;

end
endmodule

