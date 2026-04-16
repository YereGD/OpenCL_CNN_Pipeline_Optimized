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

-- VHDL created from i_sfc_logic_c0_entry_mem_write_generic_c0_enter_mem_write_generic6
-- VHDL created on Thu Apr 16 12:22:01 2026


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

entity i_sfc_logic_c0_entry_mem_write_generic_c0_enter_mem_write_generic6 is
    port (
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_intel_reserved_ffwd_7_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic8_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_entry_mem_write_generic_c0_enter_mem_write_generic6;

architecture normal of i_sfc_logic_c0_entry_mem_write_generic_c0_enter_mem_write_generic6 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_ffwd_src_unnamed_mem_write_generic1_mem_write_generic30 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_mem_write_generic2_mem_write_generic32 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_mem_write_generic3_mem_write_generic34 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_mem_write_generic4_mem_write_generic36 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_mem_write_generic5_mem_write_generic38 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_mem_write_generic6_mem_write_generic40 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_mem_write_generic7_mem_write_generic42 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_7_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer_mem_write_generic11 is
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


    component i_syncbuf_out_c_sync_buffer2_mem_write_generic22 is
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


    component i_syncbuf_pad_sync_buffer_mem_write_generic8 is
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


    component i_syncbuf_stride_sync_buffer_mem_write_generic15 is
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


    component i_syncbuf_w_sync_buffer_mem_write_generic13 is
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
    signal bgTrunc_i_add11_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add4_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_mem_write_generic24_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_mem_write_generic27_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_unnamed_mem_write_generic29_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cond10_mem_write_generic_mem_write_generic19_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_write_generic26_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_mem_write_generic28_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_came_from_for_cond14_preheader_select_mem_write_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_came_from_for_cond14_preheader_select_mem_write_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cmp136_mem_write_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp136_mem_write_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp136_mem_write_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp136_mem_write_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp153_mem_write_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp153_mem_write_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp153_mem_write_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp153_mem_write_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic1_mem_write_generic_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic2_mem_write_generic_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic3_mem_write_generic_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic4_mem_write_generic_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic5_mem_write_generic_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic6_mem_write_generic_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_src_unnamed_mem_write_generic7_mem_write_generic_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_mem_write_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_mem_write_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_mem_write_generic_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_mem_write_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_mem_write_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_out_c_sync_buffer2_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_write_generic25_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_write_generic25_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_write_generic26_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_mem_write_generic26_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_write_generic27_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic27_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic27_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic27_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic28_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_mem_write_generic28_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_write_generic29_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic29_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic29_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic29_q : STD_LOGIC_VECTOR (33 downto 0);
    signal xMSB_uid108_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid110_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid111_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid116_i_cond_mem_write_generic_mem_write_generic18_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid118_i_cond_mem_write_generic_mem_write_generic18_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid119_i_cond_mem_write_generic_mem_write_generic18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid128_i_mul_mem_write_generic_mem_write_generic10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_mem_write_generic24_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_unnamed_mem_write_generic24_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_mem_write_generic24_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_mem_write_generic24_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_mem_write_generic24_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_mem_write_generic24_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_mem_write_generic24_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_mem_write_generic24_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_mem_write_generic24_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_unnamed_mem_write_generic24_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_unnamed_mem_write_generic24_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_mem_write_generic24_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_unnamed_mem_write_generic24_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_unnamed_mem_write_generic24_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_unnamed_mem_write_generic24_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_unnamed_mem_write_generic24_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_unnamed_mem_write_generic24_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_unnamed_mem_write_generic24_im0_cma_reset : std_logic;
    type i_unnamed_mem_write_generic24_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_unnamed_mem_write_generic24_im0_cma_a0 : i_unnamed_mem_write_generic24_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_unnamed_mem_write_generic24_im0_cma_a0 : signal is true;
    signal i_unnamed_mem_write_generic24_im0_cma_c0 : i_unnamed_mem_write_generic24_im0_cma_a0type(0 to 0);
    attribute preserve of i_unnamed_mem_write_generic24_im0_cma_c0 : signal is true;
    type i_unnamed_mem_write_generic24_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_unnamed_mem_write_generic24_im0_cma_p : i_unnamed_mem_write_generic24_im0_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im0_cma_u : i_unnamed_mem_write_generic24_im0_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im0_cma_w : i_unnamed_mem_write_generic24_im0_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im0_cma_x : i_unnamed_mem_write_generic24_im0_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im0_cma_y : i_unnamed_mem_write_generic24_im0_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im0_cma_s : i_unnamed_mem_write_generic24_im0_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_unnamed_mem_write_generic24_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_unnamed_mem_write_generic24_im0_cma_ena0 : std_logic;
    signal i_unnamed_mem_write_generic24_im0_cma_ena1 : std_logic;
    signal i_unnamed_mem_write_generic24_im10_cma_reset : std_logic;
    type i_unnamed_mem_write_generic24_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_unnamed_mem_write_generic24_im10_cma_a0 : i_unnamed_mem_write_generic24_im10_cma_a0type(0 to 0);
    attribute preserve of i_unnamed_mem_write_generic24_im10_cma_a0 : signal is true;
    signal i_unnamed_mem_write_generic24_im10_cma_c0 : i_unnamed_mem_write_generic24_im10_cma_a0type(0 to 0);
    attribute preserve of i_unnamed_mem_write_generic24_im10_cma_c0 : signal is true;
    type i_unnamed_mem_write_generic24_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_unnamed_mem_write_generic24_im10_cma_p : i_unnamed_mem_write_generic24_im10_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im10_cma_u : i_unnamed_mem_write_generic24_im10_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im10_cma_w : i_unnamed_mem_write_generic24_im10_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im10_cma_x : i_unnamed_mem_write_generic24_im10_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im10_cma_y : i_unnamed_mem_write_generic24_im10_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im10_cma_s : i_unnamed_mem_write_generic24_im10_cma_ptype(0 to 0);
    signal i_unnamed_mem_write_generic24_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_mem_write_generic24_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_unnamed_mem_write_generic24_im10_cma_ena0 : std_logic;
    signal i_unnamed_mem_write_generic24_im10_cma_ena1 : std_logic;
    signal i_unnamed_mem_write_generic24_ma3_cma_reset : std_logic;
    signal i_unnamed_mem_write_generic24_ma3_cma_a0 : i_unnamed_mem_write_generic24_im10_cma_a0type(0 to 1);
    attribute preserve of i_unnamed_mem_write_generic24_ma3_cma_a0 : signal is true;
    type i_unnamed_mem_write_generic24_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_c0 : i_unnamed_mem_write_generic24_ma3_cma_c0type(0 to 1);
    attribute preserve of i_unnamed_mem_write_generic24_ma3_cma_c0 : signal is true;
    type i_unnamed_mem_write_generic24_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_l : i_unnamed_mem_write_generic24_ma3_cma_ltype(0 to 1);
    type i_unnamed_mem_write_generic24_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_p : i_unnamed_mem_write_generic24_ma3_cma_ptype(0 to 1);
    type i_unnamed_mem_write_generic24_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_u : i_unnamed_mem_write_generic24_ma3_cma_utype(0 to 1);
    signal i_unnamed_mem_write_generic24_ma3_cma_w : i_unnamed_mem_write_generic24_ma3_cma_utype(0 to 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_x : i_unnamed_mem_write_generic24_ma3_cma_utype(0 to 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_y : i_unnamed_mem_write_generic24_ma3_cma_utype(0 to 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_s : i_unnamed_mem_write_generic24_ma3_cma_utype(0 to 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_unnamed_mem_write_generic24_ma3_cma_ena0 : std_logic;
    signal i_unnamed_mem_write_generic24_ma3_cma_ena1 : std_logic;
    signal i_unnamed_mem_write_generic24_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_unnamed_mem_write_generic24_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_unnamed_mem_write_generic24_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_unnamed_mem_write_generic24_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_unnamed_mem_write_generic24_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist3_rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_sync_in_in_i_valid_8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_unnamed_mem_write_generic25_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_bgTrunc_i_unnamed_mem_write_generic24_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_bgTrunc_i_add_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_bgTrunc_i_add4_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_bgTrunc_i_add2_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_in_i_valid_1(DELAY,169)
    redist5_sync_in_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist6_sync_in_in_i_valid_2(DELAY,170)
    redist6_sync_in_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_sync_in_in_i_valid_1_q, xout => redist6_sync_in_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_in_i_valid_3(DELAY,171)
    redist7_sync_in_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_in_i_valid_2_q, xout => redist7_sync_in_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_in_i_valid_4(DELAY,172)
    redist8_sync_in_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_in_i_valid_3_q, xout => redist8_sync_in_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist9_sync_in_in_i_valid_8(DELAY,173)
    redist9_sync_in_in_i_valid_8 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_sync_in_in_i_valid_4_q, xout => redist9_sync_in_in_i_valid_8_q, clk => clock, aclr => resetn );

    -- c_i33_1gr(CONSTANT,57)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- xMSB_uid116_i_cond_mem_write_generic_mem_write_generic18_shift_x(BITSELECT,115)@3
    xMSB_uid116_i_cond_mem_write_generic_mem_write_generic18_shift_x_b <= STD_LOGIC_VECTOR(redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid118_i_cond_mem_write_generic_mem_write_generic18_shift_x(BITSELECT,117)@3
    rightShiftStage0Idx1Rng1_uid118_i_cond_mem_write_generic_mem_write_generic18_shift_x_b <= redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid119_i_cond_mem_write_generic_mem_write_generic18_shift_x(BITJOIN,118)@3
    rightShiftStage0Idx1_uid119_i_cond_mem_write_generic_mem_write_generic18_shift_x_q <= xMSB_uid116_i_cond_mem_write_generic_mem_write_generic18_shift_x_b & rightShiftStage0Idx1Rng1_uid118_i_cond_mem_write_generic_mem_write_generic18_shift_x_b;

    -- leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x(BITSELECT,126)@2
    leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x_in <= i_syncbuf_pad_sync_buffer_mem_write_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x_b <= leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid128_i_mul_mem_write_generic_mem_write_generic10_shift_x(BITJOIN,127)@2
    leftShiftStage0Idx1_uid128_i_mul_mem_write_generic_mem_write_generic10_shift_x_q <= leftShiftStage0Idx1Rng1_uid127_i_mul_mem_write_generic_mem_write_generic10_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer_mem_write_generic(BLACKBOX,84)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_pad_sync_buffer_mem_write_generic : i_syncbuf_pad_sync_buffer_mem_write_generic8
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_pad_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x(MUX,129)@2
    leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_s <= VCC_q;
    leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_combproc: PROCESS (leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_s, i_syncbuf_pad_sync_buffer_mem_write_generic_out_buffer_out, leftShiftStage0Idx1_uid128_i_mul_mem_write_generic_mem_write_generic10_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_q <= i_syncbuf_pad_sync_buffer_mem_write_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_q <= leftShiftStage0Idx1_uid128_i_mul_mem_write_generic_mem_write_generic10_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_mem_write_generic_vt_select_31(BITSELECT,75)@2
    i_mul_mem_write_generic_vt_select_31_b <= leftShiftStage0_uid130_i_mul_mem_write_generic_mem_write_generic10_shift_x_q(31 downto 1);

    -- i_mul_mem_write_generic_vt_join(BITJOIN,74)@2
    i_mul_mem_write_generic_vt_join_q <= i_mul_mem_write_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,56)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer_mem_write_generic(BLACKBOX,82)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer_mem_write_generic : i_syncbuf_h_sync_buffer_mem_write_generic11
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_mem_write_generic(ADD,61)@1
    i_add_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer_mem_write_generic_out_buffer_out);
    i_add_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_mem_write_generic_a) + UNSIGNED(i_add_mem_write_generic_b));
    i_add_mem_write_generic_q <= i_add_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_add_mem_write_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_add_mem_write_generic_sel_x_b <= i_add_mem_write_generic_q(31 downto 0);

    -- redist14_bgTrunc_i_add_mem_write_generic_sel_x_b_1(DELAY,178)
    redist14_bgTrunc_i_add_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add_mem_write_generic_sel_x_b, xout => redist14_bgTrunc_i_add_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub_mem_write_generic(ADD,81)@2
    i_sub_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & redist14_bgTrunc_i_add_mem_write_generic_sel_x_b_1_q);
    i_sub_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_mem_write_generic_vt_join_q);
    i_sub_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_mem_write_generic_a) + UNSIGNED(i_sub_mem_write_generic_b));
    i_sub_mem_write_generic_q <= i_sub_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_sub_mem_write_generic_sel_x(BITSELECT,7)@2
    bgTrunc_i_sub_mem_write_generic_sel_x_b <= i_sub_mem_write_generic_q(31 downto 0);

    -- redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1(DELAY,176)
    redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub_mem_write_generic_sel_x_b, xout => redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_shr_mem_write_generic_vt_const_31(CONSTANT,77)
    i_shr_mem_write_generic_vt_const_31_q <= "0000000000000000000000000000000";

    -- c_i32_2gr(CONSTANT,55)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_syncbuf_stride_sync_buffer_mem_write_generic(BLACKBOX,85)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_stride_sync_buffer_mem_write_generic : i_syncbuf_stride_sync_buffer_mem_write_generic15
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_mem_write_generic(LOGICAL,65)@2
    i_cmp_mem_write_generic_q <= "1" WHEN i_syncbuf_stride_sync_buffer_mem_write_generic_out_buffer_out = c_i32_2gr_q ELSE "0";

    -- i_shr_mem_write_generic_sel_x(BITSELECT,38)@2
    i_shr_mem_write_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp_mem_write_generic_q(0 downto 0)), 32));

    -- i_shr_mem_write_generic_vt_select_0(BITSELECT,79)@2
    i_shr_mem_write_generic_vt_select_0_b <= i_shr_mem_write_generic_sel_x_b(0 downto 0);

    -- i_shr_mem_write_generic_vt_join(BITJOIN,78)@2
    i_shr_mem_write_generic_vt_join_q <= i_shr_mem_write_generic_vt_const_31_q & i_shr_mem_write_generic_vt_select_0_b;

    -- i_cond10_mem_write_generic_mem_write_generic19_shift_narrow_x(BITSELECT,27)@2
    i_cond10_mem_write_generic_mem_write_generic19_shift_narrow_x_b <= i_shr_mem_write_generic_vt_join_q(4 downto 0);

    -- rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x(BITSELECT,111)@2
    rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_in <= i_cond10_mem_write_generic_mem_write_generic19_shift_narrow_x_b(0 downto 0);
    rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b <= rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_in(0 downto 0);

    -- redist4_rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b_1(DELAY,168)
    redist4_rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b, xout => redist4_rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x(MUX,120)@3
    rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_s <= redist4_rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b_1_q;
    rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_combproc: PROCESS (rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_s, redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1_q, rightShiftStage0Idx1_uid119_i_cond_mem_write_generic_mem_write_generic18_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q <= redist12_bgTrunc_i_sub_mem_write_generic_sel_x_b_1_q;
            WHEN "1" => rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q <= rightShiftStage0Idx1_uid119_i_cond_mem_write_generic_mem_write_generic18_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist3_rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q_1(DELAY,167)
    redist3_rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q, xout => redist3_rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_write_generic28_sel_x(BITSELECT,40)@4
    i_unnamed_mem_write_generic28_sel_x_b <= std_logic_vector(resize(unsigned(redist3_rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q_1_q(31 downto 0)), 33));

    -- i_unnamed_mem_write_generic28_vt_select_31(BITSELECT,97)@4
    i_unnamed_mem_write_generic28_vt_select_31_b <= i_unnamed_mem_write_generic28_sel_x_b(31 downto 0);

    -- i_unnamed_mem_write_generic28_vt_join(BITJOIN,96)@4
    i_unnamed_mem_write_generic28_vt_join_q <= GND_q & i_unnamed_mem_write_generic28_vt_select_31_b;

    -- i_unnamed_mem_write_generic29(ADD,98)@4
    i_unnamed_mem_write_generic29_a <= STD_LOGIC_VECTOR("0" & i_unnamed_mem_write_generic28_vt_join_q);
    i_unnamed_mem_write_generic29_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_unnamed_mem_write_generic29_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_mem_write_generic29_a) + UNSIGNED(i_unnamed_mem_write_generic29_b));
    i_unnamed_mem_write_generic29_q <= i_unnamed_mem_write_generic29_o(33 downto 0);

    -- bgTrunc_i_unnamed_mem_write_generic29_sel_x(BITSELECT,10)@4
    bgTrunc_i_unnamed_mem_write_generic29_sel_x_b <= i_unnamed_mem_write_generic29_q(32 downto 0);

    -- i_ffwd_src_unnamed_mem_write_generic7_mem_write_generic(BLACKBOX,72)@4
    -- out out_intel_reserved_ffwd_7_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic7_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic7_mem_write_generic42
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_7_0 => bgTrunc_i_unnamed_mem_write_generic29_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_in_i_valid_3_q,
        out_intel_reserved_ffwd_7_0 => i_ffwd_src_unnamed_mem_write_generic7_mem_write_generic_out_intel_reserved_ffwd_7_0,
        clock => clock,
        resetn => resetn
    );

    -- xMSB_uid108_i_cond10_mem_write_generic_mem_write_generic19_shift_x(BITSELECT,107)@3
    xMSB_uid108_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b <= STD_LOGIC_VECTOR(redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid110_i_cond10_mem_write_generic_mem_write_generic19_shift_x(BITSELECT,109)@3
    rightShiftStage0Idx1Rng1_uid110_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b <= redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid111_i_cond10_mem_write_generic_mem_write_generic19_shift_x(BITJOIN,110)@3
    rightShiftStage0Idx1_uid111_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q <= xMSB_uid108_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b & rightShiftStage0Idx1Rng1_uid110_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b;

    -- i_syncbuf_w_sync_buffer_mem_write_generic(BLACKBOX,86)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer_mem_write_generic : i_syncbuf_w_sync_buffer_mem_write_generic13
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_mem_write_generic(ADD,59)@1
    i_add2_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer_mem_write_generic_out_buffer_out);
    i_add2_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_mem_write_generic_a) + UNSIGNED(i_add2_mem_write_generic_b));
    i_add2_mem_write_generic_q <= i_add2_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_add2_mem_write_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add2_mem_write_generic_sel_x_b <= i_add2_mem_write_generic_q(31 downto 0);

    -- redist16_bgTrunc_i_add2_mem_write_generic_sel_x_b_1(DELAY,180)
    redist16_bgTrunc_i_add2_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add2_mem_write_generic_sel_x_b, xout => redist16_bgTrunc_i_add2_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub3_mem_write_generic(ADD,80)@2
    i_sub3_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & redist16_bgTrunc_i_add2_mem_write_generic_sel_x_b_1_q);
    i_sub3_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_mem_write_generic_vt_join_q);
    i_sub3_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_mem_write_generic_a) + UNSIGNED(i_sub3_mem_write_generic_b));
    i_sub3_mem_write_generic_q <= i_sub3_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_mem_write_generic_sel_x(BITSELECT,6)@2
    bgTrunc_i_sub3_mem_write_generic_sel_x_b <= i_sub3_mem_write_generic_q(31 downto 0);

    -- redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1(DELAY,177)
    redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub3_mem_write_generic_sel_x_b, xout => redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x(MUX,112)@3 + 1
    rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_s <= redist4_rightShiftStageSel0Dto0_uid112_i_cond10_mem_write_generic_mem_write_generic19_shift_x_b_1_q;
    rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q <= redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q <= rightShiftStage0Idx1_uid111_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_unnamed_mem_write_generic26_sel_x(BITSELECT,39)@4
    i_unnamed_mem_write_generic26_sel_x_b <= std_logic_vector(resize(unsigned(rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q(31 downto 0)), 33));

    -- i_unnamed_mem_write_generic26_vt_select_31(BITSELECT,92)@4
    i_unnamed_mem_write_generic26_vt_select_31_b <= i_unnamed_mem_write_generic26_sel_x_b(31 downto 0);

    -- i_unnamed_mem_write_generic26_vt_join(BITJOIN,91)@4
    i_unnamed_mem_write_generic26_vt_join_q <= GND_q & i_unnamed_mem_write_generic26_vt_select_31_b;

    -- i_unnamed_mem_write_generic27(ADD,93)@4
    i_unnamed_mem_write_generic27_a <= STD_LOGIC_VECTOR("0" & i_unnamed_mem_write_generic26_vt_join_q);
    i_unnamed_mem_write_generic27_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_unnamed_mem_write_generic27_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_mem_write_generic27_a) + UNSIGNED(i_unnamed_mem_write_generic27_b));
    i_unnamed_mem_write_generic27_q <= i_unnamed_mem_write_generic27_o(33 downto 0);

    -- bgTrunc_i_unnamed_mem_write_generic27_sel_x(BITSELECT,9)@4
    bgTrunc_i_unnamed_mem_write_generic27_sel_x_b <= i_unnamed_mem_write_generic27_q(32 downto 0);

    -- i_ffwd_src_unnamed_mem_write_generic6_mem_write_generic(BLACKBOX,71)@4
    -- out out_intel_reserved_ffwd_6_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic6_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic6_mem_write_generic40
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_6_0 => bgTrunc_i_unnamed_mem_write_generic27_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_in_i_valid_3_q,
        out_intel_reserved_ffwd_6_0 => i_ffwd_src_unnamed_mem_write_generic6_mem_write_generic_out_intel_reserved_ffwd_6_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,54)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_add11_mem_write_generic(ADD,58)@4
    i_add11_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid113_i_cond10_mem_write_generic_mem_write_generic19_shift_x_q);
    i_add11_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add11_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_mem_write_generic_a) + UNSIGNED(i_add11_mem_write_generic_b));
    i_add11_mem_write_generic_q <= i_add11_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_add11_mem_write_generic_sel_x(BITSELECT,2)@4
    bgTrunc_i_add11_mem_write_generic_sel_x_b <= i_add11_mem_write_generic_q(31 downto 0);

    -- redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1(DELAY,181)
    redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add11_mem_write_generic_sel_x_b, xout => redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_write_generic24_bs4(BITSELECT,145)@5
    i_unnamed_mem_write_generic24_bs4_in <= STD_LOGIC_VECTOR(redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q(17 downto 0));
    i_unnamed_mem_write_generic24_bs4_b <= STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_bs4_in(17 downto 0));

    -- i_unnamed_mem_write_generic24_bjA5(BITJOIN,146)@5
    i_unnamed_mem_write_generic24_bjA5_q <= GND_q & i_unnamed_mem_write_generic24_bs4_b;

    -- i_syncbuf_out_c_sync_buffer2_mem_write_generic(BLACKBOX,83)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_out_c_sync_buffer2_mem_write_generic : i_syncbuf_out_c_sync_buffer2_mem_write_generic22
    PORT MAP (
        in_buffer_in => in_out_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_out_c_sync_buffer2_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_mem_write_generic24_bs2_merged_bit_select(BITSELECT,163)@5
    i_unnamed_mem_write_generic24_bs2_merged_bit_select_b <= i_syncbuf_out_c_sync_buffer2_mem_write_generic_out_buffer_out(17 downto 0);
    i_unnamed_mem_write_generic24_bs2_merged_bit_select_c <= i_syncbuf_out_c_sync_buffer2_mem_write_generic_out_buffer_out(31 downto 18);

    -- i_unnamed_mem_write_generic24_bjB9(BITJOIN,150)@5
    i_unnamed_mem_write_generic24_bjB9_q <= GND_q & i_unnamed_mem_write_generic24_bs2_merged_bit_select_b;

    -- i_unnamed_mem_write_generic24_bs7(BITSELECT,148)@5
    i_unnamed_mem_write_generic24_bs7_b <= STD_LOGIC_VECTOR(redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q(31 downto 18));

    -- i_unnamed_mem_write_generic24_ma3_cma(CHAINMULTADD,162)@5 + 2
    i_unnamed_mem_write_generic24_ma3_cma_reset <= not (resetn);
    i_unnamed_mem_write_generic24_ma3_cma_ena0 <= '1';
    i_unnamed_mem_write_generic24_ma3_cma_ena1 <= i_unnamed_mem_write_generic24_ma3_cma_ena0;
    i_unnamed_mem_write_generic24_ma3_cma_l(0) <= SIGNED(RESIZE(i_unnamed_mem_write_generic24_ma3_cma_a0(0),15));
    i_unnamed_mem_write_generic24_ma3_cma_l(1) <= SIGNED(RESIZE(i_unnamed_mem_write_generic24_ma3_cma_a0(1),15));
    i_unnamed_mem_write_generic24_ma3_cma_p(0) <= i_unnamed_mem_write_generic24_ma3_cma_l(0) * i_unnamed_mem_write_generic24_ma3_cma_c0(0);
    i_unnamed_mem_write_generic24_ma3_cma_p(1) <= i_unnamed_mem_write_generic24_ma3_cma_l(1) * i_unnamed_mem_write_generic24_ma3_cma_c0(1);
    i_unnamed_mem_write_generic24_ma3_cma_u(0) <= RESIZE(i_unnamed_mem_write_generic24_ma3_cma_p(0),35);
    i_unnamed_mem_write_generic24_ma3_cma_u(1) <= RESIZE(i_unnamed_mem_write_generic24_ma3_cma_p(1),35);
    i_unnamed_mem_write_generic24_ma3_cma_w(0) <= i_unnamed_mem_write_generic24_ma3_cma_u(0) + i_unnamed_mem_write_generic24_ma3_cma_u(1);
    i_unnamed_mem_write_generic24_ma3_cma_x(0) <= i_unnamed_mem_write_generic24_ma3_cma_w(0);
    i_unnamed_mem_write_generic24_ma3_cma_y(0) <= i_unnamed_mem_write_generic24_ma3_cma_x(0);
    i_unnamed_mem_write_generic24_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_mem_write_generic24_ma3_cma_a0 <= (others => (others => '0'));
            i_unnamed_mem_write_generic24_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_unnamed_mem_write_generic24_ma3_cma_ena0 = '1') THEN
                i_unnamed_mem_write_generic24_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_unnamed_mem_write_generic24_bs7_b),14);
                i_unnamed_mem_write_generic24_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_unnamed_mem_write_generic24_bs2_merged_bit_select_c),14);
                i_unnamed_mem_write_generic24_ma3_cma_c0(0) <= RESIZE(SIGNED(i_unnamed_mem_write_generic24_bjB9_q),19);
                i_unnamed_mem_write_generic24_ma3_cma_c0(1) <= RESIZE(SIGNED(i_unnamed_mem_write_generic24_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_mem_write_generic24_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_mem_write_generic24_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_unnamed_mem_write_generic24_ma3_cma_ena1 = '1') THEN
                i_unnamed_mem_write_generic24_ma3_cma_s(0) <= i_unnamed_mem_write_generic24_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_mem_write_generic24_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_ma3_cma_s(0)(33 downto 0)), xout => i_unnamed_mem_write_generic24_ma3_cma_qq, clk => clock, aclr => resetn );
    i_unnamed_mem_write_generic24_ma3_cma_q <= STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_ma3_cma_qq(33 downto 0));

    -- redist0_i_unnamed_mem_write_generic24_ma3_cma_q_1(DELAY,164)
    redist0_i_unnamed_mem_write_generic24_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_write_generic24_ma3_cma_q, xout => redist0_i_unnamed_mem_write_generic24_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_write_generic24_align_14(BITSHIFT,155)@8
    i_unnamed_mem_write_generic24_align_14_qint <= redist0_i_unnamed_mem_write_generic24_ma3_cma_q_1_q & "000000000000000000";
    i_unnamed_mem_write_generic24_align_14_q <= i_unnamed_mem_write_generic24_align_14_qint(51 downto 0);

    -- i_unnamed_mem_write_generic24_bs11(BITSELECT,152)@5
    i_unnamed_mem_write_generic24_bs11_b <= redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q(31 downto 18);

    -- i_unnamed_mem_write_generic24_im10_cma(CHAINMULTADD,161)@5 + 2
    i_unnamed_mem_write_generic24_im10_cma_reset <= not (resetn);
    i_unnamed_mem_write_generic24_im10_cma_ena0 <= '1';
    i_unnamed_mem_write_generic24_im10_cma_ena1 <= i_unnamed_mem_write_generic24_im10_cma_ena0;
    i_unnamed_mem_write_generic24_im10_cma_p(0) <= i_unnamed_mem_write_generic24_im10_cma_a0(0) * i_unnamed_mem_write_generic24_im10_cma_c0(0);
    i_unnamed_mem_write_generic24_im10_cma_u(0) <= RESIZE(i_unnamed_mem_write_generic24_im10_cma_p(0),28);
    i_unnamed_mem_write_generic24_im10_cma_w(0) <= i_unnamed_mem_write_generic24_im10_cma_u(0);
    i_unnamed_mem_write_generic24_im10_cma_x(0) <= i_unnamed_mem_write_generic24_im10_cma_w(0);
    i_unnamed_mem_write_generic24_im10_cma_y(0) <= i_unnamed_mem_write_generic24_im10_cma_x(0);
    i_unnamed_mem_write_generic24_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_mem_write_generic24_im10_cma_a0 <= (others => (others => '0'));
            i_unnamed_mem_write_generic24_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_unnamed_mem_write_generic24_im10_cma_ena0 = '1') THEN
                i_unnamed_mem_write_generic24_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_unnamed_mem_write_generic24_bs11_b),14);
                i_unnamed_mem_write_generic24_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_unnamed_mem_write_generic24_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_mem_write_generic24_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_mem_write_generic24_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_unnamed_mem_write_generic24_im10_cma_ena1 = '1') THEN
                i_unnamed_mem_write_generic24_im10_cma_s(0) <= i_unnamed_mem_write_generic24_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_mem_write_generic24_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_im10_cma_s(0)(27 downto 0)), xout => i_unnamed_mem_write_generic24_im10_cma_qq, clk => clock, aclr => resetn );
    i_unnamed_mem_write_generic24_im10_cma_q <= STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_im10_cma_qq(27 downto 0));

    -- redist1_i_unnamed_mem_write_generic24_im10_cma_q_1(DELAY,165)
    redist1_i_unnamed_mem_write_generic24_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_write_generic24_im10_cma_q, xout => redist1_i_unnamed_mem_write_generic24_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_write_generic24_bs1(BITSELECT,142)@5
    i_unnamed_mem_write_generic24_bs1_in <= redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q(17 downto 0);
    i_unnamed_mem_write_generic24_bs1_b <= i_unnamed_mem_write_generic24_bs1_in(17 downto 0);

    -- i_unnamed_mem_write_generic24_im0_cma(CHAINMULTADD,160)@5 + 2
    i_unnamed_mem_write_generic24_im0_cma_reset <= not (resetn);
    i_unnamed_mem_write_generic24_im0_cma_ena0 <= '1';
    i_unnamed_mem_write_generic24_im0_cma_ena1 <= i_unnamed_mem_write_generic24_im0_cma_ena0;
    i_unnamed_mem_write_generic24_im0_cma_p(0) <= i_unnamed_mem_write_generic24_im0_cma_a0(0) * i_unnamed_mem_write_generic24_im0_cma_c0(0);
    i_unnamed_mem_write_generic24_im0_cma_u(0) <= RESIZE(i_unnamed_mem_write_generic24_im0_cma_p(0),36);
    i_unnamed_mem_write_generic24_im0_cma_w(0) <= i_unnamed_mem_write_generic24_im0_cma_u(0);
    i_unnamed_mem_write_generic24_im0_cma_x(0) <= i_unnamed_mem_write_generic24_im0_cma_w(0);
    i_unnamed_mem_write_generic24_im0_cma_y(0) <= i_unnamed_mem_write_generic24_im0_cma_x(0);
    i_unnamed_mem_write_generic24_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_mem_write_generic24_im0_cma_a0 <= (others => (others => '0'));
            i_unnamed_mem_write_generic24_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_unnamed_mem_write_generic24_im0_cma_ena0 = '1') THEN
                i_unnamed_mem_write_generic24_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_unnamed_mem_write_generic24_bs1_b),18);
                i_unnamed_mem_write_generic24_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_unnamed_mem_write_generic24_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_mem_write_generic24_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_unnamed_mem_write_generic24_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_unnamed_mem_write_generic24_im0_cma_ena1 = '1') THEN
                i_unnamed_mem_write_generic24_im0_cma_s(0) <= i_unnamed_mem_write_generic24_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_unnamed_mem_write_generic24_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_im0_cma_s(0)(35 downto 0)), xout => i_unnamed_mem_write_generic24_im0_cma_qq, clk => clock, aclr => resetn );
    i_unnamed_mem_write_generic24_im0_cma_q <= STD_LOGIC_VECTOR(i_unnamed_mem_write_generic24_im0_cma_qq(35 downto 0));

    -- redist2_i_unnamed_mem_write_generic24_im0_cma_q_1(DELAY,166)
    redist2_i_unnamed_mem_write_generic24_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_write_generic24_im0_cma_q, xout => redist2_i_unnamed_mem_write_generic24_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_write_generic24_join_13(BITJOIN,154)@8
    i_unnamed_mem_write_generic24_join_13_q <= redist1_i_unnamed_mem_write_generic24_im10_cma_q_1_q & redist2_i_unnamed_mem_write_generic24_im0_cma_q_1_q;

    -- i_unnamed_mem_write_generic24_result_add_0_0(ADD,157)@8
    i_unnamed_mem_write_generic24_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_unnamed_mem_write_generic24_join_13_q));
    i_unnamed_mem_write_generic24_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_unnamed_mem_write_generic24_align_14_q(51)) & i_unnamed_mem_write_generic24_align_14_q));
    i_unnamed_mem_write_generic24_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_unnamed_mem_write_generic24_result_add_0_0_a) + SIGNED(i_unnamed_mem_write_generic24_result_add_0_0_b));
    i_unnamed_mem_write_generic24_result_add_0_0_q <= i_unnamed_mem_write_generic24_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_unnamed_mem_write_generic24_rnd_sel(BITSELECT,137)@8
    bgTrunc_i_unnamed_mem_write_generic24_rnd_sel_in <= i_unnamed_mem_write_generic24_result_add_0_0_q(63 downto 0);
    bgTrunc_i_unnamed_mem_write_generic24_rnd_sel_b <= bgTrunc_i_unnamed_mem_write_generic24_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_unnamed_mem_write_generic24_sel_x(BITSELECT,8)@8
    bgTrunc_i_unnamed_mem_write_generic24_sel_x_b <= bgTrunc_i_unnamed_mem_write_generic24_rnd_sel_b(31 downto 0);

    -- redist11_bgTrunc_i_unnamed_mem_write_generic24_sel_x_b_1(DELAY,175)
    redist11_bgTrunc_i_unnamed_mem_write_generic24_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_unnamed_mem_write_generic24_sel_x_b, xout => redist11_bgTrunc_i_unnamed_mem_write_generic24_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,53)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp153_mem_write_generic(COMPARE,64)@5 + 1
    i_cmp153_mem_write_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp153_mem_write_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q(31)) & redist17_bgTrunc_i_add11_mem_write_generic_sel_x_b_1_q));
    i_cmp153_mem_write_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp153_mem_write_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp153_mem_write_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp153_mem_write_generic_a) - SIGNED(i_cmp153_mem_write_generic_b));
        END IF;
    END PROCESS;
    i_cmp153_mem_write_generic_c(0) <= i_cmp153_mem_write_generic_o(33);

    -- i_add4_mem_write_generic(ADD,60)@4
    i_add4_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & redist3_rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q_1_q);
    i_add4_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add4_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add4_mem_write_generic_a) + UNSIGNED(i_add4_mem_write_generic_b));
    i_add4_mem_write_generic_q <= i_add4_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_add4_mem_write_generic_sel_x(BITSELECT,4)@4
    bgTrunc_i_add4_mem_write_generic_sel_x_b <= i_add4_mem_write_generic_q(31 downto 0);

    -- redist15_bgTrunc_i_add4_mem_write_generic_sel_x_b_1(DELAY,179)
    redist15_bgTrunc_i_add4_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add4_mem_write_generic_sel_x_b, xout => redist15_bgTrunc_i_add4_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp136_mem_write_generic(COMPARE,63)@5 + 1
    i_cmp136_mem_write_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp136_mem_write_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist15_bgTrunc_i_add4_mem_write_generic_sel_x_b_1_q(31)) & redist15_bgTrunc_i_add4_mem_write_generic_sel_x_b_1_q));
    i_cmp136_mem_write_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp136_mem_write_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp136_mem_write_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp136_mem_write_generic_a) - SIGNED(i_cmp136_mem_write_generic_b));
        END IF;
    END PROCESS;
    i_cmp136_mem_write_generic_c(0) <= i_cmp136_mem_write_generic_o(33);

    -- i_unnamed_mem_write_generic25(LOGICAL,88)@6 + 1
    i_unnamed_mem_write_generic25_qi <= i_cmp136_mem_write_generic_c and i_cmp153_mem_write_generic_c;
    i_unnamed_mem_write_generic25_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_write_generic25_qi, xout => i_unnamed_mem_write_generic25_q, clk => clock, aclr => resetn );

    -- redist10_i_unnamed_mem_write_generic25_q_3(DELAY,174)
    redist10_i_unnamed_mem_write_generic25_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_write_generic25_q, xout => redist10_i_unnamed_mem_write_generic25_q_3_q, clk => clock, aclr => resetn );

    -- i_came_from_for_cond14_preheader_select_mem_write_generic(MUX,62)@9
    i_came_from_for_cond14_preheader_select_mem_write_generic_s <= redist10_i_unnamed_mem_write_generic25_q_3_q;
    i_came_from_for_cond14_preheader_select_mem_write_generic_combproc: PROCESS (i_came_from_for_cond14_preheader_select_mem_write_generic_s, c_i32_0gr_q, redist11_bgTrunc_i_unnamed_mem_write_generic24_sel_x_b_1_q)
    BEGIN
        CASE (i_came_from_for_cond14_preheader_select_mem_write_generic_s) IS
            WHEN "0" => i_came_from_for_cond14_preheader_select_mem_write_generic_q <= c_i32_0gr_q;
            WHEN "1" => i_came_from_for_cond14_preheader_select_mem_write_generic_q <= redist11_bgTrunc_i_unnamed_mem_write_generic24_sel_x_b_1_q;
            WHEN OTHERS => i_came_from_for_cond14_preheader_select_mem_write_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_ffwd_src_unnamed_mem_write_generic5_mem_write_generic(BLACKBOX,70)@9
    -- out out_intel_reserved_ffwd_5_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic5_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic5_mem_write_generic38
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_5_0 => i_came_from_for_cond14_preheader_select_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_in_i_valid_8_q,
        out_intel_reserved_ffwd_5_0 => i_ffwd_src_unnamed_mem_write_generic5_mem_write_generic_out_intel_reserved_ffwd_5_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_mem_write_generic4_mem_write_generic(BLACKBOX,69)@9
    -- out out_intel_reserved_ffwd_4_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic4_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic4_mem_write_generic36
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_4_0 => redist10_i_unnamed_mem_write_generic25_q_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist9_sync_in_in_i_valid_8_q,
        out_intel_reserved_ffwd_4_0 => i_ffwd_src_unnamed_mem_write_generic4_mem_write_generic_out_intel_reserved_ffwd_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_mem_write_generic3_mem_write_generic(BLACKBOX,68)@3
    -- out out_intel_reserved_ffwd_2_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic3_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic3_mem_write_generic34
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_2_0 => rightShiftStage0_uid121_i_cond_mem_write_generic_mem_write_generic18_shift_x_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_in_i_valid_2_q,
        out_intel_reserved_ffwd_2_0 => i_ffwd_src_unnamed_mem_write_generic3_mem_write_generic_out_intel_reserved_ffwd_2_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_mem_write_generic2_mem_write_generic(BLACKBOX,67)@3
    -- out out_intel_reserved_ffwd_1_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic2_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic2_mem_write_generic32
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_1_0 => redist13_bgTrunc_i_sub3_mem_write_generic_sel_x_b_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_in_i_valid_2_q,
        out_intel_reserved_ffwd_1_0 => i_ffwd_src_unnamed_mem_write_generic2_mem_write_generic_out_intel_reserved_ffwd_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_src_unnamed_mem_write_generic1_mem_write_generic(BLACKBOX,66)@2
    -- out out_intel_reserved_ffwd_0_0@20000000
    thei_ffwd_src_unnamed_mem_write_generic1_mem_write_generic : i_ffwd_src_unnamed_mem_write_generic1_mem_write_generic30
    PORT MAP (
        in_enable_in => VCC_q,
        in_src_data_in_0_0 => bgTrunc_i_sub_mem_write_generic_sel_x_b,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_in_i_valid_1_q,
        out_intel_reserved_ffwd_0_0 => i_ffwd_src_unnamed_mem_write_generic1_mem_write_generic_out_intel_reserved_ffwd_0_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,41)@9
    out_intel_reserved_ffwd_0_0 <= i_ffwd_src_unnamed_mem_write_generic1_mem_write_generic_out_intel_reserved_ffwd_0_0;
    out_intel_reserved_ffwd_1_0 <= i_ffwd_src_unnamed_mem_write_generic2_mem_write_generic_out_intel_reserved_ffwd_1_0;
    out_intel_reserved_ffwd_2_0 <= i_ffwd_src_unnamed_mem_write_generic3_mem_write_generic_out_intel_reserved_ffwd_2_0;
    out_intel_reserved_ffwd_4_0 <= i_ffwd_src_unnamed_mem_write_generic4_mem_write_generic_out_intel_reserved_ffwd_4_0;
    out_intel_reserved_ffwd_5_0 <= i_ffwd_src_unnamed_mem_write_generic5_mem_write_generic_out_intel_reserved_ffwd_5_0;
    out_intel_reserved_ffwd_6_0 <= i_ffwd_src_unnamed_mem_write_generic6_mem_write_generic_out_intel_reserved_ffwd_6_0;
    out_intel_reserved_ffwd_7_0 <= i_ffwd_src_unnamed_mem_write_generic7_mem_write_generic_out_intel_reserved_ffwd_7_0;
    out_o_valid <= redist9_sync_in_in_i_valid_8_q;
    out_unnamed_mem_write_generic8_0 <= GND_q;

END normal;
