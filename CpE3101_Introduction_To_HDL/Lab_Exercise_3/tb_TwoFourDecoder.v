//Testbench File with declared module

`timescale 1 ns / 1 ps
module tb_TwoFourDecoder();
	reg [1:0] I;
	reg E;
	wire [3:0] D;
	
	TwoFourDecoder UUT (I,E,D);
	
	initial
	begin
		E = 1'b0; 
		I = 2'b00; #5
		I = 2'b01; #5
		I = 2'b10; #5
		I = 2'b11; #5
		
		E = 1'b1; 
		I = 2'b00; #5
		I = 2'b01; #5
		I = 2'b10; #5
		I = 2'b11; #15
		
	$stop;
	end
endmodule
