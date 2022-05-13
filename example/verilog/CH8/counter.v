module counter (clock, reset, q);

input clock, reset;
output [3:0] q;
reg [3:0] q;

always @ (posedge clock) begin
  if (reset | (q == 9)) begin
    q = 0;
  end else begin
    q += 1;
  end
end

endmodule // counter
