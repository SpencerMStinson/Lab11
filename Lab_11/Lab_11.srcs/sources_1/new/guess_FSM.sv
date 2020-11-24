`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 11:16:50 AM
// Design Name: 
// Module Name: guess_FSM
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


 module guess_FSM(
    input [3:0] b,
    input clk,
    input rst,
    input en,
    output reg win,
    output reg lose,
    output reg [3:0] y
    );
    
    parameter slose = 3'b100;
    parameter swin = 3'b101;
    parameter s0 = 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 = 3'b011;
    
    reg [2:0] NS, ST; 

always @(posedge(clk), posedge(rst))
    if (rst) 
        ST <= s0;
    else if (en) 
        ST <= NS;   
always @*
    case(ST) 
       swin: if ( b == 4'b0000)
         NS = s0;
            else 
         NS = swin;
         
       slose: if (b == 4'b0000)
         NS = s0;
            else 
         NS = slose;
         
       s0: if  (b == 4'b0001)
         NS = swin;
           else if (b == 4'b0000)
         NS = s1;
            else
         NS = slose;
         
       s1: if (b == 4'b0010)
        NS = swin;
            else if  (b == 4'b0000)
       NS = s2;
            else 
       NS = slose;
       
       s2: if (b == 4'b0100)
        NS = swin;
            else if (b == 4'b0000)
        NS = s3;
            else
       NS = slose;
      
       s3: if (b == 4'b1000)
       NS = swin;
            else if (b == 4'b0000)
      NS = s0;
            else 
      NS = slose;
       default: NS = s0;
endcase 
    always @* begin 
        win = 0;
        lose = 0;
        y = 4'b0001;
     case(ST) 
        swin: win = 1'b1;
        slose: lose = 1'b1;
        s0: y = 4'b0001;
        s1: y = 4'b0010;
        s2: y = 4'b0100;
        s3: y = 4'b1000;
    endcase 
    end 
    
endmodule
