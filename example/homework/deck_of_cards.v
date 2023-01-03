`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"

module deck_of_cards (
            clock, reset, control, turn, display, random
        );
    input clock, reset, control;
    output [7:0] turn;
    output [7:0] display;
    output [6:0] random;

    reg [7:0] display;
    reg [32:0] diver;
    reg clock_400hz;
    reg [7:0] turn;
    reg [6:0] random;
    reg [3:0] select_bcd;

    wire [7:0] display;
    wire [7:0] bcd;

    // always@(posedge clock) begin
    //     if(~reset || diver == 250000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (diver) begin
    //     if (diver < 125000) begin
    //         clock_400hz = 1;
    //     end else begin
    //         clock_400hz = 0;
    //     end
    // end

    always @ (clock) begin
        clock_400hz = clock;
    end

    always @ (posedge clock_400hz) begin
        if (~reset) begin
            display = 8'b00000000;
            random = 7'b1000000;
            suits = 3'b100;
            turn = 8'b00000001;
        end else if (control) begin
            random = {random[5:0], random[0] ^ random[2] ^ random[4] ^ random[6]};
        end else begin
            if (random < 14) begin
                case (turn)
                    8'b00000001: select_bcd = bcd[3:0];
                    8'b00000010: select_bcd = bcd[7:4];
                    8'b00000100: select_bcd = bcd[3:0];
                    8'b00001000: select_bcd = bcd[7:4];
                    8'b00010000: select_bcd = bcd[3:0];
                    8'b00100000: select_bcd = bcd[7:4];
                    8'b01000000: select_bcd = bcd[3:0];
                    8'b10000000: select_bcd = bcd[7:4];
                endcase
            end

            turn = turn << 1;
        end

    end

    binary_to_bcd row_bcd_circuit(random, bcd);

    seven_segment_display_assign seven_seg(select_bcd, display[7:1]);

endmodule // deck_of_cards
