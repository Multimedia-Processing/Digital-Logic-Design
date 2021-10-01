// Ch06 half_adder_case.v
// 一位元半加法器 (case 敘述)

module half_add_case (A, B, Co, S);
input  A, B;     // A, B 一位元輸入
output Co, S;    // Co 進位和 S 
reg    Co, S;

// 使用 case 敘述 
always@ (A or B)
  case ({A,B})
    2'b00  : begin  Co = 0;  S = 0;  end
    2'b01  : begin  Co = 0;  S = 1;  end
    2'b10  : begin  Co = 0;  S = 1;  end
    default: begin  Co = 1;  S = 0;  end
  endcase

endmodule

