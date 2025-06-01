module quesfour_tb;

reg A,SA,SB;
wire Y0,Y1,Y2,Y3;

quesfour inst(
    .A(A),
    .SA(SA),
    .SB(SB),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin
    $dumpfile("quesfour_sim.vcd");
    $dumpvars;

    SA = 0; SB = 0; A = 0; #10;
    SA = 0; SB = 0; A = 1; #10;
    SA = 0; SB = 1; A = 0; #10;
    SA = 0; SB = 1; A = 1; #10;
    SA = 1; SB = 0; A = 0; #10;
    SA = 1; SB = 0; A = 1; #10;
    SA = 1; SB = 1; A = 0; #10;
    SA = 1; SB = 1; A = 1; #10;

    $finish;

end

endmodule