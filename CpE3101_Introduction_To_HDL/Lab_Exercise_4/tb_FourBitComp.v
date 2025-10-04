/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench File for Four Bit Comparator
*************************************/

`timescale 1 ns / 1 ps

module tb_FourBitComp();

	reg [3:0] A,B;
	wire [2:0] R;
	
	FourBitComp UUT (.A(A), .B(B), .R(R));
	
	initial begin
			//Test Cases for Greater Than
			A = 4'd0100; B = 4'd0011; #5
			A = 4'd0101; B = 4'd0100; #5
			A = 4'd0110; B = 4'd0101; #5
			A = 4'd0111; B = 4'd0110; #5
			A = 4'd1000; B = 4'd0111; #5
			
			//Test Cases for Equal
			A = 4'd0000; B = 4'd0000; #5
			A = 4'd0001; B = 4'd0001; #5
			A = 4'd0011; B = 4'd0011; #5
			A = 4'd0111; B = 4'd0111; #5
			A = 4'd1111; B = 4'd1111; #5
			
			//Test Cases for Less Than
			A = 4'd0011; B = 4'd0100; #5
			A = 4'd0100; B = 4'd0101; #5
			A = 4'd0101; B = 4'd0110; #5
			A = 4'd0110; B = 4'd0111; #5
			A = 4'd0111; B = 4'd1000; #5
		$stop;
	end

endmodule
