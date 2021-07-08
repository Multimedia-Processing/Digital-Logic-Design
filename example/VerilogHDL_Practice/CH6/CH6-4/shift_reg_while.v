module shift_reg_while (clk, d, q);
input clk, d;
output [3:0] q;
reg [3:0] q;
integer i;

always @ (posedge clk) begin
  i = 3;
  while (i > 0) begin
    q[i] = q[i-1];
    i = i - 1;
  end
  q[0] = d;
end

endmodule // shift_reg_while
