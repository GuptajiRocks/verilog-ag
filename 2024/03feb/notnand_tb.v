module notnand_tb;

reg A;
wire Y;

notnand inst(
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("notnand_sim.vcd");
    $dumpvars;
    A = 0;
    #10;
    A = 1;
    #10;

    $finish;
end

endmodule