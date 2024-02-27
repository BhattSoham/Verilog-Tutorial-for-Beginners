`include "counter.v"
module counter_tb;
reg clk, rst;
wire [3:0] q;

counter uut (.clk(clk), .rst(rst), .q(q));

initial 
  begin
   
        clk = 0;
        rst = 0;
        #10 rst = 1;
        #10 rst = 0;
        #1 $monitor($time, "q=%d", q);
       
     end   

     always
    #10 clk = ~clk;

   initial 
     begin
        $dumpfile("counter.vcd");
        $dumpvars(1, counter_tb);
        
     end  

endmodule  