
module counter(clk, rst, q);
 input clk, rst;
 output [3:0] q;

 wire clk, rst;
 reg [3:0] q;

always @ (posedge clk)
 begin
     if(rst)
       q = 0;
     else
        q = q + 1;  
 end
endmodule 
