`include "deck_of_cards.v"

module deck_of_cards_test ();
    reg clock, reset;
    reg control;
    wire [7:0] turn;
    wire [7:0] display_0, display_1;
    wire [3:0] face_card_number, face_card_number_0, face_card_number_1, face_card_number_2, face_card_number_3;
    wire [2:0] suits, suits_0, suits_1, suits_2, suits_3;

    integer number;

    deck_of_cards UUT (
        clock, reset, control, turn, display_0, display_1,
        face_card_number, face_card_number_0, face_card_number_1, face_card_number_2, face_card_number_3,
        suits, suits_0, suits_1, suits_2, suits_3
    );

    initial begin
        $display("| clock | reset | control | turn | display_0 | display_1 |face_card_number | face_card_number_0 | face_card_number_1 | face_card_number_2 | face_card_number_3 | suits | suits_0 | suits_1 | suits_2 | suits_3 |");
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
        $monitor("|   %b   |   %b   |  %b  | %b | %b | %b | %d | %d | %d | %d | %d | %d | %d | %d | %d | %d |",
            clock, reset, control, turn, display_0, display_1,
            face_card_number, face_card_number_0, face_card_number_1, face_card_number_2, face_card_number_3,
            suits, suits_0, suits_1, suits_2, suits_3
            );

        #5;
        clock = ~clock;
    end

endmodule // deck_of_cards_test
