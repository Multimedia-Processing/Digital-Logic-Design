`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"
`include "decoder_6x20.v"
`include "counter_down_64.v"
`include "counter.v"

module traffic_lights (clock, reset, row_traffic_lights, column_traffic_lights,
		row_display, column_display, turn);

	input clock, reset;
	output [2:0] row_traffic_lights, column_traffic_lights;
	output [6:0] row_display, column_display;
	output [7:0] turn;

	reg [7:0] turn;
	reg [27:0] diver;
	reg clock_1hz;
	reg [3:0] turn_bcd;

	wire [7:0] row_bcd, column_bcd;
	wire [6:0] row_display, column_display;
	wire [2:0] row_traffic_lights, column_traffic_lights;
	wire [5:0] coder;
	wire [19:0] decoder;

	always@(posedge clock) begin
		if(reset || diver == 100000000) begin
			diver = 0;
		end else begin
			diver = diver + 1;
		end
	end

    always @ (diver) begin
		if (diver < 50000000) begin
			clock_1hz = 1;
		end else begin
			clock_1hz = 0;
		end
	end

	always @ (posedge clock) begin
		if (turn == 0 || reset) begin
			turn = 8'b00000001;
		end else begin
			turn = turn * 4;
		end
	end

	counter_down_64 count (clock_1hz, reset, coder);
	decoder_6x20 dcode (coder, decoder);
	binary_to_bcd column_bcd_circuit(decoder[13:7], column_bcd);
	binary_to_bcd row_bcd_circuit(decoder[6:0], row_bcd);

	assign row_traffic_lights = decoder[19:17];
	assign column_traffic_lights = decoder[16:15];

	always @ (posedge clock) begin
		case (turn)
			8'b00010000: turn_bcd = column_bcd[3:0];
			8'b01000000: turn_bcd = column_bcd[7:0];
			8'b00000001: turn_bcd = row_bcd[3:0];
			8'b00000100: turn_bcd = row_bcd[7:4];
		endcase
	end

	seven_segment_display_assign seven_seg_row_0(turn_bcd, row_display);
	seven_segment_display_assign seven_seg_row_1(turn_bcd, column_display);

endmodule // traffic_lights
