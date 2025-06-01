module nandone_tb;

    reg A,B;
    wire Y;

    nandone inst(
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $dumpfile("nand_sim.vcd"); // Create a VCD file for waveform viewing
        $dumpvars; // Dump signals to the VCD file

        A = 0; B = 0; // Initialize inputs
        #10; // Wait for 10 time units
        A = 0; B = 1;
        #10
        A = 1; B = 0;
        #10
        A = 1; B = 1;
        #10 

        $finish; // End the simulation
    end

endmodule

