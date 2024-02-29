`include "tristate.v"
module tristate_tb();
reg in, ctrl;
wire out;

tristate uut (.in(in), .ctrl(ctrl), .out(out));

initial begin
    $dumpfile("tristate.vcd");
    $dumpvars(0, tristate_tb);

    #10 ctrl = 1; in = 1;
    #10 ctrl = 0;

    #1 $monitor ("out = %b", out );

end
endmodule
