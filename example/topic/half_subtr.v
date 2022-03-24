module half_subtr (a, b, sub, carry);

input a, b;
output sub, carry;

xor (sub, a, b);
not (a_bar, a);
and (carry, a_bar, b);

endmodule // half_subtr
