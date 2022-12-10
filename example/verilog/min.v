module min (A,B,C,Y);
    input [3:0]A,B,C;
    output [3:0]Y;
    reg [3:0]Y;

    always @ (A or B or C)begin
        if(A < B & A < C)begin
            Y=A;    
        end else if(B < A & B < C)begin
            Y=B;    
        end else if(C < B & C < A)begin
            Y=C;    
        end else if(A == C & A == B)begin
            Y=A;
        end
    end
endmodule