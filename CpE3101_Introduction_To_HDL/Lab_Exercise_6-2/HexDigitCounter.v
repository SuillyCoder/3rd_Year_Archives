/*************************************
*File: HexDigitCounter.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Top Module - Hexadecimal Digit Counter using Structural Modeling
*             Combines 4-Bit Up-Down Counter with Hex to 7-Segment Decoder
*************************************/

module HexDigitCounter(
    input wire Clk,           // Clock input (connect to Clock_Divider output for slow counting)
    input wire nReset,        // Active low reset
    input wire Load,          // Load enable for parallel loading
    input wire Count_en,      // Count enable (1=count, 0=hold)
    input wire Up,            // Direction (1=count up, 0=count down)
    input wire [3:0] Count_in, // Parallel load input value
    input wire DP,            // Decimal point control
    output wire [7:0] Segment // 7-segment display output [7]=DP, [6:0]=segments a-g
);

    // Internal wire to connect counter output to hex decoder input
    wire [3:0] count_value;

    // Instantiate the 4-Bit Up-Down Counter
    FourBit_UpDown_Counter counter_inst (
        .Clk(Clk),
        .nReset(nReset),
        .Load(Load),
        .Count_en(Count_en),
        .Up(Up),
        .Count_in(Count_in),
        .Count_out(count_value)  // Connect to internal wire
    );

    // Instantiate the Hex to 7-Segment Decoder
    HexTo7Segment decoder_inst (
        .Hex(count_value),       // Connect counter output to decoder input
        .DP(DP),
        .Segment(Segment)        // Connect to module output
    );

endmodule
