module three_dice (clock, reset, control, turn, display);
    input clock, reset, control;
    output [7:0] display;
    output [3:0] turn;

    reg [7:0] display;

    reg [32:0] diver;
    reg clock_250hz;
    reg [3:0] turn;
    reg [2:0] random, random_0, random_1, random_2, random_3;

    always@(posedge clock) begin
        if(~reset || diver == 400000) begin
            diver = 0;
        end else begin
            diver = diver + 1;
        end
    end

    always @ (diver) begin
        if (diver < 200000) begin
            clock_250hz = 1;
        end else begin
            clock_250hz = 0;
        end
    end

    // always @ (clock) begin
    //     clock_250hz = clock;
    // end

    always @ (posedge clock_250hz) begin
        if (~reset) begin
            display = 8'b00000000;
            random = 3'b100;
            random_0 = 3'b100;
            random_1 = 3'b100;
            random_2 = 3'b100;
            random_3 = 3'b100;
            turn = 4'b0001;
        end else if (control) begin
            random_0 = {random_0[1:0], random_0[1] ^ random_0[2]};
            random_1 = {random_1[1:0], random_1[0] ^ random_1[2]};
            random_2 = {random_2[1:0], random_2[0] ^ random_2[1]};
            random_3 = {random_3[1:0], random_2[0] ^ random_1[1] ^ random_0[2]};
        end else begin
            case (turn)
                4'b0001: random = random_0;
                4'b0010: random = random_1;
                4'b0100: random = random_2;
                4'b1000: random = random_3;
            endcase
            case (random)
                1: display = 8'b00000010;
                2: display = 8'b10010000;
                3: display = 8'b10010010;
                4: display = 8'b01101100;
                5: display = 8'b01101110;
                6: display = 8'b11111100;
                default: display = display;
            endcase
            turn = {turn[2:0], turn[3]};
        end
    end

endmodule // three_dice
