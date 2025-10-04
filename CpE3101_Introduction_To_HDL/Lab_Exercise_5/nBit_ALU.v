/*************************************
*File: nBit_ALU.v
*Author: Basuil, Jesus Lorenzo C. 
*Class: CPE 3101L
*Course/Schedule: Group 3 Fri 7:30AM-10:30AM
*Description: Main Module File for n-Bit ALU
*************************************/

module nBit_ALU #(parameter n = 4) (
    input [n-1:0] A,        
    input [n-1:0] B,      
    input [2:0] mode,       
    output reg [n-1:0] result, 
    output reg carry_borrow     
);

always @(*) begin
    carry_borrow = 1'b0;  
    
    case (mode)
        3'b000: begin  
            {carry_borrow, result} = A + B;
        end
        
        3'b001: begin  
            {carry_borrow, result} = A - B;
            carry_borrow = ~carry_borrow;  
        end
        
        3'b010: begin  
            result = A & B;
            carry_borrow = 1'b0;
        end
        
        3'b011: begin 
            result = A | B;
            carry_borrow = 1'b0;
        end
        
        3'b100: begin 
            result = A ^ B;
            carry_borrow = 1'b0;
        end
        
        3'b101: begin  
            result = ~A;
            carry_borrow = 1'b0;
        end
        
        3'b110: begin 
            {carry_borrow, result} = A + 1'b1;
        end
        
        3'b111: begin  
            {carry_borrow, result} = A - 1'b1;
            carry_borrow = ~carry_borrow;  
        end
        
        default: begin
            result = {n{1'b0}};  
            carry_borrow = 1'b0;
        end
    endcase
end

endmodule