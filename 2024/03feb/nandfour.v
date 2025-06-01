module nandfour(
    input A,
    input B,
    output Y
);

assign Y = ~((~(A&&(~(A&&B))))&&(~((~(A&&B))&&B)));

endmodule