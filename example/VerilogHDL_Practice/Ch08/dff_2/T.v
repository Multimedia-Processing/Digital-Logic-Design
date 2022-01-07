
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg D = 1'b1;
    reg Din = 1'b0;
    reg Clr = 1'b0;
    reg Pre = 1'b1;
    reg Load = 1'b1;
    wire Q;

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

    dff_2 UUT (
        .Clk(Clk),
        .D(D),
        .Din(Din),
        .Clr(Clr),
        .Pre(Pre),
        .Load(Load),
        .Q(Q));

    initial
    begin
      #3200 // Final time:  3200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  85ns
        #85;
        Din = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  285ns
        #200;
        D = 1'b0;
        Din = 1'b0;
        Clr = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  485ns
        #200;
        Clr = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  685ns
        #200;
        Din = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  885ns
        #200;
        Pre = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1085ns
        #200;
        Din = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1285ns
        #200;
        Din = 1'b1;
        Pre = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1485ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        Load = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1685ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1885ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2085ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2285ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        Load = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2485ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2685ns
        #200;
        D = 1'b1;
        Din = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2885ns
        #200;
        D = 1'b0;
        Din = 1'b1;
        Clr = 1'b1;
        Pre = 1'b0;
        // -------------------------------------
    end

endmodule

