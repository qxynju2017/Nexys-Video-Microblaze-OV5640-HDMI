onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L microblaze_v10_0_7 -L axi_lite_ipif_v3_0_4 -L axi_intc_v4_1_11 -L mdm_v3_2_14 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_2 -L lib_fifo_v1_0_11 -L blk_mem_gen_v8_4_1 -L lib_bmg_v1_0_10 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_19 -L axi_vdma_v6_3_5 -L axi_uartlite_v2_0_21 -L interrupt_control_v3_1_4 -L axi_iic_v2_0_20 -L smartconnect_v1_0 -L xlconstant_v1_1_5 -L v_tc_v6_1_12 -L v_vid_in_axi4s_v4_0_8 -L util_vector_logic_v2_0_1 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_17 -L axi_data_fifo_v2_1_16 -L axi_crossbar_v2_1_18 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_15 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.design_1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force