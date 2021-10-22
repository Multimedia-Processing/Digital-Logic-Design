
`timescale 1ns/1ps

module T;
    reg A = 1'b0;
    reg B = 1'b0;
    wire Co;
    wire S;


    half_add_case UUT (
        .A(A),
        .B(B),
        .Co(Co),
        .S(S));

    initial
    begin
      #500 // Final time:  500 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        A = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        A = 1'b0;
        B = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        A = 1'b1;
    end

endmodule

