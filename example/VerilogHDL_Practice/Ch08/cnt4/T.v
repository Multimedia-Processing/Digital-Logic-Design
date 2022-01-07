
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg Load = 1'b1;
    wire [3:0] Q;
    wire A;
    wire B;
    wire C;
    wire D;
    wire E;
    wire F;
    wire G;
    wire [6:0] L;

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

    cnt4 UUT (
        .Clk(Clk),
        .Load(Load),
        .Q(Q),
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .E(E),
        .F(F),
        .G(G),
        .L(L));

    initial
    begin
      #2600 // Final time:  2600 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Load = 1'b0;
        // -------------------------------------
    end

endmodule

