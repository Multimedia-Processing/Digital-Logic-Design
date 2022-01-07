// Ch10 dice.v
// 擲骰子遊戲

module dice (Clk10M,Start,Led);
input  Clk10M,Start;	// 一位元輸入 (啟動)
output [ 6:0] Led;	// 七位元輸出 (骰子七段) 
reg    [ 6:0] Led;	// 宣告為暫存器資料
reg    [20:0] Cnt1;	// 計數器 (除頻)
reg    [ 5:0] Cnt2;	// 計數器 (控制狀態)
reg    [ 1:0] State;	// 骰子顯示狀態
reg    Clk,Dice_clk;	// 骰子顯示的頻率

// 除頻電路 
always@ (posedge Clk10M)
  begin
    Cnt1 = Cnt1 + 1;
    Clk = Cnt1[15];
  end

// 狀態機器 
always@ (posedge Clk)
  if (Start == 0)		// 骰子開始運轉
    begin
      State = 3;		// 骰子顯示的起始狀態
      Cnt2  = 0;
    end
  else				// 骰子顯示開始減速
    begin
      Cnt2 = Cnt2 + 1;
      if (Cnt2 == 6'b111111)
        case (State)
          3   	  : State = 2; 	// 骰子顯示狀態遞減
          2       : State = 1;
          default : State = 0;
        endcase
    end

// 骰子顯示頻率依狀態遞減
always@ (State)
  case (State)
    3       : Dice_clk = Cnt1[18]; 
    2       : Dice_clk = Cnt1[19];
    1       : Dice_clk = Cnt1[20];
    default : Dice_clk = 0;	// 骰子停止
  endcase

// 骰子 LED 的顯示值
always@ (posedge Dice_clk)
  case (Led)
    7'b0001000	: Led = 7'b0100010; // 2
    7'b0100010	: Led = 7'b0011100; // 3
    7'b0011100	: Led = 7'b1010101; // 4
    7'b1010101	: Led = 7'b1011101; // 5
    7'b1011101	: Led = 7'b1110111; // 6
    default 	: Led = 7'b0001000; // 1
  endcase

endmodule
