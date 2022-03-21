module full_addr (a, b, ci, sum, carry);

input a, b, ci;
output carry, sum;
wire a_b, a_ci, b_ci;

xor (sum, a, b, ci);
and (a_b, a, b);
and (a_ci, a, ci);
and (b_ci, b, ci);
or (carry, a_b, a_ci, b_ci);

endmodule // full_addr
