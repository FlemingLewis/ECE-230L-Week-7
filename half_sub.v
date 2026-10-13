module half_sub(
    input A, B,
    output Y, Borrow // Output, Carry
    
    
);

    assign Y = A ^ B;
    assign Borrow = ~(A) & B;

endmodule