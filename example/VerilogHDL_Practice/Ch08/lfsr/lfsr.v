// Ch08 lfsr.v
// 線性回授移位暫存器

module lfsr (Clk,Clr,Q);
input  Clk,Clr;		// 一位元輸入
output [3:1] Q;		// 三位元輸出
reg    [3:1] Q;		// 宣告為暫存器資料

// 上緣觸發時脈,上緣同步清除
always@ (posedge Clk) 
  if (Clr)
    Q = 3'b100;
  else
    Q = {Q[2:1],Q[1] ^ Q[3]};

endmodule
