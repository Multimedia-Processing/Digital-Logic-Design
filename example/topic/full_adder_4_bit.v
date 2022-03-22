`include "full_adder.v"

module full_adder_4_bit (a, b, ci, sum);

input [3:0] a, b;
input ci;
output [4:0] sum;
wire carry1, carry2, carry3;

full_adder adder1(a[0], b[0], ci, sum[0], carry1);
full_adder adder2(a[1], b[1], carry1, sum[1], carry2);
full_adder adder3(a[2], b[2], carry2, sum[2], carry3);
full_adder adder4(a[3], b[3], carry3, sum[3], sum[4]);

endmodule // full_add_4_bit
