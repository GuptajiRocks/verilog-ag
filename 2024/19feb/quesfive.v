module quesfive(
    input P,
    input Q,
    output D,
    output B
);

assign D = (P^Q);
assign B = ((~P)&&Q);

endmodule