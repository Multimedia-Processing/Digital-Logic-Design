module gray_case (i, o);
  input [3:0] i;
  output [3:0] o;
  reg [3:0] o;

  always @ ( i ) begin
    case (i)
      4'h0: o = 4'h0;
      4'h1: o = 4'h1;
      4'h2: o = 4'h3;
      4'h3: o = 4'h2;
      4'h4: o = 4'h6;
      4'h5: o = 4'h7;
      4'h6: o = 4'h5;
      4'h7: o = 4'h4;
      4'h8: o = 4'hc;
      4'h9: o = 4'hd;
      4'ha: o = 4'hf;
      4'hb: o = 4'he;
      4'hc: o = 4'ha;
      4'hd: o = 4'hb;
      4'he: o = 4'h9;
      default: o = 4'b1000;
    endcase
  end

endmodule // gray_case
