module full_adder(
    input  wire a, b, c,
    output wire sum, carry);

// Output logic
assign sum = a ^ b ^ c;
assign carry = ((a & b) | (b & c) | (a & c));

endmodule // full_adder