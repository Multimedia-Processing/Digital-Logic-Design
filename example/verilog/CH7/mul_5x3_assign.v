module mul_5x3_assign (a, b, c, d, s1, s2);
input [4:0] a;
input [2:0] b;
input signed [4:0] c;
input signed [2:0] d;
output signed [7:0] s1, s2;

assign s1 = ($signed(a) * $signed(b));
assign s2 = (c * d);

endmodule // mul_5x3_assign
