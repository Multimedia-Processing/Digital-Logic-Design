// Ch08 pili_2.v
// 七段顯示霹靂燈

module pili_2 (Clk,Clr,Q,A,B,C,D,E,F);
input  Clk,Clr;			// 一位元輸入
output [3:0] Q;			// 四位元輸出
output A,B,C,D,E,F;		// 一位元輸出
reg    [3:0] Q;			// 宣告為暫存器資料
reg    [5:0] L;			// 宣告為暫存器資料

// 上緣觸發時脈, 上緣同步清除, 模式12上數計數器
always@ (posedge Clk) 
  if (Clr)		Q = 1;
  else if (Q == 12)	Q = 1;		// 計數值 1 ~ 12
  else			Q = Q + 1;

// 七段顯示, 組合邏輯電路
always@ (Q) 
  case (Q)
    1       :  L = 6'b100000;  // A, 順時針
    2       :  L = 6'b010000;  // B, 順時針
    3       :  L = 6'b001000;  // C, 順時針
    4       :  L = 6'b000100;  // D, 順時針
    5       :  L = 6'b000010;  // E, 順時針
    6       :  L = 6'b000001;  // F, 順時針
    7       :  L = 6'b100000;  // A, 逆時針
    8       :  L = 6'b000001;  // F, 逆時針
    9       :  L = 6'b000010;  // E, 逆時針
    10      :  L = 6'b000100;  // D, 逆時針
    11      :  L = 6'b001000;  // C, 逆時針
    12      :  L = 6'b010000;  // B, 逆時針
    default :  L = 6'b000000;  // 不顯示
  endcase
assign {A,B,C,D,E,F} = L;
 
endmodule
