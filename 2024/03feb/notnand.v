module notnand(
    input A,
    output Y
);

assign Y = ~(A&&A);

endmodule