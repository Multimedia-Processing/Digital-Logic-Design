module traffic_lights ();
`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"
`include "decoder_6x20.v"

endmodule // traffic_lights

module down_counter (clock, reset, q);

  input clock, reset;
  output [5:0] q;
  reg [5:0] q;

  always @ (posedge clock) begin
    if (reset | (q == 0)) begin
      q = 64;
    end else begin
      q -= 1;
    end
  end

endmodule // down_counter
