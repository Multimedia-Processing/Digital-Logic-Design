`include "arithmetic_microoperation.v"

module arithmetic_microoperation_test ();
    reg clock, reset, carry;
    reg [1:0] s;
    reg signed [3:0] a, b;

    wire signed [4:0] data;

    integer number, number2;
    integer seed;

    arithmetic_microoperation UUT (clock, reset, s, a, b, carry, data);

    initial begin
        seed = 10;
    end
    initial begin
        $display("| clock | reset | s carry |  a |  b | data |");
        clock = 1'b1;
        reset = 1'b1;

        #10;
        #5;

        reset = 1'b0;

        #10;

        for (number = 0; number < 8; number = number + 1) begin
            for (number2 = 0; number2 < 32; number2 = number2 + 16) begin
                {s, carry} = number;
                a = $random(seed) % 16;
                b = $random(seed) % 16;
                #20;
            end
        end
        #10;
        reset = 1'b1;

        #20;
        $finish;
    end

    always begin
        #5;
        $monitor(
            "|   %b   |   %b   |   %b%b   | %d | %d |  %d |",
            clock, reset, s, carry, a, b, data);

        #5;
        clock = ~clock;

    end

endmodule // arithmetic_microoperation_test
