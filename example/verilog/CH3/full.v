module full (a, b, ci, out);

input [3:0]a, b, ci;
output [4:0]out;

assign out = a + b + ci;

endmodule
