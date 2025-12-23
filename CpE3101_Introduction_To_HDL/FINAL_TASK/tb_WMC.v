// Testbench for Washing Machine Controller (WMC)
// CPE 3101L: Introduction to HDL | Final Exam
// Group Members: [Your Names Here]
// Description: Testbench to verify WMC functionality with various test cases
//              Test Case 1: Regular load, clean after first rinse
//              Test Case 2: Large load, dirty after first rinse (requires 2nd cycle)

`timescale 1ns/1ps

module tb_WMC;
    // Testbench signals
    reg CLOCK;
    reg nRESET;
    reg START;
    reg REGULAR;
    reg LARGE;
    reg DIRTY;
    reg WET;
    reg T20DONE;
    
    wire REGULAR_DISP;
    wire LARGE_DISP;
    wire WASH;
    wire RINSE;
    wire DRY;
    wire T20START;
    
    // Instantiate the WMC module
    WMC UUT (
        .CLOCK(CLOCK),
        .nRESET(nRESET),
        .START(START),
        .REGULAR(REGULAR),
        .LARGE(LARGE),
        .DIRTY(DIRTY),
        .WET(WET),
        .T20DONE(T20DONE),
        .REGULAR_DISP(REGULAR_DISP),
        .LARGE_DISP(LARGE_DISP),
        .WASH(WASH),
        .RINSE(RINSE),
        .DRY(DRY),
        .T20START(T20START)
    );
    
    // Clock generation (negative edge triggered, period = 20ns)
    initial begin
        CLOCK = 1;
        forever #10 CLOCK = ~CLOCK;
    end
    
    // Test sequence
    initial begin
        // Initialize signals
        nRESET = 0;
        START = 0;
        REGULAR = 0;
        LARGE = 0;
        DIRTY = 0;
        WET = 0;
        T20DONE = 0;
        
        // Display header
        $display("=== Washing Machine Controller Testbench ===");
        $display("Time\tState\t\tOutputs");
        
        // Apply reset
        #15;
        nRESET = 1;
        #20;
        
        //=== TEST CASE 1: Regular load, clean after first rinse ===
        $display("\n--- TEST CASE 1: Regular Load, Clean After First Rinse ---");
        
        // Press START
        @(negedge CLOCK);
        START = 1;
        #20;
        START = 0;
        #20;
        
        // Detect REGULAR load
        @(negedge CLOCK);
        REGULAR = 1;
        #40;
        REGULAR = 0;
        #20;
        
        // Wait through WASH cycle (simulate 20-min timer)
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        #20;
        
        // Wait through RINSE cycle (simulate 20-min timer)
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        
        // Check dirty - effluent is CLEAN (DIRTY=0)
        @(negedge CLOCK);
        DIRTY = 0;
        #40;
        
        // DRY cycle - simulate water discharge then stop
        @(negedge CLOCK);
        WET = 1;
        #40;
        WET = 0;  // No more water
        #60;
        
        #100;
        
        //=== TEST CASE 2: Large load, dirty after first rinse (2 cycles) ===
        $display("\n--- TEST CASE 2: Large Load, Dirty Effluent (Requires 2nd Cycle) ---");
        
        // Press START
        @(negedge CLOCK);
        START = 1;
        #20;
        START = 0;
        #20;
        
        // Detect LARGE load
        @(negedge CLOCK);
        LARGE = 1;
        #40;
        LARGE = 0;
        #20;
        
        // CYCLE 1: WASH
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        #20;
        
        // CYCLE 1: RINSE
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        
        // Check dirty - effluent is DIRTY (need 2nd cycle)
        @(negedge CLOCK);
        DIRTY = 1;
        #60;
        DIRTY = 0;
        
        // CYCLE 2: WASH
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        #20;
        
        // CYCLE 2: RINSE
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        
        // Check dirty - now clean
        @(negedge CLOCK);
        DIRTY = 0;
        #40;
        
        // DRY cycle - water discharge
        @(negedge CLOCK);
        WET = 1;
        #60;
        WET = 0;
        #60;
        
        #100;
        
        //=== TEST CASE 3: Test timer timeout during DRY (20 min max) ===
        $display("\n--- TEST CASE 3: Regular Load, DRY Timer Timeout ---");
        
        @(negedge CLOCK);
        START = 1;
        #20;
        START = 0;
        #20;
        
        // Regular load
        @(negedge CLOCK);
        REGULAR = 1;
        #40;
        REGULAR = 0;
        #20;
        
        // WASH cycle
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        #20;
        
        // RINSE cycle
        repeat(3) @(negedge CLOCK);
        T20DONE = 1;
        #20;
        T20DONE = 0;
        
        // Clean effluent
        @(negedge CLOCK);
        DIRTY = 0;
        #40;
        
        // DRY cycle - WET stays high, but timer expires
        @(negedge CLOCK);
        WET = 1;
        repeat(4) @(negedge CLOCK);
        T20DONE = 1;  // Timer timeout
        #20;
        T20DONE = 0;
        WET = 0;
        #60;
        
        #100;
        
        $display("\n=== Simulation Complete ===");
        $finish;
    end
    
    // Monitor outputs
    always @(negedge CLOCK) begin
        $display("%0t: DISP_R=%b DISP_L=%b WASH=%b RINSE=%b DRY=%b T20START=%b", 
                 $time, REGULAR_DISP, LARGE_DISP, WASH, RINSE, DRY, T20START);
    end

endmodule