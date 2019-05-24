// ==============================================================
// RTL generated by Scout HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.0
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_HConvH_proc6 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        height_dout,
        height_empty_n,
        height_read,
        width_dout,
        width_empty_n,
        width_read,
        src_V_TDATA,
        src_V_TVALID,
        src_V_TREADY,
        hconv_V_din,
        hconv_V_full_n,
        hconv_V_write
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_pp0_stage0 = 6'd16;
parameter    ap_ST_fsm_state13 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] height_dout;
input   height_empty_n;
output   height_read;
input  [31:0] width_dout;
input   width_empty_n;
output   width_read;
input  [31:0] src_V_TDATA;
input   src_V_TVALID;
output   src_V_TREADY;
output  [31:0] hconv_V_din;
input   hconv_V_full_n;
output   hconv_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg height_read;
reg width_read;
reg hconv_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg   [31:0] src_V_0_data_out;
wire    src_V_0_vld_in;
wire    src_V_0_vld_out;
wire    src_V_0_ack_in;
reg    src_V_0_ack_out;
reg   [31:0] src_V_0_payload_A;
reg   [31:0] src_V_0_payload_B;
reg    src_V_0_sel_rd;
reg    src_V_0_sel_wr;
wire    src_V_0_sel;
wire    src_V_0_load_A;
wire    src_V_0_load_B;
reg   [1:0] src_V_0_state;
wire    src_V_0_state_cmp_full;
reg    height_blk_n;
reg    width_blk_n;
reg    src_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln168_fu_214_p2;
reg    hconv_V_blk_n;
reg    ap_enable_reg_pp0_iter7;
reg   [0:0] icmp_ln178_reg_579;
reg   [0:0] icmp_ln178_reg_579_pp0_iter6_reg;
reg   [63:0] indvar_flatten_reg_141;
reg   [10:0] row_0_i_i_reg_152;
reg   [31:0] height_read_reg_487;
reg    ap_block_state1;
reg   [31:0] width_read_reg_492;
wire    ap_CS_fsm_state2;
wire   [63:0] grp_fu_169_p2;
reg   [63:0] bound_reg_508;
wire    ap_CS_fsm_state4;
reg   [31:0] hwin_1_1_i_load_reg_513;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state7_pp0_stage0_iter2;
wire    ap_block_state8_pp0_stage0_iter3;
wire    ap_block_state9_pp0_stage0_iter4;
wire    ap_block_state10_pp0_stage0_iter5;
wire    ap_block_state11_pp0_stage0_iter6;
reg    ap_block_state12_pp0_stage0_iter7;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] hwin_1_1_i_load_reg_513_pp0_iter1_reg;
reg   [31:0] hwin_1_1_i_load_reg_513_pp0_iter2_reg;
reg  signed [31:0] hwin_3_load_reg_529;
reg  signed [31:0] hwin_3_load_reg_529_pp0_iter1_reg;
reg  signed [31:0] hwin_6_load_reg_544;
reg  signed [31:0] hwin_7_load_reg_549;
reg   [0:0] icmp_ln168_reg_559;
reg   [0:0] icmp_ln168_reg_559_pp0_iter1_reg;
reg   [0:0] icmp_ln168_reg_559_pp0_iter2_reg;
reg   [0:0] icmp_ln168_reg_559_pp0_iter3_reg;
reg   [0:0] icmp_ln168_reg_559_pp0_iter4_reg;
reg   [0:0] icmp_ln168_reg_559_pp0_iter5_reg;
wire   [63:0] add_ln168_fu_219_p2;
reg   [31:0] tmp_2_reg_573;
reg   [31:0] tmp_2_reg_573_pp0_iter1_reg;
reg   [31:0] tmp_2_reg_573_pp0_iter2_reg;
wire   [0:0] icmp_ln178_fu_317_p2;
reg   [0:0] icmp_ln178_reg_579_pp0_iter1_reg;
reg   [0:0] icmp_ln178_reg_579_pp0_iter2_reg;
reg   [0:0] icmp_ln178_reg_579_pp0_iter3_reg;
reg   [0:0] icmp_ln178_reg_579_pp0_iter4_reg;
reg   [0:0] icmp_ln178_reg_579_pp0_iter5_reg;
wire   [10:0] row_fu_328_p2;
wire   [31:0] grp_fu_281_p2;
reg   [31:0] mul_ln176_reg_588;
wire   [31:0] grp_fu_287_p2;
reg   [31:0] mul_ln176_1_reg_593;
wire   [31:0] grp_fu_293_p2;
reg   [31:0] mul_ln176_3_reg_598;
wire   [31:0] grp_fu_299_p2;
reg   [31:0] mul_ln176_4_reg_603;
wire   [31:0] grp_fu_305_p2;
reg   [31:0] mul_ln176_7_reg_608;
wire   [31:0] grp_fu_311_p2;
reg   [31:0] mul_ln176_8_reg_613;
wire   [31:0] grp_fu_334_p2;
reg   [31:0] mul_ln176_5_reg_618;
wire   [31:0] grp_fu_339_p2;
reg   [31:0] mul_ln176_6_reg_623;
wire   [31:0] add_ln176_1_fu_375_p2;
reg   [31:0] add_ln176_1_reg_628;
reg   [31:0] add_ln176_1_reg_628_pp0_iter4_reg;
reg   [31:0] add_ln176_1_reg_628_pp0_iter5_reg;
wire   [31:0] add_ln176_3_fu_385_p2;
reg   [31:0] add_ln176_3_reg_633;
reg   [31:0] add_ln176_3_reg_633_pp0_iter4_reg;
reg   [31:0] add_ln176_3_reg_633_pp0_iter5_reg;
wire   [31:0] add_ln176_5_fu_391_p2;
reg   [31:0] add_ln176_5_reg_638;
reg   [31:0] add_ln176_5_reg_638_pp0_iter4_reg;
wire   [31:0] add_ln176_8_fu_395_p2;
reg   [31:0] add_ln176_8_reg_643;
wire   [31:0] grp_fu_344_p2;
reg   [31:0] mul_ln176_2_reg_648;
wire   [31:0] add_ln176_9_fu_403_p2;
reg   [31:0] add_ln176_9_reg_653;
wire   [31:0] add_ln176_10_fu_412_p2;
reg   [31:0] add_ln176_10_reg_658;
wire   [31:0] tmp_fu_421_p2;
reg   [31:0] tmp_reg_663;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state5;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg   [31:0] hwin_1_1_i_fu_76;
reg  signed [31:0] hwin_1_fu_80;
reg  signed [31:0] hwin_2_fu_84;
reg   [31:0] hwin_3_fu_88;
reg  signed [31:0] hwin_4_fu_92;
reg  signed [31:0] hwin_5_fu_96;
reg   [31:0] hwin_6_fu_100;
reg   [31:0] hwin_7_fu_104;
reg  signed [31:0] hwin_8_fu_108;
reg  signed [31:0] hwin_9_fu_112;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] grp_fu_169_p0;
wire   [31:0] grp_fu_169_p1;
wire   [31:0] zext_ln169_fu_205_p1;
wire   [0:0] icmp_ln169_fu_209_p2;
wire   [7:0] grp_fu_281_p0;
wire   [9:0] grp_fu_287_p0;
wire   [10:0] grp_fu_293_p0;
wire   [10:0] grp_fu_299_p0;
wire   [9:0] grp_fu_305_p0;
wire   [7:0] grp_fu_311_p0;
wire   [10:0] select_ln169_fu_273_p3;
wire   [10:0] grp_fu_334_p0;
wire   [9:0] grp_fu_339_p0;
wire   [9:0] grp_fu_344_p0;
wire   [31:0] shl_ln176_2_fu_359_p2;
wire   [31:0] shl_ln176_fu_349_p2;
wire   [31:0] add_ln176_fu_369_p2;
wire   [31:0] shl_ln176_3_fu_364_p2;
wire   [31:0] add_ln176_2_fu_381_p2;
wire   [31:0] shl_ln176_1_fu_354_p2;
wire   [31:0] add_ln176_7_fu_399_p2;
wire   [31:0] add_ln176_6_fu_408_p2;
wire   [31:0] add_ln176_4_fu_417_p2;
reg    grp_fu_281_ce;
reg    grp_fu_287_ce;
reg    grp_fu_293_ce;
reg    grp_fu_299_ce;
reg    grp_fu_305_ce;
reg    grp_fu_311_ce;
reg    grp_fu_334_ce;
reg    grp_fu_339_ce;
reg    grp_fu_344_ce;
wire    ap_CS_fsm_state13;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [63:0] grp_fu_169_p00;
wire   [63:0] grp_fu_169_p10;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 6'd1;
#0 src_V_0_sel_rd = 1'b0;
#0 src_V_0_sel_wr = 1'b0;
#0 src_V_0_state = 2'd0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
end

