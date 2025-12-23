/*************************************
*File: Race_Light_Control.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File Race Light Controller
*************************************/

module Race_Light_Control(
    input  wire Clk,        // 1 Hz, negative-edged
    input  wire nReset,     // async active low
    input  wire Start,      // start signal
    output reg  Red,
    output reg  Yellow,
    output reg  Green
);

    //Light States
    localparam S_RED_IDLE  = 3'b000;
    localparam S_RED_HOLD  = 3'b001;
    localparam S_YEL_HOLD  = 3'b010;
    localparam S_GRN_HOLD1 = 3'b011;
    localparam S_GRN_HOLD2 = 3'b100;
    localparam S_GRN_HOLD3 = 3'b101;

    reg [2:0] cstate, nstate;
    reg [1:0] sec_cnt, sec_cnt_next;

    // Asynchronous active-low reset, negedge clock
    always @(negedge Clk or negedge nReset) begin
        if (!nReset) begin
            cstate  <= S_RED_IDLE;
            sec_cnt <= 2'd0;
        end else begin
            cstate  <= nstate;
            sec_cnt <= sec_cnt_next;
        end
    end

    // Next state and timing logic
    always @(*) begin
        nstate       = cstate;
        sec_cnt_next = sec_cnt;

        case (cstate)
            S_RED_IDLE: begin
                sec_cnt_next = 2'd0;
                if (Start) begin
                    nstate       = S_RED_HOLD;
                    sec_cnt_next = 2'd0;
                end
            end

            S_RED_HOLD: begin
                if (sec_cnt == 2'd0) begin
                    sec_cnt_next = 2'd1;
                    nstate       = S_RED_HOLD;
                end else begin
                    sec_cnt_next = 2'd0;
                    nstate       = S_YEL_HOLD;
                end
            end

            S_YEL_HOLD: begin
                if (sec_cnt == 2'd0) begin
                    sec_cnt_next = 2'd1;
                    nstate       = S_YEL_HOLD;
                end else begin
                    sec_cnt_next = 2'd0;
                    nstate       = S_GRN_HOLD1;
                end
            end

            S_GRN_HOLD1: begin
                if (sec_cnt == 2'd0) begin
                    sec_cnt_next = 2'd1;
                    nstate       = S_GRN_HOLD1;
                end else begin
                    sec_cnt_next = 2'd0;
                    nstate       = S_GRN_HOLD2;
                end
            end

            S_GRN_HOLD2: begin
                if (sec_cnt == 2'd0) begin
                    sec_cnt_next = 2'd1;
                    nstate       = S_GRN_HOLD2;
                end else begin
                    sec_cnt_next = 2'd0;
                    nstate       = S_GRN_HOLD3;
                end
            end

            S_GRN_HOLD3: begin
                if (sec_cnt == 2'd0) begin
                    sec_cnt_next = 2'd1;
                    nstate       = S_GRN_HOLD3;
                end else begin
                    sec_cnt_next = 2'd0;
                    nstate       = S_RED_IDLE;
                end
            end

            default: begin
                nstate       = S_RED_IDLE;
                sec_cnt_next = 2'd0;
            end
        endcase
    end

    // Output logic
    always @(*) begin
        Red    = 1'b0;
        Yellow = 1'b0;
        Green  = 1'b0;

        case (cstate)
            S_RED_IDLE,
            S_RED_HOLD:  Red    = 1'b1;
            S_YEL_HOLD:  Yellow = 1'b1;
            S_GRN_HOLD1,
            S_GRN_HOLD2,
            S_GRN_HOLD3: Green  = 1'b1;
        endcase
    end

endmodule
