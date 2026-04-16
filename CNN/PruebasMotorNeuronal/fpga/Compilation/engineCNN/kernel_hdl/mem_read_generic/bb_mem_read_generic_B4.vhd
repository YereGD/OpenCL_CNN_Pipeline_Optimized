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

-- VHDL created from bb_mem_read_generic_B4
-- VHDL created on Thu Apr 16 12:22:00 2026


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

entity bb_mem_read_generic_B4 is
    port (
        in_forked71_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked71_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_mul3474_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul3474_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_or_cond72_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_or_cond72_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2465_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2465_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2769_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2769_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic3_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic4_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic5_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exe10 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1128 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe13 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2129 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3130 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4131 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe5132 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe6133 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe7134 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8135 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_read_generic_B4;

architecture normal of bb_mem_read_generic_B4 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_read_generic_B4_stall_region is
        port (
            in_forked71 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul3474 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_or_cond72 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2465 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2769 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2129 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3130 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4131 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe5132 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe6133 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7134 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B4_branch is
        port (
            in_c0_exe10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe1128 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2129 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3130 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4131 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe5132 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe6133 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe7134 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe8135 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2129 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3130 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4131 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe5132 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe6133 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7134 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B4_merge is
        port (
            in_forked71_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked71_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mul3474_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul3474_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_or_cond72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_or_cond72_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sub2465_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2465_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2769_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2769_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic3_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic4_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic5_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked71 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_mul3474 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_or_cond72 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sub2465 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_sub2769 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_mem_read_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe1128 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe2129 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe3130 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe4131 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe5132 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe6133 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe7134 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_c0_exe8135 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe10 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe11 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe1128 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe12 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe13 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe2129 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe3130 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe4131 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe5132 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe6133 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe7134 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_c0_exe8135 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_forked71 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_mul3474 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_merge_out_or_cond72 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_sub2465 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_merge_out_sub2769 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B4_merge_out_unnamed_mem_read_generic3 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_unnamed_mem_read_generic4 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_unnamed_mem_read_generic5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B4_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_read_generic_B4_merge(BLACKBOX,31)
    themem_read_generic_B4_merge : mem_read_generic_B4_merge
    PORT MAP (
        in_forked71_0 => in_forked71_0,
        in_forked71_1 => in_forked71_1,
        in_mul3474_0 => in_mul3474_0,
        in_mul3474_1 => in_mul3474_1,
        in_or_cond72_0 => in_or_cond72_0,
        in_or_cond72_1 => in_or_cond72_1,
        in_stall_in => bb_mem_read_generic_B4_stall_region_out_stall_out,
        in_sub2465_0 => in_sub2465_0,
        in_sub2465_1 => in_sub2465_1,
        in_sub2769_0 => in_sub2769_0,
        in_sub2769_1 => in_sub2769_1,
        in_unnamed_mem_read_generic3_0 => in_unnamed_mem_read_generic3_0,
        in_unnamed_mem_read_generic3_1 => in_unnamed_mem_read_generic3_1,
        in_unnamed_mem_read_generic4_0 => in_unnamed_mem_read_generic4_0,
        in_unnamed_mem_read_generic4_1 => in_unnamed_mem_read_generic4_1,
        in_unnamed_mem_read_generic5_0 => in_unnamed_mem_read_generic5_0,
        in_unnamed_mem_read_generic5_1 => in_unnamed_mem_read_generic5_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked71 => mem_read_generic_B4_merge_out_forked71,
        out_mul3474 => mem_read_generic_B4_merge_out_mul3474,
        out_or_cond72 => mem_read_generic_B4_merge_out_or_cond72,
        out_stall_out_0 => mem_read_generic_B4_merge_out_stall_out_0,
        out_stall_out_1 => mem_read_generic_B4_merge_out_stall_out_1,
        out_sub2465 => mem_read_generic_B4_merge_out_sub2465,
        out_sub2769 => mem_read_generic_B4_merge_out_sub2769,
        out_unnamed_mem_read_generic3 => mem_read_generic_B4_merge_out_unnamed_mem_read_generic3,
        out_unnamed_mem_read_generic4 => mem_read_generic_B4_merge_out_unnamed_mem_read_generic4,
        out_unnamed_mem_read_generic5 => mem_read_generic_B4_merge_out_unnamed_mem_read_generic5,
        out_valid_out => mem_read_generic_B4_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B4_stall_region(BLACKBOX,2)
    thebb_mem_read_generic_B4_stall_region : bb_mem_read_generic_B4_stall_region
    PORT MAP (
        in_forked71 => mem_read_generic_B4_merge_out_forked71,
        in_h => in_h,
        in_in_c => in_in_c,
        in_mul3474 => mem_read_generic_B4_merge_out_mul3474,
        in_or_cond72 => mem_read_generic_B4_merge_out_or_cond72,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => mem_read_generic_B4_branch_out_stall_out,
        in_stride => in_stride,
        in_sub2465 => mem_read_generic_B4_merge_out_sub2465,
        in_sub2769 => mem_read_generic_B4_merge_out_sub2769,
        in_unnamed_mem_read_generic3 => mem_read_generic_B4_merge_out_unnamed_mem_read_generic3,
        in_unnamed_mem_read_generic4 => mem_read_generic_B4_merge_out_unnamed_mem_read_generic4,
        in_unnamed_mem_read_generic5 => mem_read_generic_B4_merge_out_unnamed_mem_read_generic5,
        in_valid_in => mem_read_generic_B4_merge_out_valid_out,
        in_w => in_w,
        out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out => bb_mem_read_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out => bb_mem_read_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out,
        out_c0_exe10 => bb_mem_read_generic_B4_stall_region_out_c0_exe10,
        out_c0_exe11 => bb_mem_read_generic_B4_stall_region_out_c0_exe11,
        out_c0_exe1128 => bb_mem_read_generic_B4_stall_region_out_c0_exe1128,
        out_c0_exe12 => bb_mem_read_generic_B4_stall_region_out_c0_exe12,
        out_c0_exe13 => bb_mem_read_generic_B4_stall_region_out_c0_exe13,
        out_c0_exe2129 => bb_mem_read_generic_B4_stall_region_out_c0_exe2129,
        out_c0_exe3130 => bb_mem_read_generic_B4_stall_region_out_c0_exe3130,
        out_c0_exe4131 => bb_mem_read_generic_B4_stall_region_out_c0_exe4131,
        out_c0_exe5132 => bb_mem_read_generic_B4_stall_region_out_c0_exe5132,
        out_c0_exe6133 => bb_mem_read_generic_B4_stall_region_out_c0_exe6133,
        out_c0_exe7134 => bb_mem_read_generic_B4_stall_region_out_c0_exe7134,
        out_c0_exe8135 => bb_mem_read_generic_B4_stall_region_out_c0_exe8135,
        out_pipeline_valid_out => bb_mem_read_generic_B4_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_mem_read_generic_B4_stall_region_out_stall_out,
        out_valid_out => bb_mem_read_generic_B4_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_read_generic_B4_branch(BLACKBOX,30)
    themem_read_generic_B4_branch : mem_read_generic_B4_branch
    PORT MAP (
        in_c0_exe10 => bb_mem_read_generic_B4_stall_region_out_c0_exe10,
        in_c0_exe11 => bb_mem_read_generic_B4_stall_region_out_c0_exe11,
        in_c0_exe1128 => bb_mem_read_generic_B4_stall_region_out_c0_exe1128,
        in_c0_exe12 => bb_mem_read_generic_B4_stall_region_out_c0_exe12,
        in_c0_exe13 => bb_mem_read_generic_B4_stall_region_out_c0_exe13,
        in_c0_exe2129 => bb_mem_read_generic_B4_stall_region_out_c0_exe2129,
        in_c0_exe3130 => bb_mem_read_generic_B4_stall_region_out_c0_exe3130,
        in_c0_exe4131 => bb_mem_read_generic_B4_stall_region_out_c0_exe4131,
        in_c0_exe5132 => bb_mem_read_generic_B4_stall_region_out_c0_exe5132,
        in_c0_exe6133 => bb_mem_read_generic_B4_stall_region_out_c0_exe6133,
        in_c0_exe7134 => bb_mem_read_generic_B4_stall_region_out_c0_exe7134,
        in_c0_exe8135 => bb_mem_read_generic_B4_stall_region_out_c0_exe8135,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_mem_read_generic_B4_stall_region_out_valid_out,
        out_c0_exe10 => mem_read_generic_B4_branch_out_c0_exe10,
        out_c0_exe11 => mem_read_generic_B4_branch_out_c0_exe11,
        out_c0_exe1128 => mem_read_generic_B4_branch_out_c0_exe1128,
        out_c0_exe12 => mem_read_generic_B4_branch_out_c0_exe12,
        out_c0_exe13 => mem_read_generic_B4_branch_out_c0_exe13,
        out_c0_exe2129 => mem_read_generic_B4_branch_out_c0_exe2129,
        out_c0_exe3130 => mem_read_generic_B4_branch_out_c0_exe3130,
        out_c0_exe4131 => mem_read_generic_B4_branch_out_c0_exe4131,
        out_c0_exe5132 => mem_read_generic_B4_branch_out_c0_exe5132,
        out_c0_exe6133 => mem_read_generic_B4_branch_out_c0_exe6133,
        out_c0_exe7134 => mem_read_generic_B4_branch_out_c0_exe7134,
        out_c0_exe8135 => mem_read_generic_B4_branch_out_c0_exe8135,
        out_stall_out => mem_read_generic_B4_branch_out_stall_out,
        out_valid_out_0 => mem_read_generic_B4_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe10(GPOUT,32)
    out_c0_exe10 <= mem_read_generic_B4_branch_out_c0_exe10;

    -- out_c0_exe11(GPOUT,33)
    out_c0_exe11 <= mem_read_generic_B4_branch_out_c0_exe11;

    -- out_c0_exe1128(GPOUT,34)
    out_c0_exe1128 <= mem_read_generic_B4_branch_out_c0_exe1128;

    -- out_c0_exe12(GPOUT,35)
    out_c0_exe12 <= mem_read_generic_B4_branch_out_c0_exe12;

    -- out_c0_exe13(GPOUT,36)
    out_c0_exe13 <= mem_read_generic_B4_branch_out_c0_exe13;

    -- out_c0_exe2129(GPOUT,37)
    out_c0_exe2129 <= mem_read_generic_B4_branch_out_c0_exe2129;

    -- out_c0_exe3130(GPOUT,38)
    out_c0_exe3130 <= mem_read_generic_B4_branch_out_c0_exe3130;

    -- out_c0_exe4131(GPOUT,39)
    out_c0_exe4131 <= mem_read_generic_B4_branch_out_c0_exe4131;

    -- out_c0_exe5132(GPOUT,40)
    out_c0_exe5132 <= mem_read_generic_B4_branch_out_c0_exe5132;

    -- out_c0_exe6133(GPOUT,41)
    out_c0_exe6133 <= mem_read_generic_B4_branch_out_c0_exe6133;

    -- out_c0_exe7134(GPOUT,42)
    out_c0_exe7134 <= mem_read_generic_B4_branch_out_c0_exe7134;

    -- out_c0_exe8135(GPOUT,43)
    out_c0_exe8135 <= mem_read_generic_B4_branch_out_c0_exe8135;

    -- out_exiting_stall_out(GPOUT,44)
    out_exiting_stall_out <= bb_mem_read_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,45)
    out_exiting_valid_out <= bb_mem_read_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out;

    -- out_stall_out_0(GPOUT,46)
    out_stall_out_0 <= mem_read_generic_B4_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,47)
    out_stall_out_1 <= mem_read_generic_B4_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,48)
    out_valid_out_0 <= mem_read_generic_B4_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,50)
    out_pipeline_valid_out <= bb_mem_read_generic_B4_stall_region_out_pipeline_valid_out;

END normal;
