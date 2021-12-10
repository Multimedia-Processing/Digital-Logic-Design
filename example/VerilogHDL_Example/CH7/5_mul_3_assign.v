module mul_5x4_assign (a, b, c, d, s1, s2);
input [4:0] a;
input [2:0] b;
input signed [4:0] c;
input signed [4:0] d;
output signed [5:0] s1, s2;

assign s1 = (a * b);
assign s2 = ($signed(a) * $signed(b));

endmodule // mul_5x4_assign
