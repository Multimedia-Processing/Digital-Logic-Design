module perak_light (clock, reset, display, turn);
    input clock, reset;
    output [7:0] display;
    output [4:0] turn;

    reg [27:0] diver;
    reg clock_1hz;
    reg [3:0] turn = 4'b0001;

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

    always @ (posedge wire) begin

    end

endmodule // perak_light
