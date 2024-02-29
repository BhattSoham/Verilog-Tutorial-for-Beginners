module mux21 (s,d0,d1,y);
input s,d0,d1;
output y;

wire s,d0,d1;
reg y;

always@(d0 or d1 or s)
 begin
    if(s)
     y = d1;
    else
     y = d0;    
end
endmodule
