/*************************************
*File: HexTo7Segment.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for Hex to 7 Segment Display
*************************************/

module HexTo7Segment(
	input wire [3:0] Hex,
	input wire DP,
	output reg [6:0] Segment
);

always@(*)

	begin
		case({DP, Hex})
		
			//Hex Numbers
			5'b00000 : Segment = 7'b1111110; // For 0
			5'b00001 : Segment = 7'b0110000; // For 1
			5'b00010 : Segment = 7'b1101101; // For 2
			5'b00011 : Segment = 7'b1111001; // For 3
			5'b00100 : Segment = 7'b0110011; // For 4
			5'b00101 : Segment = 7'b1011011; // For 5
			5'b00110 : Segment = 7'b1011111; // For 6
			5'b00111 : Segment = 7'b1110000; // For 7
			5'b01000 : Segment = 7'b1111111; // For 8
			5'b01001 : Segment = 7'b1111011; // For 9
			
			//Hex Letters
			5'b01010 : Segment = 7'b1110111; // For A
			5'b01011 : Segment = 7'b0011111; // For B
			5'b01100 : Segment = 7'b1001110; // For C
			5'b01101 : Segment = 7'b0111101; // For D
			5'b01110 : Segment = 7'b1001111; // For E
			5'b01111 : Segment = 7'b1000111; // For F
			
			//DP = 1
			default : Segment = 7'b0000000;
			
			endcase
	end
	
endmodule
