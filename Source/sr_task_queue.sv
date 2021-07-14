`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2019 14:59:56
// Design Name: 
// Module Name: sr_task_queue
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


module sr_task_queue(new_task_id, new_task_info,que_act, que_blk, remove, enqueue, dequeue, clk, task_tid, schden, task_info,  empty_flag);

    input [31:0] new_task_info;
    input [3:0] new_task_id;
    input clk;
    input [15:0] remove, enqueue, dequeue, que_act, que_blk;
    output [15:0] empty_flag;
    output [3:0] task_tid [15:0];
    output [15:0] schden;
    output [31:0] task_info [15:0];
    
// sr_task_queue_block(in_tid, data_from_left_cell, parallel_data, data_from_right_cell, clk, que_act, que_blk, remove, enqueue, dequeue, empty_flag, schden_flag, out_tid, info_out);    
    sr_task_queue_block_tail b15 (new_task_id, new_task_info, task_info[13], clk, que_act[15], que_blk[15], remove[15], enqueue[15], dequeue[15], empty_flag[15], schden[15], task_tid[15], task_info[15]);
    sr_task_queue_block b14 (new_task_id, task_info[15], new_task_info, task_info[13], clk, que_act[14], que_blk[14], remove[14], enqueue[14], dequeue[14], empty_flag[14], schden[14], task_tid[14], task_info[14]);
    sr_task_queue_block b13 (new_task_id, task_info[14], new_task_info, task_info[12], clk, que_act[13], que_blk[13], remove[13], enqueue[13], dequeue[13], empty_flag[13], schden[13], task_tid[13], task_info[13]);
    sr_task_queue_block b12 (new_task_id, task_info[13], new_task_info, task_info[11], clk, que_act[12], que_blk[12], remove[12], enqueue[12], dequeue[12], empty_flag[12], schden[12], task_tid[12], task_info[12]);
    sr_task_queue_block b11 (new_task_id, task_info[12], new_task_info, task_info[10], clk, que_act[11], que_blk[11], remove[11], enqueue[11], dequeue[11], empty_flag[11], schden[11], task_tid[11], task_info[11]);
    sr_task_queue_block b10 (new_task_id, task_info[11], new_task_info, task_info[9], clk, que_act[10], que_blk[10], remove[10], enqueue[10], dequeue[10], empty_flag[10], schden[10], task_tid[10], task_info[10]);
    sr_task_queue_block b9 (new_task_id, task_info[10], new_task_info, task_info[8], clk, que_act[9], que_blk[9], remove[9], enqueue[9], dequeue[9], empty_flag[9], schden[9], task_tid[9], task_info[9]);
    sr_task_queue_block b8 (new_task_id, task_info[9], new_task_info, task_info[7], clk, que_act[8], que_blk[8], remove[8], enqueue[8], dequeue[8], empty_flag[8], schden[8], task_tid[8], task_info[8]);
    sr_task_queue_block b7 (new_task_id, task_info[8], new_task_info, task_info[6], clk, que_act[7], que_blk[7], remove[7], enqueue[7], dequeue[7], empty_flag[7], schden[7], task_tid[7], task_info[7]);
    sr_task_queue_block b6 (new_task_id, task_info[7], new_task_info, task_info[5], clk, que_act[6], que_blk[6], remove[6], enqueue[6], dequeue[6], empty_flag[6], schden[6], task_tid[6], task_info[6]);
    sr_task_queue_block b5 (new_task_id, task_info[6], new_task_info, task_info[4], clk, que_act[5], que_blk[5], remove[5], enqueue[5], dequeue[5], empty_flag[5], schden[5], task_tid[5], task_info[5]);
    sr_task_queue_block b4 (new_task_id, task_info[5], new_task_info, task_info[3], clk, que_act[4], que_blk[4], remove[4], enqueue[4], dequeue[4], empty_flag[4], schden[4], task_tid[4], task_info[4]);
    sr_task_queue_block b3 (new_task_id, task_info[4], new_task_info, task_info[2], clk, que_act[3], que_blk[3], remove[3], enqueue[3], dequeue[3], empty_flag[3], schden[3], task_tid[3], task_info[3]);
    sr_task_queue_block b2 (new_task_id, task_info[3], new_task_info, task_info[1], clk, que_act[2], que_blk[2], remove[2], enqueue[2], dequeue[2], empty_flag[2], schden[2], task_tid[2], task_info[2]);
    sr_task_queue_block b1 (new_task_id, task_info[2], new_task_info, task_info[0], clk, que_act[1], que_blk[1], remove[1], enqueue[1], dequeue[1], empty_flag[1], schden[1], task_tid[1], task_info[1]);
    sr_task_queue_block_head b0 (new_task_id, task_info[1], new_task_info, clk, que_act[0], que_blk[0], remove[1], enqueue[0], dequeue[0], empty_flag[0], schden[0], task_tid[0], task_info[0]);
    
endmodule
