`include "shift_microoperation.v"

module shift_microoperation_test ();
    reg clock, reset;
    reg selective_set, lift_serial_input, right_serial_input;
    reg signed [3:0] a_in;

    wire signed [3:0] data;

    integer number;
    integer seed;

    shift_microoperation UUT (clock, reset, a_in, lift_serial_input, right_serial_input, selective_set, data);

    initial begin
        seed = 10;
    end
    initial begin
        $display("lift_serial_input is lsi");
        $display("right_serial_input is rsi");
        $display("selective_set is set");
        $display("| clock | reset | a_in | set | rsi | data | lsi |");
        clock = 1'b1;
        reset = 1'b1;
        a_in = 1'b0000;

        #10;
        #5;

        reset = 1'b0;

        #10;

        for (number = 0; number < 4; number = number + 1) begin
            selective_set = $random(seed) % 2;
            lift_serial_input = $random(seed) % 2;
            right_serial_input = $random(seed) % 2;
            a_in = $random(seed) % 16;
            #20;
        end
        #10;
        reset = 1'b1;

        #40;
        $finish;
    end

    always begin
        #5
        $monitor(
            "|   %b   |   %b   | %b |  %b  |  %b  | %b |  %b  |",
            clock, reset, a_in, selective_set, right_serial_input, data, lift_serial_input
        );
        
        #5;
        clock = ~clock;
    end

endmodule // shift_microoperation_test
