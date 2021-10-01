
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg Clr = 1'b1;
    reg D = 1'b1;
    wire Q;
    wire [1:0] Cs;
    wire [1:0] Cnt;

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

    moore_111 UUT (
        .Clk(Clk),
        .Clr(Clr),
        .D(D),
        .Q(Q),
        .Cs(Cs),
        .Cnt(Cnt));

     initial
     begin
       #3200 // Final time:  3200 ns
         $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Clr = 1'b0;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  485ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1085ns
        #600;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1485ns
        #400;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  2285ns
        #800;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  2685ns
        #400;
        D = 1'b1;
        // -------------------------------------
    end

endmodule

