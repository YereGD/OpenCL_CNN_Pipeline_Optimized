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

-- VHDL created from bb_conv_generic_B7
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

entity bb_conv_generic_B7 is
    port (
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked275_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked275_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv_generic39_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic39_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe1341 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3343 : out std_logic_vector(0 downto 0);  -- ufix1
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
end bb_conv_generic_B7;

architecture normal of bb_conv_generic_B7 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_generic_B7_stall_region is
        port (
            in_forked275 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1341 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3343 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B7_branch is
        port (
            in_c0_exe1341 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3343 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1341 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3343 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B7_merge is
        port (
            in_forked275_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked275_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic39_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic39_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked275 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_generic_B7_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_stall_region_out_c0_exe1341 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_stall_region_out_c0_exe3343 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_branch_out_c0_exe1341 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_branch_out_c0_exe3343 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_merge_out_forked275 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_merge_out_unnamed_conv_generic39 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B7_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B7_merge(BLACKBOX,4)
    theconv_generic_B7_merge : conv_generic_B7_merge
    PORT MAP (
        in_forked275_0 => in_forked275_0,
        in_forked275_1 => in_forked275_1,
        in_stall_in => bb_conv_generic_B7_stall_region_out_stall_out,
        in_unnamed_conv_generic39_0 => in_unnamed_conv_generic39_0,
        in_unnamed_conv_generic39_1 => in_unnamed_conv_generic39_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked275 => conv_generic_B7_merge_out_forked275,
        out_stall_out_0 => conv_generic_B7_merge_out_stall_out_0,
        out_stall_out_1 => conv_generic_B7_merge_out_stall_out_1,
        out_unnamed_conv_generic39 => conv_generic_B7_merge_out_unnamed_conv_generic39,
        out_valid_out => conv_generic_B7_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B7_stall_region(BLACKBOX,2)
    thebb_conv_generic_B7_stall_region : bb_conv_generic_B7_stall_region
    PORT MAP (
        in_forked275 => conv_generic_B7_merge_out_forked275,
        in_h => in_h,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => conv_generic_B7_branch_out_stall_out,
        in_stride => in_stride,
        in_unnamed_conv_generic39 => conv_generic_B7_merge_out_unnamed_conv_generic39,
        in_valid_in => conv_generic_B7_merge_out_valid_out,
        in_w => in_w,
        out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out => bb_conv_generic_B7_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out => bb_conv_generic_B7_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out,
        out_c0_exe1341 => bb_conv_generic_B7_stall_region_out_c0_exe1341,
        out_c0_exe3343 => bb_conv_generic_B7_stall_region_out_c0_exe3343,
        out_pipeline_valid_out => bb_conv_generic_B7_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_conv_generic_B7_stall_region_out_stall_out,
        out_valid_out => bb_conv_generic_B7_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B7_branch(BLACKBOX,3)
    theconv_generic_B7_branch : conv_generic_B7_branch
    PORT MAP (
        in_c0_exe1341 => bb_conv_generic_B7_stall_region_out_c0_exe1341,
        in_c0_exe3343 => bb_conv_generic_B7_stall_region_out_c0_exe3343,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv_generic_B7_stall_region_out_valid_out,
        out_c0_exe1341 => conv_generic_B7_branch_out_c0_exe1341,
        out_c0_exe3343 => conv_generic_B7_branch_out_c0_exe3343,
        out_stall_out => conv_generic_B7_branch_out_stall_out,
        out_valid_out_0 => conv_generic_B7_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe1341(GPOUT,23)
    out_c0_exe1341 <= conv_generic_B7_branch_out_c0_exe1341;

    -- out_c0_exe3343(GPOUT,24)
    out_c0_exe3343 <= conv_generic_B7_branch_out_c0_exe3343;

    -- out_exiting_stall_out(GPOUT,25)
    out_exiting_stall_out <= bb_conv_generic_B7_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,26)
    out_exiting_valid_out <= bb_conv_generic_B7_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out;

    -- out_stall_out_0(GPOUT,27)
    out_stall_out_0 <= conv_generic_B7_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,28)
    out_stall_out_1 <= conv_generic_B7_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,29)
    out_valid_out_0 <= conv_generic_B7_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,31)
    out_pipeline_valid_out <= bb_conv_generic_B7_stall_region_out_pipeline_valid_out;

END normal;
