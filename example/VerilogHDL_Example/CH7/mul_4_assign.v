module mul_4_assign (a, b, c, d, s1, s2);
input signed [3:0] a, b;
input [3:0] c, d;
output signed [4:0] s1, s2;

assign s1 = (a * b);
assign s2 = ($signed(a) * $signed(b));

endmodule // mul_4_assign
