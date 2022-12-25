`include "control_snake.v"

module control_snake_test ();
    reg clock, reset;
    reg [3:0] switch;
    wire [7:0] turn;
    wire [7:0] display;
    wire [17:0] first, second, third, fourth;

    integer number, number2;
    integer seed;

    control_snake UUT (clock, reset, switch, first, second, third, fourth, turn, display);

    initial begin
        seed = 10;
    end

    initial begin
        $display("| clock | reset | switch |        first        | second | third | fourth | turn | display |");
        clock = 1;
        reset = 0;

        #10;
        reset = 1;
        #5;
        for (number = 0; number < 136; number = number + 1) begin
            switch = 0000;
            #20;
        end
        reset = 1'b1;

        for (number = 0; number < 136; number = number + 1) begin
            switch = $random(seed) / 16;
            #20;
        end

        #20;
        $finish;
    end

    always begin
        #5;
        $monitor(
            "|   %b   |   %b   |  %b  | %b | %b | %b | %b | %b | %b |",
            clock, reset, switch, first, second, third, fourth, turn, display);

        #5;
        clock = ~clock;
    end

endmodule // control_snake_test
