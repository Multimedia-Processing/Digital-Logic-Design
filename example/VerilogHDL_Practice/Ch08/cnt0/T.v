
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg Pre = 1'b0;
    wire [2:0] D;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk
    begin
        #OFFSET;
        forever
        begin
            Clk = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    cnt0 UUT (
        .Clk(Clk),
        .Pre(Pre),
        .D(D));

    initial
    begin
      #2200 // Final time:  2200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  85ns
        #85;
        Pre = 1'b1;
        // -------------------------------------
    end

endmodule

