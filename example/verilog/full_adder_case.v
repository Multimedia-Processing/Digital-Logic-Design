module full_adder_case(a, b, ci, s, co);

input a, b, ci;
output s, co;
reg s, co;

always@ (a or b or ci)
begin
    case({a, b, ci})
    3'b000 :begin s = 0; co = 0; end
    3'b001 :begin s = 1; co = 0; end
    3'b010 :begin s = 1; co = 0; end
    3'b011 :begin s = 0; co = 1; end
    3'b100 :begin s = 1; co = 0; end
    3'b101 :begin s = 0; co = 1; end
    3'b110 :begin s = 0; co = 1; end
    3'b111 :begin s = 1; co = 1; end
    endcase
end





endmodule //full_adder_case