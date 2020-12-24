module full_adder_case (A, B, Ci, Co, S);
input A, B, Ci;
output Co, S;
reg Co, S;


always @ (Ci or A or B) begin
  case ({A, B, Ci})
    0 : {Co, S} = 2'b00;
    1 : {Co, S} = 2'b01;
    2 : {Co, S} = 2'b01;
    3 : {Co, S} = 2'b10;
    4 : {Co, S} = 2'b01;
    5 : {Co, S} = 2'b10;
    6 : {Co, S} = 2'b10;
    default: {Co, S} = 2'b11;
  endcase

end
endmodule // full_adder_case
