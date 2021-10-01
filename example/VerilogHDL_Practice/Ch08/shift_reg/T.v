
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg St = 1'b0;
    reg Ld = 1'b1;
    reg Ser = 1'b0;
    reg [3:0] D = 4'b1010;
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

    shift_reg UUT (
        .Clk(Clk),
        .St(St),
        .Ld(Ld),
        .Ser(Ser),
        .D(D),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3));

    initial
    begin
      #2200 // Final time:  2200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  85ns
        #85;
        Ser = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  285ns
        #200;
        St = 1'b1;
        Ld = 1'b0;
        Ser = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  685ns
        #400;
        Ser = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  885ns
        #200;
        Ser = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1285ns
        #400;
        Ser = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1485ns
        #200;
        Ser = 1'b0;
        // -------------------------------------
    end

endmodule

