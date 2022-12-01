module adder_4bit_case(a, b, ci, s, co);
    input [3:0] a,b;
    input ci;
    output [3:0] s;
    output co;
    reg [3:0] s;
    reg co;

    always@ (a or b or ci)
    begin
        case({a, b, ci})
        //{ 4'b0000 , b == 4'b0000 , ci == 1'b0 }: begin   s = 4'b0000 ; co = 1'b0 ;  end
        { a == 4'b0000 , b == 4'b0000 , ci == 1'b0 }:begin
            s = 4'b0001;    co = 1'b0;
        end
        3'h001 :begin   s = 1'h1; co = 0;  end
        3'h010 :begin   s = 1'h1; co = 0;  end
        3'h011 :begin   s = 1'h2; co = 0;  end
        3'h020 :begin   s = 1'h2; co = 0;  end
        3'h021 :begin   s = 1'h3; co = 0;  end
        3'h030 :begin   s = 1'h3; co = 0;  end
        3'h031 :begin   s = 1'h4; co = 0;  end
        3'h040 :begin   s = 1'h5; co = 0;  end
        3'h041 :begin   s = 1'h5; co = 0;  end
        3'h050 :begin   s = 1'h5; co = 0;  end
        3'h051 :begin   s = 1'h6; co = 0;  end
        3'h060 :begin   s = 1'h6; co = 0;  end
        3'h061 :begin   s = 1'h7; co = 0;  end
        3'h070 :begin   s = 1'h7; co = 0;  end
        3'h071 :begin   s = 1'h8; co = 0;  end
        3'h080 :begin   s = 1'h8; co = 0;  end
        3'h081 :begin   s = 1'h9; co = 0;  end
        3'h090 :begin   s = 1'h9; co = 0;  end
        3'h091 :begin   s = 1'hA; co = 0;  end
        3'h0A0 :begin   s = 1'hA; co = 0;  end
        3'h0A1 :begin   s = 1'hB; co = 0;  end
        3'h0B0 :begin   s = 1'hB; co = 0;  end
        3'h0B1 :begin   s = 1'hC; co = 0;  end
        3'h0C0 :begin   s = 1'hC; co = 0;  end
        3'h0C1 :begin   s = 1'hD; co = 0;  end
        3'h0D0 :begin   s = 1'hD; co = 0;  end
        3'h0D1 :begin   s = 1'hE; co = 0;  end
        3'h0E0 :begin   s = 1'hE; co = 0;  end
        3'h0E1 :begin   s = 1'hF; co = 0;  end
        3'h0F0 :begin   s = 1'hF; co = 0;  end
        3'h0F1 :begin   s = 1'h0; co = 1;  end
        endcase
    end





endmodule