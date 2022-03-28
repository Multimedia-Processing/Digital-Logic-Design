module shift_c_5_bit_right_2_bit (data, div);
input [4:0] data;
output [4:0] div;
reg [4:0] div;
reg temp;

always @ ( data ) begin
  temp = data[4];
  div = data >> 2;
  div[0] = temp;

end

endmodule // shift_c_5_bit_right_2_bit
