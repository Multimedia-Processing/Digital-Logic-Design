module adder_subtr_8_bits (a, b, m, sum, co);

  input signed [7:0] a, b;
  wire signed [7:0] add_sub;
  output signed [7:0] sum;
  input m;
  output co;

  xor xor0(add_sub[0], b[0], m);
  xor xor1(add_sub[1], b[1], m);
  xor xor2(add_sub[2], b[2], m);
  xor xor3(add_sub[3], b[3], m);
  xor xor4(add_sub[4], b[4], m);
  xor xor5(add_sub[5], b[5], m);
  xor xor6(add_sub[6], b[6], m);
  xor xor7(add_sub[7], b[7], m);

  adder_8_bits adder(a, add_sub, m, sum, co);

endmodule // adder_subtr_8_bits

module adder_8_bits (a, b, ci, sum, co);

  input [7:0] a, b;
  input ci;
  output [7:0] sum;
  output co;
  wire carry1, carry2, carry3, carry4, carry5, carry6, carry7;

  full_adder add0(a[0], b[0], ci, sum[0], carry1);
  full_adder add1(a[1], b[1], carry1, sum[1], carry2);
  full_adder add2(a[2], b[2], carry2, sum[2], carry3);
  full_adder add3(a[3], b[3], carry3, sum[3], carry4);
  full_adder add4(a[4], b[4], carry4, sum[4], carry5);
  full_adder add5(a[5], b[5], carry5, sum[5], carry6);
  full_adder add6(a[6], b[6], carry6, sum[6], carry7);
  full_adder add7(a[7], b[7], carry7, sum[7], co);

endmodule // adder_8_bits


module full_adder (a, b, ci, sum, carry);

  input a, b, ci;
  output carry, sum;
  wire a_b, a_ci, b_ci;

  xor (sum, a, b, ci);
  and (a_b, a, b);
  and (a_ci, a, ci);
  and (b_ci, b, ci);
  or (carry, a_b, a_ci, b_ci);

endmodule // full_adder
