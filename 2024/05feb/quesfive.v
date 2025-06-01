module quesfive(
    input A,
    input B,
    input C,
    output Y
);

assign Y = (B || ((~A)&&(~B)&&C));

endmodule