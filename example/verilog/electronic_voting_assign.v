module electronic_voting_assign (in,out);
    input [3:0]in;
    output [3:1]out;
    wire [3:1]out;
    wire [2:0]vote;

    assign vote=in[0]+in[1]+in[2]+in[3];
    assign out=(vote == 3'b010) ? 3'b010 : ((vote > 3'b010) ? 3'b100 : 3'b001);
endmodule