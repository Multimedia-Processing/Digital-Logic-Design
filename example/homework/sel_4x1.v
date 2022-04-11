module sel_4x1 (a, b, c, d, sel0, sel1, out);
input a, b, c, d;
input sel0, sel1;
output out;
wire sel0_b, sel1_b;
wire a_sel, b_sel, c_sel, d_sel;

not not_sel0(sel0_b, sel0);
not not_sel1(sel1_b, sel1);

and(a_sel, a, sel1_b, sel0_b);
and(b_sel, b, sel1_b, sel0);
and(c_sel, c, sel1, sel0_b);
and(d_sel, d, sel1, sel0);
or(out, a_sel, b_sel, c_sel, d_sel);

endmodule // sel_4x1
