module gates(I1, I0, NOT_0, NOT_1, AND_0, AND_1, NAND_0, NAND_1, OR_0, OR_1, NOR_0, NOR_1, XOR_0, XOR_1, XNOR_0, XNOR_1);

input I1, I0;
output NOT_0, NOT_1, AND_0, AND_1, NAND_0, NAND_1, OR_0, OR_1, NOR_0, NOR_1;
output XOR_0, XOR_1, XNOR_0, XNOR_1;

// 反閘
not(NOT_0, I0);
assign NOT_1 = (~I0);

// 及閘
and(AND_0, I1, I0);
assign AND_1 = (I1 & I0);


nand(NAND_0, I1, I0);
assign NAND_1 = ~(I1 & I0);

or(OR_0, I1, I0);
assign OR_1 = (I1 | I0);

nor(NOR_0, I1, I0);
assign NOR_1 = ~(I1 | I0);

xor(XOR_0, I1, I0);
assign XOR_1 = (I1 ^ I0);

xnor(XNOR_0, I1, I0);
assign XNOR_1 = (I1 ~^ I0);

endmodule // gates
