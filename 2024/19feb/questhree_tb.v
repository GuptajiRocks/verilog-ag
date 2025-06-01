module questhree_tb;

reg A;
reg B;
wire S;
wire C;

questhree inst(
    .A(A),
    .B(B),
    .S(S),
    .C(C)
);

initial begin 
    $dumpfile("questhree_sim.vcd");
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

