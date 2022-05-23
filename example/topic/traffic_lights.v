`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"
`include "decoder_6x20.v"

module traffic_lights (clock, reset, row_traffic_lights, column_traffic_lights,
  row_display, column_display);
input clock, reset;
output [2:0] row_traffic_lights, column_traffic_lights;
output [13:0] row_display, column_display;
reg [13:0] row_display, column_display;
reg [2:0] row_traffic_lights, column_traffic_lights;
reg [5:0] coder;
reg [19:0] decoder;
wire [7:0] row_bcd, column_bcd;

down_counter count (clock, reset, coder);
decoder_6x20 dcode (clock, reset, coder, decoder);
binary_to_bcd row_bcd_circuit(decoder[0:6], row_bcd);
binary_to_bcd column_bcd_circuit(decoder[0:7], column_bcd);
seven_segment_display_assign seven_seg_row_0(row_bcd[0:3], row_display[0:6]);
seven_segment_display_assign seven_seg_row_1(row_bcd[4:7], row_display[6:13]);
seven_segment_display_assign seven_seg_column_0(column_bcd[0:3], column_display[0:6]);
seven_segment_display_assign seven_seg_column_1(column_bcd[4:7], column_display[6:13]);

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
