/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File 4-Bit Comparator
*************************************/

module FourBitComp(
	input [3:0] A,B,
	output [2:0] R
);

	assign R[2] = (A > B) ? 1'b1: 1'b0;
	assign R[1] = (A == B) ? 1'b1: 1'b0;
	assign R[0] = (A < B) ? 1'b1:1'b0;
	

endmodule
