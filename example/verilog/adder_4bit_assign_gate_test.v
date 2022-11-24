`timescale 1ns / 1ps

module adder_4bit_assign_gate_test ();

    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    wire [3:0] s;
    wire co;
    integer i,j;

    adder_4bit_assign_gate UUT (a, b, ci, s, co);

    initial begin
        a  = -1;
        b  = -1;
        ci = 0;
        for (i = 0; i < 16; i = i + 1)begin
            a=a+1;
            for (j = 0; j < 16; j = j + 1)begin
                b=b+1;
                //ci=~ci;
            #10;
            end
        end
    end

    initial begin
        #2560;
        $stop;
    end

endmodule 
