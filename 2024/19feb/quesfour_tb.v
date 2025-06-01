module quesfour_tb;

reg P,Q,R;
wire S,C;

quesfour inst(
    .P(P),
    .Q(Q),
    .R(R),
    .S(S),
    .C(C)
);

initial begin
    $dumpfile("quesfour_sim.vcd");
    $dumpvars;

    P = 0; Q = 0; R = 0;
    #10;
    P = 0; Q = 0; R = 1;
    #10;
    P = 0; Q = 1; R = 0;
    #10;
    P = 0; Q = 1; R = 1;
    #10;
    P = 1; Q = 0; R = 0;
    #10;
    P = 1; Q = 0; R = 1;
    #10;
    P = 1; Q = 1; R = 0;
    #10;
    P = 1; Q = 1; R = 1;
    #10;

    $finish;

end
endmodule

