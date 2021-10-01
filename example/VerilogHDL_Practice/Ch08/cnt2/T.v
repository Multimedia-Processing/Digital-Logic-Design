
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg Clr = 1'b1;
    reg Load = 1'b0;
    wire [3:0] Q1;
    wire [3:0] Q2;
    wire [3:0] Q3;

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

    cnt2 UUT (
        .Clk(Clk),
        .Clr(Clr),
        .Load(Load),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3));

    initial
    begin
      #3400 // Final time:  3400 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Clr = 1'b0;
        Load = 1'b1;
        // -------------------------------------
    end

endmodule

