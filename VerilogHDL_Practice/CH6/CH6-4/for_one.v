module for_one (clk, d, q1, q2);
input clk, d;
output [3:0] q1, q2;
reg [3:0] q1, q2;
integer i;

//使用for迴圈，阻隔性指定敘述
always @ (posedge clk) begin
  for (i = 3; i > 0; i = i - 1)
    q1[i] <= q1[i-1];
  q1[0] = d;
end

always @ (posedge clk) begin
  for (i = 1; i <= 3; i = i + 1)
    q2[i] = q2[i-1];
  q2[0] = d;
end
endmodule // for_one
