module shift_microoperation (
    clock,
    reset,
    a_in,
    lift_serial_input,
    right_serial_input,
    selective_set,
    data
);
    input clock, reset;
    input [3:0] a_in;
    input lift_serial_input;
    input right_serial_input;
    input selective_set;
    output [3:0] data;

    reg [3:0] data;

    always @ (posedge clock) begin
        if (reset) begin
           data = 0; 
        end else begin
            case (selective_set)
                0: data = {right_serial_input, a_in[3:1]};
                1: data = {a_in[2:0], lift_serial_input};
            endcase
        end
    end

endmodule