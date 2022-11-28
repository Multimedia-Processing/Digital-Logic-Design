`include "perak_light.v"

module perak_light_test ();
    reg clock, reset;
    wire [7:0] display;
    wire [3:0] turn;

    perak_light UUT (clock, reset, display, turn);

    initial begin
        $display("| clock | reset | display | turn |");
        clock = 1'b1;
        reset = 1'b0;

        #10;
        reset = 1'b1;

        #5;
        #1000;
        reset = 1'b0;
        #10;
        reset = 1'b1;
        #10;
        #1000;

        $finish;
    end

    always begin
        #5;
        $monitor("|   %b   |   %b   | %b  |  %b  |",
        	clock, reset, display, turn);

        #5;
        clock = ~clock;
    end

endmodule // perak_light_test
