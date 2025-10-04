
/*************************************
*File: tb_FourBit_UpDown_Counter.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench File for 4-Bit Up-Down Counter
*************************************/

`timescale 1 ns / 1 ps 

module tb_FourBit_UpDown_Counter();

	reg Clk, nReset, Load, Count_en, Up;
	reg [3:0] Count_in;
	wire [3:0] Count_out;
	
	FourBit_UpDown_Counter UUT (.Clk(Clk), .nReset(nReset), .Load(Load), .Count_en(Count_en), .Up(Up), .Count_in(Count_in[3:0]), .Count_out(Count_out[3:0]) );
	
	initial Clk = 0;
   always #5 Clk = ~Clk;
	 
	 initial begin
        // Default init
        nReset   = 1'b1;
        Load     = 1'b0;
        Count_en = 1'b0;
        Up       = 1'b1;
        Count_in = 4'b0000;

        //Reset
        nReset = 1'b0; #10;   
        nReset = 1'b1; #10;   

        //Parallel Load 
        Load     = 1'b1;
        Count_in = 4'b1010;  #10;
        Load     = 1'b0;

        //Hold (Count_en = 0) 
        Count_en = 1'b0; Up = 1'b1; #30;   

        //Count Up ---
        Count_en = 1'b1; Up = 1'b1;
        #160;   // Count up for 5 cycles

        //Count Down ---
        Count_en = 1'b1; Up = 1'b0;
        #160;   

        // Back to Hold ---
        Count_en = 1'b0; #20;

        $stop;
    end

endmodule
