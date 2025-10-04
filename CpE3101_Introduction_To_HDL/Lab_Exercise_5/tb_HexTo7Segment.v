/*************************************
*File: tb_HexTo7Segment.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench Module File for Hex to 7 Segment Display
*************************************/

`timescale 1 ns / 1 ps

module tb_HexTo7Segment();
	
	reg [3:0] Hex;
	reg DP;
	wire [6:0] Segment;
	
	HexTo7Segment UUT (.Hex(Hex), .DP(DP), .Segment(Segment));
	
	initial begin
	
		//Active Low 
			{DP, Hex} = 5'b00000; # 5
			{DP, Hex} = 5'b00001; # 5 
			{DP, Hex} = 5'b00010; # 5 
			{DP, Hex} = 5'b00011; # 5 
			{DP, Hex} = 5'b00100; # 5
			{DP, Hex} = 5'b00101; # 5 
			{DP, Hex} = 5'b00110; # 5 
			{DP, Hex} = 5'b00111; # 5
			{DP, Hex} = 5'b01000; # 5 
			{DP, Hex} = 5'b01001; # 5 
			
		
			{DP, Hex} = 5'b01010; # 5 
			{DP, Hex} = 5'b01011; # 5 
			{DP, Hex} = 5'b01100; # 5 
			{DP, Hex} = 5'b01101; # 5 
			{DP, Hex} = 5'b01110; # 5
			{DP, Hex} = 5'b01111; # 5 
			
			
		//Active High
		
			{DP, Hex} = 5'b10000; # 5
			{DP, Hex} = 5'b10001; # 5 
			{DP, Hex} = 5'b10010; # 5 
			{DP, Hex} = 5'b10011; # 5 
			{DP, Hex} = 5'b10100; # 5
			{DP, Hex} = 5'b10101; # 5 
			{DP, Hex} = 5'b10110; # 5 
			{DP, Hex} = 5'b10111; # 5
			{DP, Hex} = 5'b11000; # 5 
			{DP, Hex} = 5'b11001; # 5 
			
		
			{DP, Hex} = 5'b11010; # 5 
			{DP, Hex} = 5'b11011; # 5 
			{DP, Hex} = 5'b11100; # 5 
			{DP, Hex} = 5'b11101; # 5 
			{DP, Hex} = 5'b11110; # 5
			{DP, Hex} = 5'b11111; # 5 
			$stop;
			
	end


endmodule