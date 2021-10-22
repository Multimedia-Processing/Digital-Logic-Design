// Ch10 kb2.v
// 鍵盤掃描輸入, 七段顯示輸出

module kb2 (Clk10M,Clr,Co,De,A,B,C,D,E,F,G,FN);
input  Clk10M,Clr;		// 一位元輸入
input  [1:3]  Co;		// 三位元輸入
output [3:1]  De;		// 三位元輸出
output A,B,C,D,E,F,G,FN;	// 一位元輸出
reg    [3:1]  De;		// 宣告為暫存器資料
reg    [6:0]  L;
reg    [15:0] Cnt;
reg    [3:0]  N,DB;
reg    [23:0] Acc;
reg    [2:0]  NC,DD;
reg    FN,Scan_clk;

// 產生合適的掃描信號與取樣時脈信號
always@ (posedge Clk10M)
  begin
    if (Clr)
      Cnt = 0;
    else
      begin
        Cnt = Cnt + 1;
        De       = Cnt[15:13]; // 實際電路用這組
        Scan_clk = Cnt[12];
//        De       = Cnt[4:2];	 // 模擬電路用這組
//        Scan_clk = Cnt[1];
	  end
  end

// 以 Scan_clk 對鍵盤取樣
always@ (posedge Scan_clk or posedge Clr)
  begin
    if (Clr == 1)
      begin
        FN = 0;
        N  = 4'b1111;
        DD = 0;
      end
    else
      if (FN == 0)			// 按鍵彈起時
        begin
          case ({De,Co})
            6'b000011  : N = 4'b0001;  	// 1
            6'b000101  : N = 4'b0010;  	// 2
            6'b000110  : N = 4'b0011;  	// 3
            6'b001011  : N = 4'b0100;  	// 4
            6'b001101  : N = 4'b0101;  	// 5
            6'b001110  : N = 4'b0110;  	// 6
            6'b010011  : N = 4'b0111;  	// 7
            6'b010101  : N = 4'b1000;  	// 8
            6'b010110  : N = 4'b1001;  	// 9
            6'b011101  : N = 4'b0000;  	// 0
            default    : N = 4'b1111;
          endcase
          if (Co != 3'b111)		// 按鍵壓下
            begin
              FN = 1;			// 設定 FN	
              DD = De;			// 儲存 De
            end
        end 
      else				// 有按鍵壓下時
        if (Co == 3'b111 && DD == De)	// 偵測按鍵彈起
          FN = 0;			// 解除 FN
  end

// FN 下緣觸發, 計數 NC 按鍵數, 儲存 Acc 已按鍵值
always@ (negedge FN or posedge Clr)
  if (Clr)
    begin
      Acc = 24'hffffff;
      NC  = 0;
    end
  else
    if      (NC == 0)			// 記錄到最左邊的位元組
      begin
        Acc = {N,Acc[19:0]};
        NC = NC + 1;
      end
    else if (NC == 1)			// 記錄到左邊第二個位元組
      begin
        Acc = {Acc[23:20],N,Acc[15:0]};
        NC = NC + 1;
      end    
    else if (NC == 2)
      begin
        Acc = {Acc[23:16],N,Acc[11:0]};
        NC = NC + 1;
      end   
    else if (NC == 3)
      begin
        Acc = {Acc[23:12],N,Acc[7:0]};
        NC = NC + 1;
      end   
    else if (NC == 4)
      begin
        Acc = {Acc[23:8],N,Acc[3:0]};
        NC = NC + 1;
      end
    else if (NC == 5)			// 記錄到最右邊的位元組
      begin
        Acc = {Acc[23:4],N};
        NC = NC + 1;
      end 

// 多工器, 依照 De 狀況將 Acc 部分分到 DB 內
always@ (De)
  case (De)
    0       : DB = Acc[23:20];
    1       : DB = Acc[19:16];
    2       : DB = Acc[15:12];
    3       : DB = Acc[11: 8];
    4       : DB = Acc[ 7: 4];
    5       : DB = Acc[ 3: 0];
    default : DB = 4'b1111;
  endcase

// 二進制對七段解碼
always@ (DB)
  case (DB)
    0       : L = 7'b1111110;
    1       : L = 7'b0110000;
    2       : L = 7'b1101101;
    3       : L = 7'b1111001;
    4       : L = 7'b0110011;
    5       : L = 7'b1011011;
    6       : L = 7'b1011111;
    7       : L = 7'b1110000;
    8       : L = 7'b1111111;
    9       : L = 7'b1111011;
    default : L = 7'b0000000;
  endcase
assign {A,B,C,D,E,F,G} = L;

endmodule


