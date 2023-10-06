// Define the time precision of the simulation
`timescale 1ns / 1ns

module adder_tb();

// Signal declaration
reg  [3:0] a, b;
wire [3:0] sum;
wire carry;

// Instantiate the UUT
adder UUT(
        .a    (a),
        .b    (b),
        .sum  (sum),
        .carry(carry)
    );

// Stimulus process
initial begin
    #(5);
    a = 4'h0;
    b = 4'h4;

    #(5);
    a = 4'h3;
    b = 4'hA;

    #(5);
    a = 4'h7;
    b = 4'h4;

    #(5);
    a = 4'h5;
    b = 4'hB;
end

endmodule // adder_tb