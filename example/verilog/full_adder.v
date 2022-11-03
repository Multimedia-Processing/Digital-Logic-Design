module full_adder (a, b, ci, out);
  // 輸入輸出宣告
  input a, b, ci;
  output [1:0] out;

  assign out = a + b + ci;
  
// 描述模組內部電路敘述
endmodule // full_adder