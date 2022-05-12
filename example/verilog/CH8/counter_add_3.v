module counter_add_3 (clock, reset, q);

input clock, reset;
output [5:0] q;
reg [5:0] q;

always @ (posedge clock) begin
  if (reset | (q == 51)) begin
    q = 0;
  end else begin
    q = q + 3;
  end
end

endmodule // counter_add_3
