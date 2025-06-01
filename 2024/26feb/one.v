module one(
    input rolla,
    input rollb,
    input rollc,
    output volps,
    output volpc,
    output vold,
    output volb
);

assign volps = (rolla^(rollb^rollc));
assign volpc = ((rolla&&rollb) || (rollb&&rollc) || (rollc&&rolla));
assign vold = (rolla^rollb);
assign volb = (~rolla)&&(rollb);

endmodule