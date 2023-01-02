`include "lfsr_43.v"

module lfsr_43_test ();
    reg clock, reset;
    wire [3:0] random;

    lfsr_43 UUT (clock, reset, random);

    initial begin
        $display("| clock | reset | random |");
        clock = 1;
        reset = 0;

        #12.5;
        reset = 1;

        #180;
        $finish;
    end

    always begin
        #2.5;
        $monitor("|   %b   |   %b   |  %d  |", clock, reset, random);

        #2.5;
        clock = ~clock;
    end

endmodule // lfsr_43_test
