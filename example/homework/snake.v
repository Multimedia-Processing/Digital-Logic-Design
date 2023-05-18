module snake (clock, reset, turn, display);
    input clock, reset;
    output [7:0] turn;
    output [15:0] display;

    reg [4:0] body, first, second, third, fourth;  // 第一個、第二個、第三個、第四個

    reg [7:0] turn;
    reg [1:0] turn_snake;
    reg [15:0] display;
    reg [32:0] diver, diver400;
    reg clock_1hz, clock_400hz;

    always@(posedge clock) begin
        if(reset || diver == 100000000) begin
            diver = 0;
        end else begin
            diver = diver + 1;
        end
    end

    always @ (diver) begin
        if (diver < 50000000) begin
            clock_1hz = 1;
        end else begin
            clock_1hz = 0;
        end
    end

    always@(posedge clock) begin
        if(~reset || diver400 == 250000) begin
            diver400 = 0;
        end else begin
            diver400 = diver400 + 1;
        end
    end

    always @ (diver400) begin
        if (diver400 < 125000) begin
            clock_400hz = 1;
        end else begin
            clock_400hz = 0;
        end
    end

    // always @ (clock) begin
    //     clock_400hz = clock;
    //
    //     if(~reset || diver == 16) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (*) begin
    //     if (diver < 8) begin
    //         clock_1hz = 1;
    //     end else begin
    //         clock_1hz = 0;
    //     end
    // end

    // 七段顯示器輪播
    always @ (posedge clock_400hz) begin
        if (~reset) begin
            turn = 8'b00000001;
            turn_snake = 0;
            display = {8'b00000000, 8'b00000000};
        end else if (turn >= 128) begin
            turn = 8'b00000001;
        end else if (turn_snake >= 3) begin
            turn_snake = 0;
        end else begin
            turn = turn << 1;
            turn_snake = turn_snake + 1;
        end
        case (turn)
            8'b00000001: begin
                case (body)

                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00000010: begin
                case (body)

                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00000100: begin
                case (body)

                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00001000: begin
                case (body)
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00010000: begin
                case (body)

                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end
            8'b00100000: begin
                case (body)
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b01000000: begin
                // 控制欄顯示燈亮起來
                case (body)

                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b10000000: begin
                // 控制欄顯示燈亮起來

            end

        endcase
        case (body)
            5'b00001: display = {8'b00000000, 8'b00000010};
            5'b00010: display = {8'b00100000, 8'b00000000};
            5'b00011: display = {8'b00010000, 8'b00000000};
            5'b00100: display = {8'b00010000, 8'b00000000};
            5'b00101: display = {8'b10000000, 8'b00000000};
            5'b00110: display = {8'b00010000, 8'b00000000};
            5'b00111: display = {8'b00001000, 8'b00000000};
            5'b01000: display = {8'b00000100, 8'b00000000};
            5'b01001: display = {8'b10000000, 8'b00000000};
            5'b01010: display = {8'b01000000, 8'b00000000};
            5'b01011: display = {8'b00010000, 8'b00000000};
            5'b01100: display = {8'b00000010, 8'b00000000};
            5'b01101: display = {8'b00000010, 8'b00000000};
            5'b01110: display = {8'b01000000, 8'b00000000};
            5'b10000: display = {8'b00000000, 8'b10000000};
            5'b10001: display = {8'b00000000, 8'b10000000};
            5'b10010: display = {8'b00000000, 8'b10000000};
            5'b10011: display = {8'b00000000, 8'b10000000};
            5'b10100: display = {8'b00000000, 8'b01000000};
            5'b10101: display = {8'b00000000, 8'b00000010};
            5'b10110: display = {8'b00000000, 8'b00000010};
            5'b10111: display = {8'b00000000, 8'b00000010};
            default: display = {8'b00000000, 8'b00000000};
        endcase
        case (turn_snake)
            0: body = first;
            1: body = second;
            2: body = third;
            3: body = fourth;
        endcase
    end

    always @ (posedge clock_1hz) begin
        if (~reset) begin
            first = 0;
            second = 0;
            third = 0;
            fourth = 0;
        end else if (first >= 23) begin
            first = 0;
        end else begin
            first = first + 1;
            second <= first;
            third <= second;
            fourth <= third;
        end
    end

endmodule // snake
