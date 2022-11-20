module arithmetic_microoperation (
        clock, reset, selective_set, a, b, carry, data);
    input clock, reset, carry;
    input [1:0] selective_set;
    input signed [3:0] a, b;
    output signed [4:0] data;

    reg [4:0] data;

    always @ (posedge clock) begin
        case ({selective_set, carry})
            0: data = a + b;
            1: data = a + b + carry;
            2: data = a + ~b;
            3: data = a + ~b + 1;
            4: data = a;
            5: data = a + 1;
            6: data = a - 1;
            7: data = a;
        endcase

    end

    always @ (posedge clock) begin
        if (reset == 1)
            data = 0;
    end

endmodule // arithmetic_microoperation
