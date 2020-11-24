`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2020 07:56:25 PM
// Design Name: 
// Module Name: sseg_game
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


module sseg_game(
input win,
input lose,
input [3:0] state,
output reg [6:0] seg
    );
    
always @* begin 
    if (win)
    seg = 7'b0001000;
    else if (lose) 
    seg = 7'b1000111;
    else if (state[3]) 
    seg = 7'b1111110;
    else if (state[2]) 
    seg = 7'b1111101;
    else if (state[1]) 
    seg = 7'b0111111;
    else 
    seg = 7'b1011111;
    end 
 
    
   
    
    
    
    
    
    
    
    
    
    
    
endmodule
