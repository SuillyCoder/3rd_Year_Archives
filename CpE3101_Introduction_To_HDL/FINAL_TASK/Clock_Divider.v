/*************************************
*File: Clock_Divider.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for Clock Divider
*************************************/

module Clock_Divider(
    input nReset, Clk,          
    output reg Clock_out
);

    localparam DIVIDE_VALUE = 12_500_000; // Toggle count for 2 Hz output
    reg [23:0] counter;

    always @(negedge Clk or negedge nReset) begin
        if (!nReset) begin
            //Active Low Trigger
            counter <= 24'd0;
            Clock_out <= 1'b0;
        end
        else begin
            // Increment counter on each falling edge of clock
            if (counter == DIVIDE_VALUE - 1) begin
                // When counter reaches divide value, toggle output and reset counter
                counter <= 24'd0;
                Clock_out <= ~Clock_out; // Toggle to create 50% duty cycle
            end
            else begin
                // Keep counting
                counter <= counter + 1;
            end
        end
    end

endmodule
