`timescale 1ns/1ps

module vending_machine_tb;

    reg clk, rst;
    reg [3:0] money_in;
    reg [1:0] item_select;
    wire [3:0] change;
    wire [6:0] total;
    wire bill_display;

    // Instantiate the vending machine module
    vending_machine vending_machine (
        .clk(clk),
        .rst(rst),
        .money_in(money_in),
        .item_select(item_select),
        .change(change),
        .total(total),
        .bill_display(bill_display)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Initial values
    initial begin
        clk = 0;
        rst = 1;
        money_in = 0;
        item_select = 0;
        // Reset vending machine
        #10 rst = 0;
        // Wait for a few cycles
        #20;
        // Display menu
        $display("Vending Machine Menu:");
        $display("1. Coke - Rs.40");
        $display("2. Water - Rs.20");
        $display("3. Snacks - Rs.50");
        // Prompt for money input
        $display("Insert money (in Rupees):");
        // Simulate user input for money
        money_in = 1100100;
        // Display inserted money
        $display("Rs. %d", money_in);
        // Prompt for item selection
        $display("Select item (1-3):");
        // Simulate user input for item selection
        #10 item_select = 3; // Selecting Snacks
        // Wait for a few cycles
        #10;
        // Display total and change
        $display("Total: Rs.%d, Change: Rs.%d", total, change);
        // Display bill if item is bought
        if (bill_display)
            case (item_select)
                1: $display("Bill: Coke - Rs.40");
                2: $display("Bill: Water - Rs.20");
                3: $display("Bill: Snacks - Rs.50");
                default: $display(" ");
            endcase
        else
            $display("No item bought.");
        // Finish simulation
        #100 $finish;
    end

endmodule

