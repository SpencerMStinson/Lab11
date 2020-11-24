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

initial begin
en = 1; 
clk = 0; rst = 1; #10; rst = 0; 
b= 4'b0000; #10; rst = 1; #10; rst = 0; 
b= 4'b0001; #10; rst = 1; #10; rst = 0;
b= 4'b0000; #10; rst = 1; #10; rst = 0;
b= 4'b0010; #10; rst = 1; #10; rst = 0;
b= 4'b0000; #10; rst = 1; #10; rst = 0;
b= 4'b0100; #10; rst = 1; #10; rst = 0;
b= 4'b0000; #10; rst = 1; #10; rst = 0;
b= 4'b1101; #10; rst = 1; #10; rst = 0;
end 
endmodule 