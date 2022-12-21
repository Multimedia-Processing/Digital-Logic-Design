`include "arithmetic_microoperation.v"

module arithmetic_microoperation_test ();
    reg clock, reset;
    reg [3:0] switch;
    wire [7:0] trun;
    wire [7:0] display;

    integer number, number2;
    integer seed;

    arithmetic_microoperation UUT (clock, reset, switch, turn, display);

    initial begin
        seed = 10;
    end
    initial begin
        $display("| clock | reset | switch | turn | display |");
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
        #10;
        clock = ~clock;
    end

    always begin
    #10;

    $monitor(
        "|   %b   |   %b   |   %b%b   | %d | %d |  %d |",
        clock, reset, switch, turn, display);

    end

endmodule // arithmetic_microoperation_test
