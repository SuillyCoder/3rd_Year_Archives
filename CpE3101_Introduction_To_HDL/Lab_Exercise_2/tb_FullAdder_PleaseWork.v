/*************************************
*File: tb_FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: TestBench File for Full Adder
*************************************/

`timescale 1 ns / 1 ps
module tb_FullAdder_PleaseWork();
	reg A,B,C_in;
	wire S,C_out;
	FullAdder_PleaseWork UUT (A,B,C_in,C_out,S);
	
	initial
	begin
		A = 0; B = 0; C_in = 0; #10
		A = 0; B = 0; C_in = 1; #10
		A = 0; B = 1; C_in = 0; #10
		A = 0; B = 1; C_in = 1; #10
		A = 1; B = 0; C_in = 0; #10
		A = 1; B = 0; C_in = 1; #10
		A = 1; B = 1; C_in = 0; #10
		A = 1; B = 1; C_in = 1; #30
	$stop;
	end
endmodule