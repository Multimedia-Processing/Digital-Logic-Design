module snake (clock, reset, turn, display);
    input clock, reset;
    output [7:0] trun;
    output [7:0] display;

    reg [3:0] switch;
    reg [15:0] first, second, third, fourth;  // 第一個、第二個、第三個、第四個
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

    always @ (*) begin
        case (condition)
            value: ;
            default: ;
        endcase
    end

    always @ (posedge clock_1hz) begin
        if (~reset) begin
            re
        end else if (${2:condition2) begin

        end
    end

    // 方向控制
    always @ (posedge clock_1hz) begin
        if (~reset) begin
            first = 0;
        end else if (${2:condition2) begin

        end
    end

    // 方向陣列 1, 2, 3, 4
    always @ (posedge clock_1hz) begin
        if (~reset) begin
            first = 0;
        end else if (${2:condition2) begin

        end
    end

endmodule // snake
