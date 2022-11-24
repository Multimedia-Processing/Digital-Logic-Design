module full_adder (a, b, ci, sum, carry);

input a, b, ci;
output carry, sum;
wire a_b, a_ci, b_ci;

xor (sum, a, b, ci);
and (a_b, a, b);
and (a_ci, a, ci);
and (b_ci, b, ci);
or (carry, a_b, a_ci, b_ci);
endmodule

`include "full_adder.v"
module full_adder_4_bit(A, B, Ci, S, Co);

    input [3:0] A, B;
    input Ci;
    output [3:0] S;
    output Co;
    wire carry1, carry2, carry3;

     full_adder add1(A[0], B[0], Ci, S[0], carry1);
     full_adder add2(A[1], B[1], carry1, S[1], carry2);
     full_adder add3(A[2], B[2], carry2, S[2], carry3);
     full_adder add4(A[3], B[3], carry3, S[3], Co);

endmodule
