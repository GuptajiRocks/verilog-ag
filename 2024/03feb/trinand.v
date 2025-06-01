module trinand(
    input A,
    input B,
    output M
);

assign M = ~((~(A&&A))&&(~(B&&B)));

endmodule