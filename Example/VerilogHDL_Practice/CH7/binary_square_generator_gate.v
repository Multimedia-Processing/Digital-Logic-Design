module binary_square_generator_gate (i0, i1, o0, o1, o2, o3);

input i0, i1;
output o0, o1, o2, o3;
wire w0, w1;

and(o3, i0, i1);
and(o2, ~i0, i1);
and(o1, 0, 0);
and(w0, i0, ~i1);
and(w1, i0, i1);
or(o0, w0, w1);

endmodule // binary_square_generator_gate
