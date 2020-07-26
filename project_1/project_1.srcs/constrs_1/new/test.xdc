set_property PACKAGE_PIN R4 [get_ports clk_in1]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in1]

set_property PACKAGE_PIN V18 [get_ports uart_rxd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rxd]

set_property PACKAGE_PIN AA19 [get_ports uart_txd]
set_property IOSTANDARD LVCMOS33 [get_ports uart_txd]

set_property PACKAGE_PIN E22 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

#------------------------------------------------------------------------------------------------

set_property PACKAGE_PIN W9 [get_ports iic_rtl_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_scl_io]

set_property PACKAGE_PIN V9 [get_ports iic_rtl_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports iic_rtl_sda_io]

set_property PULLUP true [get_ports iic_rtl_sda_io]
set_property PULLUP true [get_ports iic_rtl_scl_io]
#------------------------------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_xclk_o]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_pclk_i]
#------------------------------------------------------------------------------------------------
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_i_IBUF]
#--------------------------------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_vsync_i]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports cmos_href_i]
#------------------------------------------------------------------------------------------------
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[0]}]
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[1]}]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[2]}]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[3]}]
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[4]}]
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[5]}]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[6]}]
set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33 IOB TRUE} [get_ports {cmos_data_i[7]}]
#-------------------------------------------------------------------------------------------------
#---------------------------------------------------------
#                   HDMI[1]
#---------------------------------------------------------
#HDMI1 CLK
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_P]
set_property PACKAGE_PIN T1 [get_ports HDMI_CLK_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_CLK_N]
set_property PACKAGE_PIN U1 [get_ports HDMI_CLK_N]
#HDMI1 D0
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_P]
set_property PACKAGE_PIN W1 [get_ports HDMI_D0_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D0_N]
set_property PACKAGE_PIN Y1 [get_ports HDMI_D0_N]
#HDMI1 D1
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_P]
set_property PACKAGE_PIN AA1 [get_ports HDMI_D1_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D1_N]
set_property PACKAGE_PIN AB1 [get_ports HDMI_D1_N]
#HDMI1 D2
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_P]
set_property PACKAGE_PIN AB3 [get_ports HDMI_D2_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_D2_N]
set_property PACKAGE_PIN AB2 [get_ports HDMI_D2_N]