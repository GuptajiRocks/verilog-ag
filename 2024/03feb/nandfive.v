module nandfive(
    input A,
    input B,
    output Y
);

assign Y = ~((~(A&&B))&&(~((~(A&&A))&&((~(B&&B))))));

endmodule
