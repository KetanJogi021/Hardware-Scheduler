`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2019 07:59:45 PM
// Design Name: 
// Module Name: sr_task_queue_block
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


module sr_task_queue_block(in_tid, data_from_left_cell, parallel_data, data_from_right_cell, clk, que_act, que_blk, remove, enqueue, dequeue, empty_flag, schden_flag, out_tid, info_out);

    input [3:0] in_tid;
    input [31:0] data_from_left_cell, data_from_right_cell, parallel_data;
    input clk, que_act, que_blk, remove, enqueue, dequeue;
    output reg empty_flag, schden_flag;
    output reg [3:0] out_tid;
    output reg [31:0] info_out;
    
    reg [31:0] schden_info;
    reg [3:0] tid;
    
    always @(posedge clk)
    begin
        case({que_act,que_blk})
            2'b10: schden_flag <= 1'b1;
            2'b01: schden_flag <= 1'b0;
            default : schden_flag <= 1'b0;
        endcase
            
    end
    
    always @(posedge clk)
    begin
        case(remove)
            1'b0: empty_flag <= 1'b0;
            1'b1: empty_flag <= 1'b1;
            default : empty_flag <= 1'b0;
        endcase
    end
    
    always @(posedge clk)
    begin
        if(enqueue == 1'b1)
        begin
             if(in_tid > tid)
            begin
                schden_info <= data_from_right_cell;
                info_out <= schden_info;
                tid <= in_tid;
                out_tid <= in_tid;
            end 
            else if(in_tid < tid)
                begin
                    schden_info <= data_from_left_cell;
                    info_out <= schden_info;
                    out_tid <= in_tid;
                end
                else
                begin
                    schden_info <= parallel_data;
                    info_out <= schden_info;
                    tid <= in_tid;
                    out_tid <= in_tid;
                end

        end

        else
        begin
            schden_info = info_out;
            schden_info = schden_info - 1;
            info_out <= schden_info;
        end

        
    end   
    
endmodule
