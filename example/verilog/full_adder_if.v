module full_adder_if(a, b, ci, s, co);

input a, b, ci;
output s, co;
reg s, co;

always@(a or b or ci)
if(a == 0 && b == 0 && ci == 0)
begin
    s = 0; co = 0;
end
else if(a == 0 && b == 0 && ci == 1)
begin
    s = 1; co = 0;
end
else if(a == 0 && b == 1 && ci == 0)
begin
    s = 1; co = 0;
end
else if(a == 0 && b == 1 && ci == 1)
begin
    s = 0; co = 1;
end
else if(a == 1 && b == 0 && ci == 0)
begin
    s = 1; co = 0;
end
else if(a == 1 && b == 0 && ci == 1)
begin
    s = 0; co = 1;
end
else if(a == 1 && b == 1 && ci == 0)
begin
    s = 0; co = 1;
end
else if(a == 1 && b == 1 && ci == 1)
begin
    s = 1; co = 1;
end






endmodule //full_adder_if