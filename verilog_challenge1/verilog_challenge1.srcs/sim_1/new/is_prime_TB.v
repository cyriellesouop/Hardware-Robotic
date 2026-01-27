`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 08:39:46 PM
// Design Name: 
// Module Name: is_prime_TB
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


module is_prime_TB();
  reg [2:0] cba;
  wire prime;
  reg pass;
  is_prime DUT_IP(cba[2],cba[1],cba[0],prime);
  initial begin
    cba=0; pass=1; #10;
    pass = (prime==1)?0:pass;
    cba=1; #10;
    pass = (prime==1)?0:pass;
    cba=2; #10;
    pass = (prime==0)?0:pass;
    cba=3; #10;
    pass = (prime==0)?0:pass;
    cba=4; #10;
    pass = (prime==1)?0:pass;
    cba=5; #10;
    pass = (prime==0)?0:pass;
    cba=6; #10;
    pass = (prime==1)?0:pass;
    cba=7; #10;
    pass = (prime==0)?0:pass;
    if(pass)
      $display("\n\nNice job, you aced the Challenge! Pat yourself on the back!\n\n");
    else
      $display("\n\nThere's something wrong with your module. Don't give up!\n\n");
    $stop;
  end
endmodule
