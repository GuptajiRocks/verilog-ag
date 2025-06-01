module questhree(
    input A,
    input B,
    input S,
    output Y
);

assign Y = (A&&(~S)) || (S&&B);

endmodule