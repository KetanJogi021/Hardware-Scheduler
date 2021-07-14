`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2019 07:59:07 PM
// Design Name: 
// Module Name: p_mux
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


module p_mux(in, sel, out);

    input [7:0] in;
    input [7:0] sel;
    output out;
    
    assign out = (sel[0]&in[0]) | (~sel[0]&sel[1]&in[1]) | (~sel[0]&~sel[1]&sel[2]&in[2]) | (~sel[0]&~sel[1]&~sel[2]&sel[3]&in[3]) | (~sel[0]&~sel[1]&~sel[2]&~sel[3]&sel[4]&in[4]) | (~sel[0]&~sel[1]&~sel[2]&~sel[3]&~sel[4]&sel[5]&in[5]) | (~sel[0]&~sel[1]&~sel[2]&~sel[3]&~sel[4]&~sel[5]&sel[6]&in[6]) | (~sel[0]&~sel[1]&~sel[2]&~sel[3]&~sel[4]&~sel[5]&~sel[6]&sel[7]&in[7]);
endmodule
