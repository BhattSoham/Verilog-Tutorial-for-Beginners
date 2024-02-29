module tristate(in,ctrl,out);
input in, ctrl;
output out;

wire in, ctrl;
reg out;

always@(ctrl)
 begin
   if(ctrl == 1)
    out = in;
   else
    out = 1'bz; 

 end

endmodule
