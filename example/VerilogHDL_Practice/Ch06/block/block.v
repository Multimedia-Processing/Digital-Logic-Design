// Ch06 block.v
// 阻隔性與非阻隔性敘述之使用 (行為敘述)

module block (D, Clk, X, Y);
input  D,  Clk;		// D, Clk 一位元輸入
output [3:0] X, Y;	// X, Y 四位元輸出 
reg    [3:0] X, Y;	// 宣告 X, Y 為暫存器資料 

always@ (posedge Clk)	// 時脈上緣觸發
  begin
// 阻隔性敘述
    X[0]  = D;
    X[1]  = X[0];
    X[2]  = X[1];
    X[3]  = X[2];

// 非阻隔性敘述
    Y[0] <= D;
    Y[1] <= Y[0];
    Y[2] <= Y[1];
    Y[3] <= Y[2];
  end

endmodule

