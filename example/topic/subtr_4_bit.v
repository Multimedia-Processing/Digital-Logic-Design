`include "full_subtr.v"

module subtr_4_bit (a, b, ci, sub, co);

input [3:0] a, b;
input ci;
output [3:0] sub;
output co;
wire borrow1, borrow2, borrow3;

full_subtr add1(a[0], b[0], ci, sub[0], borrow1);
full_subtr add2(a[1], b[1], borrow1, sub[1], borrow2);
full_subtr add3(a[2], b[2], borrow2, sub[2], borrow3);
full_subtr add4(a[3], b[3], borrow3, sub[3], co);

endmodule // subtr_4_bit
