module fulladder (a, b, ci, s, co);
    input a, b, ci;
    output s, co;
    wire xb,xab,xabci;

    xor(xab,a,b);
    xor(s,xab,ci);
    and(xabci,xab,ci);
    and(ab,a,b);
    or(co,xabci,ab);
endmodule

module adder_4bit_gate(a, b, ci, s, co);
    input [3:0] a,b;
    input ci;
    output [3:0] s;
    output co;
    wire [3:0] c;

    fulladder fa1(a[0],b[0], ci, s[0], c[1]) ;
    fulladder fa2(a[1],b[1], c[1], s[1], c[2]) ;
    fulladder fa3(a[2],b[2], c[2], s[2], c[3]) ;
    fulladder fa4(a[3],b[3], c[3], s[3], co) ;

endmodule