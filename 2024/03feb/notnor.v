module notnor(
    input A,
    output Y
);

assign Y = ~(A||A);

endmodule