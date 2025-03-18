module alu(s,a,b,y);
input [15:0] a , b;
input [3:0] s;
output wire [16:0] y;

assign y = (s == 0) ? (a & b) :
        (s == 1) ? !(a | b) :
        (s == 2) ? (a + b) :
        (s == 3) ? (a ^ b) :
        0;


endmodule;

module alu_tb();
reg [15:0] a , b;
reg [3:0] s;
wire [16:0] y;

alu uut(.a(a) , .b(b) , .s(s) , .y(y));
intial begin
    a = 16b'0000000000000000; b = 16b'0000000000000001; #10
    s = 4b'0000; #10
    s = 4b'0001; #10
    s = 4b'0010; #10
    s = 4b'0011; #10
$finish;
end
endmodule


