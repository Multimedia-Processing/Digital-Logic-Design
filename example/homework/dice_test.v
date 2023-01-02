`include "dice.v"

module dice_test ();
    reg clock, reset;
    reg control;
    wire [2:0] random;
    wire [7:0] display;

    dice UUT (clock, reset, control, display);

    initial begin
        $display("| clock | reset | control | display |");
        clock = 1;
        reset = 0;
        control = 0;

        #5;
        #2.5;
        reset = 1;

        #10;
        control = 1;
        #5;
        control = 0;

        #35;
        control = 1;

        #5;
        control = 0;

        #50;
        $finish;
    end

    always begin
        #5;
        $monitor("|   %b   |   %b   |  %d  | %b |", clock, reset, control, display);

        #5;
        clock = ~clock;
    end

endmodule // dice_test
