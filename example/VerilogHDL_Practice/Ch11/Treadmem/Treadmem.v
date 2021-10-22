// Ch11 Treadmem.v
// $freadmem 之使用

module Treadmem;
reg [3:0] A [0:7];	// 宣告 A 為 8 個四位元的記憶體
integer i;
//-----------------------
initial
  begin
// 由 data.txt 讀入資料, 放置於 A[2]~A[5]
    $readmemb("data.txt",A,2,5);
// 顯示記憶體內容
    for (i=0;i<=7;i=i+1)
      $display("Memory [%2d] : %b",i,A[i]);
  end
endmodule
