module full_adder(a,b,cin,sum,cout);
input a,b,cin;
ouput sum,cout;

xor(xor1 , a , b);
xor(sum , xor1 , cin);
and(and1 , xor1 , cin);
and(and2 , a , b);
or(cout , and1 , and2);

endmodule

module full_adder_tb();

reg a,b,cin;
wire sum,cout,xor1,and1,and2;

full_adder uut(.a(a) , .b(b) , .cin(cin) , .sum(sum) , .cout(cout));
intial 
begin
    a = 0 ; b = 0 ; cin = 0 ; #10
    a = 1 ; b = 0 ; cin = 0 ; #10
    a = 0 ; b = 1 ; cin = 0 ; #10
    a = 1 ; b = 1 ; cin = 0 ; #10
    a = 0 ; b = 0 ; cin = 1 ; #10       
    a = 1 ; b = 0 ; cin = 1 ; #10
    a = 0 ; b = 1 ; cin = 1 ; #10
    a = 1 ; b = 1 ; cin = 1 ; #10
$finish;
end
endmodule