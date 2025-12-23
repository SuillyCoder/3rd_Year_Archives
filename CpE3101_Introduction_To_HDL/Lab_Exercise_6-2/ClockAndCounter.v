
module ClockAndCounter(
    input nReset, Clk,          
    input wire Load,          // Load enable for parallel loading
    input wire Count_en,      // Count enable (1=count, 0=hold)
    input wire Up,            // Direction (1=count up, 0=count down)
    input wire [3:0] Count_in, // Parallel load input value
    input wire DP,            // Decimal point control
    output wire [7:0] Segment // 7-segment display output [7]=DP, [6:0]=segments

);

  Clock_Divider clock_inst (
        .Clk(Clk),
        .nReset(nReset),
        .Clock_out(Clock_out),
    );
	 
	 
  HexDigitCounter hex_inst (
        .Clk(Clock_out),           // Clock input (connect to Clock_Divider output for slow counting)
        .nReset(nReset),        // Active low reset
		  .Load(Load),         // Load enable for parallel loading
        .Count_en(Count_en),      // Count enable (1=count, 0=hold)
        .Up(Up),            // Direction (1=count up, 0=count down)
        .Count_in(Count_in), // Parallel load input value
        .DP(DP),            // Decimal point control
        .Segment(Segment) // 7-segment display output [7]=DP, [6:0]=segments
    );

endmodule
