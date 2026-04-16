module ripple_tb;

    reg [3:0] A, B;
    reg cin;
    wire [3:0] sum;
    wire cout;

    // Instantiate the ripple carry adder
    ripple_carry_adder rca (
        .A(A), 
        .B(B), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial begin
        // Create waveform file
        $dumpfile("ripple.vcd");
        $dumpvars(0, ripple_tb);

        // Test all input combinations (example sequence)
        A = 4'b0000; B = 4'b0000; cin = 0; #10;
        A = 4'b0001; B = 4'b0001; cin = 0; #10;
        A = 4'b0010; B = 4'b0011; cin = 0; #10;
        A = 4'b1111; B = 4'b1111; cin = 1; #10;
        // Add more combinations as needed
        // ...

        $finish; // End simulation
    end

    initial begin
        // Monitor inputs and outputs
        $monitor("Time: %t, A: %b, B: %b, cin: %b -> sum: %b, cout: %b", 
                 $time, A, B, cin, sum, cout);
    end

endmodule
