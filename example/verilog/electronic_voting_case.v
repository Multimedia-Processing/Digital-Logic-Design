module electronic_voting_case (in,out);
    input [3:0]in;
    output [3:1]out;
    reg [3:1]out;

    always @ (in) begin
        case (in)
            4'b1111: out=3'b100;
            4'b1110: out=3'b100;
            4'b1101: out=3'b100;
            4'b1011: out=3'b100;
            4'b0111: out=3'b100;

            4'b1100: out=3'b010;
            4'b1001: out=3'b010;
            4'b0011: out=3'b010;
            4'b1010: out=3'b010;
            4'b0101: out=3'b010;
            4'b0110: out=3'b010;

            default: out=3'b001;
        endcase
    end

endmodule