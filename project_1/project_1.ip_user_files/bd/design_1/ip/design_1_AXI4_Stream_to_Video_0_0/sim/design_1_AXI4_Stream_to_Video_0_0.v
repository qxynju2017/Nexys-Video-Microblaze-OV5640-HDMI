// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:AXI4_Stream_to_Video_Out:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_AXI4_Stream_to_Video_0_0 (
  axis_clk,
  axis_aresetn,
  s_axis_tdata,
  s_axis_tvalid,
  s_axis_tlast,
  s_axis_tuser,
  s_axis_tready,
  video_clk,
  video_rst,
  video_hsync_i,
  video_vsync_i,
  video_hblank_i,
  video_vblank_i,
  video_de_i,
  video_hsync_o,
  video_vsync_o,
  video_hblank_o,
  video_vblank_o,
  video_de_o,
  video_data
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_clk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *)
input wire axis_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
input wire axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *)
input wire [31 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *)
input wire s_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TUSER" *)
input wire s_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_clk, ASSOCIATED_RESET video_rst, ASSOCIATED_BUSIF Vid_io_out, FREQ_HZ 74000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 video_clk CLK" *)
input wire video_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 video_rst RST" *)
input wire video_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *)
input wire video_hsync_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *)
input wire video_vsync_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *)
input wire video_hblank_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *)
input wire video_vblank_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *)
input wire video_de_i;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Vid_io_out HSYNC" *)
output wire video_hsync_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Vid_io_out VSYNC" *)
output wire video_vsync_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Vid_io_out HBLANK" *)
output wire video_hblank_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Vid_io_out VBLANK" *)
output wire video_vblank_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Vid_io_out ACTIVE_VIDEO" *)
output wire video_de_o;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 Vid_io_out DATA" *)
output wire [31 : 0] video_data;

  AXI4_Stream_to_Video_Out #(
    .DW(32),
    .WIDTH(1920),
    .HEIGHT(1080)
  ) inst (
    .axis_clk(axis_clk),
    .axis_aresetn(axis_aresetn),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tuser(s_axis_tuser),
    .s_axis_tready(s_axis_tready),
    .video_clk(video_clk),
    .video_rst(video_rst),
    .video_hsync_i(video_hsync_i),
    .video_vsync_i(video_vsync_i),
    .video_hblank_i(video_hblank_i),
    .video_vblank_i(video_vblank_i),
    .video_de_i(video_de_i),
    .video_hsync_o(video_hsync_o),
    .video_vsync_o(video_vsync_o),
    .video_hblank_o(video_hblank_o),
    .video_vblank_o(video_vblank_o),
    .video_de_o(video_de_o),
    .video_data(video_data)
  );
endmodule
