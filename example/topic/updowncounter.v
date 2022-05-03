`timescale 1ns / 1ps


module updowncounter(
input clock, reset,
output reg [3:0] an = 4'b0,
output reg [7:0] seg = 8'd0
    );
    reg sel = 1'b1;
reg [25:0] cnt = 26'd1;
reg [3:0] num = 4'd0;
reg clock_1hz = 1'd1;
//100MHz 除頻 1Hz
always@(posedge clock, negedge reset)
    if(!reset) begin
        cnt = 26'd1;
        clock_1hz = 1'd1;
    end else if(cnt == 26'd50_000_000) begin
        clock_1hz = !clock_1hz;
        cnt = 26'd1;
    end else
        cnt = cnt + 26'd1;
//上下數
always@(posedge clock_1hz, posedge reset)
    if(!reset)
        num = 4'd0;
    else if(sel)	//sel = 1 上數
        if(num == 4'd9) begin
            num = 4'd8;
            sel = 1'd0;
        end else
            num = num + 4'd1;
    else	//sel = 0 下數
        if(num == 4'd0) begin
            num = 4'd1;
            sel = 1'd1;
        end else
            num = num - 4'd1;
//七段解碼
always@(num) begin
an = 4'b0001;
    case(num)
        4'd0: seg = 8'b11111100;
        4'd1: seg = 8'b01100000;
        4'd2: seg = 8'b11011010;
        4'd3: seg = 8'b11110010;
        4'd4: seg = 8'b01100110;
        4'd5: seg = 8'b10110110;
        4'd6: seg = 8'b10111110;
        4'd7: seg = 8'b11100000;
        4'd8: seg = 8'b11111110;
        4'd9: seg = 8'b11110110;
        default: seg = 8'b0;
    endcase
end
endmodule