filter11x11_strm_mul_32ns_32ns_64_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
filter11x11_strm_mul_32ns_32ns_64_3_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_169_p0),
    .din1(grp_fu_169_p1),
    .ce(1'b1),
    .dout(grp_fu_169_p2)
);

filter11x11_strm_mul_8ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_8ns_32s_32_3_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_281_p0),
    .din1(hwin_1_fu_80),
    .ce(grp_fu_281_ce),
    .dout(grp_fu_281_p2)
);

filter11x11_strm_mul_10ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_10ns_32s_32_3_1_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_287_p0),
    .din1(hwin_2_fu_84),
    .ce(grp_fu_287_ce),
    .dout(grp_fu_287_p2)
);

filter11x11_strm_mul_11ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_11ns_32s_32_3_1_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_293_p0),
    .din1(hwin_4_fu_92),
    .ce(grp_fu_293_ce),
    .dout(grp_fu_293_p2)
);

filter11x11_strm_mul_11ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_11ns_32s_32_3_1_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_299_p0),
    .din1(hwin_5_fu_96),
    .ce(grp_fu_299_ce),
    .dout(grp_fu_299_p2)
);

filter11x11_strm_mul_10ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_10ns_32s_32_3_1_U17(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_305_p0),
    .din1(hwin_8_fu_108),
    .ce(grp_fu_305_ce),
    .dout(grp_fu_305_p2)
);

