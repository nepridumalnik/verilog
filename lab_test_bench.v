`timescale 1ns/100ps

module test_bench;

reg clk = 1'b0;

always begin
    #1 clk = ~clk;
end

wire clk_o;

lab_test lab_test(.clk(clk), .clk_o(clk_o));

initial begin
    $dumpvars;
    $display("Test started!");
    #10 $finish;
end
    
endmodule
