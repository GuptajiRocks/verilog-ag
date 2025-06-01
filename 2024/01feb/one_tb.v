module one_tb;

reg A;
wire Y;

one inst(
    .A(A),
    .Y(Y)
);

initial begin 
    $dumpfile("not_sim.vcd");
    $dumpvars;
    A = 0;
    #10;
    A = 1;
    #10;

    $finish;
end
endmodule