
module full_adder_case(a, b, c_in, sum, c_out);

input a, b, c_in;
output sum, c_out;

always@ (a or b or c_in)
begin
    case({a, b, c_in})
    3'b000 :begin 
        sum = 0; c_out = 0; 
    end
    3'b100 :begin 
        sum = 1; c_out = 0; 
    end
    3'b010 :begin 
        sum = 1; c_out = 0; 
    end
    3'b110 :begin 
        sum = 0; c_out = 1; 
    end
    3'b001 :begin 
        sum = 1; c_out = 0; 
    end
    3'b101 :begin 
        sum = 0; c_out = 1; 
    end
    3'b011 :begin 
        sum = 0; c_out = 1; 
    end
    3'b111 :begin 
        sum = 1; c_out = 1; 
    end
    endcase
end
endmodule