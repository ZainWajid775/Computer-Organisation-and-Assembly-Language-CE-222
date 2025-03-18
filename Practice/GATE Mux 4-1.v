module mux (i0,i1,i2,i3,s0,s1,not_s0,not_s1,and0,and1,and2,and3,y);
input i0,i1,i2,i3,s0,s1;
ouput not_s0,not_s1,and0,and1,and2,and3,y;

not(not_s0 , s0);
not(not_s1 , s1);

and(and0 , not_s0 , not_s1);
and(and1 , s0 , not_s1);
and(and2 , not_s0 , s1);
and(and3 , s0 , s1);

or(y , and0 , and1 , and2 , and3);

endmodule




module mux_tb();
reg i0,i1,i2,i3,s0,s1;
wire not_s0,not_s1,and0,and1,and2,and3,y;

mux uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.not_s0(not_s0),.not_s1(not_s1),.and1(and1),.and2(and2),.and3(And3),.and4(and4),.y(y));
intial begin

i0 = 1 ; i1 = 0 ; i2 = 1 ; i3 = 0; #10
s0 = 0 ; s1 = 0 ; #10
s0 = 0 ; s1 = 1 ; #10
s0 = 1 ; s1 = 0 ; #10
s0 = 1 ; s1 = 1 ; #10
$finsih;
end
endmodule