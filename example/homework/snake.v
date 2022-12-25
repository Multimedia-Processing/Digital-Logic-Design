module snake (clock, reset, switch, first, second, third, fourth, turn, display);
    input clock, reset;
    input [3:0] switch;
    output [7:0] turn;
    output [7:0] display;
    output [17:0] first, second, third, fourth;

    reg [17:0] first, second, third, fourth;  // 第一個、第二個、第三個、第四個
    reg [1:0] direction;  // 方向陣列
    reg [2:0] pillar;  // 柱 0:無, 1: 超出, 2~3: 由上而下, 4: 超出
    reg [4:0] column;  // 欄 0:無, 1~16: 由左到右, default: don't care
    reg [4:0] beam_of_roof;  // 梁 0: 無, 1:超出, 2~16: 由左到右, 17:超出, default: don't care
    reg [2:0] row;  // 行 0 無 1~3 由上而下

    reg [7:0] turn;
    reg [7:0] display;
    reg [27:0] diver, diver250;
    reg clock_10hz, clock_250hz;

    // always@(posedge clock) begin
    //     if(reset || diver == 1000000000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (diver) begin
    //     if (diver < 500000000) begin
    //         clock_10hz = 1;
    //     end else begin
    //         clock_10hz = 0;
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
        clock_10hz = clock;
        clock_250hz = clock;
    end

    // 七段顯示器輪播
    always @ (posedge clock_250hz) begin
        if (turn == 0 || ~reset) begin
            turn = 8'b00000001;
        end else begin
            turn = turn * 2;
            case (turn)
                8'b00000001: begin
                    if (15 < first[7:3] < 17 || 15 < second[7:3] < 17
                            || 15 < third[7:3] < 17 || 15 < fourth[7:3] < 17
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (15 <= first[12:8] <= 16 || 15 <= second[12:8] <= 16
                            || 15 <= third[12:8] <= 16 || 15 <= fourth[12:8] <= 16
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00001111: display = 8'b00000000;
                            8'b00010000: display = 8'b00000000;
                            8'b01001111: display = 8'b10000000;
                            8'b01010000: display = 8'b10000000;
                            8'b01101111: display = 8'b00000010;
                            8'b01110000: display = 8'b00000010;
                            8'b10001111: display = 8'b00010000;
                            8'b10010000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00001111: display = 8'b00000000;
                            8'b00010000: display = 8'b00000000;
                            8'b01001111: display = 8'b10000000;
                            8'b01010000: display = 8'b10000000;
                            8'b01101111: display = 8'b00000010;
                            8'b01110000: display = 8'b00000010;
                            8'b10001111: display = 8'b00010000;
                            8'b10010000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00001111: display = 8'b00000000;
                            8'b00010000: display = 8'b00000000;
                            8'b01001111: display = 8'b10000000;
                            8'b01010000: display = 8'b10000000;
                            8'b01101111: display = 8'b00000010;
                            8'b01110000: display = 8'b00000010;
                            8'b10001111: display = 8'b00010000;
                            8'b10010000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00001111: display = 8'b00000000;
                            8'b00010000: display = 8'b00000000;
                            8'b01001111: display = 8'b10000000;
                            8'b01010000: display = 8'b10000000;
                            8'b01101111: display = 8'b00000010;
                            8'b01110000: display = 8'b00000010;
                            8'b10001111: display = 8'b00010000;
                            8'b10010000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b00000010: begin
                    if (13 < first[7:3] < 15 || 13 < second[7:3] = 15
                            || 13 < third[7:3] < 15 || 13 < fourth[7:3] = 15
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (13 <= first[12:8] <= 14 || 13 <= second[12:8] <= 14
                            || 13 <= third[12:8] <= 14 || 13 <= fourth[12:8] <= 14
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00001101: display = 8'b00000000;
                            8'b00001110: display = 8'b00000000;
                            8'b01001101: display = 8'b10000000;
                            8'b01001110: display = 8'b10000000;
                            8'b01101101: display = 8'b00000010;
                            8'b01101110: display = 8'b00000010;
                            8'b10001101: display = 8'b00010000;
                            8'b10001110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00001101: display = 8'b00000000;
                            8'b00001110: display = 8'b00000000;
                            8'b01001101: display = 8'b10000000;
                            8'b01001110: display = 8'b10000000;
                            8'b01101101: display = 8'b00000010;
                            8'b01101110: display = 8'b00000010;
                            8'b10001101: display = 8'b00010000;
                            8'b10001110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00001101: display = 8'b00000000;
                            8'b00001110: display = 8'b00000000;
                            8'b01001101: display = 8'b10000000;
                            8'b01001110: display = 8'b10000000;
                            8'b01101101: display = 8'b00000010;
                            8'b01101110: display = 8'b00000010;
                            8'b10001101: display = 8'b00010000;
                            8'b10001110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00001101: display = 8'b00000000;
                            8'b00001110: display = 8'b00000000;
                            8'b01001101: display = 8'b10000000;
                            8'b01001110: display = 8'b10000000;
                            8'b01101101: display = 8'b00000010;
                            8'b01101110: display = 8'b00000010;
                            8'b10001101: display = 8'b00010000;
                            8'b10001110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b00000100: begin
                    if (11 < first[7:3] < 13 || 11 < second[7:3] = 13
                            || 11 < third[7:3] < 13 || 11 < fourth[7:3] = 13
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (11 <= first[12:8] <= 12 || 11 <= second[12:8] <= 12
                            || 11 <= third[12:8] <= 12 || 11 <= fourth[12:8] <= 12
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00001011: display = 8'b00000000;
                            8'b00001100: display = 8'b00000000;
                            8'b01001011: display = 8'b10000000;
                            8'b01001100: display = 8'b10000000;
                            8'b01101011: display = 8'b00000010;
                            8'b01101100: display = 8'b00000010;
                            8'b10001011: display = 8'b00010000;
                            8'b10001100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00001011: display = 8'b00000000;
                            8'b00001100: display = 8'b00000000;
                            8'b01001011: display = 8'b10000000;
                            8'b01001100: display = 8'b10000000;
                            8'b01101011: display = 8'b00000010;
                            8'b01101100: display = 8'b00000010;
                            8'b10001011: display = 8'b00010000;
                            8'b10001100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00001011: display = 8'b00000000;
                            8'b00001100: display = 8'b00000000;
                            8'b01001011: display = 8'b10000000;
                            8'b01001100: display = 8'b10000000;
                            8'b01101011: display = 8'b00000010;
                            8'b01101100: display = 8'b00000010;
                            8'b10001011: display = 8'b00010000;
                            8'b10001100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00001011: display = 8'b00000000;
                            8'b00001100: display = 8'b00000000;
                            8'b01001011: display = 8'b10000000;
                            8'b01001100: display = 8'b10000000;
                            8'b01101011: display = 8'b00000010;
                            8'b01101100: display = 8'b00000010;
                            8'b10001011: display = 8'b00010000;
                            8'b10001100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b00001000: begin
                    //
                    if (9 < first[7:3] < 11 || 9 < second[7:3] = 11
                            || 9 < third[7:3] < 11 || 9 < fourth[7:3] = 11
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (9 <= first[12:8] <= 10 || 9 <= second[12:8] <= 10
                            || 9 <= third[12:8] <= 10 || 9 <= fourth[12:8] <= 10
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00001001: display = 8'b00000000;
                            8'b00001010: display = 8'b00000000;
                            8'b01001001: display = 8'b10000000;
                            8'b01001010: display = 8'b10000000;
                            8'b01101001: display = 8'b00000010;
                            8'b01101010: display = 8'b00000010;
                            8'b10001001: display = 8'b00010000;
                            8'b10001010: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00001001: display = 8'b00000000;
                            8'b00001010: display = 8'b00000000;
                            8'b01001001: display = 8'b10000000;
                            8'b01001010: display = 8'b10000000;
                            8'b01101001: display = 8'b00000010;
                            8'b01101010: display = 8'b00000010;
                            8'b10001001: display = 8'b00010000;
                            8'b10001010: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00001001: display = 8'b00000000;
                            8'b00001010: display = 8'b00000000;
                            8'b01001001: display = 8'b10000000;
                            8'b01001010: display = 8'b10000000;
                            8'b01101001: display = 8'b00000010;
                            8'b01101010: display = 8'b00000010;
                            8'b10001001: display = 8'b00010000;
                            8'b10001010: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00001001: display = 8'b00000000;
                            8'b00001010: display = 8'b00000000;
                            8'b01001001: display = 8'b10000000;
                            8'b01001010: display = 8'b10000000;
                            8'b01101001: display = 8'b00000010;
                            8'b01101010: display = 8'b00000010;
                            8'b10001001: display = 8'b00010000;
                            8'b10001010: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b00010000: begin
                    //
                    if (7 < first[7:3] < 9 || 7 < second[7:3] = 9
                            || 7 < third[7:3] < 9 || 7 < fourth[7:3] = 9
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (7 <= first[12:8] <= 8 || 7 <= second[12:8] <= 8
                            || 7 <= third[12:8] <= 8 || 7 <= fourth[12:8] <= 8
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00000111: display = 8'b00000000;
                            8'b00001000: display = 8'b00000000;
                            8'b01000111: display = 8'b10000000;
                            8'b01001000: display = 8'b10000000;
                            8'b01100111: display = 8'b00000010;
                            8'b01101000: display = 8'b00000010;
                            8'b10000111: display = 8'b00010000;
                            8'b10001000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00000111: display = 8'b00000000;
                            8'b00001000: display = 8'b00000000;
                            8'b01000111: display = 8'b10000000;
                            8'b01001000: display = 8'b10000000;
                            8'b01100111: display = 8'b00000010;
                            8'b01101000: display = 8'b00000010;
                            8'b10000111: display = 8'b00010000;
                            8'b10001000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00000111: display = 8'b00000000;
                            8'b00001000: display = 8'b00000000;
                            8'b01000111: display = 8'b10000000;
                            8'b01001000: display = 8'b10000000;
                            8'b01100111: display = 8'b00000010;
                            8'b01101000: display = 8'b00000010;
                            8'b10000111: display = 8'b00010000;
                            8'b10001000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00000111: display = 8'b00000000;
                            8'b00001000: display = 8'b00000000;
                            8'b01000111: display = 8'b10000000;
                            8'b01001000: display = 8'b10000000;
                            8'b01100111: display = 8'b00000010;
                            8'b01101000: display = 8'b00000010;
                            8'b10000111: display = 8'b00010000;
                            8'b10001000: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b00100000: begin
                    //
                    if (5 < first[7:3] < 7 || 5 < second[7:3] = 7
                            || 5 < third[7:3] < 7 || 5 < fourth[7:3] = 7
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (5 <= first[12:8] <= 6 || 5 <= second[12:8] <= 6
                            || 5 <= third[12:8] <= 6 || 5 <= fourth[12:8] <= 6
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00000101: display = 8'b00000000;
                            8'b00000110: display = 8'b00000000;
                            8'b01000101: display = 8'b10000000;
                            8'b01000110: display = 8'b10000000;
                            8'b01100101: display = 8'b00000010;
                            8'b01100110: display = 8'b00000010;
                            8'b10000101: display = 8'b00010000;
                            8'b10000110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00000101: display = 8'b00000000;
                            8'b00000110: display = 8'b00000000;
                            8'b01000101: display = 8'b10000000;
                            8'b01000110: display = 8'b10000000;
                            8'b01100101: display = 8'b00000010;
                            8'b01100110: display = 8'b00000010;
                            8'b10000101: display = 8'b00010000;
                            8'b10000110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00000101: display = 8'b00000000;
                            8'b00000110: display = 8'b00000000;
                            8'b01000101: display = 8'b10000000;
                            8'b01000110: display = 8'b10000000;
                            8'b01100101: display = 8'b00000010;
                            8'b01100110: display = 8'b00000010;
                            8'b10000101: display = 8'b00010000;
                            8'b10000110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00000101: display = 8'b00000000;
                            8'b00000110: display = 8'b00000000;
                            8'b01000101: display = 8'b10000000;
                            8'b01000110: display = 8'b10000000;
                            8'b01100101: display = 8'b00000010;
                            8'b01100110: display = 8'b00000010;
                            8'b10000101: display = 8'b00010000;
                            8'b10000110: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b01000000: begin
                    //
                    if (3 < first[7:3] < 5 || 3 < second[7:3] = 5
                            || 3 < third[7:3] < 5 || 3 < fourth[7:3] = 5
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (3 <= first[12:8] <= 4 || 3 <= second[12:8] <= 4
                            || 3 <= third[12:8] <= 4 || 3 <= fourth[12:8] <= 4
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00000011: display = 8'b00000000;
                            8'b00000100: display = 8'b00000000;
                            8'b01000011: display = 8'b10000000;
                            8'b01000100: display = 8'b10000000;
                            8'b01100011: display = 8'b00000010;
                            8'b01100100: display = 8'b00000010;
                            8'b10000011: display = 8'b00010000;
                            8'b10000100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00000011: display = 8'b00000000;
                            8'b00000100: display = 8'b00000000;
                            8'b01000011: display = 8'b10000000;
                            8'b01000100: display = 8'b10000000;
                            8'b01100011: display = 8'b00000010;
                            8'b01100100: display = 8'b00000010;
                            8'b10000011: display = 8'b00010000;
                            8'b10000100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00000011: display = 8'b00000000;
                            8'b00000100: display = 8'b00000000;
                            8'b01000011: display = 8'b10000000;
                            8'b01000100: display = 8'b10000000;
                            8'b01100011: display = 8'b00000010;
                            8'b01100100: display = 8'b00000010;
                            8'b10000011: display = 8'b00010000;
                            8'b10000100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00000011: display = 8'b00000000;
                            8'b00000100: display = 8'b00000000;
                            8'b01000011: display = 8'b10000000;
                            8'b01000100: display = 8'b10000000;
                            8'b01100011: display = 8'b00000010;
                            8'b01100100: display = 8'b00000010;
                            8'b10000011: display = 8'b00010000;
                            8'b10000100: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
                8'b10000000: begin
                    //
                    if (1 < first[7:3] < 3 || 1 < second[7:3] = 3
                            || 1 < third[7:3] < 3 || 1 < fourth[7:3] = 3
                            ) begin
                        // 控制梁顯示燈亮起來
                        case (first[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[2:0])
                            3'b000: display = 8'b00000000;
                            3'b001: display = 8'b10000000;
                            3'b010: display = 8'b00000010;
                            3'b011: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end

                    if (1 <= first[12:8] <= 2 || 1 <= second[12:8] <= 2
                            || 1 <= third[12:8] <= 2 || 1 <= fourth[12:8] <= 2
                            ) begin
                        // 控制欄顯示燈亮起來
                        case (first[15:8])
                            8'b00000010: display = 8'b00000000;
                            8'b00000001: display = 8'b00000000;
                            8'b01000010: display = 8'b10000000;
                            8'b01000001: display = 8'b10000000;
                            8'b01100010: display = 8'b00000010;
                            8'b01100001: display = 8'b00000010;
                            8'b10000010: display = 8'b00010000;
                            8'b10000001: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (second[15:8])
                            8'b00000010: display = 8'b00000000;
                            8'b00000001: display = 8'b00000000;
                            8'b01000010: display = 8'b10000000;
                            8'b01000001: display = 8'b10000000;
                            8'b01100010: display = 8'b00000010;
                            8'b01100001: display = 8'b00000010;
                            8'b10000010: display = 8'b00010000;
                            8'b10000001: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (third[15:8])
                            8'b00000010: display = 8'b00000000;
                            8'b00000001: display = 8'b00000000;
                            8'b01000010: display = 8'b10000000;
                            8'b01000001: display = 8'b10000000;
                            8'b01100010: display = 8'b00000010;
                            8'b01100001: display = 8'b00000010;
                            8'b10000010: display = 8'b00010000;
                            8'b10000001: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase

                        case (fourth[15:8])
                            8'b00000010: display = 8'b00000000;
                            8'b00000001: display = 8'b00000000;
                            8'b01000010: display = 8'b10000000;
                            8'b01000001: display = 8'b10000000;
                            8'b01100010: display = 8'b00000010;
                            8'b01100001: display = 8'b00000010;
                            8'b10000010: display = 8'b00010000;
                            8'b10000001: display = 8'b00010000;
                            default: display = 8'b10011110;
                        endcase
                    end
                end
            endcase
        end
    end

    // 柱欄梁行
    always @ (posedge clock_10hz) begin
        if (~reset) begin
            first = {2'b11, 3'b000, 5'b00000, 5'b00110, 3'b010};
            second = {2'b11, 3'b000, 5'b00000, 5'b00101, 3'b010};
            third = {2'b11, 3'b000, 5'b00000, 5'b00100, 3'b010};
            fourth = {2'b11, 3'b000, 5'b00000, 5'b00011, 3'b010};
            pillar = 0;
            column = 0;
            beam_of_roof = 0;
            row = 0;

        end else if (first[15:8] == 0 && first[7:0] > 0) begin
            // 確定身體為水平

            if (first[17:16] == 3) begin
                // 身體往右

                if (direction == 0) begin
                    // 如果控制往上
                    first[15:0] = {
                      first[2:0],  //
                      first[7:3],
                      8'b00000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往下
                    first[15:0] = {
                      first[2:0],  //
                      first[7:3] + 1,
                      8'b00000000  // 將橫向資料歸零
                    };

                end else if (direction == 2) begin
                    // 如果控制往右
                    first[15:0] = {
                      8'b00000000  // 將直向資料歸零
                      first[12:8] + 1,  //
                      first[2:0],
                    };
                end

            end else if (first[17:16] == 2) begin
                // 身體往左

                if (direction == 1) begin
                    // 如果控制往上
                    first[15:0] = {
                      first[2:0] - 1,  //
                      first[7:3],
                      8'b00000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往下
                    first[15:0] = {
                      first[2:0] + 1,
                      first[7:3] - 1,  //
                      8'b00000000  // 將橫向資料歸零
                    };

                end else if (direction == 2) begin
                    // 如果控制往左
                    first[15:0] = {
                      8'b00000000  // 將直向資料歸零
                      first[7:3] - 1,
                      first[2:0],  //
                    };
                end

        end else if (first[15:8] > 0 && first[7:0] == 0) begin
            // 確定身體為垂直

            if (first[17:16] == 0) begin
                // 身體往上

                if (direction == 0) begin
                    // 如果控制往上
                    first[15:0] = {
                        first[15:13] - 1,
                        first[12:8],  //
                        8'b00000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往右
                    first[15:0] = {
                        8'b00000000  // 將直向資料歸零
                        first[12:8] + 1,  //
                        first[15:13] - 1,
                    };

                end else if (direction == 2) begin
                    // 如果控制往左
                    first[15:0] = {
                        8'b00000000  // 將直向資料歸零
                        first[12:8] - 1,  //
                        first[15:13] - 1
                    };
                end

            end else if (first[17:16] == 1) begin
                // 身體往下

                if (direction == 1) begin
                    // 如果控制往下
                    first[15:0] = {
                        first[15:13] + 1,
                        first[12:8],  //
                        8'b00000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往右
                    first[15:0] = {
                        8'b00000000  // 將直向資料歸零
                        first[12:8] + 1,  //
                        first[15:13],
                    };

                end else if (direction == 2) begin
                    // 如果控制往左，且第一個身體往下，另確定資料為垂直，做往左移動動作
                    first[15:0] = {
                        8'b00000000  // 將直向資料歸零
                        first[12:8] - 1,  //
                        first[15:13],
                    };

                end
            end
        end
        second <= first;
        third <= second;
        fourth <= third;

    end

    // 方向陣列循環複製
    always @ (posedge clock_10hz) begin
        if (~reset || switch == 0) begin
            first[17:16] = first[17:16];
        end else begin
            first[17:16] = direction;
        end
    end

    // 方向控制
    always @ (posedge clock_10hz) begin
        if (~reset) begin
            direction = 3;
        end else begin
            case (switch)
                4'b1000: direction = 0;
                4'b0100: direction = 1;
                4'b0010: direction = 2;
                4'b0001: direction = 3;
                default: direction = 0;
            endcase
        end
    end

endmodule // snake
