module down_counter (clock, reset, q);

input clock, reset;
output [3:0] q;
reg [3:0] q;

always @ (posedge clock) begin
  if (reset | (q == 51)) begin
    q = 0;
  end else begin
    q = q + 3;
  end
end

endmodule // down_counter
