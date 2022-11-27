`timescale 1ns / 1ps
// test

module adder_4bit_if_test();
    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    reg tmp;
    wire [3:0] s;
    wire co;

    adder_4bit_if UUT (a, b, ci, s, co);

    initial begin
        a  = 4'b0000;
        b  = 4'b0000;
        ci = 1'b0;
        for (a = 4'b0000; a < 4'b1111; a = a + 4'b0001 )begin
            //if( a == 4'b1111 )begin a = 4'b0000; end
            for (b = 4'b0000; b < 4'b1111; b = b + 4'b0001 )begin
                //if( b == 4'b1111 )begin a = 4'b0000; end
                for( tmp=0; tmp<1; tmp=tmp+1 )begin
                    if ( tmp==0 )begin
                        ci = ~ci;
                        #10;
                    end
                    else if (tmp==0)begin
                        ci = ~ci;
                        tmp = tmp - 1;
                    end
                end
            end
        end
    end

    initial begin
        #2400;
        $stop;
        $finish;
    end


endmodule