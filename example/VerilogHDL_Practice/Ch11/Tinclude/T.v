
`timescale 1ns/1ps

module T;
    reg Clk_i = 1'b0;
    reg Clr = 1'b1;
    wire Clk_o;
    wire [3:0] Q;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk_i
    begin
        #OFFSET;
        forever
        begin
            Clk_i = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk_i = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    Tinclude UUT (
        .Clk_i(Clk_i),
        .Clr(Clr),
        .Clk_o(Clk_o),
        .Q(Q));

    initial
    begin
      #3200 // Final time:  3200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  285ns
        #285;
        Clr = 1'b0;
        // -------------------------------------
    end

endmodule

