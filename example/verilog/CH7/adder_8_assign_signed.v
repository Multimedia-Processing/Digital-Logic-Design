module adder_4_assign_signed (a, b, s);
input signed [7:0] a, b;
output signed [8:0] s;

assign s = a + b;

endmodule // adder_4_assign_signed
