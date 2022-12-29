

module adder (a,b,s,c);
    input a,b;
    output c,s;

    assign s=a^b;
    assign c=a&b;
endmodule

module fulladder (a, b, ci, s, co);
    input a, b, ci;
    output s, co;
    wire ab,xab,xabci;

    assign xab=a^b;
    assign s=xab^ci;
    assign xabci=xab&ci;
    assign ab=a&b;
    assign co=xabci|ab;
endmodule

module compare (a0,a1,a2,b0,b1,b2,vote);
    inout a0,a1,a2,b0,b1,b2;
    wire A0,A1,A2,B0,B1,B2;
    wire q,w,e,r,t,y,u,i,o;
    wire f,g,h,j;
    output [2:0]vote;

    assign A0=~a0;
    assign A1=~a1;
    assign A2=~a2;
    assign B0=~b0;
    assign B1=~b1;
    assign B2=~b2;

    assign o=~(~a2&&b2||a2&&~b2);
    assign i=~(~a1&&b1||a1&&~b1);
    assign u=~(~a0&&b0||a0&&~b0);

    assign r=a1&B1;
    assign w=a0&B0;
    assign e=A1&b1;
    assign q=A0&b0;
    
    assign y=a2&B2;
    assign f=o&r;
    assign g=o&i&w;

    assign t=A2&b2;
    assign h=o&e;
    assign j=o&i&q;

    assign vote[1]=o&i&u;
    assign vote[2]=y|f|g;
    assign vote[0]=t|h|j;

endmodule

module electronic_voting_assign_gate (in,B,vote);
    input [3:0]in;
    input [2:0]B;
    wire c,s;
    wire d,v;
    wire r1;
    wire e1,h1,o1;
    wire A0,A1,A2,B0,B1,B2;
    wire q,w,e,r,t,y,u,i,o,f,g,h,j;
    output [2:0]vote;

    adder a0(in[0],in[1],s,c);
    adder a2(in[2],in[3],v,d);

    fulladder fa1(v,s,0,e1,r1);
    fulladder fa2(d,c,r1,h1,o1);

    compare c1(e1,h1,o1,B[0],B[1],B[2],vote);
endmodule
