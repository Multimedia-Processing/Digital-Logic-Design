// Ch07 gates.v
// 邏輯閘 (閘層描述與assign描述)

module gates (I1, I0, Not_0, Not_1, And_0, And_1, Nand_0, Nand_1,
       Or_0, Or_1, Nor_0, Nor_1, Xor_0, Xor_1, Xnor_0, Xnor_1);
input  I1,I0;
output Not_0, Not_1, And_0, And_1, Nand_0, Nand_1,
       Or_0, Or_1, Nor_0, Nor_1, Xor_0, Xor_1, Xnor_0, Xnor_1;

// 反閘
not (Not_0, I0);
assign Not_1 = ~I0;

// 及閘
and (And_0, I1, I0);
assign And_1 = I1 & I0;

// 反及閘
nand (Nand_0, I1, I0);
assign Nand_1 = ~(I1 & I0);

// 或閘
or (Or_0, I1, I0);
assign Or_1 = I1 | I0;

// 反或閘
nor (Nor_0, I1, I0);
assign Nor_1 = ~(I1 | I0);

// 互斥或閘
xor (Xor_0, I1, I0);
assign Xor_1 = I1 ^ I0;

// 互斥反或閘
xnor (Xnor_0, I1, I0);
assign Xnor_1 = I1 ~^ I0;

endmodule
