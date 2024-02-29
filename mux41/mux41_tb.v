`include "mux41.v"
module mux41_tb();
reg x0,x1,x2,x3,s0,s1;
wire y;

mux41 uut (.x0(x0), .x1(x1), .x2(x2), .x3(x3), .s0(s0), .s1(s1), .y(y));

initial begin
    $dumpfile("mux41.vcd");
    $dumpvars(0, mux41_tb);
    #10 s1 = 0; s0 = 0; x0 = 1; x1 = 0; x2 = 0; x3 = 0;
    #10 s1 = 0; s0 = 1; x0 = 0; x1 = 1; x2 = 0; x3 = 0;
    #10 s1 = 1; s0 = 0; x0 = 0; x1 = 0; x2 = 1; x3 = 0;
    #10 s1 = 1; s0 = 1; x0 = 0; x1 = 0; x2 = 0; x3 = 1;
    #1 $monitor("y = %b", y);
end

endmodule