module buf_gate (a, b, c, d);

input a, b;
output c, d;
buf(c, a);
buf(d, b);
    
endmodule