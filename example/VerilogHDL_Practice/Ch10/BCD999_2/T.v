
`timescale 1ns/1ps

module T;
    reg Clk = 1'b0;
    reg Clr = 1'b1;
    wire [11:0] Q;

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

    BCD999_2 UUT (
        .Clk(Clk),
        .Clr(Clr),
        .Q(Q));

    initial
    begin
      #100200 // Final time:  100200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Clr = 1'b0;
        // -------------------------------------
    end

endmodule

