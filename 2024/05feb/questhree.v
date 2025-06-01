module questhree(
    input A,
    input B,
    input C,
    output Y
);

assign Y = ((~A)&&C) || (A&&(~B));

endmodule