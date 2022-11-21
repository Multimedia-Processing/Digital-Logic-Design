`include "logic_microoperation.v"

module logic_microoperation_test ();
    reg clock, reset, carry;
    reg [1:0] selective_set;
    reg signed [3:0] processor_register, b_in;

    wire signed [3:0] data;

    integer number, number2;
    integer seed;

    logic_microoperation UUT (clock, reset, selective_set, processor_register, b_in, data);

    initial begin
        seed = 10;
    end
    initial begin
        $display("| clock | reset | selective_set | processor_register | b_in | data |");
        clock = 1'b1;
        reset = 1'b1;

        #10;
        #5;

        reset = 1'b0;

        #10;

        for (number = 0; number < 8; number = number + 1) begin
            for (number2 = 0; number2 < 32; number2 = number2 + 16) begin
                selective_set = number;
                processor_register = $random(seed) % 16;
                b_in = $random(seed) % 16;
                #20;
            end
        end
        #10;
        reset = 1'b1;

        #40;
        $finish;
    end

    always begin
        #10;
        clock = ~clock;
    end

    always begin
    #10;

    $monitor(
        "|   %b   |   %b   |   %b   | %b | %b |  %b |",
        clock, reset, selective_set, processor_register, b_in, data);

    end

endmodule // logic_microoperation_test
