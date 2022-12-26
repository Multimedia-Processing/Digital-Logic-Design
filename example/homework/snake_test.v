`include "snake.v"

module snake_test ();
    reg clock, reset;
    wire [7:0] turn;
    wire [7:0] display;

    snake UUT (clock, reset, turn, display);

    initial begin
        $display("| clock | reset |   turn   | display |");
        clock = 1;
        reset = 0;

        #12.5;
        reset = 1;


        #16000;
        $finish;
    end

    always begin
        #2.5;
        $monitor(
            "|   %b   |   %b   | %b | %b |",
            clock, reset, turn, display);

        #2.5;
        clock = ~clock;
    end

endmodule // snake_test
