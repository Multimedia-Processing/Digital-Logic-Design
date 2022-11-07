`include "up_down_counter.v"

module perak_light (clock, reset, display, turn);
    input clock, reset;
    output [6:0] display;
    output [3:0] turn;

    reg [27:0] diver, diver250;
    reg clock_10hz, clock_250hz;
    reg [3:0] turn = 4'b0001;
    reg [6:0] display;

    wire [3:0] data;

    // 此用於實際電路除頻器，實際燒錄時取消註解
    // always@(posedge clock) begin
    //     if(reset || diver == 10000000) begin
    //         diver = 0;
    //     end else begin
    //         diver = diver + 1;
    //     end
    // end
    //
    // always @ (diver) begin
    //     if (diver < 5000000) begin
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
    // always @ (diver250) begin
    //     if (diver250 < 200000) begin
    //         clock_250hz = 1;
    //     end else begin
    //         clock_250hz = 0;
    //     end
    // end

    // 此用於模擬檢測使用，實際燒錄時將此註解
    always @ (clock) begin
        clock_10hz = clock;
        clock_250hz = clock;
    end

    always @ (data) begin
        case (data)
            0: display = 7'b1000000;
            1: display = 7'b0100000;
            2: display = 7'b0010000;
            3: display = 7'b0001000;
            4: display = 7'b0000100;
            5: display = 7'b0000010;
            6: display = 7'b0000001;
            default: display = 7'b1000111;
        endcase
    end

    always @ (posedge clock_250hz) begin
        if (turn == 8 || reset) begin
            turn = 4'b0001;
        end else begin
            turn = turn * 2;
        end
	end

    up_down_counter count(clock_10hz, reset, data, 1'b1);

endmodule // perak_light
