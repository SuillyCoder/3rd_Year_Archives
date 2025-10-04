/*************************************
*File: tb_nBit_ALU.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Testbench File for n-Bit ALU
*************************************/


`timescale 1ns/1ps

module tb_nBit_ALU();

parameter n = 4;  

reg [n-1:0] A, B;
reg [2:0] mode;
wire [n-1:0] result;
wire carry_borrow;

nBit_ALU #(.n(n)) UUT (
    .A(A),
    .B(B),
    .mode(mode),
    .result(result),
    .carry_borrow(carry_borrow)
);


initial 

	begin

    A = 0; B = 0; mode = 0; #10;
    
    mode = 3'b000;
    A = 4'b0101; B = 4'b0011; #10;
    A = 4'b1001; B = 4'b0111; #10;
    A = 4'b1111; B = 4'b0001; #10;
   
    mode = 3'b001; 
    A = 4'b1000; B = 4'b0011; #10;
    A = 4'b0101; B = 4'b1000; #10;
    A = 4'b0000; B = 4'b0001; #10;
   
    mode = 3'b010;
    A = 4'b1111; B = 4'b1010; #10;
    A = 4'b1100; B = 4'b0110; #10;
    A = 4'b0000; B = 4'b1111; #10;
   
    mode = 3'b011;
    A = 4'b1010; B = 4'b0101; #10;
    A = 4'b1100; B = 4'b0011; #10;
    A = 4'b0000; B = 4'b0000; #10;
    
    mode = 3'b100;
    A = 4'b1010; B = 4'b0101; #10;
    A = 4'b1100; B = 4'b1100; #10;
    A = 4'b1111; B = 4'b0000; #10;
  
    mode = 3'b101;
    A = 4'b1010; B = 4'b0000; #10; 
    A = 4'b1111; B = 4'b0000; #10;
    A = 4'b0000; B = 4'b0000; #10;
   
    mode = 3'b110;
    A = 4'b0101; B = 4'b0000; #10;
    A = 4'b1110; B = 4'b0000; #10;
    A = 4'b1111; B = 4'b0000; #10;
    
    mode = 3'b111;
    A = 4'b1000; B = 4'b0000; #10; 
    A = 4'b0001; B = 4'b0000; #10;
    A = 4'b0000; B = 4'b0000; #10;
    
    $stop;
	 end


endmodule
