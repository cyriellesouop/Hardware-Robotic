`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2019 02:10:20 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(
    input  clk_in,
    output reg clk_out,
    input  reset,
    input  [31:0] ratio
    );
  reg [31:0] counter;
  
  always@(posedge clk_in or posedge reset) begin
    if (reset) begin
        counter <= 0;
        clk_out <= 0;
    end else begin
        if (ratio == 0) begin
        clk_out <= clk_in;
        end else if (counter >= (ratio-1)) begin
            counter <= 0;
            clk_out <= ~clk_out; 
        end else begin
            counter <= counter+1;
        end
    end
 end
 
 endmodule 
     
