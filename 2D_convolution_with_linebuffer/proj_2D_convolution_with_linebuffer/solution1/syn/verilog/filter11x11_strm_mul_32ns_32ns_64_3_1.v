// ==============================================================
// File generated on Fri Feb 22 08:55:08 IST 2019
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.0 (64-bit)
// SW Build 2455171 on Wed Feb 20 03:30:41 MST 2019
// IP Build 2455320 on Wed Feb 20 06:02:17 MST 2019
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module filter11x11_strm_mul_32ns_32ns_64_3_1_MulnS_0(clk, ce, a, b, p);
input clk;
input ce;
input[32 - 1 : 0] a; 
input[32 - 1 : 0] b; 
output[64 - 1 : 0] p;

reg [32 - 1 : 0] a_reg0;
reg [32 - 1 : 0] b_reg0;
wire [64 - 1 : 0] tmp_product;
reg [64 - 1 : 0] buff0;

assign p = buff0;
assign tmp_product = a_reg0 * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
    end
end
endmodule
`timescale 1 ns / 1 ps
module filter11x11_strm_mul_32ns_32ns_64_3_1(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



filter11x11_strm_mul_32ns_32ns_64_3_1_MulnS_0 filter11x11_strm_mul_32ns_32ns_64_3_1_MulnS_0_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

