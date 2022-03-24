module half_adder (a, b, sum, borrow);
input a, b;
output sum, borrow;

xor (sum, a, b);
and (borrow, a, b);

endmodule // half_adder
