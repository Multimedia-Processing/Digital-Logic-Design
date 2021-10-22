// Ch08 ram.v
// 隨機存取記憶體 4*bytes

module ram (Cs,We,Addr,Di,Do);
parameter Words = 4;
parameter Bits  = 8;
input  Cs,We;				// 一位元輸入
input  [1:0] Addr;			// 二位元輸入
input  [Bits-1:0] Di;			// 八位元輸入
output [Bits-1:0] Do;			// 八位元輸出
reg    [Bits-1:0] Do;			// 八位元輸出
reg    [Bits-1:0] Ram [Words-1:0];	// 宣告為暫存器資料

// 下緣觸發致能
always@ (negedge Cs) 
  if (We)		// 寫入
    begin
	   Ram[Addr] = Di;
	   Do = 8'bz;
	 end
  else			// 讀出
    Do = Ram[Addr]; 
 
endmodule
