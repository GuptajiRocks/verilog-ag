module quesfour(
    input P,
    input Q,
    input R,
    output S,
    output C
);

assign S = (P^(Q^R));
assign C = ((P&&Q) || (Q&&R) || (P&&R));

endmodule
