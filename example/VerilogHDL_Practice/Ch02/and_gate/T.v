// Ch02 T.tfw
// 二輸入及閘 (測試平台程式)

// 時間單位 1ns, 時間精確度1 ps
`timescale 1ns/1ps

module T;
reg A = 1'b0;		// A 暫存器資料初值為‘0’
reg B = 1'b0;		// B 暫存器資料初值為‘0’
wire O;

// 建立and_gate 的模組例證
and_gate UUT (.A(A),.B(B),.O(O));

// initial程序結構區塊, 產生A、B輸入信號波形
initial
begin
  #100;			 // 100ns
    B = 1'b1; 		 // “01”
  #100; 		 // 200ns
    A = 1'b1;		 // “10”
    B = 1'b0;
  #100; 		 // 300ns
    B = 1'b1;		 // “11”
  end

initial
begin
  #400;			// 模擬終止時間  400 ns
    $stop;
end

endmodule
