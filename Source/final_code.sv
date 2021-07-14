`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2019 14:15:33
// Design Name: 
// Module Name: final_code
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

module final_code(task_info_new, clk, que_act, que_blk, remove, enqueue, dequeue, qhead_tid, empty_flag);

    input [31:0] task_info_new;
    input clk;
    input [15:0] que_act, que_blk, remove, enqueue, dequeue;
    output [3:0] qhead_tid;
    output  empty_flag;
    
    wire [31:0] info_from_task_queue [15:0];
    wire [3:0] in_task_tid [15:0];
    wire [3:0] out_task_tid;
    wire [31:0] out_task_info_new;
    wire [15:0]  schden;
    
//  sr_task_queue(new_task_id, new_task_info,que_act, que_blk, remove, enqueue, dequeue, clk, task_tid, schden, task_info,  empty_flag);    
    sr_task_queue q1 (out_task_tid, out_task_info_new, que_act, que_blk, remove, enqueue, dequeue, clk, in_task_tid, schden, info_from_task_queue, empty_flag);
    binary_search c1 (info_from_task_queue, task_info_new, clk, out_task_tid, out_task_info_new);
    priority_mux m1 (in_task_tid, schden, qhead_tid);
    
    
    
endmodule
