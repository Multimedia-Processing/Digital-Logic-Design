module lfsr_43 (clock, reset, random);
    input clock, reset;
    output [3:0] random;

    reg [3:0] random;

    always @ (posedge clock) begin
        if (~reset) begin
            random = 4'b1000;
        end else begin
            random = {random[2:0], random[2] ^ random[3]};
        end
    end

endmodule // lfsr_43
