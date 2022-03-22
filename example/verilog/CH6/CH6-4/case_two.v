module case_two (N, A, B, X);
input [2:0] N;
input [3:0] A, B;
output [3:0] X;
reg [3:0] X;

always @ (N or A or B) begin
  case (N)
    1: X = A & B;
    3: X = A & B;
    2: X = A | B;
    6: X = A | B;
    default: X = 0;
  endcase

end

endmodule // case_two
