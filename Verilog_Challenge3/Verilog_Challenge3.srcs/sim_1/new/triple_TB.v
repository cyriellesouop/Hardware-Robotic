`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 11:10:58 PM
// Design Name: 
// Module Name: triple_TB
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
 

module triple_TB();
  reg [3:0] ins;
  wire [5:0] outs;
  triple Triple_DUT(ins,outs);
  initial begin
  $monitor ("\n the triple value %d is d% \n",ins, outs);
  ins = 0; #5;
  ins = 1; #5;
  ins = 3; #5;
  ins = 5; #5;
  ins = 10; #5;
  ins = 15; #5;
  $stop;
  end
  // Display the result for input values 0, 1, 3, 5, 10, and 15.
  // Show these results in the waveform viewer.
endmodule
