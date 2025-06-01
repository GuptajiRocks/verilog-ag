module one_tb;
reg rolla,rollb,rollc;
wire volps,volpc,vold,volb;

one inst(
    .rolla(rolla),
    .rollb(rollb),
    .rollc(rollc),
    .volps(volps),
    .volpc(volpc),
    .vold(vold),
    .volb(volb)
);

initial begin
    $dumpfile("one_sim.vcd");
    $dumpvars;

    rolla = 0; rollb = 0; rollc = 0; #10;
    rolla = 0; rollb = 0; rollc = 1; #10;
    rolla = 0; rollb = 1; rollc = 0; #10;
    rolla = 0; rollb = 1; rollc = 1; #10;
    rolla = 1; rollb = 0; rollc = 0; #10;
    rolla = 1; rollb = 0; rollc = 1; #10;
    rolla = 1; rollb = 1; rollc = 0; #10;
    rolla = 1; rollb = 1; rollc = 1; #10;

    $finish;
end

endmodule