module fulladder_assign(a, b, c_in, c_out, sum);

input [3:0] a;
input [3:0] b;
input c_in;
output c_out;
output [3:0] sum;

assign {c_out, sum} = a + b + c_in;

endmodule