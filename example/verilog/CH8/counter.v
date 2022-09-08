module counter (clock, reset, q);

input clock, reset;
output [3:0] q;
reg [3:0] q;

always @ (posedge clock)
  if (reset | (q == 9))
    q = 0;
  else
    q += 1;

endmodule // counter
