`include "deck_of_cards.v"

module deck_of_cards_test ();
    reg clock, reset;
    reg control;
    wire [3:0] turn;
    wire [7:0] display;
    wire [6:0] random;

    integer number;

    deck_of_cards UUT (clock, reset, control, turn, display, random);

    initial begin
        $display("| clock | reset | control | turn | display | random |");
        clock = 1;
        reset = 0;
        control = 0;

        #5;
        #2.5;
        reset = 1;

        for (number = 0; number < 500; number = number + 1) begin
            #10;
            control = 1;
            #5;
            control = 0;

            #65;
            control = 1;

            #5;
            control = 0;

            #35;
            control = 1;

            #5;
            control = 0;

            #35;
            control = 1;

            #5;
            control = 0;

            #25;
        end

        $finish;
    end

    always begin
        #5;
        $monitor("|   %b   |   %b   |  %b  | %b | %b | %d |",
            clock, reset, control, turn, display, random
            );

        #5;
        clock = ~clock;
    end

endmodule // deck_of_cards_test
