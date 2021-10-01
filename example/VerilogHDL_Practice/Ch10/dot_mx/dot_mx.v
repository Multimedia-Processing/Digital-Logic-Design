// Ch10 dot_mx.v
// 三色點矩陣

module dot_mx (Clk10M, Row, Cr, Cg);
input  Clk10M;			// 一位元輸入
output [1:8]  Row,Cr,Cg;	// 八位元輸出
reg    [1:8]  Row,Cr,Cg;	// 宣告為暫存器資料
reg    [25:0] Q;		// 宣告為暫存器資料
reg    Clk;			// 宣告為暫存器資料

// 除頻電路
always@ (posedge Clk10M)
  begin
    Q = Q + 1;
    Clk = Q[11];
  end

// Row 掃描信號, 序向邏輯電路
always@ (posedge Clk)
  case (Row)
    8'b00000001 : Row = 8'b10000000;  // Row1
    8'b10000000 : Row = 8'b01000000;  // Row2
    8'b01000000 : Row = 8'b00100000;  // Row3
    8'b00100000 : Row = 8'b00010000;  // Row4
    8'b00010000 : Row = 8'b00001000;  // Row5
    8'b00001000 : Row = 8'b00000100;  // Row6
    8'b00000100 : Row = 8'b00000010;  // Row7
    default     : Row = 8'b00000001;  // Row8
  endcase

always@ (Q[24] or Q[25] or Row)
  begin
// 紅色 LED 顯示, 組合邏輯電路
    if (Q[24] == 1)
      case (Row)
        8'b10000000 : Cr = 8'b00010000;  // Row1
        8'b01000000 : Cr = 8'b00100010;  // Row2
        8'b00100000 : Cr = 8'b01000100;  // Row3
        8'b00010000 : Cr = 8'b11011111;  // Row4
        8'b00001000 : Cr = 8'b01010001;  // Row5
        8'b00000100 : Cr = 8'b01001010;  // Row6
        8'b00000010 : Cr = 8'b01000100;  // Row7
        8'b00000001 : Cr = 8'b01011111;  // Row8
        default     : Cr = 8'b00000000;
      endcase
    else
      Cr = 8'b00000000;
// 綠色 LED 顯示, 組合邏輯電路
    if (Q[25] == 1)
      case (Row)
        8'b10000000 : Cg = 8'b00010000;  // Row1
        8'b01000000 : Cg = 8'b00100010;  // Row2
        8'b00100000 : Cg = 8'b01000100;  // Row3
        8'b00010000 : Cg = 8'b11011111;  // Row4
        8'b00001000 : Cg = 8'b01010001;  // Row5
        8'b00000100 : Cg = 8'b01001010;  // Row6
        8'b00000010 : Cg = 8'b01000100;  // Row7
        8'b00000001 : Cg = 8'b01011111;  // Row8
        default     : Cg = 8'b00000000;
      endcase
    else
      Cg = 8'b00000000;
  end

endmodule
