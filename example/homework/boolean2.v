// f = a'b'c' + abc'

module f2_not (finv, a, b, c, d);
  input a, b, c, d;
  output finv;
  wire a_inv, b_inv, c_inv, a_inv_b_inv_c, abc_inv, f;

  not not1(a_inv, a);
  not not2(b_inv, b);
  not not3(c_inv, c);
  and and1(a_inv_b_inv_c, a_inv, b_inv, c);
  and and2(abc_inv, a, b, c_inv);
  or or1(f, a_inv_b_inv_c, abc_inv);
  not not4(finv, f);

endmodule // f2_not

module f2 (f, a, b, c, d);
  input a, b, c, d;
  output f;
  wire a_inv, b_inv, c_inv, a_inv_b_inv_c, abc_inv, f;

  not not1(a_inv, a);
  not not2(b_inv, b);
  not not3(c_inv, c);
  and and1(a_inv_b_inv_c, a_inv, b_inv, c);
  and and2(abc_inv, a, b, c_inv);
  or or1(f, a_inv_b_inv_c, abc_inv);

endmodule // f2
