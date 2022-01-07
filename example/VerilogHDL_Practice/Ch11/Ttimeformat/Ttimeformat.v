// Ch11 Ttimeformat.v
// $timeformat 之使用

// 時間單位 100 ps, 精準度 10 ps 
`timescale 100ps/10ps
module Ttimeformat;
//------------------------------
// 時間單位 ns, 取小數二位 
initial
  $timeformat (-9,2," * 1 ns",20);
//------------------------------
initial
  begin 
    #1  $display ("%t",$time);
    #1  $display ("%t",$time);
  end

endmodule
