module electronic_voting_if (in,out);
    input [3:0]in;
    output [3:1]out;
    reg [3:1]out;

    always @ (in) begin
        if (in==4'b1111|in==4'b1110|in==4'b1101|in==4'b1011|in==4'b0111) begin
            out=3'b100;
        end else if (in==4'b1100|in==4'b1001|in==4'b0011|in==4'b1010|in==4'b0101|in==4'b0110) begin
            out=3'b010;
        end else begin
            out=3'b001;
        end
    end

endmodule