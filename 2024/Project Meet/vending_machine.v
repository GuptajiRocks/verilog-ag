module vending_machine (
    input clk,
    input rst,
    input [3:0] money_in,
    input [1:0] item_select,
    output reg [3:0] change,
    output reg [6:0] total,
    output reg bill_display // Signal to indicate when to display the bill
);

// Define prices for items in binary notation
parameter PRICE_COKE = 101000;
parameter PRICE_WATER = 10100;
parameter PRICE_SNACKS = 110010;

// Define states
parameter IDLE = 2'b00;
parameter MENU_DISPLAY = 2'b01;
parameter MONEY_INSERT = 2'b10;
parameter ITEM_SELECT = 2'b11;

reg [2:0] state, next_state;

always @(*) begin
    case(state)
        IDLE: next_state = MENU_DISPLAY;
        MENU_DISPLAY: if (money_in != 0) next_state = ITEM_SELECT;
        MONEY_INSERT: if (money_in != 0) next_state = ITEM_SELECT;
        ITEM_SELECT: next_state = MENU_DISPLAY;
        default: next_state = IDLE;
    endcase
end

always @(posedge clk) begin
    if (rst) begin
        state <= IDLE;
        total <= 0;
        change <= 0;
        bill_display <= 0; // Initialize bill_display to zero
    end else begin
        state <= next_state;
        case(state)
            IDLE: begin
                total <= 0;
                change <= 0;
                bill_display <= 0;
            end
            MENU_DISPLAY: begin
                total <= money_in; // Display only the money inserted without adding the item price yet
                case(item_select)
                    1: begin
                        change <= money_in - PRICE_COKE;
                    end
                    2: begin
                        change <= money_in - PRICE_WATER;
                    end
                    3: begin
                        change <= money_in - PRICE_SNACKS;
                    end
                    default: $display(" ");
                endcase
                bill_display <= 1;
            end
            default: begin
                // Reset state if not in MENU_DISPLAY
                state <= IDLE;
            end
        endcase
    end
end

endmodule

