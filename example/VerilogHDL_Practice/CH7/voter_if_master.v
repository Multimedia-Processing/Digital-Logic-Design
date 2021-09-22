module voter_if_master (i, m, o);
input [3:0] i;
input m;
output [3:1] o;
reg [3:1] o;

always @ (  i or m ) begin
  if (i == 0 || i == 1 || i == 2 || i == 4 || i == 8) begin
    o = 3'b100;
  end

  if ((i == 3 || i == 5 || i == 6 || i == 9 || i == 10 || i == 12) && m == 1) begin
    o = 3'b001;
  end else begin
    o = 3'b100;
  end

  if (i == 7 || i == 11 || i == 13 || i == 14 || i == 15) begin
    o = 3'b001;
  end

end
endmodule // voter_if_master
