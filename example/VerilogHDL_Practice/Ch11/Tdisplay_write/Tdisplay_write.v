// Ch11 Tdisplay_write.v
// $display 與 $write 之使用

module Tdisplay_write;
reg [3:0] A;
//-----------------------
initial
  begin
    A = 4'b1010;
    $display("Hi, I'm Fine");		// 顯示Hi, I'm Fine
    $display("%2d %b %h",5,A,8'ha5);	// 顯示5 1010 a5
    $write(4'b1010," ");		// 顯示10  14
    $write(14,"\n");
  end

endmodule
