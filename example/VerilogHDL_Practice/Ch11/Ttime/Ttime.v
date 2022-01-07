// Ch11 Ttime.v
// $time, $stime 與 $realtime 之使用

// 時間單位 1 ns, 精準度 100 ps 
`timescale 1ns/100ps
module Ttime;
parameter T = 2.6;
//-----------------------
initial
  #T
    begin 
      $display ("$time     = ",$time);
      $display ("$stime    = ",$stime);
      $display ("$realtime = ",$realtime);
    end

endmodule
