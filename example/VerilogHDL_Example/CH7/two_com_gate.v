module two_com_gate (I, O);

input [3:0]I;
output [3:0]O;
wire I10, I210;

buf (O[0], I[0]);
xor (O[1], I[1], I[0]);
or (I10, I[1], I[0]);
xor (O[2], I[2], I10);
or (I210, I[2], I10);
xor (O[3], I[3], I210);

endmodule // wto_com_gate
