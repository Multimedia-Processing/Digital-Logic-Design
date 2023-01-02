module dice (clock, reset, control, turn, display);
    input clock, reset, control;
    output [7:0] display;
    output [3:0] turn;

    reg [7:0] display;

    reg [27:0] diver;
    reg clock_100hz;
    reg [3:0] turn = 4'b0001;
    reg [2:0] random;

    always@(posedge clock) begin
        if(~reset || diver == 10000000) begin
            diver = 0;
        end else begin
            diver = diver + 1;
        end
    end

    always @ (diver) begin
        if (diver < 500000) begin
            clock_100hz = 1;
        end else begin
            clock_100hz = 0;
        end
    end

    // always @ (clock) begin
    //     clock_100hz = clock;
    // end

    always @ (posedge clock_100hz) begin
        if (~reset) begin
            display = 8'b00000000;
            random = 3'b100;
        end else if (control) begin
            case (random)
                1: display = 8'b00000010;
                2: display = 8'b10010000;
                3: display = 8'b10010010;
                4: display = 8'b01101100;
                5: display = 8'b01101110;
                6: display = 8'b11111100;
                default: display = 8'b00000001;
            endcase
        end else begin
            random = {random[1:0], random[1] ^ random[2]};
        end
    end

endmodule // dice
