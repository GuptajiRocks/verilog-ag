module trinand_tb;

reg A;
reg B;
wire M;

trinand inst(
    .A(A),
    .B(B),
    .M(M)
);

initial begin
    $dumpfile("trinand_sim.vcd");
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