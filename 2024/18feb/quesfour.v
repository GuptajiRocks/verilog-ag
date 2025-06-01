module quesfour(
    input A,
    input SA,
    input SB,
    output Y0,
    output Y1,
    output Y2,
    output Y3
);

assign Y0 = (~SA)&&(~SB)&&A;
assign Y1 = (~SA)&&SB&&A;
assign Y2 = SA&&(~SB)&&A;
assign Y3 = SA&&SB&&A;

endmodule
