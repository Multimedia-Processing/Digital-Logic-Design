module adder_one_assign (a, b, ci, co, sum);
input a, b, ci;
output co, sum;

assign sum = a ^ b ^ ci;
assign co = (a & b) | (a & ci) | (b & ci);

endmodule // adder_one_assign