filter11x11_strm_mul_8ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_8ns_32s_32_3_1_U18(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_311_p0),
    .din1(hwin_9_fu_112),
    .ce(grp_fu_311_ce),
    .dout(grp_fu_311_p2)
);

filter11x11_strm_mul_11ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_11ns_32s_32_3_1_U19(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_334_p0),
    .din1(hwin_6_load_reg_544),
    .ce(grp_fu_334_ce),
    .dout(grp_fu_334_p2)
);

filter11x11_strm_mul_10ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_10ns_32s_32_3_1_U20(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_339_p0),
    .din1(hwin_7_load_reg_549),
    .ce(grp_fu_339_ce),
    .dout(grp_fu_339_p2)
);

filter11x11_strm_mul_10ns_32s_32_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
filter11x11_strm_mul_10ns_32s_32_3_1_U21(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_344_p0),
    .din1(hwin_3_load_reg_529_pp0_iter1_reg),
    .ce(grp_fu_344_ce),
    .dout(grp_fu_344_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state13)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state5) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state5)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state5);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_enable_reg_pp0_iter7 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        src_V_0_sel_rd <= 1'b0;
    end else begin
        if (((src_V_0_ack_out == 1'b1) & (src_V_0_vld_out == 1'b1))) begin
            src_V_0_sel_rd <= ~src_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        src_V_0_sel_wr <= 1'b0;
    end else begin
        if (((src_V_0_ack_in == 1'b1) & (src_V_0_vld_in == 1'b1))) begin
            src_V_0_sel_wr <= ~src_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        src_V_0_state <= 2'd0;
    end else begin
        if ((((src_V_0_state == 2'd2) & (src_V_0_vld_in == 1'b0)) | ((src_V_0_state == 2'd3) & (src_V_0_vld_in == 1'b0) & (src_V_0_ack_out == 1'b1)))) begin
            src_V_0_state <= 2'd2;
        end else if ((((src_V_0_state == 2'd1) & (src_V_0_ack_out == 1'b0)) | ((src_V_0_state == 2'd3) & (src_V_0_ack_out == 1'b0) & (src_V_0_vld_in == 1'b1)))) begin
            src_V_0_state <= 2'd1;
        end else if (((~((src_V_0_vld_in == 1'b0) & (src_V_0_ack_out == 1'b1)) & ~((src_V_0_ack_out == 1'b0) & (src_V_0_vld_in == 1'b1)) & (src_V_0_state == 2'd3)) | ((src_V_0_state == 2'd1) & (src_V_0_ack_out == 1'b1)) | ((src_V_0_state == 2'd2) & (src_V_0_vld_in == 1'b1)))) begin
            src_V_0_state <= 2'd3;
        end else begin
            src_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_141 <= add_ln168_fu_219_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        indvar_flatten_reg_141 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        row_0_i_i_reg_152 <= row_fu_328_p2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        row_0_i_i_reg_152 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_reg_559_pp0_iter4_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln176_10_reg_658 <= add_ln176_10_fu_412_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_reg_559_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln176_1_reg_628[31 : 2] <= add_ln176_1_fu_375_p2[31 : 2];
        add_ln176_3_reg_633 <= add_ln176_3_fu_385_p2;
        add_ln176_5_reg_638 <= add_ln176_5_fu_391_p2;
        add_ln176_8_reg_643 <= add_ln176_8_fu_395_p2;
        mul_ln176_5_reg_618 <= grp_fu_334_p2;
        mul_ln176_6_reg_623 <= grp_fu_339_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln176_1_reg_628_pp0_iter4_reg[31 : 2] <= add_ln176_1_reg_628[31 : 2];
        add_ln176_1_reg_628_pp0_iter5_reg[31 : 2] <= add_ln176_1_reg_628_pp0_iter4_reg[31 : 2];
        add_ln176_3_reg_633_pp0_iter4_reg <= add_ln176_3_reg_633;
        add_ln176_3_reg_633_pp0_iter5_reg <= add_ln176_3_reg_633_pp0_iter4_reg;
        add_ln176_5_reg_638_pp0_iter4_reg <= add_ln176_5_reg_638;
        hwin_1_1_i_load_reg_513_pp0_iter2_reg <= hwin_1_1_i_load_reg_513_pp0_iter1_reg;
        icmp_ln168_reg_559_pp0_iter2_reg <= icmp_ln168_reg_559_pp0_iter1_reg;
        icmp_ln168_reg_559_pp0_iter3_reg <= icmp_ln168_reg_559_pp0_iter2_reg;
        icmp_ln168_reg_559_pp0_iter4_reg <= icmp_ln168_reg_559_pp0_iter3_reg;
        icmp_ln168_reg_559_pp0_iter5_reg <= icmp_ln168_reg_559_pp0_iter4_reg;
        icmp_ln178_reg_579_pp0_iter2_reg <= icmp_ln178_reg_579_pp0_iter1_reg;
        icmp_ln178_reg_579_pp0_iter3_reg <= icmp_ln178_reg_579_pp0_iter2_reg;
        icmp_ln178_reg_579_pp0_iter4_reg <= icmp_ln178_reg_579_pp0_iter3_reg;
        icmp_ln178_reg_579_pp0_iter5_reg <= icmp_ln178_reg_579_pp0_iter4_reg;
        icmp_ln178_reg_579_pp0_iter6_reg <= icmp_ln178_reg_579_pp0_iter5_reg;
        tmp_2_reg_573_pp0_iter2_reg <= tmp_2_reg_573_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_reg_559_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln176_9_reg_653 <= add_ln176_9_fu_403_p2;
        mul_ln176_2_reg_648 <= grp_fu_344_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bound_reg_508 <= grp_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_read_reg_487 <= height_dout;
        width_read_reg_492 <= width_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        hwin_1_1_i_fu_76 <= hwin_1_fu_80;
        hwin_1_fu_80 <= hwin_2_fu_84;
        hwin_2_fu_84 <= hwin_3_fu_88;
        hwin_3_fu_88 <= hwin_4_fu_92;
        hwin_4_fu_92 <= hwin_5_fu_96;
        hwin_5_fu_96 <= hwin_6_fu_100;
        hwin_6_fu_100 <= hwin_7_fu_104;
        hwin_7_fu_104 <= hwin_8_fu_108;
        hwin_8_fu_108 <= hwin_9_fu_112;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        hwin_1_1_i_load_reg_513 <= hwin_1_1_i_fu_76;
        hwin_1_1_i_load_reg_513_pp0_iter1_reg <= hwin_1_1_i_load_reg_513;
        hwin_3_load_reg_529 <= hwin_3_fu_88;
        hwin_3_load_reg_529_pp0_iter1_reg <= hwin_3_load_reg_529;
        hwin_6_load_reg_544 <= hwin_6_fu_100;
        hwin_7_load_reg_549 <= hwin_7_fu_104;
        icmp_ln168_reg_559 <= icmp_ln168_fu_214_p2;
        icmp_ln168_reg_559_pp0_iter1_reg <= icmp_ln168_reg_559;
        icmp_ln178_reg_579_pp0_iter1_reg <= icmp_ln178_reg_579;
        tmp_2_reg_573_pp0_iter1_reg <= tmp_2_reg_573;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        hwin_9_fu_112 <= src_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_214_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln178_reg_579 <= icmp_ln178_fu_317_p2;
        tmp_2_reg_573 <= src_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_reg_559_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul_ln176_1_reg_593 <= grp_fu_287_p2;
        mul_ln176_3_reg_598 <= grp_fu_293_p2;
        mul_ln176_4_reg_603 <= grp_fu_299_p2;
        mul_ln176_7_reg_608 <= grp_fu_305_p2;
        mul_ln176_8_reg_613 <= grp_fu_311_p2;
        mul_ln176_reg_588 <= grp_fu_281_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((src_V_0_load_A == 1'b1)) begin
        src_V_0_payload_A <= src_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((src_V_0_load_B == 1'b1)) begin
        src_V_0_payload_B <= src_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln168_reg_559_pp0_iter5_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_663 <= tmp_fu_421_p2;
    end
end

always @ (*) begin
    if ((icmp_ln168_fu_214_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state5 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_281_ce = 1'b1;
    end else begin
        grp_fu_281_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_287_ce = 1'b1;
    end else begin
        grp_fu_287_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_293_ce = 1'b1;
    end else begin
        grp_fu_293_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_299_ce = 1'b1;
    end else begin
        grp_fu_299_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_305_ce = 1'b1;
    end else begin
        grp_fu_305_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_311_ce = 1'b1;
    end else begin
        grp_fu_311_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_334_ce = 1'b1;
    end else begin
        grp_fu_334_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_339_ce = 1'b1;
    end else begin
        grp_fu_339_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_344_ce = 1'b1;
    end else begin
        grp_fu_344_ce = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln178_reg_579_pp0_iter6_reg == 1'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        hconv_V_blk_n = hconv_V_full_n;
    end else begin
        hconv_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln178_reg_579_pp0_iter6_reg == 1'd1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        hconv_V_write = 1'b1;
    end else begin
        hconv_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_blk_n = height_empty_n;
    end else begin
        height_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_read = 1'b1;
    end else begin
        height_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((icmp_ln168_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        src_V_0_ack_out = 1'b1;
    end else begin
        src_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((src_V_0_sel == 1'b1)) begin
        src_V_0_data_out = src_V_0_payload_B;
    end else begin
        src_V_0_data_out = src_V_0_payload_A;
    end
end

always @ (*) begin
    if (((icmp_ln168_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        src_V_TDATA_blk_n = src_V_0_state[1'd0];
    end else begin
        src_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_blk_n = width_empty_n;
    end else begin
        width_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_read = 1'b1;
    end else begin
        width_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln168_fu_214_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter6 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter6 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1)) | ((icmp_ln168_fu_214_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln168_fu_219_p2 = (indvar_flatten_reg_141 + 64'd1);

assign add_ln176_10_fu_412_p2 = (add_ln176_9_reg_653 + add_ln176_6_fu_408_p2);

assign add_ln176_1_fu_375_p2 = (add_ln176_fu_369_p2 + shl_ln176_3_fu_364_p2);

assign add_ln176_2_fu_381_p2 = (mul_ln176_reg_588 + mul_ln176_1_reg_593);

assign add_ln176_3_fu_385_p2 = (add_ln176_2_fu_381_p2 + shl_ln176_1_fu_354_p2);

assign add_ln176_4_fu_417_p2 = (add_ln176_3_reg_633_pp0_iter5_reg + add_ln176_1_reg_628_pp0_iter5_reg);

assign add_ln176_5_fu_391_p2 = (mul_ln176_3_reg_598 + mul_ln176_4_reg_603);

assign add_ln176_6_fu_408_p2 = (add_ln176_5_reg_638_pp0_iter4_reg + mul_ln176_2_reg_648);

assign add_ln176_7_fu_399_p2 = (mul_ln176_5_reg_618 + mul_ln176_6_reg_623);

assign add_ln176_8_fu_395_p2 = (mul_ln176_7_reg_608 + mul_ln176_8_reg_613);

assign add_ln176_9_fu_403_p2 = (add_ln176_8_reg_643 + add_ln176_7_fu_399_p2);

assign add_ln176_fu_369_p2 = (shl_ln176_2_fu_359_p2 + shl_ln176_fu_349_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln178_reg_579_pp0_iter6_reg == 1'd1) & (hconv_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)) | ((icmp_ln168_fu_214_p2 == 1'd0) & (src_V_0_vld_out == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln178_reg_579_pp0_iter6_reg == 1'd1) & (hconv_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)) | ((icmp_ln168_fu_214_p2 == 1'd0) & (src_V_0_vld_out == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln178_reg_579_pp0_iter6_reg == 1'd1) & (hconv_V_full_n == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b1)) | ((icmp_ln168_fu_214_p2 == 1'd0) & (src_V_0_vld_out == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((width_empty_n == 1'b0) | (height_empty_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state12_pp0_stage0_iter7 = ((icmp_ln178_reg_579_pp0_iter6_reg == 1'd1) & (hconv_V_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter0 = ((icmp_ln168_fu_214_p2 == 1'd0) & (src_V_0_vld_out == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign grp_fu_169_p0 = grp_fu_169_p00;

assign grp_fu_169_p00 = width_read_reg_492;

assign grp_fu_169_p1 = grp_fu_169_p10;

assign grp_fu_169_p10 = height_read_reg_487;

assign grp_fu_281_p0 = 32'd111;

assign grp_fu_287_p0 = 32'd266;

assign grp_fu_293_p0 = 32'd724;

assign grp_fu_299_p0 = 32'd821;

assign grp_fu_305_p0 = 32'd266;

assign grp_fu_311_p0 = 32'd111;

assign grp_fu_334_p0 = 32'd724;

assign grp_fu_339_p0 = 32'd498;

assign grp_fu_344_p0 = 32'd498;

assign hconv_V_din = tmp_reg_663;

assign icmp_ln168_fu_214_p2 = ((indvar_flatten_reg_141 == bound_reg_508) ? 1'b1 : 1'b0);

assign icmp_ln169_fu_209_p2 = (($signed(zext_ln169_fu_205_p1) < $signed(width_read_reg_492)) ? 1'b1 : 1'b0);

assign icmp_ln178_fu_317_p2 = ((select_ln169_fu_273_p3 > 11'd9) ? 1'b1 : 1'b0);

assign row_fu_328_p2 = (select_ln169_fu_273_p3 + 11'd1);

assign select_ln169_fu_273_p3 = ((icmp_ln169_fu_209_p2[0:0] === 1'b1) ? row_0_i_i_reg_152 : 11'd0);

assign shl_ln176_1_fu_354_p2 = hwin_1_1_i_load_reg_513_pp0_iter2_reg << 32'd2;

assign shl_ln176_2_fu_359_p2 = tmp_2_reg_573_pp0_iter2_reg << 32'd5;

assign shl_ln176_3_fu_364_p2 = tmp_2_reg_573_pp0_iter2_reg << 32'd2;

assign shl_ln176_fu_349_p2 = hwin_1_1_i_load_reg_513_pp0_iter2_reg << 32'd5;

assign src_V_0_ack_in = src_V_0_state[1'd1];

assign src_V_0_load_A = (src_V_0_state_cmp_full & ~src_V_0_sel_wr);

assign src_V_0_load_B = (src_V_0_state_cmp_full & src_V_0_sel_wr);

assign src_V_0_sel = src_V_0_sel_rd;

assign src_V_0_state_cmp_full = ((src_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign src_V_0_vld_in = src_V_TVALID;

assign src_V_0_vld_out = src_V_0_state[1'd0];

assign src_V_TREADY = src_V_0_state[1'd1];

assign start_out = real_start;

assign tmp_fu_421_p2 = (add_ln176_10_reg_658 + add_ln176_4_fu_417_p2);

assign zext_ln169_fu_205_p1 = row_0_i_i_reg_152;

always @ (posedge ap_clk) begin
    add_ln176_1_reg_628[1:0] <= 2'b00;
    add_ln176_1_reg_628_pp0_iter4_reg[1:0] <= 2'b00;
    add_ln176_1_reg_628_pp0_iter5_reg[1:0] <= 2'b00;
end

endmodule //Loop_HConvH_proc6
