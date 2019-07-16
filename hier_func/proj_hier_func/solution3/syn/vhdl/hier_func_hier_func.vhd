-- ==============================================================
-- RTL generated by Scout HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.0
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hier_func_hier_func is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A : IN STD_LOGIC_VECTOR (31 downto 0);
    B : IN STD_LOGIC_VECTOR (31 downto 0);
    C : OUT STD_LOGIC_VECTOR (31 downto 0);
    C_ap_vld : OUT STD_LOGIC;
    D : OUT STD_LOGIC_VECTOR (31 downto 0);
    D_ap_vld : OUT STD_LOGIC );
end;


architecture behav of hier_func_hier_func is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "hier_func_hier_func,hls_ip_2019_2_0,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7k160t-fbg484-1,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.785000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=78,HLS_VERSION=2019_2_0}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal add_ln50_fu_62_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln_fu_74_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal sub_ln51_fu_68_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln1_fu_89_p4 : STD_LOGIC_VECTOR (29 downto 0);


begin



        C <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_fu_74_p4),32));


    C_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            C_ap_vld <= ap_const_logic_1;
        else 
            C_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

        D <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln1_fu_89_p4),32));


    D_ap_vld_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_1)) then 
            D_ap_vld <= ap_const_logic_1;
        else 
            D_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    add_ln50_fu_62_p2 <= std_logic_vector(unsigned(A) + unsigned(B));
    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    sub_ln51_fu_68_p2 <= std_logic_vector(unsigned(A) - unsigned(B));
    trunc_ln1_fu_89_p4 <= sub_ln51_fu_68_p2(31 downto 2);
    trunc_ln_fu_74_p4 <= add_ln50_fu_62_p2(31 downto 1);
end behav;
