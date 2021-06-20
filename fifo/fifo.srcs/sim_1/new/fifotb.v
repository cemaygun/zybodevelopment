`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Cem Aygün
// 
// Create Date: 18.06.2021 21:54:10
// Design Name: 
// Module Name: fifotb
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
`define clk_period 10

module fifotb();
integer i;
    reg clk;
    reg rst_n;
    //write data
    reg wr_en_i;
    reg [7:0] data_i;
    wire full_o;
    //read data
    reg rd_en_i;
    wire [7:0] data_o;
    wire empty_o;
    
fifo FIFO(
    .clk(clk),
    .rst_n(rst_n),
    //write data
    .wr_en_i(wr_en_i),
    .data_i(data_i),
    .full_o(full_o),
    //read data
    .rd_en_i(rd_en_i),
    .data_o(data_o),
    .empty_o(empty_o)
);

initial clk = 1'b1;
always #(`clk_period/2) clk=~clk;

initial begin
    rst_n=1'b1;
    wr_en_i=1'b0;
    rd_en_i=1'b0;
    data_i= 8'b0;
    #(`clk_period);
    rst_n=1'b0;
    #(`clk_period);
    rst_n=1'b1;
    wr_en_i=1'b1;
    rd_en_i=1'b0;
    for(i=0;i<8;i=i+1)begin
        data_i=i;
        #(`clk_period);
    end
    
    wr_en_i=1'b0;
    rd_en_i=1'b1;
    for(i=0;i<8;i=i+1)begin
        #(`clk_period);
    end
    
    wr_en_i=1'b1;
    rd_en_i=1'b0;
    for(i=0;i<8;i=i+1)begin
        data_i=i;
        #(`clk_period);
    end
    #(`clk_period);
    #(`clk_period);
    #(`clk_period);

    
    
end

endmodule
