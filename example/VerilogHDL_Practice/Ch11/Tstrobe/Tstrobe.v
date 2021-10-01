// Ch11 Tstrobe.v
// $strobe 之使用

module Tstrobe;
integer A;
initial
  begin
    A = 1;
    #1
      A = 2;
      $display ("A=%2d", A);		// 將顯示 A＝2
      $strobe ("A=%2d", A);		// 將顯示 A＝3，不是2
      A = 3;
    #1
      $finish;	
  end

endmodule
