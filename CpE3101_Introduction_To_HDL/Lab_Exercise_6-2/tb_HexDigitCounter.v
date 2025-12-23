/*************************************
*File: tb_Hexadecimal_Digit_Counter.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench for Hexadecimal Digit Counter
*************************************/

`timescale 1 ns / 1 ps

module tb_HexDigitCounter();

    // Testbench signals
    reg Clk;
    reg nReset;
    reg Load;
    reg Count_en;
    reg Up;
    reg [3:0] Count_in;
    reg DP;
    wire [7:0] Segment;

    // Instantiate the Hexadecimal Digit Counter (Top Module)
    HexDigitCounter UUT (
        .Clk(Clk),
        .nReset(nReset),
        .Load(Load),
        .Count_en(Count_en),
        .Up(Up),
        .Count_in(Count_in),
        .DP(DP),
        .Segment(Segment)
    );

    // Clock generation - 10ns period (100 MHz for fast simulation)
    initial Clk = 0;
    always #5 Clk = ~Clk;  // Toggle every 5ns

    // Test stimulus
    initial begin
            
        // Initialize all inputs
        nReset   = 1'b1;
        Load     = 1'b0;
        Count_en = 1'b0;
        Up       = 1'b1;
        Count_in = 4'b0000;
        DP       = 1'b0;  // Decimal point off initially
        
        // Test 1: Assert Reset at start (as required)
        nReset = 1'b0;  // Assert reset
        #20;            // Hold for 2 clock edges
        nReset = 1'b1;  // Release reset
        #10;
        
        // Test 2: Parallel Load Operation
        Load     = 1'b1;
        Count_in = 4'b0101;  // Load value 5
        #10;
        Load     = 1'b0;
        #10;
        
        // Test 3: Hold Operation (Count_en = 0)
        Count_en = 1'b0;
        Up       = 1'b1;
        #30;  // Hold for 3 clock cycles
        
        // Test 4: Count Up Operation
        Count_en = 1'b1;
        Up       = 1'b1;
        #120;  // Count up for 12 clock cycles (will wrap around from F to 0)
        
        // Test 5: Load new value
        Load     = 1'b1;
        Count_in = 4'b1100;  // Load value C (12)
        #10;
        Load     = 1'b0;
        #10;
        
        // Test 6: Count Down Operation
        Count_en = 1'b1;
        Up       = 1'b0;  // Count down
        #80;  // Count down for 8 clock cycles
        
        // Test 7: Test wrap-around on count down
        Load     = 1'b1;
        Count_in = 4'b0001;  // Load value 1
        #10;
        Load     = 1'b0;
        Count_en = 1'b1;
        Up       = 1'b0;
        #30;  // Count down: 1->0->F->E
        
        // Test 8: Test Decimal Point
        DP = 1'b1;  // Turn on decimal point
        #20;
        DP = 1'b0;  // Turn off decimal point
        #20;
        
        // Test 9: Count Up through all hex digits
        nReset = 1'b0;  // Reset to 0
        #10;
        nReset = 1'b1;
        #10;
        Count_en = 1'b1;
        Up       = 1'b1;
        #160;  // Count through all 16 values (0 to F)
        
        // Test 10: Hold again
        Count_en = 1'b0;
        #30;
 
        $stop;
    end
    
endmodule
