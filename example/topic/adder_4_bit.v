`include "full_adder.v"

module full_adder_4_bit (a, b, ci, sum, co);

input [3:0] a, b;
input ci;
output [3:0] sum;
output co;
wire carry1, carry2, carry3;

full_adder add1(a[0], b[0], ci, sum[0], carry1);
full_adder add2(a[1], b[1], carry1, sum[1], carry2);
full_adder add3(a[2], b[2], carry2, sum[2], carry3);
full_adder add4(a[3], b[3], carry3, sum[3], co);

endmodule // full_add_4_bit
