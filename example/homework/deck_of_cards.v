`include "seven_segment_display_assign.v"
`include "binary_to_bcd.v"

module deck_of_cards (
            clock, reset, control, turn, display, random
        );
    input clock, reset, control;
    output [3:0] turn;
    output [7:0] display;
    output [6:0] random;

    reg [32:0] diver;
    reg clock_400hz;
    reg [3:0] turn;
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
            random = 7'b0001000;
            turn = 4'b0001;
        end else if (control || random > 13) begin
            random = {random[2:0], random[0] ^ random[3]};
        end else if (turn >= 4'b0010) begin
            turn = 4'b0001;
        end else begin
            turn = turn << 1;
        end

    end
    always @ (*) begin
        case (turn)
            4'b0001: select_bcd = bcd[3:0];
            4'b0010: select_bcd = bcd[7:4];
            4'b0100: select_bcd = bcd[3:0];
            4'b1000: select_bcd = bcd[7:4];
        endcase
    end

    binary_to_bcd row_bcd_circuit(random, bcd);

    seven_segment_display_assign seven_seg(select_bcd, display[7:1]);
    assign display[0] = 0;

endmodule // deck_of_cards
