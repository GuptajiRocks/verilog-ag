module tryone(
    input A,
    output Y
);

not(Y,A);

endmodule

module trytwo(
    input C,
    input D,
    output M
);

nand(M,C,D);

endmodule