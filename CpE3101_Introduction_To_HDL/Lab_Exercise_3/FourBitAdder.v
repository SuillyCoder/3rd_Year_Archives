/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for 4 Bit Adder with Instantiated Full Adder Modules
*************************************/

module FourBitAdder(
	input [3:0] A, input [3:0] B,input C_in, 
	output [3:0] S, output C_out
);

	wire w1, w2, w3;
	
	FullAdder_Test Adder1 (	
		.x(A[0]), .y(B[0]), .z(C_in), .C(w1), .S(S[0])
	);
	FullAdder_Test Adder2 (
		.x(A[1]), .y(B[1]), .z(w1), .C(w2), .S(S[1])
	);

	FullAdder_Test Adder3 (
		.x(A[2]), .y(B[2]), .z(w2), .C(w3), .S(S[2])
	);

	FullAdder_Test Adder4 (
		.x(A[3]), .y(B[3]), .z(w3), .C(C_out), .S(S[3])
	);


endmodule
