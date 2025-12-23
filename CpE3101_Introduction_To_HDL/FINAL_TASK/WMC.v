/*************************************
*File: HexDigitCounter.v
*Author: Basuil, Jesus Lorenzo C. and Esler, Rafiq Reos M.
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for Washing Machine Control Finite State Machine
*            
*************************************/


module WMC (
    input wire CLOCK,           // Negative-edge triggered clock
    input wire nRESET,          // Asynchronous active-low reset
    input wire START,           // Start button
    input wire REGULAR,         // Regular load sensor
    input wire LARGE,           // Large load sensor
    input wire DIRTY,           // Dirty effluent sensor
    input wire WET,             // Water discharge sensor
    input wire T20DONE,         // 20-minute timer done signal
    
    output reg REGULAR_DISP,    // Regular water + soap dispense
    output reg LARGE_DISP,      // Large water + soap dispense
    output reg WASH,            // Wash cycle actuator
    output reg RINSE,           // Rinse cycle actuator
    output reg DRY,             // Dry cycle actuator
    output reg T20START         // 20-minute timer start
);

    // State encoding
    parameter IDLE          = 4'd0;
    parameter LOAD_DETECT   = 4'd1;
    parameter DISPENSE_REG  = 4'd2;
    parameter DISPENSE_LRG  = 4'd3;
    parameter WASH_CYCLE    = 4'd4;
    parameter RINSE_CYCLE   = 4'd5;
    parameter CHECK_DIRTY   = 4'd6;
    parameter DRY_CYCLE     = 4'd7;
    parameter DONE          = 4'd8;
    
    // State registers
    reg [3:0] current_state, next_state;
    
    // Cycle counter (tracks wash+rinse cycles, max 2)
    reg [1:0] cycle_count;
    reg [1:0] next_cycle_count;
    
    // State register with asynchronous reset (negative-edge clock)
    always @(negedge CLOCK or negedge nRESET) begin
        if (!nRESET) begin
            current_state <= IDLE;
            cycle_count <= 2'd0;
        end else begin
            current_state <= next_state;
            cycle_count <= next_cycle_count;
        end
    end
    
    // Next state logic
    always @(*) begin
        // Default values
        next_state = current_state;
        next_cycle_count = cycle_count;
        
        case (current_state)
            IDLE: begin
                if (!START) begin
                    next_state = LOAD_DETECT;
                    next_cycle_count = 2'd0;  // Reset cycle counter
                end
            end
            
            LOAD_DETECT: begin
                if (REGULAR)
                    next_state = DISPENSE_REG;
                else if (LARGE)
                    next_state = DISPENSE_LRG;
                // Stay in LOAD_DETECT until a load is sensed
            end
            
            DISPENSE_REG: begin
                next_state = WASH_CYCLE;
            end
            
            DISPENSE_LRG: begin
                next_state = WASH_CYCLE;
            end
            
            WASH_CYCLE: begin
                if (T20DONE)
                    next_state = RINSE_CYCLE;
            end
            
            RINSE_CYCLE: begin
                if (T20DONE)
                    next_state = CHECK_DIRTY;
            end
            
            CHECK_DIRTY: begin
                next_cycle_count = cycle_count + 1;  // Increment cycle count
                if (DIRTY && (cycle_count < 2'd1)) begin
                    // Dirty and haven't done 2 cycles yet, repeat wash+rinse
                    next_state = WASH_CYCLE;
                end else begin
                    // Either clean or completed 2 cycles, go to dry
                    next_state = DRY_CYCLE;
                end
            end
            
            DRY_CYCLE: begin
                if (!WET || T20DONE)
                    next_state = DONE;
            end
            
            DONE: begin
                next_state = IDLE;  // Return to idle after completion
            end
            
            default: begin
                next_state = IDLE;
            end
        endcase
    end
    
    // Output logic
    always @(*) begin
        // Default all outputs to 0
        REGULAR_DISP = 1'b0;
        LARGE_DISP = 1'b0;
        WASH = 1'b0;
        RINSE = 1'b0;
        DRY = 1'b0;
        T20START = 1'b0;
        
        case (current_state)
            DISPENSE_REG: begin
                REGULAR_DISP = 1'b1;
            end
            
            DISPENSE_LRG: begin
                LARGE_DISP = 1'b1;
            end
            
            WASH_CYCLE: begin
                WASH = 1'b1;
                T20START = 1'b1;
            end
            
            RINSE_CYCLE: begin
                RINSE = 1'b1;
                T20START = 1'b1;
            end
            
            DRY_CYCLE: begin
                DRY = 1'b1;
                T20START = 1'b1;
            end
            
            default: begin
                // All outputs remain 0
            end
        endcase
    end

endmodule