module up_down_counter (clock, reset, data, control);

input clock, reset;
output [3:0] data;
reg [3:0] data;
reg control;

always @ (posedge clock) begin
    if (control == 1) begin
        if (reset || q == 9) begin
            q = 0;
        end else begin
            q += 1;
        end
    end else begin
        if (reset || data == 0) begin
            data = 9;
        end else begin
            data -= 1;
        end
    end
end

endmodule // up_down_counter
