/*************************************
*File: ComplexCounter.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for Complex Counter
*************************************/

module ComplexCounter(
	input wire Clk, nReset, M,
	output reg [2:0] Count
);

	//Binary States
	localparam B0 = 3'b000;
	localparam B1 = 3'b001;
	localparam B2 = 3'b010;
	localparam B3 = 3'b011;
	localparam B4 = 3'b100;
	localparam B5 = 3'b101;
	localparam B6 = 3'b110;
	localparam B7 = 3'b111;
	
	//Gray Code States
	localparam G0 = 3'b000;
	localparam G1 = 3'b001;
	localparam G2 = 3'b011;
	localparam G3 = 3'b010;
	localparam G4 = 3'b110;
	localparam G5 = 3'b111;
	localparam G6 = 3'b101;
	localparam G7 = 3'b100;
	
	//STATE TRANSITIONS OUTSIDE OF THE NBLOCK
	reg [2:0] cstate, nstate; //Setting up the current state and the next state

	always @ (negedge Clk) begin
		if (!nReset)
			cstate <= B0;
		else 
			cstate <= nstate;
	end
		
	//Next State Assignment for Binary
	always @ (*) begin
		case (cstate)
			B0: nstate = (M == 1'b0) ? B1 : G1;
			B1: nstate = (M == 1'b0) ? B2 : G2;
			B2: nstate = (M == 1'b0) ? B3 : G3;
			B3: nstate = (M == 1'b0) ? B4 : G4;
			B4: nstate = (M == 1'b0) ? B5 : G5;
			B5: nstate = (M == 1'b0) ? B6 : G6;
			B6: nstate = (M == 1'b0) ? B7 : G7;
			B7: nstate = (M == 1'b0) ? B0 : G0;

			G0: nstate = (M == 1'b1) ? G1 : B1;
			G1: nstate = (M == 1'b1) ? G2 : B2;
			G2: nstate = (M == 1'b1) ? G3 : B3;
			G3: nstate = (M == 1'b1) ? G4 : B4;
			G4: nstate = (M == 1'b1) ? G5 : B5;
			G5: nstate = (M == 1'b1) ? G6 : B6;
			G6: nstate = (M == 1'b1) ? G7 : B7;
			G7: nstate = (M == 1'b1) ? G0 : B0;
			
			default : nstate <= B0;
		endcase
	end
		
	always @(*) begin
		Count = cstate;
	end

endmodule
