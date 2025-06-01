module quesfive_tb;

reg A;
reg B;
reg C;

wire Y;
wire W;
wire Z;
wire X;

quesfive inst(
    .A(A),
    .B(B),
    .C(C),
    .Y(Y),
    .W(W),
    .Z(Z),
    .X(X)
);

initial begin
    $dumpfile("quesfive_sim.vcd");
    $dumpvars;

    A = 0; B = 0; C = 1;
    #10;
    A = 1; B = 0; C = 1;
    #10;
    A = 1; B = 1; C = 1;
    #10;

    $finish;
   

end

endmodule