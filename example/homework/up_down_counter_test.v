`include "up_down_counter.v"

module up_down_counter_test ();
  reg clock, reset, control;
  integer number;
  wire [3:0] data;

  up_down_counter UUT (clock, reset, data, control);

	initial begin
		$display("| clock | reset |  data | control |");
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
		$monitor("|   %b   |   %b   | %d  |  %b  |",
			clock, reset, data, control);

		#5;
		clock = ~clock;
	end

endmodule // down_counter_test
