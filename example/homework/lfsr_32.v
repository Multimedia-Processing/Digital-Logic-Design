module lfsr_32 (clock, reset, random);
    input clock, reset;
    output [2:0] random;

    reg [2:0] random;

    always @ (posedge clock) begin
        if (~reset) begin
            random = 3'b100;
        end else begin
            random = {random[1:0], random[1] ^ random[2]};
        end
    end

endmodule // lfsr_32
