`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 11:20:14 AM
// Design Name: 
// Module Name: mux
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


module mux_test ();
reg in1_t;
reg in0_t;
reg sel_t;
wire out_t;

mux dut( 
.in1(in1_t),
.in0(in0_t),
.sel(sel_t),
.out(out_t)
);
initial begin 
in1_t = 1; in0_t = 0; sel_t = 1; #10;
sel_t = 0; #10;
$finish ;
end
endmodule 