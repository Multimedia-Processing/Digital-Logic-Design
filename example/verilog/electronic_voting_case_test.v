module electronic_voting_case_test ();
    reg [3:0]in;
    wire [2:0]out;
    integer count;

    electronic_voting_case UUT (in,out);
    
    initial begin
        for (count = 0; count < 16; count = count + 1) begin
            in=count[3:0];
            #10;
        end    
    end
    
endmodule