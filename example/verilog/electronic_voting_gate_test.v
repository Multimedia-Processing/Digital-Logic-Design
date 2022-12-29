module electronic_voting_gate_test ();
    reg [3:0]in;
    reg [2:0]B;
    integer count;

    electronic_voting_gate UUT (in,B,c,s,d,v,r,e,h,o,vote0,vote1,vote2);
    
    initial begin
        B=3'b010;
        for (count = 0; count < 16; count = count + 1) begin
            in=count[3:0];
            #10;
        end   
    end
    
endmodule