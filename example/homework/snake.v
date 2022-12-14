module snake (clock, reset, turn, display);
    input clock, reset;
    input [3:0] switch;
    output [7:0] trun;
    output [7:0] display;

    reg [3:0] switch;
    reg [16:0] first, second_body, third_body, fourth_body;  // 第一個、第二個、第三個、第四個
    reg [1:0] direction;  // 方向陣列
    reg [2:0] pillar;  // 柱 0:無, 1: 超出, 2~3: 由上而下, 4: 超出
    reg [4:0] column;  // 欄 0:無, 1~16: 由左到右, default: don't care
    reg [4:0] beam_of_roof;  // 梁 0: 無, 1:超出, 2~16: 由左到右, 17:超出, default: don't care
    reg [1:0] row;  // 行 0 無 1~3 由上而下

    // always@(posedge clock) begin
    //     if(reset || diver == 100000000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (diver) begin
    //     if (diver < 50000000) begin
    //         clock_1hz = 1;
    //     end else begin
    //         clock_1hz = 0;
    //     end
    // end

    always @ (clock) begin
        clock_1hz = clock;
    end

    // 柱欄梁行
    always @ (posedge clock_1hz) begin
        if (~reset) begin
            first = {2'b11, 2'b000, 5'b00000, 5'b00110, 2'b10};
            second_body = {2'b11, 2'b000, 5'b00000, 5'b00101, 2'b10};
            third_body = {2'b11, 2'b000, 5'b00000, 5'b00100, 2'b10};
            fourth_body = {2'b11, 2'b000, 5'b00000, 5'b00011, 2'b10};

        end else if (first[14:7] == 0 && first[6:0] > 0) begin
            // 確定身體為水平

            if (first[16:15] == 3) begin
                // 身體往右

            end else if (first[16:15] == 2) begin
                // 身體往左
                if (direction == 1) begin
                    // 如果控制往下
                    first[14:0] = {
                      first[16:15],
                      first[14:12] - 1,
                      first[11:7],  //
                      7'b0000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往右
                    first[14:0] = {
                      first[16:15],
                      7'b0000000  // 將直向資料歸零
                      first[11:7] + 1,  //
                      first[14:12],
                    };

                end else if (direction == 2) begin
                    // 如果控制往左
                    first[14:0] = {
                      first[16:15],
                      7'b0000000  // 將直向資料歸零
                      first[11:7] - 1,  //
                      first[14:12],
                    };
                end

        end else if (first[14:7] > 0 && first[6:0] == 0) begin
            // 確定身體為垂直

            if (first[16:15] == 0) begin
                // 身體往上

                if (direction == 0) begin
                    // 如果控制往上
                    first[14:0] = {
                        first[16:15],
                        first[14:12] - 1,
                        first[11:7],  //
                        7'b0000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往右
                    first[14:0] = {
                        first[16:15],
                        7'b0000000  // 將直向資料歸零
                        first[11:7] + 1,  //
                        first[14:12] - 1,
                    };
                    second_body = first;
                    third_body = second_body;
                    fourth_body = third_body;

                end else if (direction == 2) begin
                    // 如果控制往左
                    first[14:0] = {
                        first[16:15],
                        7'b0000000  // 將直向資料歸零
                        first[11:7] + 1,  //
                        first[14:12] - 1
                    };
                end

            end else if (first[16:15] == 1) begin
                // 身體往下

                if (direction == 1) begin
                    // 如果控制往下
                    first[14:0] = {
                        first[16:15],
                        first[14:12] - 1,
                        first[11:7],  //
                        7'b0000000  // 將橫向資料歸零
                    };

                end else if (direction == 3) begin
                    // 如果控制往右
                    first[14:0] = {
                        first[16:15],
                        7'b0000000  // 將直向資料歸零
                        first[11:7] + 1,  //
                        first[14:12],
                    };

                end else if (direction == 2) begin
                    // 如果控制往左，且第一個身體往下，另確定資料為垂直，做往左移動動作
                    first[14:0] = {
                        first[16:15],
                        7'b0000000  // 將直向資料歸零
                        first[11:7] - 1,  //
                        first[14:12],
                    };

                end
            end
        end
        second_body = first;
        third_body = second_body;
        fourth_body = third_body;

    end

    // 死亡
    always @ (posedge clock_1hz) begin

    end

    // 方向陣列循環複製
    always @ (posedge clock_1hz) begin
        if (~reset || switch == 0) begin
            first[16:15] = first[16:15];
        end else begin
            first[16:15] = direction;
        end
    end

    // 方向控制
    always @ (posedge clock_1hz) begin
        if (~reset) begin
            direction = 3;
        end else begin
            case (switch)
              2'b1000: direction = 0;
              2'b0100: direction = 1;
              2'b1010: direction = 2;
              2'b1001: direction = 3;
              default: 0;
            endcase
        end
    end

endmodule // snake
