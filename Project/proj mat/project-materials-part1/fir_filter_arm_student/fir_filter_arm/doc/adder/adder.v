module adder #(
    parameter N = 4
    )(
    input  wire [N-1:0] a, b,
    output wire [N-1:0] sum,
    output wire carry
    );

// Signal declaration
wire [N:0] carry_vector;

// Assert to zero the input carry bit of the first FA
assign carry_vector[0] = 1'b0;

// Generate N FAs
genvar i;
generate
    for(i=0; i<N; i=i+1) begin: FA_GEN
        full_adder FA_UNT(
            .a    (a[i]),
            .b    (b[i]),
            .c    (carry_vector[i]),
            .sum  (sum[i]),
            .carry(carry_vector[i+1]));
    end
endgenerate

// Output the last carry bit of the chain
assign carry = carry_vector[N];

endmodule