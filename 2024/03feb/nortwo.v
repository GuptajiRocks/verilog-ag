module nortwo(
    input A,
    input B,
    output Y,
    output Z
);

assign Y = ~(A||B);
assign Z = ~(Y||Y);

endmodule