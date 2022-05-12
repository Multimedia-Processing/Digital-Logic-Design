module down_counter (clock, reset, q);

input clock, reset;
output [3:0] q;
reg [3:0] q;

always @ (posedge clock) begin
  if (reset | (q == 0)) begin
    q = 9;
  end else begin
    q -= 1;
  end
end

endmodule // down_counter
