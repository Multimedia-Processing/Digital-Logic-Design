// Ch10 BCD999_1.v
// 玻ネ 0 ~ 999 璸计

module BCD999_1 (Clk,Clr,Q);
input  Clk,Clr;		// じ块
output [11:0] Q;	// じ块
reg    [11:0] Q;	// 既竟戈

// 玻ネ璸计
always@(posedge Clk)
  if (Clr || Q == 12'h999)	// 单 999 	
    Q = 0;			// 场耴箂
  else
    if (Q[7:0] == 8'h99)	// 99,199...899
      begin
        Q[11:8] = Q[11:8]+1;	// κ计
        Q[7:0]=0;		// 计籔计耴箂
      end
    else
      if (Q[3:0] == 4'h9)	// 9,19...89
        begin
          Q[7:4] = Q[7:4]+1;	// 计
          Q[3:0]=0;		// 计耴箂
        end
      else
        Q[3:0] = Q[3:0]+1;	// 计

endmodule
