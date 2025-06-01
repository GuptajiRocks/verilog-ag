module quesfive_tb;
//testbench module has been declared.
reg A; //input A has been initialized
reg B; //input B has been initialized
reg C; //input C has been initialized
wire Y; //output Y has been initialized

quesfive inst(
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
);

initial begin
    $dumpfile("quesfive_sim.vcd");
    $dumpvars;
    A = 0; B = 0; C = 0;
    #10;
    A = 0; B = 0; C = 1;
    #10;
    A = 0; B = 1; C = 0;
    #10;
    A = 0; B = 1; C = 1;
    #10;
    A = 1; B = 0; C = 0;
    #10;
    A = 1; B = 0; C = 1;
    #10;
    A = 1; B = 1; C = 0;
    #10;
    A = 1; B = 1; C = 1;
    #10;

    $finish;
end

endmodule