module gray_if (i, o);
  input [3:0] i;
  output [3:0] o;
  reg [3:0] o;


  always @ ( i ) begin
    if ( i == 0) begin
      o = 0;
    end else if (i == 1) begin
      o = 4'b0001;
    end else if (i == 2) begin
      o = 4'b0011;
    end else if (i == 3) begin
      o = 4'b0010;
    end else if (i == 4) begin
      o = 4'b0110;
    end else if (i == 5) begin
      o = 4'b0111;
    end else if (i == 6) begin
      o = 4'b0101;
    end else if (i == 7) begin
      o = 4'b0100;
    end else if (i == 8) begin
      o = 4'b1100;
    end else if (i == 9) begin
      o = 4'b1101;
    end else if (i == 10) begin
      o = 4'b1111;
    end else if (i == 11) begin
      o = 4'b1110;
    end else if (i == 12) begin
      o = 4'b1010;
    end else if (i == 13) begin
      o = 4'b1011;
    end else if (i == 14) begin
      o = 4'b1001;
    end else if (i == 15) begin
      o = 4'b1000;
    end
  end
endmodule // gray_if
