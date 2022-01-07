
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg T = 1'b0;
    reg J = 1'b0;
    reg K = 1'b0;
    reg Clr = 1'b1;
    wire Qjk;
    wire Qt;

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

    JK_T UUT (
        .Clk(Clk),
        .T(T),
        .J(J),
        .K(K),
        .Clr(Clr),
        .Qjk(Qjk),
        .Qt(Qt));

    initial
    begin
      #2200 // Final time:  2200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        T = 1'b0;
        Clr = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  485ns
        #200;
        T = 1'b1;
        K = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  685ns
        #200;
        T = 1'b0;
        J = 1'b1;
        K = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  885ns
        #200;
        T = 1'b1;
        K = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1085ns
        #200;
        T = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1285ns
        #200;
        T = 1'b1;
        K = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1485ns
        #200;
        T = 1'b0;
        J = 1'b0;
        K = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1685ns
        #200;
        T = 1'b1;
        K = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1885ns
        #200;
        T = 1'b0;
        J = 1'b1;
        K = 1'b1;
        // -------------------------------------
    end

endmodule

