`timescale 1ns/1ps

module buf_test ();
  // 輸入輸出宣告
  reg a ;
  wire b;







 
  buf_gate UUT(a, b);
  
  initial begin

    a = 1'b0;

    #100;

    a = 1'b1;

   
    end

    initial begin
        #200;
        $stop;
    end
    
  // 描述模組內部電路敘述
endmodule // buf_gate