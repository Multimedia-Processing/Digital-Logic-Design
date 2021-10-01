// Ch10 buzzer.v
// 產生音階頻率

module buzzer (Clk10M,Clr,Up,Down,Clk_o,State,Cnt);
input  Clk10M,Clr,Up,Down;	// 一位元輸入
output Clk_o;			// 一位元輸出
output [ 2:0] State;		// 三位元輸出
output [14:0] Cnt;		// 15 位元輸出	
reg    Clk_d,Clk_o;		// 宣告為暫存器資料
reg    [15:0] Q1;		// 去彈跳除頻
reg    [14:0] Q2;		// 音階除頻
reg    [ 2:0] State;		// 0 ~ 6 : Do, Re .., Si		
reg    [14:0] Cnt;		// Do, Re .., Si 的除數

// 產生計數值
always@ (posedge Clk10M or posedge Clr)
  begin
    if (Clr)	
      Q1 = 0;
    else
      Q1 = Q1 + 1;
//    Clk_d = Q1[15];		// ~ 156 Hz
    Clk_d = Q1[1];		// 模擬用
  end	

// 取得去彈跳後按鍵值, 前緣一週期
debounce d1 (Clk_d,   Up,   Up_d);
debounce d2 (Clk_d, Down, Down_d);

// 產生狀態值
always@ (posedge Clk_d or posedge Clr)
  if (Clr)
    State = 0;
  else if (Up_d)
    if (State == 6)		// = Si ?
      State = State;		// 維持 Si
    else
      State = State + 1; 	// 上數
  else if (Down_d)
    if (State == 0)		// = Do ?
      State = State;		// 維持 Do
    else
      State = State - 1;	// 下數

// 多工器由 State 取得除數
always@ (State)
  case (State)
    0       : Cnt = 19120;	// Do  的除數
    1       : Cnt = 17036;	// Re  的除數
    2       : Cnt = 15175;	// Mi  的除數
    3       : Cnt = 14327;	// Fa  的除數
    4       : Cnt = 12755;	// Sol 的除數
    5       : Cnt = 11364;	// La  的除數
    6       : Cnt = 10121;	// Si  的除數
    default : Cnt = 19120;
  endcase

// 除頻得音階頻率
always@ (posedge Clk10M)
  if (Clr || Q2 == Cnt)	
    Q2 = 0;
  else
    Q2 = Q2 + 1;

// 多工器由 State 取得音階頻率
always@ (State)
  if (State <= 1)	
    Clk_o = Q2[14];		// Do, Re 音階頻率
  else
    Clk_o = Q2[13];		// Mi ~ Si音階頻率
	 
endmodule
