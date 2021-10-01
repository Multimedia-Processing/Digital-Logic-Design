// Ch08 cnt4.v
// 倒數計數器以七段顯示

module cnt4 (Clk,Load,Q,A,B,C,D,E,F,G,L);
input  Clk,Load;		// 一位元輸入
output [3:0] Q;			// 四位元輸出
output A,B,C,D,E,F,G;		// 一位元輸出
output [6:0] L;			// 七位元輸出
reg    [3:0] Q;			// 宣告為暫存器資料
reg    [6:0] L;			// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步載入, 倒數計數器
always@ (posedge Clk) 
  if (Load)     	Q = 9;
  else if (Q == 0)	Q = 0;
  else	       		Q = Q - 1;

// 七段顯示, 組合邏輯電路
always@ (Q) 
  case (Q)
    0      : L = 7'h7e;
    1      : L = 7'h30;
    2      : L = 7'h6d;
    3      : L = 7'h79;
    4      : L = 7'h33;
    5      : L = 7'h5b;
    6      : L = 7'h1f;
    7      : L = 7'h70;
    8      : L = 7'h7f;
    9      : L = 7'h73;
    default: L = 7'h00;
  endcase
assign {A,B,C,D,E,F,G} = L;
 
endmodule
