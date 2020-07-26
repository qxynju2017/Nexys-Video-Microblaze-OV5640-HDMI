`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: EEPROM
// 
// Create Date: 
// Design Name: 
// Module Name: axis2video
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


module AXI4_Stream_to_Video_Out
#(
	parameter DW = 32,
	parameter WIDTH = 1920,
	parameter HEIGHT = 1080
)
(
	input axis_clk,
	input axis_aresetn,

	// axis
	input [DW-1:0]    s_axis_tdata,

	input             s_axis_tvalid,
	input             s_axis_tlast,
	input             s_axis_tuser,
	output reg        s_axis_tready,
	// video data
	input              video_clk,
	input              video_rst,
	
	input              video_hsync_i,
	input              video_vsync_i,
	input              video_hblank_i,
	input              video_vblank_i,
	input              video_de_i,

	output             video_hsync_o,
	output             video_vsync_o,
	output             video_hblank_o,
	output             video_vblank_o,
	output             video_de_o,	
	output  reg[DW-1:0]   video_data
);
reg [3:0] hsync_r;
reg [3:0] vsync_r;
reg [3:0] hblank_r;
reg [3:0] vblank_r;
reg [3:0] de_r;

reg [2:0] axis_vsync;
reg [2:0] timing_vsync;
reg axis_start;
reg video_start;
wire [DW-1:0] fifo_din;
wire fifo_wen;
reg fifo_ren;
wire [DW-1:0] fifo_dout;
wire fifo_full;
wire fifo_empty;
wire [6:0] wr_data_count;
wire [6:0] fifo_space;

assign video_hsync_o = hsync_r[2];
assign video_vsync_o = vsync_r[2];
assign video_hblank_o= hblank_r[2];
assign video_vblank_o= vblank_r[2];
assign video_de_o    = de_r[2];

always @(posedge video_clk)
begin
	if(video_rst)
	begin
		hsync_r  <= 4'b0000;
		vsync_r  <= 4'b0000;
		hblank_r <= 4'b1111;
		vblank_r <= 4'b1111;
		de_r     <= 4'b0000;		
	end
	else
	begin
		hsync_r  <= {hsync_r[2:0] ,video_hsync_i};
		vsync_r  <= {vsync_r[2:0] ,video_vsync_i};
		hblank_r <= {hblank_r[2:0],video_hblank_i};
		vblank_r <= {vblank_r[2:0],video_vblank_i};
		de_r     <= {de_r[2:0]    ,video_de_i};			
	end
end
always @(posedge video_clk)
begin
	if(video_rst)
		timing_vsync <= 3'b000;
	else
		timing_vsync <= {timing_vsync[1:0],video_vsync_i};
end
always @(posedge video_clk)
begin
	if(video_rst)
		video_start <= 1'b0;
	else if(timing_vsync[2:1] == 2'b01)
		video_start <= 1'b1;
end
always @(posedge video_clk)
begin
	if(video_rst)
		fifo_ren <= 1'b0;
	else if(video_start && video_de_i)
		fifo_ren <= 1'b1;
	else
		fifo_ren <= 1'b0;
end
always @(posedge video_clk)
begin
	if(video_rst)
		video_data <= 0;
	else 
		video_data <= fifo_dout;
end
axis2pix_fifo u_axis2pix_fifo 
(
  .rst(video_rst),       
  .wr_clk(axis_clk), 
  .rd_clk(video_clk), 
  .din(fifo_din),       
  .wr_en(fifo_wen),   
  .rd_en(fifo_ren),   
  .dout(fifo_dout),     
  .full(fifo_full),     
  .empty(fifo_empty),
  .wr_data_count(wr_data_count)  
);
assign fifo_space = 127 - wr_data_count;
always @(posedge axis_clk)
begin
	if(!axis_aresetn)
	begin
		axis_vsync <= 3'b000;
	end
	else
	begin
		axis_vsync <= {axis_vsync[1:0],video_vsync_i};
	end
end
always @(posedge axis_clk)
begin
	if(!axis_aresetn)
		axis_start <= 1'b0;
	else if(axis_vsync[2:1] == 2'b01 && s_axis_tuser)
		axis_start <= 1'b1;
end

always @(posedge axis_clk)
begin
	if(!axis_aresetn)
		s_axis_tready <= 1'b0;
	else if(fifo_space > 2 && axis_start)
		s_axis_tready <= 1'b1;
	else if(fifo_space <= 2 && axis_start)
		s_axis_tready <= 1'b0;
end
assign fifo_wen = s_axis_tready & s_axis_tvalid ? 1'b1 : 1'b0;
assign fifo_din = s_axis_tdata;
endmodule