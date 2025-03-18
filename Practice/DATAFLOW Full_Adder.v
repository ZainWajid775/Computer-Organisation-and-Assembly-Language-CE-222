module full_adder(a,b,cin,sum,cout);
input a,b,cin;
ouput wire sum,cout;

assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin);

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