// Ch08 rom.v
// 唯讀記憶體 4*bytes

module rom (Cs,Addr,Do);
parameter Words = 4;
parameter Bits  = 8;
input  Cs;			// 一位元輸入
input  [1:0] Addr;		// 二位元輸入
output [Bits-1:0] Do;		// 八位元輸出
reg    [Bits-1:0] Do;		// 八位元輸出

// 下緣觸發致能
always@ (negedge Cs) 
  begin
    case (Addr)
      0      	: Do = 8'h41;
      1		: Do = 8'h42;
      2 	: Do = 8'h43;
      default 	: Do = 8'h44; 
    endcase
  end
 
endmodule