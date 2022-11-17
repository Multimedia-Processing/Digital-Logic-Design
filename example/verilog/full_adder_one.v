module full_adder_one (a, b, ci, out);


input  a, b, ci;
output [1:0]out;
assign out= a+ b+ ci;

endmodule // full_add_one
