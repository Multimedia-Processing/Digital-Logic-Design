// Ch09 all_zero_one.v
// 八位元全 0 全 1 檢查器

module all_zero_one (D,Zero,One);
input  [7:0] D;			// 八位元輸入
output Zero,One;		// 一位元輸出
reg    Zero,One,ZH,ZL,OH,OL;	// 宣告為暫存器資料

// 父層電路模組
always@(D)
  begin
    checker (D[7:4], ZH, OH);
    checker (D[3:0], ZL, OL);
    Zero = ZH & ZL;
    One  = OH & OL;
  end
//-----------------------------------------------
// 設計任務 (四位元全 0 全 1 檢查器)
task checker;
input  [3:0] I;
output Z,O;
 {Z,O} =  {~|I, &I};
endtask

endmodule
