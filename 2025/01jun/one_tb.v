module one_tb;
reg A,B;
wire Y;

one inst(
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    $dumpfile("onesim.vcd");
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