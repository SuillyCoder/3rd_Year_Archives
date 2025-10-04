/*************************************
*File: FourBit_UpDown_Counter.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for 4-Bit Up-Down Counter
*************************************/


module FourBit_UpDown_Counter(
	input wire Clk, nReset, Load, Count_en, Up,
	input wire [3:0] Count_in,
	output reg [3:0] Count_out
);

always @(negedge Clk or negedge nReset)

	//Set everything to 0 (Master Reset)
	if (!nReset) begin
		Count_out <= 4'b0000;
	end
	
	else begin
		//Switch case for Load
		if (Load) begin
			Count_out <= Count_in;
		end
		else begin
			//Switch case for CountEn
			if (!Count_en) begin
				Count_out <= Count_out;
			end
			else begin
				//Switch case or Up
				if (!Up) begin
					//Conut Down
					Count_out <= Count_out - 1; 
				end
				else begin
					Count_out <= Count_out + 1;
				end
			end
		end
	end

endmodule
