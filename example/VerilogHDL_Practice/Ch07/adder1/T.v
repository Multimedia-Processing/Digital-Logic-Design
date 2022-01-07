////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps

module T;
    wire S_0;
    wire S_1;
    wire Co_0;
    wire Co_1;
    reg A = 1'b0;
    reg B = 1'b0;
    reg Ci = 1'b0;


    adder1 UUT (
        .S_0(S_0),
        .S_1(S_1),
        .Co_0(Co_0),
        .Co_1(Co_1),
        .A(A),
        .B(B),
        .Ci(Ci));

    integer TX_FILE = 0;
    integer TX_ERROR = 0;
    
    initial
    begin
      #800 // Final time:  800 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        Ci = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        B = 1'b1;
        Ci = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        Ci = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        A = 1'b1;
        B = 1'b0;
        Ci = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        Ci = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        B = 1'b1;
        Ci = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        Ci = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  1000ns
        #300;
        CHECK_S_0(1'b0);
    end

endmodule

