// ==============================================================
// RTL generated by Scout HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.0
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hier_func_hier_func,hls_ip_2019_2_0,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.785000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=78,HLS_VERSION=2019_2_0}" *)

module hier_func_hier_func (
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A,
        B,
        C,
        C_ap_vld,
        D,
        D_ap_vld
);


input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
output  [31:0] C;
output   C_ap_vld;
output  [31:0] D;
output   D_ap_vld;

reg C_ap_vld;
reg D_ap_vld;

wire   [31:0] add_ln50_fu_62_p2;
wire   [30:0] trunc_ln_fu_74_p4;
wire   [31:0] sub_ln51_fu_68_p2;
wire   [29:0] trunc_ln1_fu_89_p4;

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        C_ap_vld = 1'b1;
    end else begin
        C_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b1)) begin
        D_ap_vld = 1'b1;
    end else begin
        D_ap_vld = 1'b0;
    end
end

assign C = $signed(trunc_ln_fu_74_p4);

assign D = $signed(trunc_ln1_fu_89_p4);

assign add_ln50_fu_62_p2 = (A + B);

assign ap_done = ap_start;

assign ap_idle = 1'b1;

assign ap_ready = ap_start;

assign sub_ln51_fu_68_p2 = (A - B);

assign trunc_ln1_fu_89_p4 = {{sub_ln51_fu_68_p2[31:2]}};

assign trunc_ln_fu_74_p4 = {{add_ln50_fu_62_p2[31:1]}};

endmodule //hier_func_hier_func
