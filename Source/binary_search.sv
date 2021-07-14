`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2019 12:19:53
// Design Name: 
// Module Name: binary_search
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


module binary_search(schden_info, in_new, clk, out_tid, out_info);

    input [31:0] schden_info [15:0];
//    input [3:0] in_task_tid [15:0];
    input [31:0] in_new;
    input clk;
    output reg [3:0] out_tid;
    output reg [31:0] out_info;
    
    reg [3:0] b;
    reg [3:0] e;
    reg [2:0] count = 3'b101;
    
    wire [4:0] med;
    
    assign med = (b+e) >> 1;
 
//    always @(posedge clk)
//    begin
//        med <= (b+e) >> 1;
//    end
        
    always @(posedge clk)
    begin
    if((schden_info[0] > in_new))
    begin
        out_tid <= 4'b0;
        out_info <= in_new;
    end
       else if(count == 3'b101)
        begin
            count <= 3'b000;
            out_tid <= med + 1;
            out_info <= in_new;
            b <= 4'd0;
            e <= 4'd15;
        end 
        else
        begin
            count <= count + 1;
            if(in_new >= schden_info[med])
            begin
                b <= med;
            end
            else
            begin
                e <= med;
            end
        end   
    end
    
endmodule