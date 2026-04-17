`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 02:36:47 PM
// Design Name: 
// Module Name: clock_divider_TB
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
`timescale 1ns / 1ps

module clock_divider_TB();
  reg clk_fast, reset;
  reg [31:0] ratio;
  wire clk_slow;
  
  clock_divider DUT_CD(clk_fast, clk_slow,reset,ratio);

  always #5 clk_fast = ~clk_fast; //100MHz clock

  initial begin
    clk_fast = 0;
    reset = 1;
    ratio = 0;
    
    #20
    reset = 0;
    ratio = 8'd10;
    
    #2000
    
    ratio = 8'd100;
    #20000
    $stop;
  end
endmodule
