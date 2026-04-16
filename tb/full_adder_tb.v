module test;

    reg A, B, cin;       // Inputs
    wire sum, cout;      // Outputs

    // Instantiate the full adder
    full_adder fa (
        .A(A),
        .B(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Apply all input combinations
    initial begin
        $dumpfile("full_adder.vcd");  // Create waveform file
        $dumpvars(0, test);           // Dump variables from test module

        // Test all combinations: A, B, cin (from 0 to 1)
        A = 0; B = 0; cin = 0; #10;
        A = 0; B = 0; cin = 1; #10;
        A = 0; B = 1; cin = 0; #10;
        A = 0; B = 1; cin = 1; #10;
        A = 1; B = 0; cin = 0; #10;
        A = 1; B = 0; cin = 1; #10;
        A = 1; B = 1; cin = 0; #10;
        A = 1; B = 1; cin = 1; #10;

        $finish; // End simulation
    end

    // Monitor the results
    initial begin
        $monitor("At time %t: A=%b, B=%b, cin=%b -> sum=%b, cout=%b", 
                 $time, A, B, cin, sum, cout);
    end

endmodule
