
`timescale 1ns/1ps

module T;
    reg C = 1'b1;
    wire Di1;
    wire Di2;
    reg Do = 1'b1;
    reg Dio1$inout$reg = 1'bZ;
    wire Dio1 = Dio1$inout$reg;
    reg Dio2$inout$reg = 1'bZ;
    wire Dio2 = Dio2$inout$reg;


    bi_io UUT (
        .C(C),
        .Di1(Di1),
        .Di2(Di2),
        .Do(Do),
        .Dio1(Dio1),
        .Dio2(Dio2));
    
    initial
    begin 
      #1000 // Final time:  1000 ns
        $stop;
    end

    initial begin
        // -------------  Current Time:  100ns
        #100;
        Do = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  200ns
        #100;
        Do = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  300ns
        #100;
        Do = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  400ns
        #100;
        Do = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  500ns
        #100;
        C = 1'b0;
        Do = 1'b0;
        Dio1$inout$reg = 1'b1;
        Dio2$inout$reg = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  600ns
        #100;
        Do = 1'b1;
        Dio1$inout$reg = 1'b0;
        Dio2$inout$reg = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  700ns
        #100;
        Do = 1'b0;
        Dio1$inout$reg = 1'b1;
        Dio2$inout$reg = 1'b1;
        // -------------------------------------
        // -------------  Current Time:  800ns
        #100;
        Do = 1'b1;
        Dio1$inout$reg = 1'b0;
        Dio2$inout$reg = 1'b0;
        // -------------------------------------
        // -------------  Current Time:  900ns
        #100;
        Do = 1'b0;
        Dio1$inout$reg = 1'b1;
        Dio2$inout$reg = 1'b1;
    end

 endmodule

