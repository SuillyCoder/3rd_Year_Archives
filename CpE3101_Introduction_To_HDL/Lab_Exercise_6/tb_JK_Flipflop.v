/*************************************
*File: tb_JK_Flipflop.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: main Module File for JK Flip-Flop
*************************************/

`timescale 1 ns / 1 ps
module tb_JK_Flipflop();

	reg Clk, Reset, J, K;
	wire Q, Q_bar;
	
	JK_FlipFlop UUT (.Clk(Clk), .Reset(Reset), .J(J), .K(K), .Q(Q), .Q_bar(Q_bar));
	
	initial Clk = 1'b0;
	
	always #5 Clk = ~Clk;
	
	initial begin
		//For the reset values
		Reset = 1'b0; #10
		Reset = 1'b1; #10
		Reset = 1'b0;
		
	end
	
	initial begin
	
		J = 1'b0; 
		K = 1'b0;
		
		//For the test cases for J and K
		#20 //Wait for resetting to complete
		
		J = 1'b0; K = 1'b0; #10;
		J = 1'b0; K = 1'b1; #10;
		J = 1'b1; K = 1'b0; #10;
		J = 1'b1; K = 1'b1; #10;
		J = 1'b0; K = 1'b0; #10;

		J = 1'b0; K = 1'b0; #10;
		J = 1'b0; K = 1'b1; #10;
		J = 1'b1; K = 1'b0; #10;
		J = 1'b1; K = 1'b1; #10;
		J = 1'b0; K = 1'b0; #10;


		$stop;
	end
	
	
endmodule
	
	