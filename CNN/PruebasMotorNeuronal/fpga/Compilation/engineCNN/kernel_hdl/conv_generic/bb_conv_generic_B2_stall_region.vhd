-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from bb_conv_generic_B2_stall_region
-- VHDL created on Thu Apr 16 12:21:59 2026


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity bb_conv_generic_B2_stall_region is
    port (
        out_intel_reserved_ffwd_17_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_18_0 : out std_logic_vector(32 downto 0);  -- ufix33
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_16_0 : out std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B2_stall_region;

architecture normal of bb_conv_generic_B2_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_ffwd_src_unnamed_conv_generic33_conv_generic241 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_16_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_16_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_conv_generic34_conv_generic243 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_17_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_17_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_conv_generic35_conv_generic245 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_18_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_18_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_in_c_sync_buffer125_conv_generic232 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_in_c_sync_buffer126_conv_generic228 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_mul17_add62_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_conv_generic237_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_conv_generic238_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_conv_generic240_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic239_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp2731_not_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp2731_not_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp2731_not_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp2731_not_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic33_conv_generic_out_intel_reserved_ffwd_16_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_conv_generic33_conv_generic_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic33_conv_generic_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic34_conv_generic_out_intel_reserved_ffwd_17_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic34_conv_generic_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic34_conv_generic_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic35_conv_generic_out_intel_reserved_ffwd_18_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_src_unnamed_conv_generic35_conv_generic_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic35_conv_generic_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul17_add62_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul17_add62_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul17_add62_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul17_add62_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_in_c_sync_buffer125_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer125_conv_generic_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_in_c_sync_buffer125_conv_generic_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_in_c_sync_buffer126_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer126_conv_generic_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_in_c_sync_buffer126_conv_generic_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic230_vt_const_2_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_unnamed_conv_generic230_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic230_vt_select_31_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_unnamed_conv_generic237_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic237_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic237_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic237_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic238_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic238_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic238_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic238_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic239_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic239_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic240_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_conv_generic240_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_conv_generic240_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_conv_generic240_q : STD_LOGIC_VECTOR (33 downto 0);
    signal leftShiftStage0Idx1Pad2_uid73_i_unnamed_conv_generic231_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x_in : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal leftShiftStage0Idx1_uid75_i_unnamed_conv_generic231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage1Idx1_uid80_i_unnamed_conv_generic231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist0_i_unnamed_conv_generic239_vt_select_31_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_in_c_sync_buffer125_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_in_c_sync_buffer125_conv_generic_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_syncbuf_in_c_sync_buffer126_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_syncbuf_in_c_sync_buffer126_conv_generic_b : STD_LOGIC_VECTOR (31 downto 0);
    signal SE_i_cmp2731_not_conv_generic_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_i_cmp2731_not_conv_generic_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- c_i33_1gr(CONSTANT,36)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- dupName_0_c_i32_1gr_x(CONSTANT,6)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x(BITSELECT,78)@0
    leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x_in <= leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q(30 downto 0);
    leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x_b <= leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x_in(30 downto 0);

    -- leftShiftStage1Idx1_uid80_i_unnamed_conv_generic231_shift_x(BITJOIN,79)@0
    leftShiftStage1Idx1_uid80_i_unnamed_conv_generic231_shift_x_q <= leftShiftStage1Idx1Rng1_uid79_i_unnamed_conv_generic231_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x(BITSELECT,73)@0
    leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x_in <= bubble_select_i_syncbuf_in_c_sync_buffer126_conv_generic_b(29 downto 0);
    leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x_b <= leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x_in(29 downto 0);

    -- leftShiftStage0Idx1Pad2_uid73_i_unnamed_conv_generic231_shift_x(CONSTANT,72)
    leftShiftStage0Idx1Pad2_uid73_i_unnamed_conv_generic231_shift_x_q <= "00";

    -- leftShiftStage0Idx1_uid75_i_unnamed_conv_generic231_shift_x(BITJOIN,74)@0
    leftShiftStage0Idx1_uid75_i_unnamed_conv_generic231_shift_x_q <= leftShiftStage0Idx1Rng2_uid74_i_unnamed_conv_generic231_shift_x_b & leftShiftStage0Idx1Pad2_uid73_i_unnamed_conv_generic231_shift_x_q;

    -- i_syncbuf_in_c_sync_buffer125_conv_generic(BLACKBOX,44)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_in_c_sync_buffer125_conv_generic : i_syncbuf_in_c_sync_buffer125_conv_generic232
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_buffer_out => i_syncbuf_in_c_sync_buffer125_conv_generic_out_buffer_out,
        out_stall_out => i_syncbuf_in_c_sync_buffer125_conv_generic_out_stall_out,
        out_valid_out => i_syncbuf_in_c_sync_buffer125_conv_generic_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,143)
    SE_stall_entry_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_stall_entry_fromReg0 <= (others => '0');
            SE_stall_entry_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            -- Succesor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_stall_entry_consumed0 <= (not (i_syncbuf_in_c_sync_buffer125_conv_generic_out_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg0;
    SE_stall_entry_consumed1 <= (not (i_syncbuf_in_c_sync_buffer126_conv_generic_out_stall_out) and SE_stall_entry_wireValid) or SE_stall_entry_fromReg1;
    -- Consuming
    SE_stall_entry_StallValid <= SE_stall_entry_backStall and SE_stall_entry_wireValid;
    SE_stall_entry_toReg0 <= SE_stall_entry_StallValid and SE_stall_entry_consumed0;
    SE_stall_entry_toReg1 <= SE_stall_entry_StallValid and SE_stall_entry_consumed1;
    -- Backward Stall generation
    SE_stall_entry_or0 <= SE_stall_entry_consumed0;
    SE_stall_entry_wireStall <= not (SE_stall_entry_consumed1 and SE_stall_entry_or0);
    SE_stall_entry_backStall <= SE_stall_entry_wireStall;
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg0);
    SE_stall_entry_V1 <= SE_stall_entry_wireValid and not (SE_stall_entry_fromReg1);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic(STALLENABLE,135)
    -- Valid signal propagation
    SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_V0 <= SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_backStall <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backStall or not (SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_and0 <= i_syncbuf_in_c_sync_buffer126_conv_generic_out_valid_out;
    SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_wireValid <= i_syncbuf_in_c_sync_buffer125_conv_generic_out_valid_out and SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_and0;

    -- i_syncbuf_in_c_sync_buffer126_conv_generic(BLACKBOX,45)@0
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_in_c_sync_buffer126_conv_generic : i_syncbuf_in_c_sync_buffer126_conv_generic228
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_backStall,
        in_valid_in => SE_stall_entry_V1,
        out_buffer_out => i_syncbuf_in_c_sync_buffer126_conv_generic_out_buffer_out,
        out_stall_out => i_syncbuf_in_c_sync_buffer126_conv_generic_out_stall_out,
        out_valid_out => i_syncbuf_in_c_sync_buffer126_conv_generic_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_syncbuf_in_c_sync_buffer126_conv_generic(BITJOIN,115)
    bubble_join_i_syncbuf_in_c_sync_buffer126_conv_generic_q <= i_syncbuf_in_c_sync_buffer126_conv_generic_out_buffer_out;

    -- bubble_select_i_syncbuf_in_c_sync_buffer126_conv_generic(BITSELECT,116)
    bubble_select_i_syncbuf_in_c_sync_buffer126_conv_generic_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_in_c_sync_buffer126_conv_generic_q(31 downto 0));

    -- leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x(MUX,76)@0
    leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_s <= VCC_q;
    leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_combproc: PROCESS (leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_s, bubble_select_i_syncbuf_in_c_sync_buffer126_conv_generic_b, leftShiftStage0Idx1_uid75_i_unnamed_conv_generic231_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q <= bubble_select_i_syncbuf_in_c_sync_buffer126_conv_generic_b;
            WHEN "1" => leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q <= leftShiftStage0Idx1_uid75_i_unnamed_conv_generic231_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x(MUX,81)@0
    leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_s <= VCC_q;
    leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_combproc: PROCESS (leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_s, leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q, leftShiftStage1Idx1_uid80_i_unnamed_conv_generic231_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_q <= leftShiftStage0_uid77_i_unnamed_conv_generic231_shift_x_q;
            WHEN "1" => leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_q <= leftShiftStage1Idx1_uid80_i_unnamed_conv_generic231_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_unnamed_conv_generic230_vt_select_31(BITSELECT,48)@0
    i_unnamed_conv_generic230_vt_select_31_b <= leftShiftStage1_uid82_i_unnamed_conv_generic231_shift_x_q(31 downto 3);

    -- i_unnamed_conv_generic230_vt_const_2(CONSTANT,46)
    i_unnamed_conv_generic230_vt_const_2_q <= "000";

    -- i_unnamed_conv_generic230_vt_join(BITJOIN,47)@0
    i_unnamed_conv_generic230_vt_join_q <= i_unnamed_conv_generic230_vt_select_31_b & i_unnamed_conv_generic230_vt_const_2_q;

    -- bubble_join_i_syncbuf_in_c_sync_buffer125_conv_generic(BITJOIN,112)
    bubble_join_i_syncbuf_in_c_sync_buffer125_conv_generic_q <= i_syncbuf_in_c_sync_buffer125_conv_generic_out_buffer_out;

    -- bubble_select_i_syncbuf_in_c_sync_buffer125_conv_generic(BITSELECT,113)
    bubble_select_i_syncbuf_in_c_sync_buffer125_conv_generic_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_in_c_sync_buffer125_conv_generic_q(31 downto 0));

    -- i_unnamed_conv_generic237(ADD,52)@0
    i_unnamed_conv_generic237_a <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_in_c_sync_buffer125_conv_generic_b);
    i_unnamed_conv_generic237_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv_generic230_vt_join_q);
    i_unnamed_conv_generic237_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_conv_generic237_a) + UNSIGNED(i_unnamed_conv_generic237_b));
    i_unnamed_conv_generic237_q <= i_unnamed_conv_generic237_o(32 downto 0);

    -- bgTrunc_i_unnamed_conv_generic237_sel_x(BITSELECT,3)@0
    bgTrunc_i_unnamed_conv_generic237_sel_x_b <= i_unnamed_conv_generic237_q(31 downto 0);

    -- redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0(REG,106)
    redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN = "1") THEN
                redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_unnamed_conv_generic237_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_conv_generic238(ADD,53)@1
    i_unnamed_conv_generic238_a <= STD_LOGIC_VECTOR("0" & redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_q);
    i_unnamed_conv_generic238_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_unnamed_conv_generic238_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_conv_generic238_a) + UNSIGNED(i_unnamed_conv_generic238_b));
    i_unnamed_conv_generic238_q <= i_unnamed_conv_generic238_o(32 downto 0);

    -- bgTrunc_i_unnamed_conv_generic238_sel_x(BITSELECT,4)@1
    bgTrunc_i_unnamed_conv_generic238_sel_x_b <= i_unnamed_conv_generic238_q(31 downto 0);

    -- i_unnamed_conv_generic239_sel_x(BITSELECT,27)@1
    i_unnamed_conv_generic239_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_unnamed_conv_generic238_sel_x_b(31 downto 0)), 33));

    -- i_unnamed_conv_generic239_vt_select_31(BITSELECT,57)@1
    i_unnamed_conv_generic239_vt_select_31_b <= i_unnamed_conv_generic239_sel_x_b(31 downto 0);

    -- redist0_i_unnamed_conv_generic239_vt_select_31_b_1_0(REG,105)
    redist0_i_unnamed_conv_generic239_vt_select_31_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_unnamed_conv_generic239_vt_select_31_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp2731_not_conv_generic_backEN = "1") THEN
                redist0_i_unnamed_conv_generic239_vt_select_31_b_1_0_q <= STD_LOGIC_VECTOR(i_unnamed_conv_generic239_vt_select_31_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_unnamed_conv_generic239_vt_join(BITJOIN,56)@2
    i_unnamed_conv_generic239_vt_join_q <= GND_q & redist0_i_unnamed_conv_generic239_vt_select_31_b_1_0_q;

    -- i_unnamed_conv_generic240(ADD,58)@2
    i_unnamed_conv_generic240_a <= STD_LOGIC_VECTOR("0" & i_unnamed_conv_generic239_vt_join_q);
    i_unnamed_conv_generic240_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_unnamed_conv_generic240_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_conv_generic240_a) + UNSIGNED(i_unnamed_conv_generic240_b));
    i_unnamed_conv_generic240_q <= i_unnamed_conv_generic240_o(33 downto 0);

    -- bgTrunc_i_unnamed_conv_generic240_sel_x(BITSELECT,5)@2
    bgTrunc_i_unnamed_conv_generic240_sel_x_b <= i_unnamed_conv_generic240_q(32 downto 0);

    -- i_ffwd_src_unnamed_conv_generic35_conv_generic(BLACKBOX,42)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_18_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_conv_generic35_conv_generic : i_ffwd_src_unnamed_conv_generic35_conv_generic245
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_18_0 => bgTrunc_i_unnamed_conv_generic240_sel_x_b,
        in_stall_in => SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_backStall,
        in_valid_in => SE_i_cmp2731_not_conv_generic_V1,
        out_intel_reserved_ffwd_18_0 => i_ffwd_src_unnamed_conv_generic35_conv_generic_out_intel_reserved_ffwd_18_0,
        out_stall_out => i_ffwd_src_unnamed_conv_generic35_conv_generic_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_conv_generic35_conv_generic_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg(STALLENABLE,172)
    -- Valid signal propagation
    bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_V0 <= bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0;
    -- Stall signal propagation
    bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_s_tv_0 <= SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_backStall and bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0;
    -- Backward Enable generation
    bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backEN <= not (bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_v_s_0 <= bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backEN and SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_V0;
    -- Backward Stall generation
    bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backStall <= not (bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_v_s_0);
    bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backEN = "0") THEN
                bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0 and bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_s_tv_0;
            ELSE
                bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_R_v_0 <= bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic(STALLENABLE,126)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_V0 <= SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_backStall <= bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_backStall or not (SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_wireValid <= i_ffwd_src_unnamed_conv_generic33_conv_generic_out_valid_out;

    -- i_mul17_add62_conv_generic(ADD,43)@0
    i_mul17_add62_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_unnamed_conv_generic230_vt_join_q);
    i_mul17_add62_conv_generic_b <= STD_LOGIC_VECTOR("0" & bubble_select_i_syncbuf_in_c_sync_buffer125_conv_generic_b);
    i_mul17_add62_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_mul17_add62_conv_generic_a) + UNSIGNED(i_mul17_add62_conv_generic_b));
    i_mul17_add62_conv_generic_q <= i_mul17_add62_conv_generic_o(32 downto 0);

    -- bgTrunc_i_mul17_add62_conv_generic_sel_x(BITSELECT,2)@0
    bgTrunc_i_mul17_add62_conv_generic_sel_x_b <= i_mul17_add62_conv_generic_q(31 downto 0);

    -- redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0(REG,107)
    redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN = "1") THEN
                redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_q <= STD_LOGIC_VECTOR(bgTrunc_i_mul17_add62_conv_generic_sel_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- i_ffwd_src_unnamed_conv_generic33_conv_generic(BLACKBOX,40)@1
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_16_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_conv_generic33_conv_generic : i_ffwd_src_unnamed_conv_generic33_conv_generic241
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_16_0 => redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_q,
        in_stall_in => SE_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_backStall,
        in_valid_in => SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_V1,
        out_intel_reserved_ffwd_16_0 => i_ffwd_src_unnamed_conv_generic33_conv_generic_out_intel_reserved_ffwd_16_0,
        out_stall_out => i_ffwd_src_unnamed_conv_generic33_conv_generic_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_conv_generic33_conv_generic_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0(STALLENABLE,152)
    -- Valid signal propagation
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_V0 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0;
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_V1 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1;
    -- Stall signal propagation
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_0 <= SE_i_cmp2731_not_conv_generic_backStall and SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0;
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_1 <= i_ffwd_src_unnamed_conv_generic33_conv_generic_out_stall_out and SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1;
    -- Backward Enable generation
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_or0 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_0;
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN <= not (SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_1 or SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_or0);
    -- Determine whether to write valid data into the first register stage
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_v_s_0 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN and SE_out_i_syncbuf_in_c_sync_buffer126_conv_generic_V0;
    -- Backward Stall generation
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backStall <= not (SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_v_s_0);
    SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0 <= (others => '0');
            SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN = "0") THEN
                SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0 and SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_0;
            ELSE
                SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_0 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_v_s_0;
            END IF;

            IF (SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_backEN = "0") THEN
                SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1 and SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_s_tv_1;
            ELSE
                SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_R_v_1 <= SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_i_cmp2731_not_conv_generic(STALLENABLE,124)
    -- Valid signal propagation
    SE_i_cmp2731_not_conv_generic_V0 <= SE_i_cmp2731_not_conv_generic_R_v_0;
    SE_i_cmp2731_not_conv_generic_V1 <= SE_i_cmp2731_not_conv_generic_R_v_1;
    -- Stall signal propagation
    SE_i_cmp2731_not_conv_generic_s_tv_0 <= i_ffwd_src_unnamed_conv_generic34_conv_generic_out_stall_out and SE_i_cmp2731_not_conv_generic_R_v_0;
    SE_i_cmp2731_not_conv_generic_s_tv_1 <= i_ffwd_src_unnamed_conv_generic35_conv_generic_out_stall_out and SE_i_cmp2731_not_conv_generic_R_v_1;
    -- Backward Enable generation
    SE_i_cmp2731_not_conv_generic_or0 <= SE_i_cmp2731_not_conv_generic_s_tv_0;
    SE_i_cmp2731_not_conv_generic_backEN <= not (SE_i_cmp2731_not_conv_generic_s_tv_1 or SE_i_cmp2731_not_conv_generic_or0);
    -- Determine whether to write valid data into the first register stage
    SE_i_cmp2731_not_conv_generic_v_s_0 <= SE_i_cmp2731_not_conv_generic_backEN and SE_redist1_bgTrunc_i_unnamed_conv_generic237_sel_x_b_1_0_V0;
    -- Backward Stall generation
    SE_i_cmp2731_not_conv_generic_backStall <= not (SE_i_cmp2731_not_conv_generic_v_s_0);
    SE_i_cmp2731_not_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_i_cmp2731_not_conv_generic_R_v_0 <= (others => '0');
            SE_i_cmp2731_not_conv_generic_R_v_1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp2731_not_conv_generic_backEN = "0") THEN
                SE_i_cmp2731_not_conv_generic_R_v_0 <= SE_i_cmp2731_not_conv_generic_R_v_0 and SE_i_cmp2731_not_conv_generic_s_tv_0;
            ELSE
                SE_i_cmp2731_not_conv_generic_R_v_0 <= SE_i_cmp2731_not_conv_generic_v_s_0;
            END IF;

            IF (SE_i_cmp2731_not_conv_generic_backEN = "0") THEN
                SE_i_cmp2731_not_conv_generic_R_v_1 <= SE_i_cmp2731_not_conv_generic_R_v_1 and SE_i_cmp2731_not_conv_generic_s_tv_1;
            ELSE
                SE_i_cmp2731_not_conv_generic_R_v_1 <= SE_i_cmp2731_not_conv_generic_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic(STALLENABLE,130)
    -- Valid signal propagation
    SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_V0 <= SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_backStall <= in_stall_in or not (SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_and0 <= i_ffwd_src_unnamed_conv_generic35_conv_generic_out_valid_out;
    SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_and1 <= i_ffwd_src_unnamed_conv_generic34_conv_generic_out_valid_out and SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_and0;
    SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_wireValid <= bubble_out_i_ffwd_src_unnamed_conv_generic33_conv_generic_1_reg_V0 and SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_and1;

    -- c_i32_1gr(CONSTANT,34)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_cmp2731_not_conv_generic(COMPARE,39)@1 + 1
    i_cmp2731_not_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_q(31)) & redist2_bgTrunc_i_mul17_add62_conv_generic_sel_x_b_1_0_q));
    i_cmp2731_not_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp2731_not_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp2731_not_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_i_cmp2731_not_conv_generic_backEN = "1") THEN
                i_cmp2731_not_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp2731_not_conv_generic_a) - SIGNED(i_cmp2731_not_conv_generic_b));
            END IF;
        END IF;
    END PROCESS;
    i_cmp2731_not_conv_generic_c(0) <= i_cmp2731_not_conv_generic_o(33);

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_ffwd_src_unnamed_conv_generic34_conv_generic(BLACKBOX,41)@2
    -- in in_stall_in@20000000
    -- out out_intel_reserved_ffwd_17_0@20000000
    -- out out_stall_out@20000000
    thei_ffwd_src_unnamed_conv_generic34_conv_generic : i_ffwd_src_unnamed_conv_generic34_conv_generic243
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_17_0 => i_cmp2731_not_conv_generic_c,
        in_stall_in => SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_backStall,
        in_valid_in => SE_i_cmp2731_not_conv_generic_V0,
        out_intel_reserved_ffwd_17_0 => i_ffwd_src_unnamed_conv_generic34_conv_generic_out_intel_reserved_ffwd_17_0,
        out_stall_out => i_ffwd_src_unnamed_conv_generic34_conv_generic_out_stall_out,
        out_valid_out => i_ffwd_src_unnamed_conv_generic34_conv_generic_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_regfree_osync_x(GPOUT,9)
    out_intel_reserved_ffwd_17_0 <= i_ffwd_src_unnamed_conv_generic34_conv_generic_out_intel_reserved_ffwd_17_0;

    -- dupName_0_sync_out_x(GPOUT,11)@2
    out_valid_out <= SE_out_i_ffwd_src_unnamed_conv_generic35_conv_generic_V0;

    -- dupName_1_regfree_osync_x(GPOUT,14)
    out_intel_reserved_ffwd_18_0 <= i_ffwd_src_unnamed_conv_generic35_conv_generic_out_intel_reserved_ffwd_18_0;

    -- regfree_osync(GPOUT,63)
    out_intel_reserved_ffwd_16_0 <= i_ffwd_src_unnamed_conv_generic33_conv_generic_out_intel_reserved_ffwd_16_0;

    -- sync_out(GPOUT,68)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
