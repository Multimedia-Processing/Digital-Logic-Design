
`timescale 1ns/1ps

module T;
    reg Cs = 1'b1;
    reg [1:0] Addr = 2'b00;
    wire [7:0] Do;


    rom UUT (
        .Cs(Cs),
        .Addr(Addr),
        .Do(Do));

    initial
    begin
      #1000 // Final time:  1000 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        Cs = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        Cs = 1'b1;
        Addr = 2'b01;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        Cs = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        Cs = 1'b1;
        Addr = 2'b10;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        Cs = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        Cs = 1'b1;
        Addr = 2'b11;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        Cs = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  800ns
        #100;
        Cs = 1'b1;
    end

endmodule

