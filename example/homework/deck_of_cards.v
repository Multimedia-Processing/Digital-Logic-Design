module deck_of_cards (clock, reset, control, turn, display, random, random_0, random_1, random_2, random_3);
    input clock, reset, control;
    output [7:0] turn;
    output [7:0] display;
    output [5:0] random, random_0, random_1, random_2, random_3;

    reg [5:0] deck_of_cards;
    reg [7:0] display;
    reg [32:0] diver;
    reg clock_250hz;
    reg [7:0] turn;
    reg [5:0] random, random_0, random_1, random_2, random_3;

    // always@(posedge clock) begin
    //     if(~reset || diver == 125000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (diver) begin
    //     if (diver < 62500) begin
    //         clock_250hz = 1;
    //     end else begin
    //         clock_250hz = 0;
    //     end
    // end

    always @ (clock) begin
        clock_250hz = clock;
    end

    always @ (posedge clock) begin
        if (~reset) begin
            display = 8'b00000000;
            random = 6'b100000;
            random_0 = 6'b100000;
            random_1 = 6'b100000;
            random_2 = 6'b100000;
            random_3 = 6'b100000;
            turn = 8'b00000001;
        end else if (control) begin
            random_0 = {random_0[4:0], random_0[0] ^ random_0[2] ^ random[0]};
            random_1 = {random_1[4:0], random_1[1] ^ random_1[3] ^ random[1]};
            random_2 = {random_2[4:0], random_2[2] ^ random_2[4] ^ random[2]};
            random_3 = {random_3[4:0], random_3[4] ^ random_3[5] ^ random[3]};
        end else begin
            case (turn)
                8'b00000001: random = {random_0[5:4], 4'b0000};
                8'b00000010: random[3:0] = {2'b00, random_0[3:0]};
                8'b00000100: random = {random_2[5:4], 4'b0000};
                8'b00001000: random[3:0] = {2'b00, random_3[3:0]};
                8'b00010000: random = {random_3[5:4], 4'b0000};
                8'b00100000: random[3:0] = {2'b00, random_3[3:0]};
                8'b01000000: random = {random_3[5:4], 4'b0000};
                8'b10000000: random[3:0] = {2'b00, random_3[3:0]};
            endcase
            casex (random)
                6'bxx0001: display = 8'b01101111;
                6'bxx0010: display = 8'b11011010;
                6'bxx0011: display = 8'b11110010;
                6'bxx0100: display = 8'b01100110;
                6'bxx0101: display = 8'b10110110;
                6'bxx0110: display = 8'b10111110;
                6'bxx0111: display = 8'b11100100;
                6'bxx1000: display = 8'b11111110;
                6'bxx1001: display = 8'b11110110;
                6'bxx1010: display = 8'b01101100;
                6'bxx1011: display = 8'b11110001;
                6'bxx1100: display = 8'b11010111;
                6'bxx1101: display = 8'b11011101;
                6'b00xxxx: display = 8'b01101111;
                6'b01xxxx: display = 8'b01101111;
                6'b10xxxx: display = 8'b10111011;
                6'b11xxxx: display = 8'b10011101;
                default: display = display ^ 8'b00000000;
            endcase
            turn = {turn[4:0], turn[5]};
        end
    end

endmodule // deck_of_cards
