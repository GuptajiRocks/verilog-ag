module nandfive_tb;

reg A;
reg B;
wire Y;

nandfive inst(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("nandfive_sim.vcd");
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