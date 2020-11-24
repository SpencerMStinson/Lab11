`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 11:20:14 AM
// Design Name: 
// Module Name: counter
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


module counter #(parameter N =21)  (
    input clk,
    input rst,
    output out,
    output out2
    );
    reg [N-1:0] q;
    reg [N-1:0] qnext;
    
    always @(posedge(clk), posedge(rst)) begin 
    if (rst) 
        q <= 0 ;
    else 
        q <= qnext;
    end
 
    always @*
        qnext = q +1;
       
    assign out  =& q[N-1:0];
    assign out2 =& q[N-2:0];
    
endmodule
