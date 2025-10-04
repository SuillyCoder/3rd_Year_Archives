/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: main Module File for Full Adder
*************************************/

module FullAdder_PleaseWork (x,y,z,C,S);
	input x,y,z;
	output C, S;
	
	wire xor1_out, and1_out, and2_out;
	
	xor X1 (xor1_out,x,y);
	xor X2 (S,xor1_out,z);
	and A1 (and1_out, xor1_out,z);
	and A2 (and2_out,x,y);
	or O1 (C,and1_out,and2_out);
	
endmodule