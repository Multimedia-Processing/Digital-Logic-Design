

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

module compare (a0,a1,a2,b0,b1,b2,vote0,vote1,vote2);
    inout a0,b0,a1,b1,a2,b2;
    wire A0,A1,A2,B0,B1,B2;
    wire q,w,e,r,t,y,u;
    wire i,o;
    wire p,f,g,h;
    output vote0,vote1,vote2;

    not(A0,a0);
    not(B0,b0);
    not(A1,a1);
    not(B1,b1);
    not(A2,a2);
    not(B2,b2);

    xnor(q,a1,b1);
    xnor(w,a2,b2);
    and(e,A0,b0);
    and(r,A2,b2);
    and(t,A1,b1);
    xnor(y,a0,b0);
    and(u,a0,B0);
    not(nu,u);

    and(i,q,w);
    and(o,w,t);

    and(p,i,e);
    xnor(f,r,o);
    and(vote1,p,f);
    and(g,o,nu);
    or(h,o,r);

    xnor(vote0,p,f);
    xnor(vote2,g,h);

endmodule

module electronic_voting_gate (in,B,c,s,d,v,r,e,h,o,vote0,vote1,vote2);
    input [3:0]in;
    input [2:0]B;
    output c,s;
    output d,v;
    output r;
    output e,h,o;
    output vote0,vote1,vote2;

    adder a0(in[0],in[1],s,c);
    adder a2(in[2],in[3],v,d);

    fulladder fa1(v,s,0,e,r);
    fulladder fa2(d,c,r,h,o);

    compare c1(e,h,o,B[0],B[1],B[2],vote0,vote1,vote2);
endmodule
