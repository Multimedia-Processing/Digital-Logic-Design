module logic_microoperation (
    clock, reset, selective_set, processor_register, b_in, data);
input clock, reset;
input [1:0] selective_set;
input [3:0] processor_register, b_in;
output [3:0] data;

reg [3:0] data;

always @ (posedge clock) begin
    if (reset) begin
        data = 0;
    end else begin
        case (selective_set)
            0: data = processor_register & b_in;
            1: data = processor_register | b_in;
            2: data = processor_register ^ b_in;
            3: data = ~processor_register;
        endcase
    end
end

endmodule // logic_microoperation
