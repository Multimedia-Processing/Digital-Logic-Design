`timescale 1ns/1ps

module full_adder_gate_test ();
  // 輸入輸出宣告
  reg a, b, ci ;
  wire s, co;

  full_adder_gate UUT(a, b, ci, s, co);
  
  initial begin

    a = 1'b0;
    b = 1'b0;
    ci = 1'b0;

    #100;

    a = 1'b0;
    b = 1'b0;
    ci = 1'b1;

    #100;

    a = 1'b0;
    b = 1'b1;
    ci = 1'b0;

    #100;

    a = 1'b0;
    b = 1'b1;
    ci = 1'b1;

    #100;

    a = 1'b1;
    b = 1'b0;
    ci = 1'b0;

    #100;

    a = 1'b1;
    b = 1'b0;
    ci = 1'b1;

    #100;

    a = 1'b1;
    b = 1'b1;
    ci = 1'b0;

    #100;

    a = 1'b1;
    b = 1'b1;
    ci = 1'b1;
    end

    initial begin
        #800;
        $finish;
    end
    
  // 描述模組內部電路敘述
endmodule // full_adder_gate_test