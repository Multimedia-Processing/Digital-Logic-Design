// Ch11 Trandom1.v
// $random 之使用

module Trandom1;
integer Seed;
reg [31:0] A;	// 宣告 A 為 32 位元暫存器資料
//-----------------------
initial
  Seed = 2;	// 種子數值設為 2
//-----------------------
always
  #1		// 每一單位時間取一個亂數值
    begin
      A = $random(Seed);	// 依種子值取亂數
      $display ($time,"  ",A);	// 顯示亂數值
    end
//-----------------------
initial
  #5				// 5 單位時間後結束模擬
    $finish;

endmodule
