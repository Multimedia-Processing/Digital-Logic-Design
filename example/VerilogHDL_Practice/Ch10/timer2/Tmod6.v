
`timescale 1ns/1ps

module Tmod6;
    reg Clk_i = 1'b0;
    reg Clr = 1'b1;
    wire [3:0] Q;
    wire Clk_o;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk_i
    begin
        #OFFSET;
        forever
        begin
            Clk_i = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk_i = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    mod6 UUT (
        .Clk_i(Clk_i),
        .Clr(Clr),
        .Q(Q),
        .Clk_o(Clk_o));

    initial
    begin
      #2200 // Final time:  2200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Clr = 1'b0;
        // -------------------------------------
    end

endmodule

