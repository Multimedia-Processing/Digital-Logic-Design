module full_adder_assign(a, b, ci, s, co);
input a, b, ci;
output co,s;

assign {co,s} = a + b + ci;


endmodule //full_adder_assign