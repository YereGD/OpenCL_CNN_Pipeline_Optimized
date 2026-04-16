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

-- VHDL created from bb_mem_read_generic_B2
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

entity bb_mem_read_generic_B2 is
    port (
        in_forked62_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked62_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2463_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2463_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic0_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exe187 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe288 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe5 : out std_logic_vector(0 downto 0);  -- ufix1
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
end bb_mem_read_generic_B2;

architecture normal of bb_mem_read_generic_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_read_generic_B2_stall_region is
        port (
            in_forked62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2463 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe187 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe288 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B2_branch is
        port (
            in_c0_exe187 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe288 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe187 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe288 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B2_merge is
        port (
            in_forked62_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked62_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sub2463_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2463_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sub2463 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_mem_read_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_c0_exe187 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_c0_exe288 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_c0_exe4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_branch_out_c0_exe187 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B2_branch_out_c0_exe288 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_branch_out_c0_exe4 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B2_branch_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_merge_out_forked62 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_merge_out_sub2463 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B2_merge_out_unnamed_mem_read_generic0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_read_generic_B2_merge(BLACKBOX,21)
    themem_read_generic_B2_merge : mem_read_generic_B2_merge
    PORT MAP (
        in_forked62_0 => in_forked62_0,
        in_forked62_1 => in_forked62_1,
        in_stall_in => bb_mem_read_generic_B2_stall_region_out_stall_out,
        in_sub2463_0 => in_sub2463_0,
        in_sub2463_1 => in_sub2463_1,
        in_unnamed_mem_read_generic0_0 => in_unnamed_mem_read_generic0_0,
        in_unnamed_mem_read_generic0_1 => in_unnamed_mem_read_generic0_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked62 => mem_read_generic_B2_merge_out_forked62,
        out_stall_out_0 => mem_read_generic_B2_merge_out_stall_out_0,
        out_stall_out_1 => mem_read_generic_B2_merge_out_stall_out_1,
        out_sub2463 => mem_read_generic_B2_merge_out_sub2463,
        out_unnamed_mem_read_generic0 => mem_read_generic_B2_merge_out_unnamed_mem_read_generic0,
        out_valid_out => mem_read_generic_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B2_stall_region(BLACKBOX,2)
    thebb_mem_read_generic_B2_stall_region : bb_mem_read_generic_B2_stall_region
    PORT MAP (
        in_forked62 => mem_read_generic_B2_merge_out_forked62,
        in_h => in_h,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => mem_read_generic_B2_branch_out_stall_out,
        in_stride => in_stride,
        in_sub2463 => mem_read_generic_B2_merge_out_sub2463,
        in_unnamed_mem_read_generic0 => mem_read_generic_B2_merge_out_unnamed_mem_read_generic0,
        in_valid_in => mem_read_generic_B2_merge_out_valid_out,
        in_w => in_w,
        out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out => bb_mem_read_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out => bb_mem_read_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out,
        out_c0_exe187 => bb_mem_read_generic_B2_stall_region_out_c0_exe187,
        out_c0_exe288 => bb_mem_read_generic_B2_stall_region_out_c0_exe288,
        out_c0_exe4 => bb_mem_read_generic_B2_stall_region_out_c0_exe4,
        out_c0_exe5 => bb_mem_read_generic_B2_stall_region_out_c0_exe5,
        out_pipeline_valid_out => bb_mem_read_generic_B2_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_mem_read_generic_B2_stall_region_out_stall_out,
        out_valid_out => bb_mem_read_generic_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_read_generic_B2_branch(BLACKBOX,20)
    themem_read_generic_B2_branch : mem_read_generic_B2_branch
    PORT MAP (
        in_c0_exe187 => bb_mem_read_generic_B2_stall_region_out_c0_exe187,
        in_c0_exe288 => bb_mem_read_generic_B2_stall_region_out_c0_exe288,
        in_c0_exe4 => bb_mem_read_generic_B2_stall_region_out_c0_exe4,
        in_c0_exe5 => bb_mem_read_generic_B2_stall_region_out_c0_exe5,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_mem_read_generic_B2_stall_region_out_valid_out,
        out_c0_exe187 => mem_read_generic_B2_branch_out_c0_exe187,
        out_c0_exe288 => mem_read_generic_B2_branch_out_c0_exe288,
        out_c0_exe4 => mem_read_generic_B2_branch_out_c0_exe4,
        out_c0_exe5 => mem_read_generic_B2_branch_out_c0_exe5,
        out_stall_out => mem_read_generic_B2_branch_out_stall_out,
        out_valid_out_0 => mem_read_generic_B2_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe187(GPOUT,22)
    out_c0_exe187 <= mem_read_generic_B2_branch_out_c0_exe187;

    -- out_c0_exe288(GPOUT,23)
    out_c0_exe288 <= mem_read_generic_B2_branch_out_c0_exe288;

    -- out_c0_exe4(GPOUT,24)
    out_c0_exe4 <= mem_read_generic_B2_branch_out_c0_exe4;

    -- out_c0_exe5(GPOUT,25)
    out_c0_exe5 <= mem_read_generic_B2_branch_out_c0_exe5;

    -- out_exiting_stall_out(GPOUT,26)
    out_exiting_stall_out <= bb_mem_read_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,27)
    out_exiting_valid_out <= bb_mem_read_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out;

    -- out_stall_out_0(GPOUT,28)
    out_stall_out_0 <= mem_read_generic_B2_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,29)
    out_stall_out_1 <= mem_read_generic_B2_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,30)
    out_valid_out_0 <= mem_read_generic_B2_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,32)
    out_pipeline_valid_out <= bb_mem_read_generic_B2_stall_region_out_pipeline_valid_out;

END normal;
