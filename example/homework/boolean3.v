// f = a + b'cd' + a'bc'd

module boolean3 (f, a, b, c, d);
  input a, b, c, d;
  output f;
  wire a_inv, b_inv, c_inv, d_inv, b_inv_c_d_inv, a_inv_b_c_inv_d, f;

  not not1(a_inv, a);
  not not2(b_inv, b);
  not not3(c_inv, c);
  not not4(d_inv, d);
  and and1(b_inv_c_d_inv, b_inv, c, d_inv);
  and and2(a_inv_b_c_inv_d, a_inv, b, c_inv, d);
  or or1(f, a, b_inv_c_d_inv, a_inv_b_c_inv_d);

endmodule // boolean3
