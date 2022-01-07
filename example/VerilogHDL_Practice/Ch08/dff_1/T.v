
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg D = 1'b0;
    reg Din = 1'b0;
    reg Clr1 = 1'b1;
    reg Clr2 = 1'b1;
    reg Pre = 1'b0;
    reg Load = 1'b0;
    wire Q1;
    wire Q2;
    wire Q3;
    wire Q4;

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

    dff_1 UUT (
        .Clk(Clk),
        .D(D),
        .Din(Din),
        .Clr1(Clr1),
        .Clr2(Clr2),
        .Pre(Pre),
        .Load(Load),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3),
        .Q4(Q4));

    initial
    begin
      #1800 // Final time:  1800 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  60ns
        #60;
        D = 1'b1;
        Din = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  260ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        Clr1 = 1'b0;
        Clr2 = 1'b0;
        Pre = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  460ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        Load = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  660ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  860ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        Pre = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1060ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        Clr1 = 1'b1;
        Clr2 = 1'b1;
        Pre = 1'b1;
        Load = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1260ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        Clr1 = 1'b0;
        Clr2 = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1460ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        // -------------------------------------
    end

endmodule

