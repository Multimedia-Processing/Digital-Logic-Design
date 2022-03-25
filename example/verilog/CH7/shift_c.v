module shift_c (data , mul1, mul2, div1, div2);
input [3:0] data;
output [3:0] mul1, mul2, div1, div2;
reg [3:0] mul1, div1;
reg t1, t2;

always @ ( data ) begin
  t1 = data[3];
  mul1 = data << 1;
  mul1[0] = t1;

  t2 = data[3];
  div1 = data >> 1;
  div1[0] = t2;
end

assign mul2 = {data[2:0], data[3]};
assign div2 = {data[3], data[2:0]};

endmodule // shift_c
