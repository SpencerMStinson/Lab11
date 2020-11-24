`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2020 06:46:39 PM
// Design Name: 
// Module Name: guessing_game
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


module guess_FSM_test ();

reg clk, rst, en;
reg [3:0] b, y;
reg win, lose;


guess_FSM dut(
    .b(b),
    .clk(clk),
    .rst(rst),
    .en(en),
    .win(win),
    .lose(lose),
    .y(y)
);
always begin 
clk = ~clk; #5; 
end





endmodule 