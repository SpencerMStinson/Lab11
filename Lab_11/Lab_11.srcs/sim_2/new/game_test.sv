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


module game_test();
    reg btnL;
    reg btnR;
    reg btnU;
    reg btnD;
    reg btnC;
    reg clk;
    reg sw;
    wire [6:0] seg;
    wire [3:0] an;

guessing_game dut(
    .btnL(btnL),
    .btnR(btnR),
    .btnU(btnU),
    .btnD(btnD),
    .btnC(btnC),
    .clk(clk),
    .sw(sw),
    .seg(seg),
    .an(an)
);

always begin 
clk = ~clk; #5; 
end

initial begin 
sw = 0; 
clk = 0; 
btnC = 1; #10; btnC = 0;
btnR = 0; btnD = 0; btnU = 0; btnC = 0; #10 
btnC = 1; #10; btnC = 0; 
btnL = 1; #10; 
btnC = 1; #10;
btnR = 0; btnD = 0; btnU = 0; btnC = 0; #10;
btnL = 1; #10;
btnC = 1; #10;
btnR = 0; btnD = 0; btnU = 0; btnC = 0; #10; 
btnR = 1; #10; 
btnC = 1; #10; 
btnR = 0; btnD = 0; btnU = 0; btnC = 0; #10;
btnL = 1; btnD = 1; btnU = 1; #10; 
btnC = 1; #10; 
btnR = 0; btnD = 0; btnU = 0; btnC = 0; #10;
btnL = 1; btnR = 1;  #10;
btnC = 1; #10; 
btnR = 0; btnD = 0; btnU = 0; btnC = 0; #10;
$finish;
end

endmodule 