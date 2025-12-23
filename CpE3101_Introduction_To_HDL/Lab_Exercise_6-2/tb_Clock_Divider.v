/*************************************
*File: tb_Clock_Divider.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench for Clock Divider Module
*************************************/

`timescale 1ns / 1ps

module tb_Clock_Divider;

    reg nReset, Clk;
    wire Clock_out;
    
    initial begin
        Clk = 0;
        forever #10 Clk = ~Clk; // Toggle every 10ns -> 20ns period = 50 MHz
    end
   
    Clock_Divider UUT (
        .nReset(nReset),
        .Clk(Clk),
        .Clock_out(Clock_out)
    );
    
    // Test stimulus
    initial begin
        
        // Initial conditions
        nReset = 0;
        
        // Test 1: Assert reset for 100ns
        #100;
        
        // Test 2: Release reset and observe counting
        nReset = 1;
        #200;
        
        // Test 3: Apply reset during operation
        #100;
        nReset = 0;
        #100;
        nReset = 1;
        
        // Test 4: Run for extended period to see toggle
        // NOTE: With DIVIDE_VALUE = 12,500,000, this would take forever
        #5000;
     
        
        $stop;
    end
    

endmodule