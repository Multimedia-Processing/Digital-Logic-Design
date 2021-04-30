module two_com_assign (i, o);

input [3:0]i;
output [3:0]o;

assign o[0] = (i[0]);
assign o[1] = (i[0] ^ i[1]);
assign o[2] = (i[2] ^ (i[1] | i[0]));
assign o[3] = (i[3] ^ (i[0] | i[1] | i[2]));

endmodule // two_com_assign
