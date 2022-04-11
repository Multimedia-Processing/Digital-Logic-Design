module sel_2x1 (a, b, sel, out);
  input a, b, sel;
  output out;
  wire sel_a, sel_b;

  assign sel_a = ~(a & ~sel);
  assign sel_b = ~(b & sel);
  assign out = ~(sel_a & sel_b);

endmodule // sel_2x1
