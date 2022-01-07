module adder_4_assign_signed (a, b, c, d, s1, s2);
input signed [3:0] a, b;
input [3:0] c, d;
output signed [4:0] s1, s2;

assign s1 = a + b;
assign s2 = $signed(c) + $signed(d);

endmodule // adder_4_assign_signed
