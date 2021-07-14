`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2019 14:26:35
// Design Name: 
// Module Name: priority_mux
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


module priority_mux(in_tid, schden_flag_sel, qhead_tid);

    input [3:0] in_tid [15:0];
    input [15:0] schden_flag_sel;
    output [3:0] qhead_tid;
    
    wire [3:0] out_mux [15:1];
    
    mux_2_1_beg m15 (1'b1, in_tid[15], schden_flag_sel[15], out_mux[15]);
    mux_2_1 m14 (out_mux[15], in_tid[14], schden_flag_sel[14], out_mux[14]);
    mux_2_1 m13 (out_mux[14], in_tid[13], schden_flag_sel[13], out_mux[13]);
    mux_2_1 m12 (out_mux[13], in_tid[12], schden_flag_sel[12], out_mux[12]);
    mux_2_1 m11 (out_mux[12], in_tid[11], schden_flag_sel[11], out_mux[11]);
    mux_2_1 m10 (out_mux[11], in_tid[10], schden_flag_sel[10], out_mux[10]);
    mux_2_1 m9 (out_mux[10], in_tid[9], schden_flag_sel[9], out_mux[9]);
    mux_2_1 m8 (out_mux[9], in_tid[8], schden_flag_sel[8], out_mux[8]);
    mux_2_1 m7 (out_mux[8], in_tid[7], schden_flag_sel[7], out_mux[7]);
    mux_2_1 m6 (out_mux[7], in_tid[6], schden_flag_sel[6], out_mux[6]);
    mux_2_1 m5 (out_mux[6], in_tid[5], schden_flag_sel[5], out_mux[5]);
    mux_2_1 m4 (out_mux[5], in_tid[4], schden_flag_sel[4], out_mux[4]);
    mux_2_1 m3 (out_mux[4], in_tid[3], schden_flag_sel[3], out_mux[3]);
    mux_2_1 m2 (out_mux[3], in_tid[2], schden_flag_sel[2], out_mux[2]);
    mux_2_1 m1 (out_mux[2], in_tid[1], schden_flag_sel[1], out_mux[1]);
    mux_2_1 m0 (out_mux[1], in_tid[0], schden_flag_sel[0], qhead_tid);
endmodule
 