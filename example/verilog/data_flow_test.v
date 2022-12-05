`timescale 1ns / 1ps

module data_flow_test ();

    reg [4:0]P;
    reg [4:0]Q;
    wire [6:0]R;
    wire [3:0]S;
    wire [5:0]T;
    wire [4:0]U;
    wire [4:0]V;
    wire [5:0]W;
    wire [4:0]X;
    wire Y;
    wire Z;

    data_flow UUT (P, Q, R, S, T, U, V, W, X, Y, Z);
    
    initial begin
        P=5'b00000; Q=5'b00000;
        #100; 
            P=5'b11000; Q=5'b10101;
        #100; 
            P=5'b00111; Q=5'b01010;
        #100;
            P=5'b10011; Q=5'b11010;
        #100;
            P=5'b01100; Q=5'b00101;
    end

    initial begin
        #500;
        $finish;
    end

endmodule
