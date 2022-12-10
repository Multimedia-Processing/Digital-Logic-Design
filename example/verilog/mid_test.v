`timescale 1ns/1ps

module mid_test ();
    reg [3:0]A,B,C;
    wire [3:0]Z;
    
    mid UUT(A,B,C,Z);
    
    initial begin
        #100; A=4'b1111; B=4'b0011; C=4'b0111;
        #100; A=4'b0111; B=4'b1111; C=4'b0011;
        #100; A=4'b0011; B=4'b0111; C=4'b1111;
        #100; A=4'b0001; B=4'b0001; C=4'b0001;
    end

    initial begin
        #500;
        $finish;
    end

endmodule