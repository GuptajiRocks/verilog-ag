module questhree_tb;

reg A,B,S;
wire Y;

questhree inst(
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial begin
    $dumpfile("questhree_sim.vcd");
    $dumpvars;

    S = 0; A = 0; B = 0; #10;
    S = 0; A = 0; B = 1; #10;
    S = 0; A = 1; B = 0; #10;
    S = 0; A = 1; B = 1; #10;
    S = 1; A = 0; B = 0; #10;
    S = 1; A = 0; B = 1; #10;
    S = 1; A = 1; B = 0; #10;
    S = 1; A = 1; B = 1; #10;

    $finish;
end

endmodule