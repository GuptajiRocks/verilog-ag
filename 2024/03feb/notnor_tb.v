module notnor_tb;

reg A;
wire Y;

notnor inst(
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("notnor_sim.vcd");
    $dumpvars;
    A = 0;
    #10;
    A = 1;
    #10;

    $finish;
end

endmodule