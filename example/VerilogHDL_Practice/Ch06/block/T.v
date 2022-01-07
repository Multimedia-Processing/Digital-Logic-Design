
`timescale 1ns/1ps

module T;
    reg D = 1'b0;
    reg Clk = 1'b0;
    wire [3:0] X;
    wire [3:0] Y;

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

    block UUT (
        .D(D),
        .Clk(Clk),
        .X(X),
        .Y(Y));
    
    initial
    begin 
      #2200 // Final time:  2200 ns
         $stop;
    end

    initial begin
        // -------------  Current Time:  85ns
        #85;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  285ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  485ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  685ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  885ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1085ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1285ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1485ns
        #200;
        D = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1685ns
        #200;
        D = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1885ns
        #200;
        D = 1'b0;
        // -------------------------------------
    end

endmodule

