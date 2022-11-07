`include "up_down_counter_seven_segment_display.v"

module up_down_counter_seven_segment_display_test ();
	reg clock, reset, control;
	integer number;
	wire [6:0] display;
	wire [3:0] turn;

	up_down_counter_seven_segment_display UUT (
		clock, reset, control, display, turn);

	initial begin
		$display("| clock | reset | control | display | turn |");
		clock = 1'b1;
		reset = 1'b1;
		control = 1'b1;

		#10;
		reset = 1'b0;

		#5;
    	#100;
	    reset = 1'b1;
	    #10;
		reset = 1'b0;
		#10;
		control = 1'b0;
		#100;
		control = 1'b1;

		$finish;
	end

	always begin
		#5;
		$monitor(
			"|   %b   |   %b   | %b | %b | %b |",
			clock, reset, control, display, turn);

		#5;
		clock = ~clock;
	end

endmodule // up_down_counter_seven_segment_display_test
