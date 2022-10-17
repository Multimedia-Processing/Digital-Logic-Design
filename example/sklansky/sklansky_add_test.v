`timescale 1ns/1ps
`include "sklansky_add.v"

module sklansky_add_tb;
    parameter maxBit = 15;
    wire [maxBit+1:0]add_ans;
    wire [maxBit:0]test_ans;
    wire test_Cout;

    wire [maxBit:0]S_ok;
    wire Co_ok;

    reg [maxBit+1:0]A,B;
    wire [maxBit:0]S;
    reg Cin;
    wire Cout;
    sklansky utt(A[maxBit:0],B[maxBit:0],Cin,S[maxBit:0],Cout);
    assign add_ans = A + B + Cin;
    assign test_ans = add_ans[maxBit:0];
    assign test_Cout = add_ans[maxBit+1];
    assign S_ok = test_ans ^ S;
    assign Co_ok = test_Cout ^ Cout;
    initial begin
        Cin = 0;

        $dumpfile("simple.vcd");
        $dumpvars(0,sklansky_add_tb);
        for (A = 0;A < 1<<maxBit+1;A = A + 1) begin
            for (B = 0;B < 1<<maxBit+1;B = B + 1) begin
                #10;
            end
        end
        Cin = 1;
        for (A = 0;A < 1<<maxBit+1;A = A + 1) begin
            for (B = 0;B < 1<<maxBit+1;B = B + 1) begin
                #10;
            end
        end
        $finish;
    end

endmodule
