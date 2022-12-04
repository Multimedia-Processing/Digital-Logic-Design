`timescale 1ns / 1ps

module adder_4bit_if_test();

    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    wire [3:0] s;
    wire [1:0] co;
    integer i, j;

    adder_4bit_if UUT (a, b, ci, s, co);

    initial begin
        a  = 4'b0000;
        b  = 4'b0000;
        ci = 1'b0;
        for ( i=0; i<16; i=i+1 )begin
            for ( j=0; j<16; j=j+1 )begin
                // ci 的 0/1 變換
                #10;
                ci = ~ci;
                #10;
                ci = ~ci;
                // b 從 4'b0000 加到 4'b1111
                b = b + 4'b0001;
            end
            // a 從 4'b0000 加到 4'b1111
            a = a + 4'b0001;
        end
    end

    initial begin
        // 總共 512 個變化, 每個變化10秒 [3:0]a , [3:0]b , [1:0]c => (2*2*2*2)*(2*2*2*2)*2 = 2^9 = 512
        #5120;
        $stop;
        $finish;
    end


endmodule