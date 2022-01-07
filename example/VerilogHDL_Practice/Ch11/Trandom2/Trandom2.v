// Ch11 Trandom2.v
// $random 之使用

module Trandom2;
integer Seed;
integer A,B;	// 宣告 A,B 為整數資料
//-----------------------
initial
  Seed = 2;	// 種子數值設為 2
//-----------------------
always
  #1		// 每一單位時間取一個亂數值
    begin
// 依種子值取亂數 -20 ~ +20
      A = $random(Seed) % 21;
// 依種子值取亂數 0 ~ 59
      B = {$random(Seed)} % 60;
// 顯示亂數值
      $display ($time,"  A = %4d \t  B = %4d",A,B);
    end
//-----------------------
initial
  #10				// 10 單位時間後結束模擬
    $finish;

endmodule
