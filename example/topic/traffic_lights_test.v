`include "traffic_lights.v"

module traffic_lights_test ();
    reg clock, reset;
    integer number;
    wire [6:0] row_display, column_display;
    wire [2:0] row_traffic_lights, column_traffic_lights;
    wire [7:0] turn;

    traffic_lights UUT (clock, reset, row_traffic_lights, column_traffic_lights,
        row_display, column_display, turn);

    initial begin
        $display("| count | clock | reset | row traffic lights | column traffic lights | row display | column display | turn |");
        clock = 1'b1;
        reset = 1'b1;

        #10;
        reset = 1'b0;

        #5;
        for (number = 0; number < 500; number = number + 1) begin
            #10;
        end
        $finish;
    end

    initial begin
        #250;
        reset = 1'b1;
        #20;
        reset = 1'b0;

    end

    always begin
        #5;
        $monitor("| %d | %b | %b | %b | %b | %b | %b | %b |",
            number, clock, reset, row_traffic_lights, column_traffic_lights,
            row_display, column_display, turn);
        #5;
        clock = ~clock;
    end

endmodule // traffic_lights_test
