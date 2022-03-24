`include "adder_4_bit.v"

module adder_subtr_4_bit (a, b, k, sum, co);

input signed [3:0] a, b;
input k;
output signed [3:0] sum;
output co;
wire signed [3:0] add_sub;


xor xor0(add_sub[0], b[0], k);
xor xor1(add_sub[1], b[1], k);
xor xor2(add_sub[2], b[2], k);
xor xor3(add_sub[3], b[3], k);
adder_4_bit adder(a, add_sub, k, sum, co);

endmodule // adder_subtr_4_bit
