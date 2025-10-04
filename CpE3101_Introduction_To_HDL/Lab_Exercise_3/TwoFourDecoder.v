
/*************************************
*File: TwoFourDecoder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: main Module File for 2x4 Decoder
*************************************/

module TwoFourDecoder(
	input [1:0] I,
	input E,
	output [3:0] D
);
	wire w1, w2, w3;
	
	not N1 (w1, I[0]);
	not N2 (w2, I[1]);
	and A1 (D[0], w1, w2, E);
	and A2 (D[1], w1, I[1], E);
	and A3 (D[2], I[0], w2, E);
	and A4 (D[3], I[0], I[1], E);
	
endmodule
