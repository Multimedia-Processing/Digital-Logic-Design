module adder (a,b,s,c);
    input a,b;
    output c,s;

    xor(s,a,b);
    and(c,a,b);
endmodule

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

module compare (a0,a1,a2,b0,b1,b2,vote);
    inout a0,a1,a2,b0,b1,b2;
    wire A0,A1,A2,B0,B1,B2;
    wire q,w,e,r,t,y,u,i,o;
    wire f,g,h,j;
    output [2:0]vote;

    not(A0,a0);
    not(A1,a1);
    not(A2,a2);
    not(B0,b0);
    not(B1,b1);
    not(B2,b2);

    xnor(o,a2,b2);
    xnor(i,a1,b1);
    xnor(u,a0,b0);

    and(r,a1,B1);
    and(w,a0,B0);
    and(e,A1,b1);
    and(q,A0,b0);
    
    and(y,a2,B2);
    and(f,o,r);
    and(g,o,i,w);

    and(t,A2,b2);
    and(h,o,e);
    and(j,o,i,q);

    and(vote[1],o,i,u);
    or(vote[2],y,f,g);
    or(vote[0],t,h,j);

endmodule

//module electronic_voting_gate (in,B,c,s,d,v,r,e,h,o,vote0,vote1,vote2);

module electronic_voting_gate (in,B,vote);
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
