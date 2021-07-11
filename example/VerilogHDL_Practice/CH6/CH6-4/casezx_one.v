module casezx_one (d3, d2, d1, d0, q1, q0);
  input d3, d2, d1, d0;
  output q1, q0;
  reg q1, q0;

always @ ( d3 or d2 or d1 or d0 ) begin
  casez ({ d3, d2, d1, d0 })
    4'b1000: begin q1 = 1; q0 = 1; end
    4'b?100: begin q1 = 1; q0 = 0; end
    4'b??10: begin q1 = 0; q0 = 1; end
    4'b???1: begin q1 = 0; q0 = 0; end
    default: begin q1 = 0; q0 = 0; end
  endcase
end

endmodule // casezx_one
