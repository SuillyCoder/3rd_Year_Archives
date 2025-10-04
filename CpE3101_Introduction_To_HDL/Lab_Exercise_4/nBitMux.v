/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for n-Bit Mux
*************************************/


module nBitMux #(parameter N = 4)(
	input [N-1: 0] A,B,C,D,
	input [1:0] S,
	output [N-1: 0]Y

);

	assign Y = (S == 2'b00) ? A : 
				  (S == 2'b01) ? B : 
			     (S == 2'b10) ? C : D;

endmodule


