module full_subtr (a, b, ci, sub, borrow);

input a, b, ci;
output borrow, sub;
wire a_b, a_ci, b_ci;

not nota(a_bar, a);
not notb(b_bar, a);

xor (sub, a, b, ci);
and (a_b, a_bar, b);
and (a_ci, a_bar, ci);
and (b_ci, b, ci);
or (borrow, a_b, a_ci, b_ci);

endmodule // full_subtr
