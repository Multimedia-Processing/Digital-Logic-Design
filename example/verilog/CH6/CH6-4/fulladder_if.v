`timescale 1ns / 1ps
module full_adder( a, b, c_in, sum, c_out);

input a, b, c_in;
output reg sum, c_out;

always @(a or b or c_in)
begin
 if(a==0 && b==0 && c_in==0)
  begin
   sum=0;c_out=0;
  end

 else if(a==0 && b==0 && c_in==1)
  begin
   sum=1;c_out=0;
  end

 else if(a==0 && b==1 && c_in==0)
  begin
   sum=1;c_out=0;
  end

 else if(a==0 && b==1 && c_in==1)
  begin
   sum=0;c_out=1;
  end

 else if(a==1 && b==0 && c_in==0)
  begin
   sum=1;c_out=0;
  end
 else if(a==1 && b==0 && c_in==1)
  begin
   sum=0;c_out=1;
  end

 else if(a==1 && b==1 && c_in==0)
  begin
   sum=0;c_out=1;
  end

 else if(a==1 && b==1 && c_in==1)
  begin
   sum=1;c_out=1;
  end

end

endmodule