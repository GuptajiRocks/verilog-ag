module quesfive_tb;

reg P,Q;
wire D,B;

quesfive inst(
    .P(P),
    .Q(Q),
    .D(D),
    .B(B)
);

initial begin
    $dumpfile("quesfive_sim.vcd");
    $dumpvars;

    P = 0; Q = 0;
    #10;
    P = 0; Q = 1;
    #10;
    P = 1; Q = 0;
    #10;
    P = 1; Q = 1;
    #10;

    $finish;
end

endmodule