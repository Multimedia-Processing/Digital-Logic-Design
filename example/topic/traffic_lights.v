`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"
`include "decoder_6x20.v"
`include "counter_down_64.v"

module traffic_lights (clock, reset, row_traffic_lights, column_traffic_lights,
    row_display, column_display);

  input clock, reset;
  output [2:0] row_traffic_lights, column_traffic_lights;
  output  [13:0] row_display, column_display;

  wire [2:0] row_traffic_lights, column_traffic_lights;
  wire [13:0] row_display, column_display;
  wire [5:0] coder;
  wire [19:0] decoder;
  wire [7:0] row_bcd, column_bcd;

  counter_down_64 count (clock, reset, coder);
  decoder_6x20 dcode (coder, decoder);
  binary_to_bcd column_bcd_circuit(decoder[13:7], column_bcd);
  binary_to_bcd row_bcd_circuit(decoder[6:0], row_bcd);
  seven_segment_display_assign seven_seg_row_0(row_bcd[3:0], row_display[6:0]);
  seven_segment_display_assign seven_seg_row_1(row_bcd[7:4], row_display[13:7]);
  seven_segment_display_assign seven_seg_column_0(column_bcd[3:0], column_display[6:0]);
  seven_segment_display_assign seven_seg_column_1(column_bcd[7:4], column_display[13:7]);

  assign row_traffic_lights = decoder[19:17];
  assign column_traffic_lights = decoder[16:15];

endmodule // traffic_lights
