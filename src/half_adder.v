module full_adder(
    input A, B, cin,   // Inputs: A, B, carry-in
    output sum, cout   // Outputs: sum, carry-out
);

    // Intermediate signals
    wire sum1, carry1, carry2;

    // First half adder: sum1 = A XOR B, carry1 = A AND B
    half_adder ha1 (
        .A(A), 
        .B(B), 
        .sum(sum1), 
        .carry(carry1)
    );

    // Second half adder: sum = sum1 XOR cin, carry2 = sum1 AND cin
    half_adder ha2 (
        .A(sum1), 
        .B(cin), 
        .sum(sum), 
        .carry(carry2)
    );

    // Final carry-out: carry-out = carry1 OR carry2
    assign cout = carry1 | carry2;

endmodule
