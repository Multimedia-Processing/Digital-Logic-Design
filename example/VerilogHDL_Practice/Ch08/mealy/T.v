
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg Clr = 1'b1;
    reg D = 1'b1;
    wire Q;
    wire [1:0] Cs;

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

    mealy UUT (
        .Clk(Clk),
        .Clr(Clr),
        .D(D),
        .Q(Q),
        .Cs(Cs));

    initial
    begin
      #3200 // Final time:  3200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  250ns
        #250;
        Clr = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  450ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  850ns
        #400;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1050ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1250ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1650ns
        #400;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2050ns
        #400;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2250ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2450ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2650ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2850ns
        #200;
        D = 1'b1;
        // -------------------------------------
    end

 endmodule

