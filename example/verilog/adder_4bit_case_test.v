`timescale 1ns / 1ps

module adder_4bit_case_test();

    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    wire [3:0] s;
    wire co;
    integer i, j;

    adder_4bit_case UUT (a, b, ci, s, co);

    initial begin
        a  = 4'b0000;
        b  = 4'b0000;
        ci = 1'b0;
        for ( i=-1; i<16; i=i+1 )begin
            for ( j=-1; j<15; j=j+1 )begin
                #10;
                ci = ~ci;
                #10;
                ci = ~ci;
                b = b + 4'b0001;
            end
            a = a + 4'b0001;
        end
    end

    initial begin
        #4800;
        $stop;
        $finish;
    end


endmodule