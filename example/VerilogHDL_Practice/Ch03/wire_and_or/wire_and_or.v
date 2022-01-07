// Ch03 wire_and_or.v
// 連接線 (wire, wired-and, wired-or)

module wire_and_or(A, B, C, D, E);
input  A,B;
output C,D,E;
wire   An;  // 宣告中繼信號 An 為 wire 資料
wand   D;   // 宣告輸出埠 D 為 wand 資料
wor    E;   // 宣告輸出埠 E 為 wor 資料

// wire
assign An = ~A;
assign C  = An & B;    // C = /A．B

// wired-and
assign D = A;
assign D = B;

// wired-or
assign E = A;
assign E = B;

endmodule
