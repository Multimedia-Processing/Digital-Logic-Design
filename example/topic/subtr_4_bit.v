`include "full_subtr.v"

module subtr_4_bit (a, b, bi, sub, bo);

input [3:0] a, b;
input bi;
output [3:0] sub;
output bo;
wire borrow1, borrow2, borrow3;

full_subtr sub1(a[0], b[0], bi, sub[0], borrow1);
full_subtr sub2(a[1], b[1], borrow1, sub[1], borrow2);
full_subtr sub3(a[2], b[2], borrow2, sub[2], borrow3);
full_subtr sub4(a[3], b[3], borrow3, sub[3], bo);

endmodule // subtr_4_bit
