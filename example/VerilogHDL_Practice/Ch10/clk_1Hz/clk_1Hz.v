// Ch10 clk_1Hz.v
// 由 10M Hz 除頻至 1 Hz

module clk_1Hz (Clk10M,Clr,Clk1M,Clk100K,Clk10K,Clk1K,
                Clk100,Clk10,Clk1);
input  Clk10M,Clr;		// 一位元輸入
output Clk1M,Clk100K,Clk10K,Clk1K,
       Clk100,Clk10,Clk1;	// 一位元輸出

div10 D1 (Clk10M , Clr, Clk1M  );
div10 D2 (Clk1M  , Clr, Clk100K);
div10 D3 (Clk100K, Clr, Clk10K );
div10 D4 (Clk10K , Clr, Clk1K  );
div10 D5 (Clk1K  , Clr, Clk100 );
div10 D6 (Clk100 , Clr, Clk10  );
div10 D7 (Clk10  , Clr, Clk1   );

endmodule
