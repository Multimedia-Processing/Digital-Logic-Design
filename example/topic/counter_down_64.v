module counter_down_64(clock, reset, q);

  input clock, reset;
  output [5:0] q;
  reg [5:0] q;

  always @ (posedge clock) begin
    if (reset | (q == 0)) begin
      q = 63;
    end else begin
      q = q - 1;
    end
  end

endmodule // counter
