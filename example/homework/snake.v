module snake (clock, reset, turn, display);
    input clock, reset;
    output [7:0] turn;
    output [15:0] display;

    reg [4:0] first, second, third, fourth;  // 第一個、第二個、第三個、第四個

    reg [7:0] turn;
    reg [15:0] display;
    reg [32:0] diver, diver250;
    reg clock_1hz, clock_250hz;

    // always@(posedge clock) begin
    //     if(reset || diver == 100000000000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (diver) begin
    //     if (diver < 50000000000) begin
    //         clock_1hz = 1;
    //     end else begin
    //         clock_1hz = 0;
    //     end
    // end
    //
    // always@(posedge clock) begin
    //     if(reset || diver250 == 400000) begin
    //         diver250 = 0;
    //     end else begin
    //         diver250 = diver250 + 1;
    //     end
    // end
    //
    // always @ (*) begin
    //     if (diver250 < 200000) begin
    //         clock_250hz = 1;
    //     end else begin
    //         clock_250hz = 0;
    //     end
    // end

    always @ (clock) begin
        clock_250hz = clock;

        if(~reset || diver == 16) begin
            diver = 0;
        end else begin
            diver = diver + 1;
        end
    end

    always @ (*) begin
        if (diver < 8) begin
            clock_1hz = 1;
        end else begin
            clock_1hz = 0;
        end
    end

    // 七段顯示器輪播
    always @ (posedge clock_250hz) begin
        if (~reset) begin
            display = {8'b00000000, 8'b00000000};
        end
        case (turn)
            8'b00000001: begin
                case (first)
                    5'b10011: display = {8'b00000000, 8'b10000000};
                    5'b10100: display = {8'b00000000, 8'b01000000};
                    5'b10101: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b10011: display = {8'b00000000, 8'b10000000};
                    5'b10100: display = {8'b00000000, 8'b01000000};
                    5'b10101: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b10011: display = {8'b00000000, 8'b10000000};
                    5'b10100: display = {8'b00000000, 8'b01000000};
                    5'b10101: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b10011: display = {8'b00000000, 8'b10000000};
                    5'b10100: display = {8'b00000000, 8'b01000000};
                    5'b10101: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00000010: begin
                case (first)
                    5'b10010: display = {8'b00000000, 8'b10000000};
                    5'b10110: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b10010: display = {8'b00000000, 8'b10000000};
                    5'b10110: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b10010: display = {8'b00000000, 8'b10000000};
                    5'b10110: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b10010: display = {8'b00000000, 8'b10000000};
                    5'b10110: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

            end

            8'b00000100: begin
                case (first)
                    5'b10001: display = {8'b00000000, 8'b10000000};
                    5'b10111: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b10001: display = {8'b00000000, 8'b10000000};
                    5'b10111: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b10001: display = {8'b00000000, 8'b10000000};
                    5'b10111: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b10001: display = {8'b00000000, 8'b10000000};
                    5'b10111: display = {8'b00000000, 8'b00000010};
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00001000: begin
                case (first)
                    5'b00001: display = {8'b00000000, 8'b00000010};
                    5'b10000: display = {8'b00000000, 8'b10000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b00001: display = {8'b00000000, 8'b00000010};
                    5'b10000: display = {8'b00000000, 8'b10000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b00001: display = {8'b00000000, 8'b00000010};
                    5'b10000: display = {8'b00000000, 8'b10000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b00001: display = {8'b00000000, 8'b00000010};
                    5'b10000: display = {8'b00000000, 8'b10000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b00010000: begin
                case (first)
                    5'b00010: display = {8'b00100000, 8'b00000000};
                    5'b00011: display = {8'b00010000, 8'b00000000};
                    5'b01110: display = {8'b01000000, 8'b00000000};
                    5'b01101: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b00010: display = {8'b00100000, 8'b00000000};
                    5'b00011: display = {8'b00010000, 8'b00000000};
                    5'b01110: display = {8'b01000000, 8'b00000000};
                    5'b01101: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b00010: display = {8'b00100000, 8'b00000000};
                    5'b00011: display = {8'b00010000, 8'b00000000};
                    5'b01110: display = {8'b01000000, 8'b00000000};
                    5'b01101: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b00010: display = {8'b00100000, 8'b00000000};
                    5'b00011: display = {8'b00010000, 8'b00000000};
                    5'b01110: display = {8'b01000000, 8'b00000000};
                    5'b01101: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

            end
            8'b00100000: begin
                case (first)
                    5'b00100: display = {8'b00010000, 8'b00000000};
                    5'b01100: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b00100: display = {8'b00010000, 8'b00000000};
                    5'b01100: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b00100: display = {8'b00010000, 8'b00000000};
                    5'b01100: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b00100: display = {8'b00010000, 8'b00000000};
                    5'b01100: display = {8'b00000010, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b01000000: begin
                // 控制欄顯示燈亮起來
                case (first)
                    5'b00101: display = {8'b10000000, 8'b00000000};
                    5'b01010: display = {8'b01000000, 8'b00000000};
                    5'b01011: display = {8'b00010000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b00101: display = {8'b10000000, 8'b00000000};
                    5'b01010: display = {8'b01000000, 8'b00000000};
                    5'b01011: display = {8'b00010000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b00101: display = {8'b10000000, 8'b00000000};
                    5'b01010: display = {8'b01000000, 8'b00000000};
                    5'b01011: display = {8'b00010000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b00101: display = {8'b10000000, 8'b00000000};
                    5'b01010: display = {8'b01000000, 8'b00000000};
                    5'b01011: display = {8'b00010000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase
            end

            8'b10000000: begin
                // 控制欄顯示燈亮起來
                case (first)
                    5'b00110: display = {8'b00010000, 8'b00000000};
                    5'b00111: display = {8'b00001000, 8'b00000000};
                    5'b01000: display = {8'b00000100, 8'b00000000};
                    5'b01001: display = {8'b10000000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (second)
                    5'b00110: display = {8'b00010000, 8'b00000000};
                    5'b00111: display = {8'b00001000, 8'b00000000};
                    5'b01000: display = {8'b00000100, 8'b00000000};
                    5'b01001: display = {8'b10000000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (third)
                    5'b00110: display = {8'b00010000, 8'b00000000};
                    5'b00111: display = {8'b00001000, 8'b00000000};
                    5'b01000: display = {8'b00000100, 8'b00000000};
                    5'b01001: display = {8'b10000000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

                case (fourth)
                    5'b00110: display = {8'b00010000, 8'b00000000};
                    5'b00111: display = {8'b00001000, 8'b00000000};
                    5'b01000: display = {8'b00000100, 8'b00000000};
                    5'b01001: display = {8'b10000000, 8'b00000000};
                    default: display = {8'b00000000, 8'b00000000};
                endcase

            end
        endcase
    end

    // 循環輪播
    always @ (posedge clock_250hz) begin
        if (turn >= 128 || ~reset) begin
            turn = 8'b00000001;
        end else begin
            turn = turn * 2;
        end
    end

    // 移動蛇計數器
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
