module alu(s,a,b,y);
input wire [15:0] a , b;
input wire [3:0] s;
output reg [16:0] y;

assign @ (*)
begin
    case(s)
    4'b0000 : y = a & b;
    4'b0001 : y = ~(a | b);
    4'b0010 : y = a + b;
    4'b0011 : y = a ^ b;
    default : y = 0;
    endcase
end


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


