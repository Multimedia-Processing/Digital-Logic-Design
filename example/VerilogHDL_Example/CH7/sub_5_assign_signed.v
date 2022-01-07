module sub_5_assign_signed (a, b, s);
input [4:0] a, b;
output signed [4:0] s;

assign s = ($signed(a) - $signed(b));

endmodule // sub_5_assign_signed
