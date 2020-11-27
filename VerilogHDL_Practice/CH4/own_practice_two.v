module own_practice_two (I0, I1, I2, I3, O0, O1, O2, O3);

input I0, I1, I2, I3;
output O0, O1, O2, O3;
wire OR_1, OR_2;

assign O0 = I0;
xor (O1, I0, I1);
or (OR_1, I0, I1);
or (OR_2, I0, I1, I2);
xor (O2, OR_1, I2);
xor (O3, OR_2, I3);

endmodule // own_practice_two
