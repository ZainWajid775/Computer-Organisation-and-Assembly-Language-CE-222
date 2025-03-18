module mux (i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;

assign y = (i0&!s0&!s1) | (i1&s0&!s1) | (i2&!s0&s1) | (i3&s0&s1);

endmodule




module mux_tb();
reg i0,i1,i2,i3,s0,s1;
wire y;

mux uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
intial begin

i0 = 1 ; i1 = 0 ; i2 = 1 ; i3 = 0; #10
s0 = 0 ; s1 = 0 ; #10
s0 = 0 ; s1 = 1 ; #10
s0 = 1 ; s1 = 0 ; #10
s0 = 1 ; s1 = 1 ; #10
$finsih;
end
endmodule