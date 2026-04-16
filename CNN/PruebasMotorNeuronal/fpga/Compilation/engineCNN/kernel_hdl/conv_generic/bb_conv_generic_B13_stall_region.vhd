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

-- VHDL created from bb_conv_generic_B13_stall_region
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

entity bb_conv_generic_B13_stall_region is
    port (
        out_c0_exe3456 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5458 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_1 : out std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exit453_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- ufix8
        out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp10414_RM277 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked276 : in std_logic_vector(0 downto 0);  -- ufix1
        in_select316278 : in std_logic_vector(511 downto 0);  -- ufix512
        in_unnamed_conv_generic66 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic67 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic68 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_11_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_13_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_14_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_15_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B13_stall_region;

architecture normal of bb_conv_generic_B13_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B13_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic is
        port (
            in_c0_eni6439_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6439_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6439_2 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_c0_eni6439_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6439_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6439_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6439_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_11_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_13_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_14_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_15_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit453_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exit453_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic815 is
        port (
            in_c0_exe2455 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_iowr_bl_ch_out_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_iowr_bl_ch_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_conv_generic_B13_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (516 downto 0);
    signal bubble_select_conv_generic_B13_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B13_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B13_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B13_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B13_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B13_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (511 downto 0);
    signal bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q : STD_LOGIC_VECTOR (13 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_c : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (516 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (511 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B13_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B13_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B13_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,62)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv_generic_B13_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,53)
    bubble_join_stall_entry_q <= in_unnamed_conv_generic68 & in_unnamed_conv_generic67 & in_unnamed_conv_generic66 & in_select316278 & in_forked276 & in_cmp10414_RM277;

    -- bubble_select_stall_entry(BITSELECT,54)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(513 downto 2));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(514 downto 514));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(515 downto 515));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(516 downto 516));

    -- conv_generic_B13_merge_reg_aunroll_x(BLACKBOX,3)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv_generic_B13_merge_reg_aunroll_x : conv_generic_B13_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_e,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_data_in_2 => bubble_select_stall_entry_f,
        in_data_in_3 => bubble_select_stall_entry_g,
        in_data_in_4 => bubble_select_stall_entry_b,
        in_data_in_5 => bubble_select_stall_entry_d,
        in_stall_in => SE_out_conv_generic_B13_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv_generic_B13_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv_generic_B13_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv_generic_B13_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv_generic_B13_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv_generic_B13_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => conv_generic_B13_merge_reg_aunroll_x_out_data_out_5,
        out_stall_out => conv_generic_B13_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv_generic_B13_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv_generic_B13_merge_reg_aunroll_x(STALLENABLE,57)
    -- Valid signal propagation
    SE_out_conv_generic_B13_merge_reg_aunroll_x_V0 <= SE_out_conv_generic_B13_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_conv_generic_B13_merge_reg_aunroll_x_backStall <= i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_o_stall or not (SE_out_conv_generic_B13_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_conv_generic_B13_merge_reg_aunroll_x_wireValid <= conv_generic_B13_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_conv_generic_B13_merge_reg_aunroll_x(BITJOIN,46)
    bubble_join_conv_generic_B13_merge_reg_aunroll_x_q <= conv_generic_B13_merge_reg_aunroll_x_out_data_out_5 & conv_generic_B13_merge_reg_aunroll_x_out_data_out_4 & conv_generic_B13_merge_reg_aunroll_x_out_data_out_3 & conv_generic_B13_merge_reg_aunroll_x_out_data_out_2 & conv_generic_B13_merge_reg_aunroll_x_out_data_out_1 & conv_generic_B13_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv_generic_B13_merge_reg_aunroll_x(BITSELECT,47)
    bubble_select_conv_generic_B13_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B13_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_conv_generic_B13_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B13_merge_reg_aunroll_x_q(1 downto 1));
    bubble_select_conv_generic_B13_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B13_merge_reg_aunroll_x_q(2 downto 2));
    bubble_select_conv_generic_B13_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B13_merge_reg_aunroll_x_q(3 downto 3));
    bubble_select_conv_generic_B13_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B13_merge_reg_aunroll_x_q(4 downto 4));
    bubble_select_conv_generic_B13_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B13_merge_reg_aunroll_x_q(516 downto 5));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x(BLACKBOX,29)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit453_0@18
    -- out out_c0_exit453_1@18
    -- out out_c0_exit453_2@18
    -- out out_c0_exit453_3@18
    -- out out_c0_exit453_4@18
    -- out out_c0_exit453_5@18
    -- out out_c0_exit453_6@18
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@18
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x : i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic
    PORT MAP (
        in_c0_eni6439_0 => GND_q,
        in_c0_eni6439_1 => bubble_select_conv_generic_B13_merge_reg_aunroll_x_c,
        in_c0_eni6439_2 => bubble_select_conv_generic_B13_merge_reg_aunroll_x_g,
        in_c0_eni6439_3 => bubble_select_conv_generic_B13_merge_reg_aunroll_x_e,
        in_c0_eni6439_4 => bubble_select_conv_generic_B13_merge_reg_aunroll_x_f,
        in_c0_eni6439_5 => bubble_select_conv_generic_B13_merge_reg_aunroll_x_b,
        in_c0_eni6439_6 => bubble_select_conv_generic_B13_merge_reg_aunroll_x_d,
        in_M_mult => in_M_mult,
        in_M_shift => in_M_shift,
        in_i_stall => SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_backStall,
        in_i_valid => SE_out_conv_generic_B13_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_10_0 => in_intel_reserved_ffwd_10_0,
        in_intel_reserved_ffwd_11_0 => in_intel_reserved_ffwd_11_0,
        in_intel_reserved_ffwd_12_0 => in_intel_reserved_ffwd_12_0,
        in_intel_reserved_ffwd_13_0 => in_intel_reserved_ffwd_13_0,
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_intel_reserved_ffwd_15_0 => in_intel_reserved_ffwd_15_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_intel_reserved_ffwd_7_0 => in_intel_reserved_ffwd_7_0,
        in_intel_reserved_ffwd_8_0 => in_intel_reserved_ffwd_8_0,
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_tile_channels => in_tile_channels,
        in_y_zero => in_y_zero,
        out_c0_exit453_0 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_0,
        out_c0_exit453_1 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_1,
        out_c0_exit453_2 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_2,
        out_c0_exit453_3 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_3,
        out_c0_exit453_4 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_4,
        out_c0_exit453_5 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_5,
        out_c0_exit453_6 => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_6,
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x(STALLENABLE,59)
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed0 <= (not (SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_backStall) and SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed1 <= (not (i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_o_stall) and SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg1;
    -- Consuming
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_backStall and SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_or0 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_or0);
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_backStall <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_V1 <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_wireValid <= i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_o_valid;

    -- i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic(BLACKBOX,35)@18
    -- in in_i_stall@20000000
    -- out out_iowr_bl_ch_out_o_fifodata@20000000
    -- out out_iowr_bl_ch_out_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic : i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic815
    PORT MAP (
        in_c0_exe2455 => bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_d,
        in_i_data => bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_c,
        in_i_stall => SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_V1,
        in_iowr_bl_ch_out_i_fifoready => in_iowr_bl_ch_out_i_fifoready,
        out_iowr_bl_ch_out_o_fifodata => i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_iowr_bl_ch_out_o_fifodata,
        out_iowr_bl_ch_out_o_fifovalid => i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_iowr_bl_ch_out_o_fifovalid,
        out_o_stall => i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_o_stall,
        out_o_valid => i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic(STALLENABLE,61)
    -- Valid signal propagation
    SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_V0 <= SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_backStall <= in_stall_in or not (SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_and0 <= i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_o_valid;
    SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_wireValid <= SE_out_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_V0 and SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_and0;

    -- bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x(BITJOIN,49)
    bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q <= i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_6 & i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_5 & i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_4 & i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_3 & i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_2 & i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_1 & i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_c0_exit453_0;

    -- bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x(BITSELECT,50)
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(8 downto 1));
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(9 downto 9));
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(10 downto 10));
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(11 downto 11));
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(12 downto 12));
    bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_q(13 downto 13));

    -- dupName_0_sync_out_aunroll_x(GPOUT,2)@18
    out_c0_exe3456 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_e;
    out_c0_exe5458 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_g;
    out_c0_exit453_0 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_b;
    out_c0_exit453_1 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_c;
    out_c0_exit453_2 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_d;
    out_c0_exit453_3 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_e;
    out_c0_exit453_4 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_f;
    out_c0_exit453_5 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_g;
    out_c0_exit453_6 <= bubble_select_i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_h;
    out_valid_out <= SE_out_i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_V0;

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_iowr_bl_ch_out_o_fifodata <= i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_iowr_bl_ch_out_o_fifodata;
    out_iowr_bl_ch_out_o_fifovalid <= i_iowr_bl_ch_out_unnamed_conv_generic69_conv_generic_out_iowr_bl_ch_out_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,34)
    out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out <= i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out <= i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,39)
    out_pipeline_valid_out <= i_sfc_c0_for_body106_conv_generic_c0_enter440_conv_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,44)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
