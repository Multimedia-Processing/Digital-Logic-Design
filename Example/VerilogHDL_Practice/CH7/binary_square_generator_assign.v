module binary_square_generator_assign (i0, i1, o0, o1, o2, o3);
input i0, i1;
output o0, o1, o2, o3;

assign o3 = (i0 & i1);
assign o2 = (~i0 & i1);
assign o1 = 0;
assign o0 = (i0 & ~i1) | (i0 & i1);

endmodule // binary_square_generator_assign
