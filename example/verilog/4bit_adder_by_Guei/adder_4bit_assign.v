module  adder_4bit_assign (a,b,ci,s,co);
    input [3:0] a,b;
    input ci;
    output [3:0] s;
    output co;

    assign {co,s} = (a + b + ci);
endmodule