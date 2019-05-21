// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1.0
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_Border_proc_HH_
#define _Loop_Border_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "filter11x11_strm_mul_32ns_32ns_64_3_1.h"
#include "Loop_Border_proc_borderbuf.h"

namespace ap_rtl {

struct Loop_Border_proc : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > width_dout;
    sc_in< sc_logic > width_empty_n;
    sc_out< sc_logic > width_read;
    sc_in< sc_lv<32> > height_dout;
    sc_in< sc_logic > height_empty_n;
    sc_out< sc_logic > height_read;
    sc_out< sc_lv<32> > dst_V_TDATA;
    sc_out< sc_logic > dst_V_TVALID;
    sc_in< sc_logic > dst_V_TREADY;
    sc_in< sc_lv<32> > vconv_xlim_loc_dout;
    sc_in< sc_logic > vconv_xlim_loc_empty_n;
    sc_out< sc_logic > vconv_xlim_loc_read;
    sc_in< sc_lv<32> > vconv_V_dout;
    sc_in< sc_logic > vconv_V_empty_n;
    sc_out< sc_logic > vconv_V_read;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Loop_Border_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_Border_proc);

    ~Loop_Border_proc();

    sc_trace_file* mVcdFile;

    Loop_Border_proc_borderbuf* borderbuf_U;
    filter11x11_strm_mul_32ns_32ns_64_3_1<1,3,32,32,64>* filter11x11_strm_mul_32ns_32ns_64_3_1_U47;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > dst_V_1_data_out;
    sc_signal< sc_logic > dst_V_1_vld_in;
    sc_signal< sc_logic > dst_V_1_vld_out;
    sc_signal< sc_logic > dst_V_1_ack_in;
    sc_signal< sc_logic > dst_V_1_ack_out;
    sc_signal< sc_lv<32> > dst_V_1_payload_A;
    sc_signal< sc_lv<32> > dst_V_1_payload_B;
    sc_signal< sc_logic > dst_V_1_sel_rd;
    sc_signal< sc_logic > dst_V_1_sel_wr;
    sc_signal< sc_logic > dst_V_1_sel;
    sc_signal< sc_logic > dst_V_1_load_A;
    sc_signal< sc_logic > dst_V_1_load_B;
    sc_signal< sc_lv<2> > dst_V_1_state;
    sc_signal< sc_logic > dst_V_1_state_cmp_full;
    sc_signal< sc_logic > width_blk_n;
    sc_signal< sc_logic > height_blk_n;
    sc_signal< sc_logic > dst_V_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln204_reg_512;
    sc_signal< sc_lv<1> > icmp_ln204_reg_512_pp0_iter2_reg;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > icmp_ln204_reg_512_pp0_iter3_reg;
    sc_signal< sc_logic > vconv_xlim_loc_blk_n;
    sc_signal< sc_logic > vconv_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > select_ln204_1_reg_529;
    sc_signal< sc_lv<1> > icmp_ln211_reg_538;
    sc_signal< sc_lv<64> > indvar_flatten_reg_144;
    sc_signal< sc_lv<11> > i6_0_i_i_i_reg_155;
    sc_signal< sc_lv<11> > j_0_i_i_i_reg_166;
    sc_signal< sc_lv<32> > width_read_reg_462;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > height_read_reg_470;
    sc_signal< sc_lv<32> > vconv_xlim_loc_read_reg_476;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > add_ln218_fu_189_p2;
    sc_signal< sc_lv<32> > add_ln218_reg_491;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > add_ln225_fu_194_p2;
    sc_signal< sc_lv<32> > add_ln225_reg_496;
    sc_signal< sc_lv<32> > add_ln208_fu_199_p2;
    sc_signal< sc_lv<32> > add_ln208_reg_501;
    sc_signal< sc_lv<64> > grp_fu_183_p2;
    sc_signal< sc_lv<64> > bound_reg_507;
    sc_signal< sc_lv<1> > icmp_ln204_fu_246_p2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0;
    sc_signal< bool > ap_predicate_op63_read_state6;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state8_io;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state9_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln204_reg_512_pp0_iter1_reg;
    sc_signal< sc_lv<64> > add_ln204_fu_251_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<11> > select_ln204_fu_267_p3;
    sc_signal< sc_lv<11> > select_ln204_reg_521;
    sc_signal< sc_lv<11> > select_ln204_reg_521_pp0_iter1_reg;
    sc_signal< sc_lv<11> > select_ln204_reg_521_pp0_iter2_reg;
    sc_signal< sc_lv<1> > select_ln204_1_fu_304_p3;
    sc_signal< sc_lv<1> > select_ln204_1_reg_529_pp0_iter1_reg;
    sc_signal< sc_lv<11> > select_ln204_2_fu_316_p3;
    sc_signal< sc_lv<1> > icmp_ln211_fu_324_p2;
    sc_signal< sc_lv<1> > icmp_ln211_reg_538_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln218_fu_329_p2;
    sc_signal< sc_lv<1> > icmp_ln218_reg_542;
    sc_signal< sc_lv<1> > icmp_ln218_reg_542_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln225_fu_334_p2;
    sc_signal< sc_lv<1> > icmp_ln225_reg_547;
    sc_signal< sc_lv<1> > icmp_ln225_reg_547_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln225_reg_547_pp0_iter2_reg;
    sc_signal< sc_lv<11> > j_fu_339_p2;
    sc_signal< sc_lv<32> > tmp_reg_557;
    sc_signal< sc_lv<32> > pix_out_10_fu_433_p3;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<11> > borderbuf_address0;
    sc_signal< sc_logic > borderbuf_ce0;
    sc_signal< sc_logic > borderbuf_we0;
    sc_signal< sc_lv<11> > borderbuf_address1;
    sc_signal< sc_logic > borderbuf_ce1;
    sc_signal< sc_lv<32> > borderbuf_q1;
    sc_signal< sc_lv<64> > zext_ln213_fu_350_p1;
    sc_signal< sc_lv<64> > zext_ln228_fu_398_p1;
    sc_signal< sc_lv<32> > r_edge_pix_fu_74;
    sc_signal< sc_lv<32> > pix_out_fu_78;
    sc_signal< sc_lv<32> > l_edge_pix_fu_376_p3;
    sc_signal< sc_lv<32> > pix_out_1_fu_82;
    sc_signal< sc_lv<32> > select_ln215_fu_368_p3;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > grp_fu_183_p0;
    sc_signal< sc_lv<32> > grp_fu_183_p1;
    sc_signal< sc_lv<32> > zext_ln204_1_fu_204_p1;
    sc_signal< sc_lv<1> > icmp_ln208_2_fu_220_p2;
    sc_signal< sc_lv<1> > icmp_ln208_1_fu_214_p2;
    sc_signal< sc_lv<1> > icmp_ln208_fu_208_p2;
    sc_signal< sc_lv<1> > and_ln208_fu_225_p2;
    sc_signal< sc_lv<32> > zext_ln205_fu_237_p1;
    sc_signal< sc_lv<11> > add_ln204_1_fu_257_p2;
    sc_signal< sc_lv<1> > icmp_ln205_fu_241_p2;
    sc_signal< sc_lv<32> > zext_ln204_fu_263_p1;
    sc_signal< sc_lv<1> > icmp_ln208_5_fu_287_p2;
    sc_signal< sc_lv<1> > icmp_ln208_4_fu_281_p2;
    sc_signal< sc_lv<1> > icmp_ln208_3_fu_275_p2;
    sc_signal< sc_lv<1> > and_ln208_1_fu_292_p2;
    sc_signal< sc_lv<1> > or_ln208_fu_231_p2;
    sc_signal< sc_lv<1> > or_ln208_1_fu_298_p2;
    sc_signal< sc_lv<32> > zext_ln204_2_fu_312_p1;
    sc_signal< sc_lv<1> > icmp_ln215_fu_363_p2;
    sc_signal< sc_lv<11> > add_ln228_fu_393_p2;
    sc_signal< sc_lv<1> > icmp_ln223_fu_409_p2;
    sc_signal< sc_lv<1> > xor_ln223_fu_414_p2;
    sc_signal< sc_lv<1> > and_ln225_fu_420_p2;
    sc_signal< sc_lv<32> > pix_out_8_fu_425_p3;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<64> > grp_fu_183_p00;
    sc_signal< sc_lv<64> > grp_fu_183_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_FFFFFFF5;
    static const sc_lv<32> ap_const_lv32_FFFFFFFA;
    static const sc_lv<32> ap_const_lv32_FFFFFFFB;
    static const sc_lv<11> ap_const_lv11_5;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_7FB;
    static const sc_lv<11> ap_const_lv11_6;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln204_1_fu_257_p2();
    void thread_add_ln204_fu_251_p2();
    void thread_add_ln208_fu_199_p2();
    void thread_add_ln218_fu_189_p2();
    void thread_add_ln225_fu_194_p2();
    void thread_add_ln228_fu_393_p2();
    void thread_and_ln208_1_fu_292_p2();
    void thread_and_ln208_fu_225_p2();
    void thread_and_ln225_fu_420_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state5_pp0_stage0_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage0_iter2();
    void thread_ap_block_state8_io();
    void thread_ap_block_state8_pp0_stage0_iter3();
    void thread_ap_block_state9_io();
    void thread_ap_block_state9_pp0_stage0_iter4();
    void thread_ap_condition_pp0_exit_iter0_state5();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op63_read_state6();
    void thread_ap_ready();
    void thread_borderbuf_address0();
    void thread_borderbuf_address1();
    void thread_borderbuf_ce0();
    void thread_borderbuf_ce1();
    void thread_borderbuf_we0();
    void thread_dst_V_1_ack_in();
    void thread_dst_V_1_ack_out();
    void thread_dst_V_1_data_out();
    void thread_dst_V_1_load_A();
    void thread_dst_V_1_load_B();
    void thread_dst_V_1_sel();
    void thread_dst_V_1_state_cmp_full();
    void thread_dst_V_1_vld_in();
    void thread_dst_V_1_vld_out();
    void thread_dst_V_TDATA();
    void thread_dst_V_TDATA_blk_n();
    void thread_dst_V_TVALID();
    void thread_grp_fu_183_p0();
    void thread_grp_fu_183_p00();
    void thread_grp_fu_183_p1();
    void thread_grp_fu_183_p10();
    void thread_height_blk_n();
    void thread_height_read();
    void thread_icmp_ln204_fu_246_p2();
    void thread_icmp_ln205_fu_241_p2();
    void thread_icmp_ln208_1_fu_214_p2();
    void thread_icmp_ln208_2_fu_220_p2();
    void thread_icmp_ln208_3_fu_275_p2();
    void thread_icmp_ln208_4_fu_281_p2();
    void thread_icmp_ln208_5_fu_287_p2();
    void thread_icmp_ln208_fu_208_p2();
    void thread_icmp_ln211_fu_324_p2();
    void thread_icmp_ln215_fu_363_p2();
    void thread_icmp_ln218_fu_329_p2();
    void thread_icmp_ln223_fu_409_p2();
    void thread_icmp_ln225_fu_334_p2();
    void thread_j_fu_339_p2();
    void thread_l_edge_pix_fu_376_p3();
    void thread_or_ln208_1_fu_298_p2();
    void thread_or_ln208_fu_231_p2();
    void thread_pix_out_10_fu_433_p3();
    void thread_pix_out_8_fu_425_p3();
    void thread_select_ln204_1_fu_304_p3();
    void thread_select_ln204_2_fu_316_p3();
    void thread_select_ln204_fu_267_p3();
    void thread_select_ln215_fu_368_p3();
    void thread_vconv_V_blk_n();
    void thread_vconv_V_read();
    void thread_vconv_xlim_loc_blk_n();
    void thread_vconv_xlim_loc_read();
    void thread_width_blk_n();
    void thread_width_read();
    void thread_xor_ln223_fu_414_p2();
    void thread_zext_ln204_1_fu_204_p1();
    void thread_zext_ln204_2_fu_312_p1();
    void thread_zext_ln204_fu_263_p1();
    void thread_zext_ln205_fu_237_p1();
    void thread_zext_ln213_fu_350_p1();
    void thread_zext_ln228_fu_398_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
