module test;

reg A, B;
wire sum, carry;

half_adder h1(A, B, sum, carry);

initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0, test);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule
