module half_adder(
    input A, B,
    output sum, carry
);

assign sum = A ^ B;     // XOR
assign carry = A & B;   // AND

endmodule
