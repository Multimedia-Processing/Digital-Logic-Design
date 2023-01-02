module lfsr_43 (clock, reset, random);
    input clock, reset;
    output [3:0] random;

    reg [3:0] random;
    reg [27:0] diver;
    reg clock_1hz;

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

    // always @ (clock) begin
    //     clock_1hz = clock;
    // end

    always @ (posedge clock_1hz) begin
        if (~reset) begin
            random = 4'b1000;
        end else begin
            random = {random[2:0], random[2] ^ random[3]};
        end
    end

endmodule // lfsr_43
