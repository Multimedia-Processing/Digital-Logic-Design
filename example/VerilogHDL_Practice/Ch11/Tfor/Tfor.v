// Ch11 Tfor.v
// for 之使用

module Tfor;
  integer A,i;
//-----------------------
  initial
    begin
      A = 5;			// A 初值為 5
      for (i=0; i<5; i=i+1)	// 迴圈 5 次
        #10 A = A + 1;		// 每 10 單位時間，A 加一
    end
//-----------------------
  initial
    $monitor($time,"  A=%2d",A); // 監控時間與 A

endmodule

