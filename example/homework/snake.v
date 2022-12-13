module snake (clock, reset, turn, display);
    input clock, reset;
    output [7:0] trun;
    output [7:0] display;

    reg [3:0] direction;
    reg [3:0] first, second, third, fourth;
    reg [3:0] row;  // 行
    reg [15:0] column;  // 欄
    reg [3:0] pillar;  // 柱
    reg [17:0] beam_of_roof;  // 梁

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
