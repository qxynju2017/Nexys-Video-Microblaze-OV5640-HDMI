-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Mar 21 18:28:59 2020
-- Host        : LAPTOP-HU0R68OD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/FPGA_Test/3_Study/nexys_video_microblaze_ov5640_20200321/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_AXI4_Stream_to_Video_0_0/design_1_AXI4_Stream_to_Video_0_0_stub.vhdl
-- Design      : design_1_AXI4_Stream_to_Video_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AXI4_Stream_to_Video_0_0 is
  Port ( 
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    video_clk : in STD_LOGIC;
    video_rst : in STD_LOGIC;
    video_hsync_i : in STD_LOGIC;
    video_vsync_i : in STD_LOGIC;
    video_hblank_i : in STD_LOGIC;
    video_vblank_i : in STD_LOGIC;
    video_de_i : in STD_LOGIC;
    video_hsync_o : out STD_LOGIC;
    video_vsync_o : out STD_LOGIC;
    video_hblank_o : out STD_LOGIC;
    video_vblank_o : out STD_LOGIC;
    video_de_o : out STD_LOGIC;
    video_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_AXI4_Stream_to_Video_0_0;

architecture stub of design_1_AXI4_Stream_to_Video_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_clk,axis_aresetn,s_axis_tdata[31:0],s_axis_tvalid,s_axis_tlast,s_axis_tuser,s_axis_tready,video_clk,video_rst,video_hsync_i,video_vsync_i,video_hblank_i,video_vblank_i,video_de_i,video_hsync_o,video_vsync_o,video_hblank_o,video_vblank_o,video_de_o,video_data[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AXI4_Stream_to_Video_Out,Vivado 2018.2";
begin
end;
