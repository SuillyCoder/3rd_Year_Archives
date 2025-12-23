/*************************************
*File: tb_Race_Light_Control.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench File Race Light Controller
*************************************/

`timescale 1 ns / 1 ps

module tb_Race_Light_Control;

    reg  Clk;
    reg  nReset;
    reg  Start;
    wire Red;
    wire Yellow;
    wire Green;

    Race_Light_Control dut (
        .Clk    (Clk),
        .nReset (nReset),
        .Start  (Start),
        .Red    (Red),
        .Yellow (Yellow),
        .Green  (Green)
    );

    // 1 Hz is not needed for sim; just a clock
    initial Clk = 1'b0;
    always #5 Clk = ~Clk;

    initial begin
        nReset = 1'b0;
        Start  = 1'b0;
        #20;
        nReset = 1'b1;  // RED idle

        #20;
        Start = 1'b1;   // pulse START
        #10;
        Start = 1'b0;

        #500;           // let it run through YELLOW & GREEN

        $stop;
    end

endmodule
