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

-- VHDL created from bb_mem_write_generic_B2
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

entity bb_mem_write_generic_B2 is
    port (
        in_current_out_idx_14_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_current_out_idx_14_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked14_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked14_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_write_generic11_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic11_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe135 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe337 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe4 : out std_logic_vector(0 downto 0);  -- ufix1
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
end bb_mem_write_generic_B2;

architecture normal of bb_mem_write_generic_B2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_write_generic_B2_stall_region is
        port (
            in_current_out_idx_14 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe337 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B2_branch is
        port (
            in_c0_exe135 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe337 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe337 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B2_merge is
        port (
            in_current_out_idx_14_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_current_out_idx_14_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked14_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic11_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic11_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_current_out_idx_14 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_forked14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_mem_write_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_c0_exe135 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_c0_exe337 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_branch_out_c0_exe135 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_branch_out_c0_exe337 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_write_generic_B2_branch_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_merge_out_current_out_idx_14 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_write_generic_B2_merge_out_forked14 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_merge_out_unnamed_mem_write_generic11 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B2_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_write_generic_B2_merge(BLACKBOX,19)
    themem_write_generic_B2_merge : mem_write_generic_B2_merge
    PORT MAP (
        in_current_out_idx_14_0 => in_current_out_idx_14_0,
        in_current_out_idx_14_1 => in_current_out_idx_14_1,
        in_forked14_0 => in_forked14_0,
        in_forked14_1 => in_forked14_1,
        in_stall_in => bb_mem_write_generic_B2_stall_region_out_stall_out,
        in_unnamed_mem_write_generic11_0 => in_unnamed_mem_write_generic11_0,
        in_unnamed_mem_write_generic11_1 => in_unnamed_mem_write_generic11_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_current_out_idx_14 => mem_write_generic_B2_merge_out_current_out_idx_14,
        out_forked14 => mem_write_generic_B2_merge_out_forked14,
        out_stall_out_0 => mem_write_generic_B2_merge_out_stall_out_0,
        out_stall_out_1 => mem_write_generic_B2_merge_out_stall_out_1,
        out_unnamed_mem_write_generic11 => mem_write_generic_B2_merge_out_unnamed_mem_write_generic11,
        out_valid_out => mem_write_generic_B2_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B2_stall_region(BLACKBOX,2)
    thebb_mem_write_generic_B2_stall_region : bb_mem_write_generic_B2_stall_region
    PORT MAP (
        in_current_out_idx_14 => mem_write_generic_B2_merge_out_current_out_idx_14,
        in_forked14 => mem_write_generic_B2_merge_out_forked14,
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_out_c => in_out_c,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => mem_write_generic_B2_branch_out_stall_out,
        in_unnamed_mem_write_generic11 => mem_write_generic_B2_merge_out_unnamed_mem_write_generic11,
        in_valid_in => mem_write_generic_B2_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out => bb_mem_write_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out => bb_mem_write_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out,
        out_c0_exe135 => bb_mem_write_generic_B2_stall_region_out_c0_exe135,
        out_c0_exe337 => bb_mem_write_generic_B2_stall_region_out_c0_exe337,
        out_c0_exe4 => bb_mem_write_generic_B2_stall_region_out_c0_exe4,
        out_pipeline_valid_out => bb_mem_write_generic_B2_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_mem_write_generic_B2_stall_region_out_stall_out,
        out_valid_out => bb_mem_write_generic_B2_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_write_generic_B2_branch(BLACKBOX,18)
    themem_write_generic_B2_branch : mem_write_generic_B2_branch
    PORT MAP (
        in_c0_exe135 => bb_mem_write_generic_B2_stall_region_out_c0_exe135,
        in_c0_exe337 => bb_mem_write_generic_B2_stall_region_out_c0_exe337,
        in_c0_exe4 => bb_mem_write_generic_B2_stall_region_out_c0_exe4,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_mem_write_generic_B2_stall_region_out_valid_out,
        out_c0_exe135 => mem_write_generic_B2_branch_out_c0_exe135,
        out_c0_exe337 => mem_write_generic_B2_branch_out_c0_exe337,
        out_c0_exe4 => mem_write_generic_B2_branch_out_c0_exe4,
        out_stall_out => mem_write_generic_B2_branch_out_stall_out,
        out_valid_out_0 => mem_write_generic_B2_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe135(GPOUT,20)
    out_c0_exe135 <= mem_write_generic_B2_branch_out_c0_exe135;

    -- out_c0_exe337(GPOUT,21)
    out_c0_exe337 <= mem_write_generic_B2_branch_out_c0_exe337;

    -- out_c0_exe4(GPOUT,22)
    out_c0_exe4 <= mem_write_generic_B2_branch_out_c0_exe4;

    -- out_exiting_stall_out(GPOUT,23)
    out_exiting_stall_out <= bb_mem_write_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,24)
    out_exiting_valid_out <= bb_mem_write_generic_B2_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out;

    -- out_stall_out_0(GPOUT,25)
    out_stall_out_0 <= mem_write_generic_B2_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,26)
    out_stall_out_1 <= mem_write_generic_B2_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,27)
    out_valid_out_0 <= mem_write_generic_B2_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,29)
    out_pipeline_valid_out <= bb_mem_write_generic_B2_stall_region_out_pipeline_valid_out;

END normal;
