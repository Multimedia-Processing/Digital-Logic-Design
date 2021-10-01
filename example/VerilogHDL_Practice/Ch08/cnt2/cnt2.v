// Ch08 cnt2.v
// BCD 计璸计竟籔BCD 计计璸计竟
// 计璸计竟

module cnt2 (Clk,Clr,Load,Q1,Q2,Q3);
input  Clk,Clr,Load;	// じ块
output [3:0] Q1,Q2,Q3;	// じ块 
reg    [3:0] Q1,Q2,Q3;	// 既竟戈

// 絫牟祇, 絫獶˙睲埃, BCD计璸计竟
always@ (posedge Clk or posedge Clr) 
  if (Clr)        	Q1 = 0;
  else if (Q1 == 9) 	Q1 = 0;
  else	          	Q1 = Q1 + 1;

// 絫牟祇, 絫˙睲埃, BCD 计计璸计竟
always@ (negedge Clk) 
  if (Clr)        	Q2 = 9;
  else if (Q2 == 1) 	Q2 = 9;
  else	          	Q2 = Q2 - 2;

// 絫牟祇, 絫˙更, 计璸计竟
always@ (posedge Clk) 
  if (!Load)      	Q3 = 10;
  else if (Q3 == 0) 	Q3 = 0;
  else	          	Q3 = Q3 - 1;

endmodule