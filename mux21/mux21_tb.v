`include "mux21.v"
module mux21_tb();
reg s,d0,d1;
wire y;

mux21 uut (.s(s), .d0(d0), .d1(d1), .y(y));

initial begin
    $dumpfile("mux21.vcd");
    $dumpvars(0, mux21_tb);
end

initial begin
    #10 s= 0; d0= 0; d1=0;
    #10 s= 0; d0= 0; d1=1;
    #10 s= 1; d0= 1; d1=0;
    #10 s= 1; d0= 1; d1=1;
    #1 $monitor("y = %b", y);

end

endmodule