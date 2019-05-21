// ==============================================================
// File generated on Fri Feb 22 08:55:08 IST 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.0 (64-bit)
// SW Build 2455171 on Wed Feb 20 03:30:41 MST 2019
// IP Build 2455320 on Wed Feb 20 06:02:17 MST 2019
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __filter11x11_strm_mul_10ns_32s_32_3_1__HH__
#define __filter11x11_strm_mul_10ns_32s_32_3_1__HH__
#include "ACMP_mul_us.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(filter11x11_strm_mul_10ns_32s_32_3_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_mul_us<ID, 3, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_mul_us_U;

    SC_CTOR(filter11x11_strm_mul_10ns_32s_32_3_1):  ACMP_mul_us_U ("ACMP_mul_us_U") {
        ACMP_mul_us_U.clk(clk);
        ACMP_mul_us_U.reset(reset);
        ACMP_mul_us_U.ce(ce);
        ACMP_mul_us_U.din0(din0);
        ACMP_mul_us_U.din1(din1);
        ACMP_mul_us_U.dout(dout);

    }

};

#endif //
