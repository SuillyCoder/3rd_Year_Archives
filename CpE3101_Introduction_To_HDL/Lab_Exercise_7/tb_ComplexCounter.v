/*************************************
*File: tb_ComplexCounter.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench File for Complex Counter
*************************************/

`timescale 1 ns / 1 ps

module tb_ComplexCounter;

    reg Clk, nReset, M;
    wire [2:0] Count;
    
    ComplexCounter UUT (.Clk(Clk), .nReset(nReset), .M(M), .Count(Count));
    
    // Clock: 10 ns period
    initial Clk = 1'b0;
    always #5 Clk = ~Clk;

    initial begin
        // 1) Start in reset, M don't care
        nReset = 1'b0;
        M      = 1'b0;
        #20;               // keep reset low for a couple of cycles

        // 2) Release reset, count in binary (M=0)
        nReset = 1'b1;     // ACTIVE-HIGH = not in reset
        M      = 1'b0;
        #200;              // watch it count 000→001→...→111→000

        // 3) Switch to Gray mode (M=1) without resetting
        M = 1'b1;
        #200;              // now it should follow Gray sequence

        // 4) Assert reset again, then count in binary
        nReset = 1'b0;     // assert reset
        #20;
        nReset = 1'b1;     // release reset
        M      = 1'b0;
        #200;

        // 5) Assert reset again, then count in gray
        nReset = 1'b0;
        #20;
        nReset = 1'b1;
        M      = 1'b1;
        #200;

        $stop;
    end

endmodule
