// Ch07 bi_io.v
// 雙向輸出入埠

module bi_io (C,Di1,Di2,Do,Dio1,Dio2);
input  C,Do;		// 一位元輸入
output Di1,Di2;		// 一位元輸出
inout  Dio1,Dio2;	// 一位元雙向輸出入

// 使用邏輯閘層次敘述
bufif1 (Dio1, Do, C);
buf    (Di1, Dio1); 

// 使用 assign 敘述
assign Dio2 = C ? Do : 1'bz;
assign Di2 = Dio2; 

endmodule
