module nandone(
    input A,
    input B,
    output Y
    );

    assign Y = A ~& B;

endmodule