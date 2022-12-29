module electronic_voting_assign_gate_test ();
    reg [3:0]in;
    reg [2:0]B;
    wire [2:0]vote;
    integer count;

    electronic_voting_assign_gate UUT (in,B,vote);
    
    initial begin
        B=3'b010;
        for (count = 0; count < 16; count = count + 1) begin
            in=count[3:0];
            #10;
        end   
    end
    
endmodule