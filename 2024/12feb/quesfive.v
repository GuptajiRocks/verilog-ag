module quesfive(
    input A,
    input B,
    input C,
    output W,
    output X,
    output Y,
    output Z
);

assign W = A && (B || C);
assign X = ((~A)&&(B || C)) || (A && (~B) && (~C));
assign Y = ((~B)&&(~C)) || (B&&C);
assign Z = ~C;

endmodule