module mux (i,s,y);
input wire [3:0] i;
input wire [1:0] s;
output reg y;

assign @ (*)
begin
    case(s)
    2'b00 : y = i[0];
    2'b01 : y = i[1];
    2'b10 : y = i[2];
    2'b11 : y = i[3];
    default : y = 0;
    endcase
end
endmodule


module mux_tb();
reg [3:0] i;
reg [1:0] s;
wire y;

mux uut(.i(i) , .s(s) , .y(y));
intial begin
i = 4'b0000; #10
s = 2'b00; #10
s = 2'b01; #10
s = 2'b10; #10
s = 2'b11; #10

$finsih;
end
endmodule