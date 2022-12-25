`include "snake.v"

module snake_test ();
    reg clock, reset;
    wire [7:0] turn;
    wire [7:0] display;
    wire [4:0] first, second, third, fourth;

    integer number, number2;
    integer seed;

    snake UUT (clock, reset, turn, display, first, second, third, fourth);

    initial begin
        seed = 10;
    end

    initial begin
        $display("| clock | reset |   turn   | display  | first | second | third | fourth |");
        clock = 1;
        reset = 0;

        #12.5;
        reset = 1;


        #1600;
        $finish;
    end

    always begin
        #2.5;
        $monitor(
            "|   %b   |   %b   | %b | %b | %b | %b | %b | %b |",
            clock, reset, turn, display, first, second, third, fourth);

        #2.5;
        clock = ~clock;
    end

endmodule // snake_test
