module shift_5_bic_t_left_2_bit (data, mul);
input [4:0] data;
output [4:0] mul;
reg [4:0] mul;
reg temp;

always @ ( data ) begin
  temp = data[4];
  mul = data << 2;
  mul[0] = temp;

end

endmodule // shift_c_5_bit_left_2_bit
