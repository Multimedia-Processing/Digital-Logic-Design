// Ch09 ring_cnt.v
// 環計數器

module ring_cnt (Clk, Cr, Q);
input  Clk, Cr;		// 一位元輸入
output [3:0] Q;		// 四位元輸出

// 呼叫例證, 依順序
dff dff3 (Clk, Cr,  Q[2], Q[3]),		// 依順序呼叫二個例證
    dff2 (Clk, Cr,  Q[1], Q[2]);		// (Ck, Clr, D ,Q)	

// 呼叫例證, 依名稱 (順序可以互調)
dff dff1 (.Ck(Clk), .D(Q[0]), .Q(Q[1]) , .Clr(Cr));
dff dff0 (.Clr(Cr), .Ck(Clk), .D(~Q[3]), .Q(Q[0]));
 
endmodule

