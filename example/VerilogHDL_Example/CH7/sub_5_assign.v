module sub_5_assign (a, b, c, d, s1, s2);
input signed [4:0] a, b;
input [4:0] c, d;
output signed [5:0] s1, s2;

assign s1 = (a - b);
assign s2 = ($signed(a) - $signed(b));

endmodule // sub_5_assign
