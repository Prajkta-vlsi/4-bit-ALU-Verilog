module half_adder(
    input A, B,
    output sum, carry
);
    assign sum = A ^ B;
    assign carry = A & B;
endmodule

module full_adder(
    input A, B, cin,
    output sum, cout
);
    wire sum1, carry1, carry2;
    
    half_adder ha1 (
        .A(A), 
        .B(B), 
        .sum(sum1), 
        .carry(carry1)
    );

    half_adder ha2 (
        .A(sum1), 
        .B(cin), 
        .sum(sum), 
        .carry(carry2)
    );

    assign cout = carry1 | carry2;
endmodule

module ripple_carry_adder(
    input [3:0] A, B,
    input cin,
    output [3:0] sum,
    output cout
);
    wire c1, c2, c3;

    full_adder fa0 (.A(A[0]), .B(B[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder fa1 (.A(A[1]), .B(B[1]), .cin(c1), .sum(sum[1]), .cout(c2));
    full_adder fa2 (.A(A[2]), .B(B[2]), .cin(c2), .sum(sum[2]), .cout(c3));
    full_adder fa3 (.A(A[3]), .B(B[3]), .cin(c3), .sum(sum[3]), .cout(cout));

endmodule
