module test_adder8 ();
reg [7:0]a;
reg [7:0]b;
wire [7:0]s;

adder8 adder_instance(.a(a), .b(b), .sum(s));

initial begin
    a = 35; b = 62; #1 $display("a = %d, b = %d, s = %d", a, b, s);
    a = 19; b = 14; #1 $display("a = %d, b = %d, s = %d", a, b, s);
end

endmodule