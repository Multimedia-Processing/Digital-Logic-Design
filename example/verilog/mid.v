module mid (A,B,C,Z);
    input [3:0]A,B,C;
    output [3:0]Z;
    reg [3:0]Z;

    always @ (A or B or C)begin
        if(A > B & A < C)begin
            Z=A;    
        end else if(B > A & B < C)begin
            Z=B;    
        end else if(C > B & C < A)begin
            Z=C;    
        end else if(A == C & A == B)begin
            Z=A;
        end
    end
endmodule