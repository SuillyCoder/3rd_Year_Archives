
/*************************************
*File: JK_FlipFlop.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: main Module File for JK Flip-Flop
*************************************/

module JK_FlipFlop(
	input wire J, K, Clk, Reset,
	output reg Q, Q_bar
);

//Always block declaring falling edge clock
always@(negedge Clk or posedge Reset)

begin
	//Q and Qbar on Reset
	if (Reset) begin
		Q <= 1'b0;
		Q_bar <= 1'b1;
	end
	
	//Switch Cases of J and K
	else begin
		if (J == 1'b0 && K == 1'b0) begin
			Q <= Q;
			Q_bar <= ~Q;
		end
		else if (J == 1'b0 && K == 1'b1) begin
			Q <= 1'b0;
			Q_bar <= ~Q;
		end
		else if (J == 1'b1 && K == 1'b0) begin
			Q <= 1'b1;
			Q_bar <= ~Q;
		end
		else begin
			Q <= ~ Q;
			Q_bar <= ~Q;
		end
	end
end

endmodule
