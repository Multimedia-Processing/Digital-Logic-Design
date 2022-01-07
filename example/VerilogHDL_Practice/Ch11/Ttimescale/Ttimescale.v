// Ch11 Ttimescale.v
// 'timescale 之使用

 `timescale 10ns/1ns  // 時間單位10 ns, 時間精確度1 ns
  module Ttimescale;
  initial
    begin
      #1 $display($time," %2d",1);	// 10 ns時, 1*10 ns
      #2 $display($time," %2d",2);	// 30 ns時, 1+2
      #3 $display($time," %2d",3);	// 60 ns時, 3+3
      #1 $display($time," %2d",4);	// 70 ns時, 6+1
    end
  endmodule
