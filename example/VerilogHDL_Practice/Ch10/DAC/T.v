
`timescale 1ns/1ps

module T;
    reg Clk10K = 1'b0;
    reg Clr = 1'b1;
    reg [7:0] Din = 8'b01100100;
    wire N_CS;
    wire N_WR;
    wire N_DACA;

    parameter PERIOD = 200;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 0;

    initial    // Clock process for Clk10K
    begin
        #OFFSET;
        forever
        begin
            Clk10K = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) Clk10K = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end

    DAC UUT (
        .Clk10K(Clk10K),
        .Clr(Clr),
        .Din(Din),
        .N_CS(N_CS),
        .N_WR(N_WR),
        .N_DACA(N_DACA));

    initial
    begin
      #5200 // Final time:  5200 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  115ns
        #115;
        CHECK_N_WR(1'b0);
        // -------------------------------------
        // -------------  Current Time:  285ns
        #170;
        Clr = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  315ns
        #30;
        CHECK_N_WR(1'b1);
        // -------------------------------------
        // -------------  Current Time:  1285ns
        #970;
        Din = 8'b11001000;
        // -------------------------------------
        // -------------  Current Time:  2115ns
        #830;
        CHECK_N_WR(1'b0);
        // -------------------------------------
        // -------------  Current Time:  2315ns
        #200;
        CHECK_N_WR(1'b1);
        // -------------------------------------
        // -------------  Current Time:  3085ns
        #770;
        Din = 8'b10010110;
        // -------------------------------------
        // -------------  Current Time:  4115ns
        #1030;
        CHECK_N_WR(1'b0);
        // -------------------------------------
        // -------------  Current Time:  4315ns
        #200;
        CHECK_N_WR(1'b1);
        // -------------------------------------
        // -------------  Current Time:  6115ns
        #1800;
        CHECK_N_WR(1'b0);
        // -------------------------------------
        // -------------  Current Time:  6315ns
        #200;
        CHECK_N_WR(1'b1);
        // -------------------------------------
        // -------------  Current Time:  8115ns
        #1800;
        CHECK_N_WR(1'b0);
        // -------------------------------------
        // -------------  Current Time:  8315ns
        #200;
        CHECK_N_WR(1'b1);
        // -------------------------------------
    end

endmodule

