`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2019 14:25:44
// Design Name: 
// Module Name: mux_2_1
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


module mux_2_1(in0, in1, sel, out);

    input [3:0] in0, in1;
    input sel;
    output reg [3:0] out;
    
    always @(*)
    begin
        if(sel)
        begin
            out = in1;
        end
        else
        begin
            out = in0;
        end
    end
    
endmodule
