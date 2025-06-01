module quesfive_tb;

    // Instantiate the 8:3 binary encoder module
    quesfive dut (
        .data_in(data_in),
        .encoded_output(encoded_output)
    );

    // Declare signals for input and output
    reg [7:0] data_in;
    wire [2:0] encoded_output;

    // Initialize input values
    initial begin
        $dumpfile("quesfive_sim.vcd");
        $dumpvars;
        
        $monitor("Input: %b, Encoded Output: %b", data_in, encoded_output);
        data_in = 8'b00000001; // Example input: 00000001
        #10;
        data_in = 8'b00001000; // Example input: 00001000
        #10;
        // Add more test cases as needed
        $finish;
    end

endmodule
