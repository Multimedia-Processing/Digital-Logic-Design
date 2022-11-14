module perak_light (clock, reset, display, turn);
    input clock, reset;
    output [7:0] display;
    output [3:0] turn;

    reg [31:0] diver;
    reg clock_1hz;
    reg [3:0] turn = 4'b0001;
    reg [7:0] display;
    reg [7:0] data;

    // 此用於實際電路除頻器，實際燒錄時取消註解
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

    // 此用於模擬檢測使用，實際燒錄時將此註解
    // always @ (clock) begin
    //    clock_1hz = clock;
    // end

    always @ (data) begin
        case (data)
            0: display = 8'b01000000;
            3: display = 8'b00100000;
            6: display = 8'b00010000;
            9: display = 8'b00010000;
            12: display = 8'b00010000;
            15: display = 8'b00010000;
            18: display = 8'b00001000;
            21: display = 8'b00000100;
            24: display = 8'b10000000;
            27: display = 8'b10000000;
            30: display = 8'b10000000;
            33: display = 8'b10000000;
            default: display = 8'b10011110;
        endcase
    end

    always @ (data) begin
        case (data)
            0: turn = 4'b0001;
            3: turn = 4'b0001;
            6: turn = 4'b0001;
            9: turn = 4'b0010;
            12: turn = 4'b0100;
            15: turn = 4'b1000;
            18: turn = 4'b1000;
            21: turn = 4'b1000;
            24: turn = 4'b1000;
            27: turn = 4'b0100;
            30: turn = 4'b0010;
            33: turn = 4'b0001;
            default: turn = 4'b1111;
        endcase
	end

    always @ (posedge clock_1hz) begin
        if (reset || data == 33) begin
            data = 0;
        end else begin
            data = data + 3;
        end
    end

endmodule // perak_light
