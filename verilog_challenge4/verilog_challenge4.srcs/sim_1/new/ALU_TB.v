`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 09:22:35 PM
// Design Name: 
// Module Name: ALU_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_TB();
  reg [3:0] a;
  reg [3:0] b;
  reg [1:0] op;
  wire [7:0] res;
  
  ALU DUT_ALU(a,b,op,res);
  
  initial begin
  //Addition tests
    op = 0; a = 0; b = 1; #5;
    op = 0; a = 1; b = 2; #5;
    op = 0; a = 13; b = 10; #5;
    op = 0; a = 15; b = 15; #5;
  //Multiplication tests
    op = 1; a = 1; b = 15; #5;
    op = 1; a = 0; b = 5; #5;
    op = 1; a = 3; b = 5; #5;
    op = 1; a = 10; b = 13; #5;
   //Modulo tests
    op = 2; a = 5; b = 2; #5;
    op = 2; a = 9; b = 3; #5;
    op = 2; a = 7; b = 9; #5;
    op = 2; a = 11; b = 4; #5;
    //Bitwise and tests
    op = 3; a = 15; b = 0; #5;
    op = 3; a = 7; b = 15; #5;
    op = 3; a = 5; b = 6; #5; 
    op = 3; a = 10; b = 9; #5;
    
    $stop;
  end
endmodule
