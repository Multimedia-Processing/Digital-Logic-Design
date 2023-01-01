`include "lfsr.v"

module lfsr_test ();
    reg clock, reset;
    wire [2:0] random;

    lfsr UUT (clock, reset, random);

    initial begin
        $display("| clock | reset | random |");
        clock = 1;
        reset = 0;

        #12.5;
        reset = 1;

        #280;
        $finish;
    end

    always begin
        #2.5;
        $monitor("|   %b   |   %b   |  %d  |", clock, reset, random);

        #2.5;
        clock = ~clock;
    end

endmodule // lfsr_test
