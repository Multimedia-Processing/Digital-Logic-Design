`timescale 1ns / 1ps

module adder_4bit_assign_test ();

    reg [3:0] a;
    reg [3:0] b;
    reg ci;
    wire [3:0] s;
    wire co;

    adder_4bit_assign UUT (a, b, ci, s, co);

    initial begin
        a  = 4'h0;
        b  = 4'h0;
        ci = 0;
        for (a = 0; a < 15; a = a + 1)begin
            for (b = 0; b < 15; b = b + 1)begin
                //ci=~ci;
            #10;
            end
        end
    end

    initial begin
        #2500;
        $stop;
    end


endmodule // full_add_one_test
