// Ch07 adder1.v
// 一位元全加法器 (assign 敘述與 if 敘述)

module adder1 (S_0, S_1, Co_0, Co_1, A, B, Ci);
input  A, B, Ci;		// A, B, Ci 一位元輸入
output S_0, S_1, Co_0, Co_1; 	// S 加法和, Co 進位
reg    S_1, Co_1;		// 宣告為暫存器資料

// 布林方程式描述 
assign S_0 = A ^ B ^ Ci;
assign Co_0 = (A & B) | (A & Ci) | (B & Ci);

// 查真值表描述 
always@ (A or B or Ci)
  if      ({A,B,Ci} == 3'b000)    {Co_1,S_1} = 2'b00; 
  else if ({A,B,Ci} == 3'b001)    {Co_1,S_1} = 2'b01; 
  else if ({A,B,Ci} == 3'b010)    {Co_1,S_1} = 2'b01; 
  else if ({A,B,Ci} == 3'b011)    {Co_1,S_1} = 2'b10; 
  else if ({A,B,Ci} == 3'b100)    {Co_1,S_1} = 2'b01; 
  else if ({A,B,Ci} == 3'b101)    {Co_1,S_1} = 2'b10; 
  else if ({A,B,Ci} == 3'b110)    {Co_1,S_1} = 2'b10; 
  else                            {Co_1,S_1} = 2'b11; 

endmodule
