
`timescale 1ns/1ps

module T;
    reg Clk10M = 1'b0;
    reg Clr = 1'b1;
    wire EN;
    wire RS;
    wire RW;
    wire [7:0] D;
    wire [2:0] Cs;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk10M
    begin
        #OFFSET;
        forever
        begin
            Clk10M = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk10M = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    LCM UUT (
        .Clk10M(Clk10M),
        .Clr(Clr),
        .EN(EN),
        .RS(RS),
        .RW(RW),
        .D(D),
        .Cs(Cs));

        initial
        begin
          #12200 // Final time:  12200 ns
             $stop;
        end

                initial begin
                    // -------------  Current Time:  285ns
                    #285;
                    Clr = 1'b0;
                    // -------------------------------------
                    // -------------  Current Time:  9685ns
                    #9400;
                    Clr = 1'b0;
                    // -------------------------------------
                    // -------------  Current Time:  10885ns
                    #1200;
                    Clr = 1'b1;
                    // -------------------------------------
                    // -------------  Current Time:  11085ns
                    #200;
                    Clr = 1'b0;
                    // -------------------------------------
                end

            endmodule

