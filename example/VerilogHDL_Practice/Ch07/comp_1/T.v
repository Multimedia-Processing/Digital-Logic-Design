
`timescale 1ns/1ps

module T;
    reg [3:0] A = 4'b0101;
    reg [3:0] B = 4'b1010;
    wire AgB1;
    wire AgB2;
    wire AgB3;
    wire AgB4;
    wire AeB1;
    wire AeB2;
    wire AeB3;
    wire AeB4;
    wire AlB1;
    wire AlB2;
    wire AlB3;
    wire AlB4;


    comp_1 UUT (
        .A(A),
        .B(B),
        .AgB1(AgB1),
        .AgB2(AgB2),
        .AgB3(AgB3),
        .AgB4(AgB4),
        .AeB1(AeB1),
        .AeB2(AeB2),
        .AeB3(AeB3),
        .AeB4(AeB4),
        .AlB1(AlB1),
        .AlB2(AlB2),
        .AlB3(AlB3),
        .AlB4(AlB4));

    initial
    begin
      #1000 // Final time:  1000 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        A = 4'b1100;
        B = 4'b0011;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        A = 4'b0101;
        B = 4'b0101;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        A = 4'b0001;
        B = 4'b0100;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        A = 4'b1110;
        B = 4'b0101;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        A = 4'b0111;
        B = 4'b1001;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        A = 4'b1000;
        B = 4'b1000;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        A = 4'b1010;
        B = 4'b0101;
        // -------------------------------------
        // -------------  Current Time:  800ns
        #100;
        A = 4'b0011;
        B = 4'b1101;
        // -------------------------------------
        // -------------  Current Time:  900ns
        #100;
        A = 4'b0110;
        B = 4'b0110;
        // -------------------------------------
        // -------------  Current Time:  1000ns
        #100;
        CHECK_AgB1(1'b0);
        A = 4'b1100;
        B = 4'b1011;
    end

endmodule

