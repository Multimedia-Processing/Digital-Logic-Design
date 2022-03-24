`include "full_adder_4_bit.v"

module adder_subtr_4_bit (a, b, ci, m, s, co);

input [3:0] a, b;
input ci, m;
output [3:0] s;
output co;
wire [3:0] add_sub;


xor xor0(add_sub[0], , m);
xor xor1(add_sub[1], , m);
xor xor2(add_sub[2], , m);
xor xor3(add_sub[3], m);
full_adder_4_bit();

endmodule // adder_subtr_4_bit
