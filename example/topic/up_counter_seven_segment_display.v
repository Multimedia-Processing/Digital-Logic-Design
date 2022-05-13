`include "counter.v"
`include "seven_segment_display_assign.v"

module up_counter_seven_segment_display (clock, reset, display);
input clock, reset;
output [6:0] display;
wire [3:0] data;

counter count(clock, reset, data);
seven_segment_display_assign seven_seg(data, display);

endmodule // up_counter_seven_segment_display
