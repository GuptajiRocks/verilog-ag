module notone_tb;

    reg A;
    wire Y;

    notone inst(
        .A(A),
        .Y(Y)
    );

    initial begin
        $dumpfile("not_sim.vcd"); // Create a VCD file for waveform viewing
        $dumpvars; // Dump signals to the VCD file

        A = 0; // Initialize inputs
        #10; // Wait for 10 time units
        A = 1;
        #10;

        $finish; // End the simulation
    end

endmodule

