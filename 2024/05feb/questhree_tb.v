module questhree_tb;

reg A;
reg B;
reg C;
wire Y;

questhree inst(
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
);

initial begin
    $dumpfile("questhree_sim.vcd");
    $dumpvars;
    A = 0; C = 0; B = 0;
    #10;
    A = 0; C = 0; B = 1;
    #10;
    A = 0; C = 1; B = 0;
    #10;
    A = 0; C = 1; B = 1;
    #10;
    A = 1; C = 0; B = 0;
    #10;
    A = 1; C = 0; B = 1;
    #10;
    A = 1; C = 1; B = 0;
    #10;
    A = 1; C = 1; B = 1;
    #10;

    $finish;
end

endmodule