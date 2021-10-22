
`timescale 1ns/1ps

module T;
    reg Clk100 = 1'b0;
    reg Ki = 1'b0;
    wire Ko1;
    wire Ko2;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk100
    begin
        #OFFSET;
        forever
        begin
            Clk100 = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk100 = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    debounce2 UUT (
        .Clk100(Clk100),
        .Ki(Ki),
        .Ko1(Ko1),
        .Ko2(Ko2));

    initial
    begin
      #8400 // Final time:  8400 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  485ns
        #485;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  685ns
        #200;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  885ns
        #200;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1085ns
        #200;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  1285ns
        #200;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  3085ns
        #1800;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  3285ns
        #200;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  3485ns
        #200;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  3685ns
        #200;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  3885ns
        #200;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  5285ns
        #1400;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  5485ns
        #200;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  5685ns
        #200;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  7085ns
        #1400;
        Ki = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  7285ns
        #200;
        Ki = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  7485ns
        #200;
        Ki = 1'b0;
        // -------------------------------------
    end

endmodule

