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

-- VHDL created from bb_mem_read_generic_B3
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

entity bb_mem_read_generic_B3 is
    port (
        in_forked67_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked67_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2464_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2464_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2768_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2768_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic1_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic2_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic2_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exe1103 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2104 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3105 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe4106 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe7 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe8 : out std_logic_vector(0 downto 0);  -- ufix1
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
end bb_mem_read_generic_B3;

architecture normal of bb_mem_read_generic_B3 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_read_generic_B3_stall_region is
        port (
            in_forked67 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sub2464 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2768 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1103 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2104 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3105 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4106 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B3_branch is
        port (
            in_c0_exe1103 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe2104 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3105 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe4106 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe7 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1103 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2104 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3105 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4106 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B3_merge is
        port (
            in_forked67_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked67_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sub2464_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2464_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2768_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2768_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic1_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic2_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked67 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sub2464 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_sub2768 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_mem_read_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe1103 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe2104 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe3105 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe4106 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe1103 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe2104 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe3105 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe4106 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe7 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B3_branch_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_merge_out_forked67 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_merge_out_sub2464 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B3_merge_out_sub2768 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B3_merge_out_unnamed_mem_read_generic1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_merge_out_unnamed_mem_read_generic2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B3_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_read_generic_B3_merge(BLACKBOX,25)
    themem_read_generic_B3_merge : mem_read_generic_B3_merge
    PORT MAP (
        in_forked67_0 => in_forked67_0,
        in_forked67_1 => in_forked67_1,
        in_stall_in => bb_mem_read_generic_B3_stall_region_out_stall_out,
        in_sub2464_0 => in_sub2464_0,
        in_sub2464_1 => in_sub2464_1,
        in_sub2768_0 => in_sub2768_0,
        in_sub2768_1 => in_sub2768_1,
        in_unnamed_mem_read_generic1_0 => in_unnamed_mem_read_generic1_0,
        in_unnamed_mem_read_generic1_1 => in_unnamed_mem_read_generic1_1,
        in_unnamed_mem_read_generic2_0 => in_unnamed_mem_read_generic2_0,
        in_unnamed_mem_read_generic2_1 => in_unnamed_mem_read_generic2_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked67 => mem_read_generic_B3_merge_out_forked67,
        out_stall_out_0 => mem_read_generic_B3_merge_out_stall_out_0,
        out_stall_out_1 => mem_read_generic_B3_merge_out_stall_out_1,
        out_sub2464 => mem_read_generic_B3_merge_out_sub2464,
        out_sub2768 => mem_read_generic_B3_merge_out_sub2768,
        out_unnamed_mem_read_generic1 => mem_read_generic_B3_merge_out_unnamed_mem_read_generic1,
        out_unnamed_mem_read_generic2 => mem_read_generic_B3_merge_out_unnamed_mem_read_generic2,
        out_valid_out => mem_read_generic_B3_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B3_stall_region(BLACKBOX,2)
    thebb_mem_read_generic_B3_stall_region : bb_mem_read_generic_B3_stall_region
    PORT MAP (
        in_forked67 => mem_read_generic_B3_merge_out_forked67,
        in_h => in_h,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => mem_read_generic_B3_branch_out_stall_out,
        in_sub2464 => mem_read_generic_B3_merge_out_sub2464,
        in_sub2768 => mem_read_generic_B3_merge_out_sub2768,
        in_unnamed_mem_read_generic1 => mem_read_generic_B3_merge_out_unnamed_mem_read_generic1,
        in_unnamed_mem_read_generic2 => mem_read_generic_B3_merge_out_unnamed_mem_read_generic2,
        in_valid_in => mem_read_generic_B3_merge_out_valid_out,
        in_w => in_w,
        out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out => bb_mem_read_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out => bb_mem_read_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out,
        out_c0_exe1103 => bb_mem_read_generic_B3_stall_region_out_c0_exe1103,
        out_c0_exe2104 => bb_mem_read_generic_B3_stall_region_out_c0_exe2104,
        out_c0_exe3105 => bb_mem_read_generic_B3_stall_region_out_c0_exe3105,
        out_c0_exe4106 => bb_mem_read_generic_B3_stall_region_out_c0_exe4106,
        out_c0_exe6 => bb_mem_read_generic_B3_stall_region_out_c0_exe6,
        out_c0_exe7 => bb_mem_read_generic_B3_stall_region_out_c0_exe7,
        out_c0_exe8 => bb_mem_read_generic_B3_stall_region_out_c0_exe8,
        out_pipeline_valid_out => bb_mem_read_generic_B3_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_mem_read_generic_B3_stall_region_out_stall_out,
        out_valid_out => bb_mem_read_generic_B3_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_read_generic_B3_branch(BLACKBOX,24)
    themem_read_generic_B3_branch : mem_read_generic_B3_branch
    PORT MAP (
        in_c0_exe1103 => bb_mem_read_generic_B3_stall_region_out_c0_exe1103,
        in_c0_exe2104 => bb_mem_read_generic_B3_stall_region_out_c0_exe2104,
        in_c0_exe3105 => bb_mem_read_generic_B3_stall_region_out_c0_exe3105,
        in_c0_exe4106 => bb_mem_read_generic_B3_stall_region_out_c0_exe4106,
        in_c0_exe6 => bb_mem_read_generic_B3_stall_region_out_c0_exe6,
        in_c0_exe7 => bb_mem_read_generic_B3_stall_region_out_c0_exe7,
        in_c0_exe8 => bb_mem_read_generic_B3_stall_region_out_c0_exe8,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_mem_read_generic_B3_stall_region_out_valid_out,
        out_c0_exe1103 => mem_read_generic_B3_branch_out_c0_exe1103,
        out_c0_exe2104 => mem_read_generic_B3_branch_out_c0_exe2104,
        out_c0_exe3105 => mem_read_generic_B3_branch_out_c0_exe3105,
        out_c0_exe4106 => mem_read_generic_B3_branch_out_c0_exe4106,
        out_c0_exe6 => mem_read_generic_B3_branch_out_c0_exe6,
        out_c0_exe7 => mem_read_generic_B3_branch_out_c0_exe7,
        out_c0_exe8 => mem_read_generic_B3_branch_out_c0_exe8,
        out_stall_out => mem_read_generic_B3_branch_out_stall_out,
        out_valid_out_0 => mem_read_generic_B3_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe1103(GPOUT,26)
    out_c0_exe1103 <= mem_read_generic_B3_branch_out_c0_exe1103;

    -- out_c0_exe2104(GPOUT,27)
    out_c0_exe2104 <= mem_read_generic_B3_branch_out_c0_exe2104;

    -- out_c0_exe3105(GPOUT,28)
    out_c0_exe3105 <= mem_read_generic_B3_branch_out_c0_exe3105;

    -- out_c0_exe4106(GPOUT,29)
    out_c0_exe4106 <= mem_read_generic_B3_branch_out_c0_exe4106;

    -- out_c0_exe6(GPOUT,30)
    out_c0_exe6 <= mem_read_generic_B3_branch_out_c0_exe6;

    -- out_c0_exe7(GPOUT,31)
    out_c0_exe7 <= mem_read_generic_B3_branch_out_c0_exe7;

    -- out_c0_exe8(GPOUT,32)
    out_c0_exe8 <= mem_read_generic_B3_branch_out_c0_exe8;

    -- out_exiting_stall_out(GPOUT,33)
    out_exiting_stall_out <= bb_mem_read_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,34)
    out_exiting_valid_out <= bb_mem_read_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out;

    -- out_stall_out_0(GPOUT,35)
    out_stall_out_0 <= mem_read_generic_B3_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,36)
    out_stall_out_1 <= mem_read_generic_B3_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,37)
    out_valid_out_0 <= mem_read_generic_B3_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,39)
    out_pipeline_valid_out <= bb_mem_read_generic_B3_stall_region_out_pipeline_valid_out;

END normal;
