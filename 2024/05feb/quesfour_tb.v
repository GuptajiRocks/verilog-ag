module quesfour_tb;

reg A;
reg B;
wire Y;

quesfour inst(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("quesfour_sim.vcd");
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