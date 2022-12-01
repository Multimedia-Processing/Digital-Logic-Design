module adder_4bit_if(a, b, ci, s, co);
    input [3:0] a,b;
    input ci;
    output [3:0] s;
    output co;
    reg [3:0] s;
    reg co;

    always@(a or b or ci)begin
        //  a=0, b=1~F, c=0~1
        if(         a == 4'b0000 && b == 4'b0000 && ci == 1'b0 )begin     s = 4'b0000;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0000 && ci == 1'b1 )begin     s = 4'b0001;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0001 && ci == 1'b0 )begin     s = 4'b0001;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0001 && ci == 1'b1 )begin     s = 4'b0010;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0010 && ci == 1'b0 )begin     s = 4'b0010;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0010 && ci == 1'b1 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0011 && ci == 1'b0 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0011 && ci == 1'b1 )begin     s = 4'b0100;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0100 && ci == 1'b0 )begin     s = 4'b0100;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0100 && ci == 1'b1 )begin     s = 4'b0101;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0101 && ci == 1'b0 )begin     s = 4'b0101;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0101 && ci == 1'b1 )begin     s = 4'b0110;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0110 && ci == 1'b0 )begin     s = 4'b0110;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0110 && ci == 1'b1 )begin     s = 4'b0111;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0111 && ci == 1'b0 )begin     s = 4'b0111;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b0111 && ci == 1'b1 )begin     s = 4'b1000;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1000 && ci == 1'b0 )begin     s = 4'b1000;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1000 && ci == 1'b1 )begin     s = 4'b1001;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1001 && ci == 1'b0 )begin     s = 4'b1001;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1001 && ci == 1'b1 )begin     s = 4'b1010;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1010 && ci == 1'b0 )begin     s = 4'b1010;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1010 && ci == 1'b1 )begin     s = 4'b1011;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1011 && ci == 1'b0 )begin     s = 4'b1011;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1011 && ci == 1'b1 )begin     s = 4'b1100;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1100 && ci == 1'b0 )begin     s = 4'b1100;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1100 && ci == 1'b1 )begin     s = 4'b1101;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1101 && ci == 1'b0 )begin     s = 4'b1101;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1101 && ci == 1'b1 )begin     s = 4'b1110;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1110 && ci == 1'b0 )begin     s = 4'b1110;    co = 1'b0;    end
        else if(    a == 4'b0000 && b == 4'b1110 && ci == 1'b1 )begin     s = 4'b0000;    co = 1'b1;    end
        else if(    a == 4'b0000 && b == 4'b1111 && ci == 1'b0 )begin     s = 4'b0000;    co = 1'b1;    end
        else if(    a == 4'b0000 && b == 4'b1111 && ci == 1'b1 )begin     s = 4'b0001;    co = 1'b1;    end

        //  a=1, b=1~16, c=0~1
        else if(    a == 4'b0001 && b == 4'b0000 && ci == 1'b0 )begin     s = 4'b0001;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0000 && ci == 1'b1 )begin     s = 4'b0010;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0001 && ci == 1'b0 )begin     s = 4'b0010;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0001 && ci == 1'b1 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0010 && ci == 1'b0 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0010 && ci == 1'b1 )begin     s = 4'b0100;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0011 && ci == 1'b0 )begin     s = 4'b0100;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0011 && ci == 1'b1 )begin     s = 4'b0101;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0100 && ci == 1'b0 )begin     s = 4'b0101;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0100 && ci == 1'b1 )begin     s = 4'b0110;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0101 && ci == 1'b0 )begin     s = 4'b0110;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0101 && ci == 1'b1 )begin     s = 4'b0111;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0110 && ci == 1'b0 )begin     s = 4'b0111;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0110 && ci == 1'b1 )begin     s = 4'b1000;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0111 && ci == 1'b0 )begin     s = 4'b1000;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b0111 && ci == 1'b1 )begin     s = 4'b1001;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1000 && ci == 1'b0 )begin     s = 4'b1001;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1000 && ci == 1'b1 )begin     s = 4'b1010;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1001 && ci == 1'b0 )begin     s = 4'b1010;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1001 && ci == 1'b1 )begin     s = 4'b1011;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1010 && ci == 1'b0 )begin     s = 4'b1011;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1010 && ci == 1'b1 )begin     s = 4'b1100;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1011 && ci == 1'b0 )begin     s = 4'b1100;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1011 && ci == 1'b1 )begin     s = 4'b1101;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1100 && ci == 1'b0 )begin     s = 4'b1101;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1100 && ci == 1'b1 )begin     s = 4'b1110;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1101 && ci == 1'b0 )begin     s = 4'b1110;    co = 1'b0;    end
        else if(    a == 4'b0001 && b == 4'b1101 && ci == 1'b1 )begin     s = 4'b0000;    co = 1'b1;    end
        else if(    a == 4'b0001 && b == 4'b1110 && ci == 1'b0 )begin     s = 4'b0000;    co = 1'b1;    end
        else if(    a == 4'b0001 && b == 4'b1110 && ci == 1'b1 )begin     s = 4'b0001;    co = 1'b1;    end
        else if(    a == 4'b0001 && b == 4'b1111 && ci == 1'b0 )begin     s = 4'b0001;    co = 1'b1;    end
        else if(    a == 4'b0001 && b == 4'b1111 && ci == 1'b1 )begin     s = 4'b0010;    co = 1'b1;    end

        //  a=2, b=1~16, c=0~1
        else if(    a == 4'b0010 && b == 4'b0000 && ci == 1'b0 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0000 && ci == 1'b1 )begin     s = 4'b0010;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0001 && ci == 1'b0 )begin     s = 4'b0010;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0001 && ci == 1'b1 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0010 && ci == 1'b0 )begin     s = 4'b0011;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0010 && ci == 1'b1 )begin     s = 4'b0100;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0011 && ci == 1'b0 )begin     s = 4'b0100;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0011 && ci == 1'b1 )begin     s = 4'b0101;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0100 && ci == 1'b0 )begin     s = 4'b0101;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0100 && ci == 1'b1 )begin     s = 4'b0110;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0101 && ci == 1'b0 )begin     s = 4'b0110;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0101 && ci == 1'b1 )begin     s = 4'b0111;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0110 && ci == 1'b0 )begin     s = 4'b0111;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0110 && ci == 1'b1 )begin     s = 4'b1000;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0111 && ci == 1'b0 )begin     s = 4'b1000;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b0111 && ci == 1'b1 )begin     s = 4'b1001;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1000 && ci == 1'b0 )begin     s = 4'b1001;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1000 && ci == 1'b1 )begin     s = 4'b1010;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1001 && ci == 1'b0 )begin     s = 4'b1010;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1001 && ci == 1'b1 )begin     s = 4'b1011;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1010 && ci == 1'b0 )begin     s = 4'b1011;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1010 && ci == 1'b1 )begin     s = 4'b1100;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1011 && ci == 1'b0 )begin     s = 4'b1100;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1011 && ci == 1'b1 )begin     s = 4'b1101;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1100 && ci == 1'b0 )begin     s = 4'b1101;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1100 && ci == 1'b1 )begin     s = 4'b1110;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1101 && ci == 1'b0 )begin     s = 4'b1110;    co = 1'b0;    end
        else if(    a == 4'b0010 && b == 4'b1101 && ci == 1'b1 )begin     s = 4'b0000;    co = 1'b1;    end
        else if(    a == 4'b0010 && b == 4'b1110 && ci == 1'b0 )begin     s = 4'b0000;    co = 1'b1;    end
        else if(    a == 4'b0010 && b == 4'b1110 && ci == 1'b1 )begin     s = 4'b0001;    co = 1'b1;    end
        else if(    a == 4'b0010 && b == 4'b1111 && ci == 1'b0 )begin     s = 4'b0001;    co = 1'b1;    end
        else if(    a == 4'b0010 && b == 4'b1111 && ci == 1'b1 )begin     s = 4'b0010;    co = 1'b1;    end

    end

endmodule