module mux41 (y,x0,x1,x2,x3,s0,s1);
input x0,x1,x2,x3,s0,s1;
output y;

wire x0,x1,x2,x3,s0,s1;
reg y;

always@(s1 or s0 or x0 or x1 or x2 or x3)
begin
    if(s1 == 0 && s0 == 0)
      y = x0;
    else if (s1 == 0 && s0 == 1)
      y = x1;
    else if (s1 == 1 && s0 == 0)
      y = x2;
    else
      y = x3;            
end
endmodule 
