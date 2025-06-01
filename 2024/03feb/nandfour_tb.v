module nandfour_tb;

reg A;
reg B;
wire Y;

nandfour inst(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("nandfour_sim.vcd");
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