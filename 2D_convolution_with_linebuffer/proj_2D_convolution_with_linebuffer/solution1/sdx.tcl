# ==============================================================
# File generated on Fri Feb 22 08:55:10 IST 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.0 (64-bit)
# SW Build 2455171 on Wed Feb 20 03:30:41 MST 2019
# IP Build 2455320 on Wed Feb 20 06:02:17 MST 2019
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../convolution_test.cpp -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files convolution.cpp
set_part xc7z020-clg484-1
create_clock -name default -period 6.66
