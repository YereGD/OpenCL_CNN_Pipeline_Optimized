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

-- VHDL created from bb_conv_generic_B13
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

entity bb_conv_generic_B13 is
    port (
        out_c0_exit453_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_1 : out std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exit453_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit453_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5458 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- ufix8
        out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_cmp10414_RM277_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp10414_RM277_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked276_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked276_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
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
        in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_select316278_0 : in std_logic_vector(511 downto 0);  -- ufix512
        in_select316278_1 : in std_logic_vector(511 downto 0);  -- ufix512
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv_generic66_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic66_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic67_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic67_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic68_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic68_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B13;

architecture normal of bb_conv_generic_B13 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B13_branch is
        port (
            in_c0_exit453_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit453_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_c0_exit453_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit453_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit453_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit453_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit453_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3456 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5458 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exit453_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5458 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B13_stall_region is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp10414_RM277 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked276 : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_select316278 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic66 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic67 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic68 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_c0_exe3456 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5458 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B13_merge is
        port (
            in_cmp10414_RM277_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp10414_RM277_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked276_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked276_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_select316278_0 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_select316278_1 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic66_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic66_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic67_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic67_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic68_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic68_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_cmp10414_RM277 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked276 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_select316278 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic66 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic67 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic68 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exit453_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_c0_exe5458 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exit453_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exe3456 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_c0_exe5458 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_iowr_bl_ch_out_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B13_stall_region_out_iowr_bl_ch_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_cmp10414_RM277 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_forked276 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_select316278 : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B13_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_unnamed_conv_generic66 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_unnamed_conv_generic67 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_unnamed_conv_generic68 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B13_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B13_merge(BLACKBOX,20)
    theconv_generic_B13_merge : conv_generic_B13_merge
    PORT MAP (
        in_cmp10414_RM277_0 => in_cmp10414_RM277_0,
        in_cmp10414_RM277_1 => in_cmp10414_RM277_1,
        in_forked276_0 => in_forked276_0,
        in_forked276_1 => in_forked276_1,
        in_select316278_0 => in_select316278_0,
        in_select316278_1 => in_select316278_1,
        in_stall_in => bb_conv_generic_B13_stall_region_out_stall_out,
        in_unnamed_conv_generic66_0 => in_unnamed_conv_generic66_0,
        in_unnamed_conv_generic66_1 => in_unnamed_conv_generic66_1,
        in_unnamed_conv_generic67_0 => in_unnamed_conv_generic67_0,
        in_unnamed_conv_generic67_1 => in_unnamed_conv_generic67_1,
        in_unnamed_conv_generic68_0 => in_unnamed_conv_generic68_0,
        in_unnamed_conv_generic68_1 => in_unnamed_conv_generic68_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_cmp10414_RM277 => conv_generic_B13_merge_out_cmp10414_RM277,
        out_forked276 => conv_generic_B13_merge_out_forked276,
        out_select316278 => conv_generic_B13_merge_out_select316278,
        out_stall_out_0 => conv_generic_B13_merge_out_stall_out_0,
        out_stall_out_1 => conv_generic_B13_merge_out_stall_out_1,
        out_unnamed_conv_generic66 => conv_generic_B13_merge_out_unnamed_conv_generic66,
        out_unnamed_conv_generic67 => conv_generic_B13_merge_out_unnamed_conv_generic67,
        out_unnamed_conv_generic68 => conv_generic_B13_merge_out_unnamed_conv_generic68,
        out_valid_out => conv_generic_B13_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B13_stall_region(BLACKBOX,19)
    thebb_conv_generic_B13_stall_region : bb_conv_generic_B13_stall_region
    PORT MAP (
        in_M_mult => in_M_mult,
        in_M_shift => in_M_shift,
        in_cmp10414_RM277 => conv_generic_B13_merge_out_cmp10414_RM277,
        in_forked276 => conv_generic_B13_merge_out_forked276,
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
        in_iowr_bl_ch_out_i_fifoready => in_iowr_bl_ch_out_i_fifoready,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_select316278 => conv_generic_B13_merge_out_select316278,
        in_stall_in => conv_generic_B13_branch_aunroll_x_out_stall_out,
        in_tile_channels => in_tile_channels,
        in_unnamed_conv_generic66 => conv_generic_B13_merge_out_unnamed_conv_generic66,
        in_unnamed_conv_generic67 => conv_generic_B13_merge_out_unnamed_conv_generic67,
        in_unnamed_conv_generic68 => conv_generic_B13_merge_out_unnamed_conv_generic68,
        in_valid_in => conv_generic_B13_merge_out_valid_out,
        in_y_zero => in_y_zero,
        out_c0_exit453_0 => bb_conv_generic_B13_stall_region_out_c0_exit453_0,
        out_c0_exit453_1 => bb_conv_generic_B13_stall_region_out_c0_exit453_1,
        out_c0_exit453_2 => bb_conv_generic_B13_stall_region_out_c0_exit453_2,
        out_c0_exit453_3 => bb_conv_generic_B13_stall_region_out_c0_exit453_3,
        out_c0_exit453_4 => bb_conv_generic_B13_stall_region_out_c0_exit453_4,
        out_c0_exit453_5 => bb_conv_generic_B13_stall_region_out_c0_exit453_5,
        out_c0_exit453_6 => bb_conv_generic_B13_stall_region_out_c0_exit453_6,
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out => bb_conv_generic_B13_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out => bb_conv_generic_B13_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out,
        out_c0_exe3456 => bb_conv_generic_B13_stall_region_out_c0_exe3456,
        out_c0_exe5458 => bb_conv_generic_B13_stall_region_out_c0_exe5458,
        out_iowr_bl_ch_out_o_fifodata => bb_conv_generic_B13_stall_region_out_iowr_bl_ch_out_o_fifodata,
        out_iowr_bl_ch_out_o_fifovalid => bb_conv_generic_B13_stall_region_out_iowr_bl_ch_out_o_fifovalid,
        out_pipeline_valid_out => bb_conv_generic_B13_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_conv_generic_B13_stall_region_out_stall_out,
        out_valid_out => bb_conv_generic_B13_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B13_branch_aunroll_x(BLACKBOX,2)
    theconv_generic_B13_branch_aunroll_x : conv_generic_B13_branch
    PORT MAP (
        in_c0_exit453_0 => bb_conv_generic_B13_stall_region_out_c0_exit453_0,
        in_c0_exit453_1 => bb_conv_generic_B13_stall_region_out_c0_exit453_1,
        in_c0_exit453_2 => bb_conv_generic_B13_stall_region_out_c0_exit453_2,
        in_c0_exit453_3 => bb_conv_generic_B13_stall_region_out_c0_exit453_3,
        in_c0_exit453_4 => bb_conv_generic_B13_stall_region_out_c0_exit453_4,
        in_c0_exit453_5 => bb_conv_generic_B13_stall_region_out_c0_exit453_5,
        in_c0_exit453_6 => bb_conv_generic_B13_stall_region_out_c0_exit453_6,
        in_c0_exe3456 => bb_conv_generic_B13_stall_region_out_c0_exe3456,
        in_c0_exe5458 => bb_conv_generic_B13_stall_region_out_c0_exe5458,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_generic_B13_stall_region_out_valid_out,
        out_c0_exit453_0 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_0,
        out_c0_exit453_1 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_1,
        out_c0_exit453_2 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_2,
        out_c0_exit453_3 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_3,
        out_c0_exit453_4 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_4,
        out_c0_exit453_5 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_5,
        out_c0_exit453_6 => conv_generic_B13_branch_aunroll_x_out_c0_exit453_6,
        out_c0_exe5458 => conv_generic_B13_branch_aunroll_x_out_c0_exe5458,
        out_stall_out => conv_generic_B13_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => conv_generic_B13_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => conv_generic_B13_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit453_0(GPOUT,3)
    out_c0_exit453_0 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_0;

    -- out_c0_exit453_1(GPOUT,4)
    out_c0_exit453_1 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_1;

    -- out_c0_exit453_2(GPOUT,5)
    out_c0_exit453_2 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_2;

    -- out_c0_exit453_3(GPOUT,6)
    out_c0_exit453_3 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_3;

    -- out_c0_exit453_4(GPOUT,7)
    out_c0_exit453_4 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_4;

    -- out_c0_exit453_5(GPOUT,8)
    out_c0_exit453_5 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_5;

    -- out_c0_exit453_6(GPOUT,9)
    out_c0_exit453_6 <= conv_generic_B13_branch_aunroll_x_out_c0_exit453_6;

    -- out_c0_exe5458(GPOUT,10)
    out_c0_exe5458 <= conv_generic_B13_branch_aunroll_x_out_c0_exe5458;

    -- out_exiting_stall_out(GPOUT,11)
    out_exiting_stall_out <= bb_conv_generic_B13_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,12)
    out_exiting_valid_out <= bb_conv_generic_B13_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out;

    -- out_iowr_bl_ch_out_o_fifodata(GPOUT,13)
    out_iowr_bl_ch_out_o_fifodata <= bb_conv_generic_B13_stall_region_out_iowr_bl_ch_out_o_fifodata;

    -- out_iowr_bl_ch_out_o_fifovalid(GPOUT,14)
    out_iowr_bl_ch_out_o_fifovalid <= bb_conv_generic_B13_stall_region_out_iowr_bl_ch_out_o_fifovalid;

    -- out_stall_out_0(GPOUT,15)
    out_stall_out_0 <= conv_generic_B13_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,16)
    out_stall_out_1 <= conv_generic_B13_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,17)
    out_valid_out_0 <= conv_generic_B13_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,18)
    out_valid_out_1 <= conv_generic_B13_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,66)
    out_pipeline_valid_out <= bb_conv_generic_B13_stall_region_out_pipeline_valid_out;

END normal;
