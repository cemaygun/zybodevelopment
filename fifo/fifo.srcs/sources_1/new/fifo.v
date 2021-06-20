`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Cem Aygün
// 
// Create Date: 18.06.2021 14:56:12
// Design Name: 
// Module Name: fifo
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


module fifo(
    input clk,
    input rst_n,
    //write data
    input wr_en_i,
    input [7:0] data_i,
    output full_o,
    //read data
    input rd_en_i,
    output reg [7:0] data_o,
    output empty_o
    );
    
parameter Depth=8;

reg [7:0] mem [0:Depth-1];

reg [2:0] wr_ptr;
reg [2:0] rd_ptr;
reg [3:0] count;
    
assign full_o = (count==Depth);
assign empty_o = (count==0);


always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        begin
            wr_ptr<=0;
        end 
        else begin
            if(wr_en_i == 1) begin
                mem[wr_ptr]<=data_i;
                wr_ptr<=wr_ptr+1;
         end
     end
end
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        begin
            rd_ptr<=0;
        end 
        else begin
            if(rd_en_i == 1) begin
               data_o<=mem[rd_ptr];
                rd_ptr<=rd_ptr+1;
         end
    end
end


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
            count<=0;
    end 
    else begin
        if(wr_en_i == 1) begin
            case ({wr_en_i,rd_en_i})
                   2'b10: count <= count + 1;
                   2'b01: count <= count - 1;
                   2'b11: count <= count;
                   2'b00: count <= count;
                   default: count <= count;
             endcase
         end         
    end
end
endmodule
