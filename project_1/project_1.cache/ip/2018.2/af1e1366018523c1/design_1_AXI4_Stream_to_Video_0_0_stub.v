// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar 21 18:28:59 2020
// Host        : LAPTOP-HU0R68OD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_AXI4_Stream_to_Video_0_0_stub.v
// Design      : design_1_AXI4_Stream_to_Video_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AXI4_Stream_to_Video_Out,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(axis_clk, axis_aresetn, s_axis_tdata, 
  s_axis_tvalid, s_axis_tlast, s_axis_tuser, s_axis_tready, video_clk, video_rst, 
  video_hsync_i, video_vsync_i, video_hblank_i, video_vblank_i, video_de_i, video_hsync_o, 
  video_vsync_o, video_hblank_o, video_vblank_o, video_de_o, video_data)
/* synthesis syn_black_box black_box_pad_pin="axis_clk,axis_aresetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tuser,s_axis_tready,video_clk,video_rst,video_hsync_i,video_vsync_i,video_hblank_i,video_vblank_i,video_de_i,video_hsync_o,video_vsync_o,video_hblank_o,video_vblank_o,video_de_o,video_data[31:0]" */;
  input axis_clk;
  input axis_aresetn;
  input [31:0]s_axis_tdata;
  input s_axis_tvalid;
  input s_axis_tlast;
  input s_axis_tuser;
  output s_axis_tready;
  input video_clk;
  input video_rst;
  input video_hsync_i;
  input video_vsync_i;
  input video_hblank_i;
  input video_vblank_i;
  input video_de_i;
  output video_hsync_o;
  output video_vsync_o;
  output video_hblank_o;
  output video_vblank_o;
  output video_de_o;
  output [31:0]video_data;
endmodule
