`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 08:11:01 PM
// Design Name: 
// Module Name: multiplexer
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


module multiplexer(in0, in1, in2, in3, sel, out);

    input in0, in1, in2, in3;
    input [1:0] sel;
    output out;
    
    assign out= (~sel[0]&~sel[1]&in0) | (~sel[0]&sel[1]&in1) |(sel[0]&~sel[1]&in2) |(sel[0]&sel[1]&in3);
    
endmodule
