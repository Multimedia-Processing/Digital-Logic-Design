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
        if(~reset || diver == 100000000) begin
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
            0: begin
                turn = 4'b0001;
                display = 8'b01000000;
            end
            1: begin
                turn = 4'b0001;
                display = 8'b00100000;
            end
            2: begin
                turn = 4'b0001;
                display = 8'b00010000;
            end
            3: begin
                turn = 4'b0010;
                display = 8'b00010000;
            end
            4: begin
                turn = 4'b0100;
                display = 8'b00010000;
            end
            5: begin
                turn = 4'b1000;
                display = 8'b00010000;
            end
            6: begin
                turn = 4'b1000;
                display = 8'b00001000;
            end
            7: begin
                turn = 4'b1000;
                display = 8'b00000100;
            end
            8: begin
                turn = 4'b1000;
                display = 8'b10000000;
            end
            9: begin
                turn = 4'b0100;
                display = 8'b10000000;
            end
            10: begin
                turn = 4'b0010;
                display = 8'b10000000;
            end
            11: begin
                turn = 4'b0001;
                display = 8'b10000000;
            end
            default: begin
                turn = 4'b1111;
                display = 8'b10011110;
            end
        endcase
    end

    always @ (posedge clock_1hz) begin
        if (~reset || data >= 11) begin
            data = 0;
        end else begin
            data = data + 1;
        end
    end

endmodule // perak_light
