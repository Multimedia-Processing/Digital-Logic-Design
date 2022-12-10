module max (A,B,C,X);
    input [3:0]A,B,C;
    output [3:0]X;
    reg [3:0]X;

    always @ (A or B or C)begin
        if(A > B & A > C)begin
            X=A;    
        end else if(B > A & B > C)begin
            X=B;    
        end else if(C > B & C > A)begin
            X=C;    
        end else if(A == C & A == B)begin
            X=A;
        end
    end
endmodule