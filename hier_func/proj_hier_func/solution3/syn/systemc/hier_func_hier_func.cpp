// ==============================================================
// RTL generated by Scout HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.0
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "hier_func_hier_func.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic hier_func_hier_func::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic hier_func_hier_func::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<32> hier_func_hier_func::ap_const_lv32_1 = "1";
const sc_lv<32> hier_func_hier_func::ap_const_lv32_1F = "11111";
const sc_lv<32> hier_func_hier_func::ap_const_lv32_2 = "10";
const bool hier_func_hier_func::ap_const_boolean_1 = true;

hier_func_hier_func::hier_func_hier_func(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_C);
    sensitive << ( ap_start );
    sensitive << ( trunc_ln_fu_74_p4 );

    SC_METHOD(thread_C_ap_vld);
    sensitive << ( ap_start );

    SC_METHOD(thread_D);
    sensitive << ( ap_start );
    sensitive << ( trunc_ln1_fu_89_p4 );

    SC_METHOD(thread_D_ap_vld);
    sensitive << ( ap_start );

    SC_METHOD(thread_add_ln50_fu_62_p2);
    sensitive << ( A );
    sensitive << ( B );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );

    SC_METHOD(thread_ap_idle);

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );

    SC_METHOD(thread_sub_ln51_fu_68_p2);
    sensitive << ( A );
    sensitive << ( B );

    SC_METHOD(thread_trunc_ln1_fu_89_p4);
    sensitive << ( sub_ln51_fu_68_p2 );

    SC_METHOD(thread_trunc_ln_fu_74_p4);
    sensitive << ( add_ln50_fu_62_p2 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_virtual_clock.pos() );

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "hier_func_hier_func_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, A, "(port)A");
    sc_trace(mVcdFile, B, "(port)B");
    sc_trace(mVcdFile, C, "(port)C");
    sc_trace(mVcdFile, C_ap_vld, "(port)C_ap_vld");
    sc_trace(mVcdFile, D, "(port)D");
    sc_trace(mVcdFile, D_ap_vld, "(port)D_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, add_ln50_fu_62_p2, "add_ln50_fu_62_p2");
    sc_trace(mVcdFile, trunc_ln_fu_74_p4, "trunc_ln_fu_74_p4");
    sc_trace(mVcdFile, sub_ln51_fu_68_p2, "sub_ln51_fu_68_p2");
    sc_trace(mVcdFile, trunc_ln1_fu_89_p4, "trunc_ln1_fu_89_p4");
#endif

    }
    mHdltvinHandle.open("hier_func_hier_func.hdltvin.dat");
    mHdltvoutHandle.open("hier_func_hier_func.hdltvout.dat");
}

hier_func_hier_func::~hier_func_hier_func() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void hier_func_hier_func::thread_C() {
    C = esl_sext<32,31>(trunc_ln_fu_74_p4.read());
}

void hier_func_hier_func::thread_C_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        C_ap_vld = ap_const_logic_1;
    } else {
        C_ap_vld = ap_const_logic_0;
    }
}

void hier_func_hier_func::thread_D() {
    D = esl_sext<32,30>(trunc_ln1_fu_89_p4.read());
}

void hier_func_hier_func::thread_D_ap_vld() {
    if (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) {
        D_ap_vld = ap_const_logic_1;
    } else {
        D_ap_vld = ap_const_logic_0;
    }
}

void hier_func_hier_func::thread_add_ln50_fu_62_p2() {
    add_ln50_fu_62_p2 = (!A.read().is_01() || !B.read().is_01())? sc_lv<32>(): (sc_biguint<32>(A.read()) + sc_biguint<32>(B.read()));
}

void hier_func_hier_func::thread_ap_done() {
    ap_done = ap_start.read();
}

void hier_func_hier_func::thread_ap_idle() {
    ap_idle = ap_const_logic_1;
}

void hier_func_hier_func::thread_ap_ready() {
    ap_ready = ap_start.read();
}

void hier_func_hier_func::thread_sub_ln51_fu_68_p2() {
    sub_ln51_fu_68_p2 = (!A.read().is_01() || !B.read().is_01())? sc_lv<32>(): (sc_biguint<32>(A.read()) - sc_biguint<32>(B.read()));
}

void hier_func_hier_func::thread_trunc_ln1_fu_89_p4() {
    trunc_ln1_fu_89_p4 = sub_ln51_fu_68_p2.read().range(31, 2);
}

void hier_func_hier_func::thread_trunc_ln_fu_74_p4() {
    trunc_ln_fu_74_p4 = add_ln50_fu_62_p2.read().range(31, 1);
}

void hier_func_hier_func::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A\" :  \"" << A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B\" :  \"" << B.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C\" :  \"" << C.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"C_ap_vld\" :  \"" << C_ap_vld.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D\" :  \"" << D.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"D_ap_vld\" :  \"" << D_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

