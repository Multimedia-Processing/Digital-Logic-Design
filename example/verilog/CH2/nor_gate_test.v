`timescale 1ns/1ps

module nor_test ();
  // 輸入輸出宣告
  reg a ;
  reg b ;
  wire c;

  nor_gate UUT(a, b, c);
  
  initial begin

    a = 1'b0;
    b = 1'b0;

    #100;

    a = 1'b0;
    b = 1'b1;

    #100;

    a = 1'b1;
    b = 1'b0;

    #100;

    a = 1'b1;
    b = 1'b1;
    end

    initial begin
        #400;
        $stop;
    end
    
  // 描述模組內部電路敘述
endmodule // nor_gate