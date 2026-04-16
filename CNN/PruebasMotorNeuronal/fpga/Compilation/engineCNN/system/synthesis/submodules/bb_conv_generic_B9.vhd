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

-- VHDL created from bb_conv_generic_B9
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

entity bb_conv_generic_B9 is
    port (
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked267_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked267_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268279_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268279_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_notexit254281_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit254281_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv_generic42_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic42_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic43_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic43_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic44_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic44_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe1380 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2381 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3382 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4383 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5384 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe6385 : out std_logic_vector(32 downto 0);  -- ufix33
        out_c0_exe7386 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8387 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked267 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B9;

architecture normal of bb_conv_generic_B9 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_generic_B9_stall_region is
        port (
            in_forked267 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268279 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_notexit254281 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic43 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic44 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1380 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2381 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3382 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4383 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5384 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe6385 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_c0_exe7386 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8387 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked267 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B9_branch is
        port (
            in_c0_exe1380 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe2381 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe3382 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4383 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5384 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe6385 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_c0_exe7386 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe8387 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked267 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1380 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2381 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3382 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4383 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5384 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe6385 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_c0_exe7386 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8387 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked267 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B9_merge is
        port (
            in_forked267_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked267_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268279_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268279_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254281_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254281_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic42_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic42_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic43_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic43_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic44_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic44_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked267 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked268279 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_notexit254281 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic43 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic44 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_generic_B9_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe1380 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe2381 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe3382 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe4383 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe5384 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe6385 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe7386 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe8387 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_c0_exe9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_forked267 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe1380 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe2381 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe3382 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe4383 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe5384 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_B9_branch_out_c0_exe6385 : STD_LOGIC_VECTOR (32 downto 0);
    signal conv_generic_B9_branch_out_c0_exe7386 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe8387 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_c0_exe9 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_forked267 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_forked267 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_forked268279 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_notexit254281 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_unnamed_conv_generic42 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_unnamed_conv_generic43 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_unnamed_conv_generic44 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B9_merge(BLACKBOX,4)
    theconv_generic_B9_merge : conv_generic_B9_merge
    PORT MAP (
        in_forked267_0 => in_forked267_0,
        in_forked267_1 => in_forked267_1,
        in_forked268279_0 => in_forked268279_0,
        in_forked268279_1 => in_forked268279_1,
        in_notexit254281_0 => in_notexit254281_0,
        in_notexit254281_1 => in_notexit254281_1,
        in_stall_in => bb_conv_generic_B9_stall_region_out_stall_out,
        in_unnamed_conv_generic42_0 => in_unnamed_conv_generic42_0,
        in_unnamed_conv_generic42_1 => in_unnamed_conv_generic42_1,
        in_unnamed_conv_generic43_0 => in_unnamed_conv_generic43_0,
        in_unnamed_conv_generic43_1 => in_unnamed_conv_generic43_1,
        in_unnamed_conv_generic44_0 => in_unnamed_conv_generic44_0,
        in_unnamed_conv_generic44_1 => in_unnamed_conv_generic44_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked267 => conv_generic_B9_merge_out_forked267,
        out_forked268279 => conv_generic_B9_merge_out_forked268279,
        out_notexit254281 => conv_generic_B9_merge_out_notexit254281,
        out_stall_out_0 => conv_generic_B9_merge_out_stall_out_0,
        out_stall_out_1 => conv_generic_B9_merge_out_stall_out_1,
        out_unnamed_conv_generic42 => conv_generic_B9_merge_out_unnamed_conv_generic42,
        out_unnamed_conv_generic43 => conv_generic_B9_merge_out_unnamed_conv_generic43,
        out_unnamed_conv_generic44 => conv_generic_B9_merge_out_unnamed_conv_generic44,
        out_valid_out => conv_generic_B9_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B9_stall_region(BLACKBOX,2)
    thebb_conv_generic_B9_stall_region : bb_conv_generic_B9_stall_region
    PORT MAP (
        in_forked267 => conv_generic_B9_merge_out_forked267,
        in_forked268279 => conv_generic_B9_merge_out_forked268279,
        in_h => in_h,
        in_in_c => in_in_c,
        in_notexit254281 => conv_generic_B9_merge_out_notexit254281,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => conv_generic_B9_branch_out_stall_out,
        in_stride => in_stride,
        in_unnamed_conv_generic42 => conv_generic_B9_merge_out_unnamed_conv_generic42,
        in_unnamed_conv_generic43 => conv_generic_B9_merge_out_unnamed_conv_generic43,
        in_unnamed_conv_generic44 => conv_generic_B9_merge_out_unnamed_conv_generic44,
        in_valid_in => conv_generic_B9_merge_out_valid_out,
        in_w => in_w,
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out => bb_conv_generic_B9_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out => bb_conv_generic_B9_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out,
        out_c0_exe1380 => bb_conv_generic_B9_stall_region_out_c0_exe1380,
        out_c0_exe2381 => bb_conv_generic_B9_stall_region_out_c0_exe2381,
        out_c0_exe3382 => bb_conv_generic_B9_stall_region_out_c0_exe3382,
        out_c0_exe4383 => bb_conv_generic_B9_stall_region_out_c0_exe4383,
        out_c0_exe5384 => bb_conv_generic_B9_stall_region_out_c0_exe5384,
        out_c0_exe6385 => bb_conv_generic_B9_stall_region_out_c0_exe6385,
        out_c0_exe7386 => bb_conv_generic_B9_stall_region_out_c0_exe7386,
        out_c0_exe8387 => bb_conv_generic_B9_stall_region_out_c0_exe8387,
        out_c0_exe9 => bb_conv_generic_B9_stall_region_out_c0_exe9,
        out_forked267 => bb_conv_generic_B9_stall_region_out_forked267,
        out_pipeline_valid_out => bb_conv_generic_B9_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_conv_generic_B9_stall_region_out_stall_out,
        out_valid_out => bb_conv_generic_B9_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B9_branch(BLACKBOX,3)
    theconv_generic_B9_branch : conv_generic_B9_branch
    PORT MAP (
        in_c0_exe1380 => bb_conv_generic_B9_stall_region_out_c0_exe1380,
        in_c0_exe2381 => bb_conv_generic_B9_stall_region_out_c0_exe2381,
        in_c0_exe3382 => bb_conv_generic_B9_stall_region_out_c0_exe3382,
        in_c0_exe4383 => bb_conv_generic_B9_stall_region_out_c0_exe4383,
        in_c0_exe5384 => bb_conv_generic_B9_stall_region_out_c0_exe5384,
        in_c0_exe6385 => bb_conv_generic_B9_stall_region_out_c0_exe6385,
        in_c0_exe7386 => bb_conv_generic_B9_stall_region_out_c0_exe7386,
        in_c0_exe8387 => bb_conv_generic_B9_stall_region_out_c0_exe8387,
        in_c0_exe9 => bb_conv_generic_B9_stall_region_out_c0_exe9,
        in_forked267 => bb_conv_generic_B9_stall_region_out_forked267,
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_conv_generic_B9_stall_region_out_valid_out,
        out_c0_exe1380 => conv_generic_B9_branch_out_c0_exe1380,
        out_c0_exe2381 => conv_generic_B9_branch_out_c0_exe2381,
        out_c0_exe3382 => conv_generic_B9_branch_out_c0_exe3382,
        out_c0_exe4383 => conv_generic_B9_branch_out_c0_exe4383,
        out_c0_exe5384 => conv_generic_B9_branch_out_c0_exe5384,
        out_c0_exe6385 => conv_generic_B9_branch_out_c0_exe6385,
        out_c0_exe7386 => conv_generic_B9_branch_out_c0_exe7386,
        out_c0_exe8387 => conv_generic_B9_branch_out_c0_exe8387,
        out_c0_exe9 => conv_generic_B9_branch_out_c0_exe9,
        out_forked267 => conv_generic_B9_branch_out_forked267,
        out_stall_out => conv_generic_B9_branch_out_stall_out,
        out_valid_out_0 => conv_generic_B9_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe1380(GPOUT,31)
    out_c0_exe1380 <= conv_generic_B9_branch_out_c0_exe1380;

    -- out_c0_exe2381(GPOUT,32)
    out_c0_exe2381 <= conv_generic_B9_branch_out_c0_exe2381;

    -- out_c0_exe3382(GPOUT,33)
    out_c0_exe3382 <= conv_generic_B9_branch_out_c0_exe3382;

    -- out_c0_exe4383(GPOUT,34)
    out_c0_exe4383 <= conv_generic_B9_branch_out_c0_exe4383;

    -- out_c0_exe5384(GPOUT,35)
    out_c0_exe5384 <= conv_generic_B9_branch_out_c0_exe5384;

    -- out_c0_exe6385(GPOUT,36)
    out_c0_exe6385 <= conv_generic_B9_branch_out_c0_exe6385;

    -- out_c0_exe7386(GPOUT,37)
    out_c0_exe7386 <= conv_generic_B9_branch_out_c0_exe7386;

    -- out_c0_exe8387(GPOUT,38)
    out_c0_exe8387 <= conv_generic_B9_branch_out_c0_exe8387;

    -- out_c0_exe9(GPOUT,39)
    out_c0_exe9 <= conv_generic_B9_branch_out_c0_exe9;

    -- out_exiting_stall_out(GPOUT,40)
    out_exiting_stall_out <= bb_conv_generic_B9_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,41)
    out_exiting_valid_out <= bb_conv_generic_B9_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out;

    -- out_forked267(GPOUT,42)
    out_forked267 <= conv_generic_B9_branch_out_forked267;

    -- out_stall_out_0(GPOUT,43)
    out_stall_out_0 <= conv_generic_B9_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,44)
    out_stall_out_1 <= conv_generic_B9_merge_out_stall_out_1;

    -- out_valid_out_0(GPOUT,45)
    out_valid_out_0 <= conv_generic_B9_branch_out_valid_out_0;

    -- pipeline_valid_out_sync(GPOUT,47)
    out_pipeline_valid_out <= bb_conv_generic_B9_stall_region_out_pipeline_valid_out;

END normal;
