// Ch11 Tfile.v
// $fopen, $fclose, $fdisply 與 $fwrite 之使用

module Tfile;
reg [3:0] A;
integer Tx;
//-----------------------
initial
  begin
    A = 4'b1010;
    // 開啟檔案, 檔名 result.txt, 檔案代碼 Tx
    Tx = $fopen("result.txt");		// 顯示5 1010 a5
    $fdisplay(Tx,"Hi, I'm Fine");	// 顯示Hi, I'm Fine
    $fdisplay(Tx,"%2d %b %h",5,A,8'ha5);// 顯示5 1010 a5
    $fwrite(Tx,4'b1010," ");		// 顯示10  14
    $fwrite(Tx,14,"\n");		// 關閉檔案
    $fclose(Tx);
  end

endmodule
