module voter_if_master_intercessio (i, m, o);
input [3:0] i;
input m;
output [3:1] o;
reg [3:1] o;

always @ ( i ) begin
  if (m == 1) begin
    o[3] = 0;
    o[2] = 0;
    o[1] = 1;
  end else begin
    if (i == 0 || i == 1 || i == 2 || i == 4 || i == 8) begin
      o[3] = 1;
    end else begin
      o[3] = 0;
    end

    if (i == 3 || i == 5 || i == 6 || i == 9 || i == 10 || i == 12) begin
      o[2] = 1;
    end else begin
      o[2] = 0;
    end

    if (i == 7 || i == 11 || i == 13 || i == 14 || i == 15) begin
      o[1] = 1;
    end else begin
      o[1] = 0;
    end

  end
end
endmodule // voter_if_master
