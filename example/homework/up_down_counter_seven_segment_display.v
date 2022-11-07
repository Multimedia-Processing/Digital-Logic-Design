`include "seven_segment_display_assign.v"

module up_down_counter_seven_segment_display (clock, reset, control, display, turn);
    input clock, reset, control;
    output [6:0] display;
    output [3:0] turn;

    reg [3:0] data;
    reg [27:0] diver;
    reg clock_1hz;
    reg [3:0] turn = 4'b0001;

    // always@(posedge clock) begin
    //     if(reset || diver == 100000000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
	//
    // always @ (diver) begin
    //     if (diver < 50000000) begin
    //         clock_1hz = 1;
    //     end else begin
    //         clock_1hz = 0;
    //     end
    // end
	always @ (clock) begin
		clock_1hz = clock;
	end

    always @ (posedge clock_1hz) begin
        if (control == 1) begin
            if (reset || data == 9) begin
                data = 0;
            end else begin
                data = data + 1;
            end
        end else begin
            if (reset || data == 0) begin
                data = 9;
            end else begin
                data = data - 1;
            end
        end
    end

    seven_segment_display_assign seven_seg(data, display);

endmodule // up_down_counter_seven_segment_display
