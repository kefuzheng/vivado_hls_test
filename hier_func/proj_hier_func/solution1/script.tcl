############################################################
## This file is generated automatically by Scout HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_hier_func
set_top hier_func
add_files hier_func.c
add_files -tb tb_data -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb hier_func_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7k160t-fbg484-1}
create_clock -period 4 -name default
source "./proj_hier_func/solution1/directives.tcl"
csim_design -clean
csynth_design -dump_cfg
cosim_design
export_design -format ip_catalog
