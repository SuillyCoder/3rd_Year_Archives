module WMC_with_Clock(
    input wire CLOCK,           // Negative-edge triggered clock
    input wire nRESET,          // Asynchronous active-low reset
    input wire START,           // Start button
    input wire REGULAR,         // Regular load sensor
    input wire LARGE,           // Large load sensor
    input wire DIRTY,           // Dirty effluent sensor
    input wire WET,             // Water discharge sensor
    input wire T20DONE,         // 20-minute timer done signal
    
    output wire REGULAR_DISP,    // Regular water + soap dispense
    output wire LARGE_DISP,      // Large water + soap dispense
    output wire WASH,            // Wash cycle actuator
    output wire RINSE,           // Rinse cycle actuator
    output wire DRY,             // Dry cycle actuator
    output wire T20START         // 20-minute timer start
);

    wire Clock_out;  // Internal net for clock divider output

    Clock_Divider clock_inst (
        .Clk(CLOCK),
        .nReset(nRESET),
        .Clock_out(Clock_out)
    );
	 
    WMC wmc_inst (
        .CLOCK(Clock_out),           // Clock input (connect to Clock_Divider output for slow counting)
        .nRESET(nRESET),             // Active low reset
        .START(START),               // Start button
        .REGULAR(REGULAR),           // Regular load sensor
        .LARGE(LARGE),               // Large load sensor
        .DIRTY(DIRTY),               // Dirty effluent sensor
        .WET(WET),                   // Water discharge sensor
        .T20DONE(T20DONE),           // 20-minute timer done signal
        .REGULAR_DISP(REGULAR_DISP), // Regular water + soap dispense
        .LARGE_DISP(LARGE_DISP),     // Large water + soap dispense
        .WASH(WASH),                 // Wash cycle actuator
        .RINSE(RINSE),               // Rinse cycle actuator
        .DRY(DRY),                   // Dry cycle actuator
        .T20START(T20START)          // 20-minute timer start
    );

endmodule
