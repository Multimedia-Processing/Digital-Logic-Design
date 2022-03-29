module half_subtr (a, b, sub, borrow);

input a, b;
output sub, borrow;

xor (sub, a, b);
not (a_bar, a);
and (borrow, a_bar, b);

endmodule // half_subtr
