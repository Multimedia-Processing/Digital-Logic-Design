
`timescale 1ns/1ps

module T;
    reg A = 1'b0;
    reg B = 1'b0;
    reg Ci = 1'b0;
    wire Co;
    wire S;


    full_add1 UUT (
        .A(A),
        .B(B),
        .Ci(Ci),
        .Co(Co),
        .S(S));

    
    initial
    begin 
      #1000; // Final time:  1000 ns
        $stop;
    end

    initial
    begin
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
        A = 1'b0;
    end

endmodule

