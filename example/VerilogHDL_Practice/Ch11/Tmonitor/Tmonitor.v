// Ch11 Tmonitor.v
// $monitor 之使用

module Tmonitor;
  integer A;
//-----------------------
  initial
    begin
      A = 1;		// A 初值為 1
      forever		// 無限迴圈
        #10 A = A + 1;	// 每 10 單位時間，A 加一
    end
//-----------------------
  initial
    #80 $finish;	// 80 單位時間時，模擬結束
//-----------------------
  initial
    begin
      #10 $monitoroff;	// 10 單位時間時，關閉監控
      #50 $monitoron;	// 60 單位時間時，開啟監控
    end
//-----------------------
  initial
    $monitor($time,"  A=%2d",A); // 監控時間與 A

endmodule

