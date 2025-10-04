/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench File for n-Bit Mux
*************************************/

`timescale 1ns/1ps
module tb_nBitMux;

	parameter N = 8;
	
	reg [N-1:0] A, B, C, D;
	reg [1:0] S;

	wire [N-1:0] Y;

	nBitMux #(N) UUT (
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.S(S),
		.Y(Y)
	);


	initial begin
   
		A = 8'h0F; B = 8'hF0; C = 8'h55; D = 8'hAA;
		S = 2'b00; #10;
		S = 2'b01; #10;
		S = 2'b10; #10;
		S = 2'b11; #10;

		
		A = 8'hFF; B = 8'h00; C = 8'hA5; D = 8'h5A;
		S = 2'b00; #10;
		S = 2'b01; #10;
		S = 2'b10; #10;
		S = 2'b11; #10;

		$stop;
	end

endmodule
