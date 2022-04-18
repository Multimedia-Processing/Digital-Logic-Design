module f (a, b, c, d, out);
  input a, b, c, d;
  output out;
  wire a_bar, b_bar, c_bar, d_bar;
  wire f_1, f_2, f_3, f_4, f_5;

  not(a_bar, a);
  not(b_bar, b);
  not(c_bar, c);
  not(d_bar, d);

  and(f_1, a, b_bar, c_bar, d_bar);
  and(f_2, a_bar, b_bar, d);
  and(f_3, b_bar, c, d_bar);
  and(f_4, a, c, d);
  and(f_5, a_bar, b_bar, c_bar);

  or(out, f_1, f_2, f_3, f_4, f_5);

endmodule // f
