`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"
`include "decoder_6x20.v"
`include "counter_down_64.v"

module traffic_lights (clock, reset, row_traffic_lights, column_traffic_lights,
    row_display, column_display);

  input clock, reset;
  output [2:0] row_traffic_lights, column_traffic_lights;
  output [13:0] row_display, column_display;
  wire [13:0] row_display, column_display;
  wire [2:0] row_traffic_lights, column_traffic_lights;
  wire [5:0] coder;
  wire [19:0] decoder;
  wire [7:0] row_bcd, column_bcd;

  counter_down_64 count (clock, reset, coder);
  decoder_6x20 dcode (clock, reset, coder, decoder);
  binary_to_bcd row_bcd_circuit(decoder[0:6], row_bcd);
  binary_to_bcd column_bcd_circuit(decoder[7:13], column_bcd);
  seven_segment_display_assign seven_seg_row_0(row_bcd[0:3], row_display[0:6]);
  seven_segment_display_assign seven_seg_row_1(row_bcd[4:7], row_display[6:13]);
  seven_segment_display_assign seven_seg_column_0(column_bcd[0:3], column_display[0:6]);
  seven_segment_display_assign seven_seg_column_1(column_bcd[4:7], column_display[6:13]);

  always @ (posedge clock) begin
    if (28 < coder <= 32) begin
      row_display = 0;
      {row_traffic_lights, column_traffic_lights} = decoder[8:19];

    end else if (60 < coder <= 64) begin
      row_display = 0;
      {row_traffic_lights, column_traffic_lights} = decoder[8:19];

    end else begin
      {row_traffic_lights, column_traffic_lights} = decoder[8:19];

    end
  end

endmodule // traffic_lights
