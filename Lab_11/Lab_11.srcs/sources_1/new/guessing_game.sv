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


module guessing_game(
    input btnL,
    input btnR,
    input btnU,
    input btnD,
    input btnC,
    input clk,
    input sw,
    output [6:0] seg,
    output [3:0] an
    );
    
    reg [3:0] deb_out; 
    reg [3:0] tick_out;
    reg f;
    reg s; 
    reg w;
    reg l;
    reg [3:0] out_g;
    
    debounce debU (
    .clk(clk), 
    .reset(btnC),
    .in(btnU),
    .out(deb_out[3]),
    .tick(tick_out[3])
    );
    
    debounce debR (
    .clk(clk), 
    .reset(btnC),
    .in(btnR),
    .out(deb_out[2]),
    .tick(tick_out[2])
    );
    
    debounce debD (
    .clk(clk), 
    .reset(btnC),
    .in(btnD),
    .out(deb_out[1]),
    .tick(tick_out[1])
    );
    
    debounce debL (
    .clk(clk), 
    .reset(btnC),
    .in(btnL),
    .out(deb_out[0]),
    .tick(tick_out[0])
    );
    
    counter #(.N(25)) c_guess(
    .clk(clk),
    .rst(btnC),
    .out(s),
    .out2(f)   
    );
    
    assign game_lvl = sw ? f : s;
   
    guess_FSM fsm_game(
     .b(deb_out),
    .clk(clk),
    .rst(btnC),
    .en(game_lvl),
    .win(w),
    .lose(l),
    .y(out_g)
    );
    
    sseg_game disp_game(
    .win(w),
    .lose(l),
    .state(out_g),
    .seg(seg)
    );
    
    assign an[0] = 0;
    assign an[1] = 1;
    assign an[2] = 1;
    assign an[3] = 1;
    
    
endmodule
