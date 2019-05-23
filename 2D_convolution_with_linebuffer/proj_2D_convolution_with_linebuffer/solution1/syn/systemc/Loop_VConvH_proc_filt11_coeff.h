// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Loop_VConvH_proc_filt11_coeff_H__
#define __Loop_VConvH_proc_filt11_coeff_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Loop_VConvH_proc_filt11_coeff_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
  static const unsigned AddressRange = 11;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Loop_VConvH_proc_filt11_coeff_ram) {
        ram[0] = "0b0000100100";
        ram[1] = "0b0001101111";
        ram[2] = "0b0100001010";
        ram[3] = "0b0111110010";
        ram[4] = "0b1011010100";
        ram[5] = "0b1100110101";
        ram[6] = "0b1011010100";
        ram[7] = "0b0111110010";
        ram[8] = "0b0100001010";
        ram[9] = "0b0001101111";
        ram[10] = "0b0000100100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(Loop_VConvH_proc_filt11_coeff) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 11;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Loop_VConvH_proc_filt11_coeff_ram* meminst;


SC_CTOR(Loop_VConvH_proc_filt11_coeff) {
meminst = new Loop_VConvH_proc_filt11_coeff_ram("Loop_VConvH_proc_filt11_coeff_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~Loop_VConvH_proc_filt11_coeff() {
    delete meminst;
}


};//endmodule
#endif
