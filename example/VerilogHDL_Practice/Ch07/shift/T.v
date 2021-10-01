
`timescale 1ns/1ps

module T;
    reg [3:0] D = 4'b1000;
    wire [3:0] Y1;
    wire [3:0] Y2;
    wire [3:0] Y3;
    wire [3:0] Z1;
    wire [3:0] Z2;
    wire [3:0] Z3;


    shift UUT (
        .D(D),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Z1(Z1),
        .Z2(Z2),
        .Z3(Z3));

    initial
    begin
      #400 // Final time:  400 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        D = 4'b0100;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        D = 4'b1100;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        D = 4'b1010;
    end

endmodule

