/*************************************
*File: FullAdder.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for 4 Bit Adder with Instantiated Full Adder Modules
*************************************/

`timescale 1 ns / 1 ps
module tb_FourBitAdder();

  reg [3:0] A;
  reg [3:0] B;
  reg C_in;
  wire [3:0] S;
  wire C_out;

  FourBitAdder UUT (
    .A(A),
    .B(B),
    .C_in(C_in),
    .S(S),
    .C_out(C_out)
  );

  initial 
		begin
			A = 4'b0000; B = 4'b0000; C_in = 0; #10;
			A = 4'b0000; B = 4'b0001; C_in = 0; #10;
			A = 4'b0001; B = 4'b0010; C_in = 0;	#10;
			A = 4'b0101; B = 4'b0011; C_in = 1;	#10;
			A = 4'b1111; B = 4'b0001; C_in = 0;	#10;
			A = 4'b1010; B = 4'b1010; C_in = 1; #10;
			A = 4'b1111; B = 4'b1111; C_in = 1; #10;
		$stop;
		end

endmodule


