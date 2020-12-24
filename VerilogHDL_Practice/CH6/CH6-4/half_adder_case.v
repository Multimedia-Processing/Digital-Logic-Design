module half_adder_case (A, B, Co, S);
input A, B;
output Co, S;
reg Co, S;

always @ (A or B) begin
  case ({A, B})
    2'b00: begin Co = 0; S = 0; end
    2'b01: begin Co = 0; S = 1; end
    2'b10: begin Co = 0; S = 1; end
    default: begin Co = 1; S = 0; end
  endcase

end

endmodule // half_adder_case
