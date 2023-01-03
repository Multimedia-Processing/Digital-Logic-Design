module deck_of_cards (
        clock, reset, control, turn, display_0, display_1
        );
    input clock, reset, control;
    output [7:0] turn;
    output [7:0] display_0, display_1;

    reg [7:0] display_0, display_1;
    reg [32:0] diver;
    reg clock_400hz;
    reg [7:0] turn;
    reg [3:0] face_card_number, face_card_number_0, face_card_number_1, face_card_number_2, face_card_number_3;
    reg [2:0] suits, suits_0, suits_1, suits_2, suits_3;

    always@(posedge clock) begin
        if(~reset || diver == 250000) begin
            diver = 0;
        end else begin
            diver = diver + 1;
        end
    end

    always @ (diver) begin
        if (diver < 125000) begin
            clock_400hz = 1;
        end else begin
            clock_400hz = 0;
        end
    end

    // always @ (clock) begin
    //     clock_400hz = clock;
    // end

    always @ (posedge clock_400hz) begin
        if (~reset) begin
            display_0 = 8'b00000000;
            display_1 = 8'b00000000;
            face_card_number = 4'b1000;
            face_card_number_0 = 4'b1000;
            face_card_number_1 = 4'b1000;
            face_card_number_2 = 4'b1000;
            face_card_number_3 = 4'b1000;
            suits = 3'b100;
            suits_0 = 3'b100;
            suits_1 = 3'b100;
            suits_2 = 3'b100;
            suits_3 = 3'b100;
            turn = 8'b00000001;
        end else if (control) begin
            face_card_number_0 = {face_card_number_0[2:0], face_card_number_0[0] ^ face_card_number_0[2] ^ face_card_number[0]};
            face_card_number_1 = {face_card_number_1[2:0], face_card_number_1[1] ^ face_card_number_1[3] ^ face_card_number[1]};
            face_card_number_2 = {face_card_number_2[2:0], face_card_number_2[2] ^ face_card_number_2[3] ^ face_card_number[2]};
            face_card_number_3 = {face_card_number_3[2:0], face_card_number_3[0] ^ face_card_number_3[3] ^ face_card_number[3]};
            suits_0 = {suits_0[1:0], suits_0[0] ^ suits_0[1] ^ suits[0]};
            suits_1 = {suits_1[1:0], suits_1[0] ^ suits_1[2] ^ suits[1]};
            suits_2 = {suits_2[1:0], suits_2[1] ^ suits_2[2] ^ suits[2]};
            suits_3 = {suits_3[1:0], suits_3[0] ^ suits_3[2] ^ suits[0]};
        end else begin
            case (turn)
                8'b00000001: face_card_number = face_card_number_0;
                8'b00000010: suits = suits_0;
                8'b00000100: face_card_number = face_card_number_1;
                8'b00001000: suits = suits_1;
                8'b00010000: face_card_number = face_card_number_2;
                8'b00100000: suits = suits_2;
                8'b01000000: face_card_number = face_card_number_3;
                8'b10000000: suits = suits_3;
            endcase
            case (face_card_number)
                4'b0001: begin
                    display_0 = 8'b11101111;
                    display_1 = 8'b11101111;
                end
                4'b0010: begin
                    display_0 = 8'b11011010;
                    display_1 = 8'b11011010;
                end
                4'b0011: begin
                    display_0 = 8'b11110010;
                    display_1 = 8'b11110010;
                end
                4'b0100: begin
                    display_0 = 8'b01100110;
                    display_1 = 8'b01100110;
                end
                4'b0101: begin
                    display_0 = 8'b10110110;
                    display_1 = 8'b10110110;
                end
                4'b0110: begin
                    display_0 = 8'b10111110;
                    display_1 = 8'b10111110;
                end
                4'b0111: begin
                    display_0 = 8'b11100100;
                    display_1 = 8'b11100100;
                end
                4'b1000: begin
                    display_0 = 8'b11111110;
                    display_1 = 8'b11111110;
                end
                4'b1001: begin
                    display_0 = 8'b11110110;
                    display_1 = 8'b11110110;
                end
                4'b1010: begin
                    display_0 = 8'b01101100;
                    display_1 = 8'b01101100;
                end
                4'b1011: begin
                    display_0 = 8'b11110001;
                    display_1 = 8'b11110001;
                end
                4'b1100: begin
                    display_0 = 8'b11010111;
                    display_1 = 8'b11010111;
                end
                4'b1101: begin
                    display_0 = 8'b11011101;
                    display_1 = 8'b11011101;
                end
                4'b1110: begin
                    display_0 = 8'b00000001;
                    display_1 = 8'b00000001;
                end
                default: begin
                    display_0 = 8'b11111111;
                    display_1 = 8'b11111111;
                end
            endcase
            case (suits)
                3'b110: begin
                    display_0 = 8'b10010111;
                    display_1 = 8'b10010111;
                end
                3'b111: begin
                    display_0 = 8'b01101111;
                    display_1 = 8'b01101111;
                end
                3'b010: begin
                    display_0 = 8'b10111011;
                    display_1 = 8'b10111011;
                end
                3'b001: begin
                    display_0 = 8'b10011101;
                    display_1 = 8'b10011101;
                end
                3'b101: begin
                    display_0 = 8'b00000001;
                    display_1 = 8'b00000001;
                end
                default: begin
                    display_0 = 8'b11111111;
                    display_1 = 8'b11111111;
                end
            endcase
            turn = {turn[6:0], turn[7]};
        end
    end

endmodule // deck_of_cards
