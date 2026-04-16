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

-- VHDL created from bb_conv_generic_B1
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

entity bb_conv_generic_B1 is
    port (
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_b_off : in std_logic_vector(31 downto 0);  -- ufix32
        in_bias : in std_logic_vector(63 downto 0);  -- ufix64
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked192_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked192_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv_generic0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv_generic0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_off : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_weights : in std_logic_vector(63 downto 0);  -- ufix64
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_11_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_12_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_13_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_14_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_15_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv_generic0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv_generic0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B1;

architecture normal of bb_conv_generic_B1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_generic_B1_stall_region is
        port (
            in_b_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_bias : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked192 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_11_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_12_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_13_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_14_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_15_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B1_branch is
        port (
            in_c0_exe8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B1_merge is
        port (
            in_forked192_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked192_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked192 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_generic_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_10_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_11_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_12_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_13_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_14_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_15_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_8_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_9_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_generic_B1_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_merge_out_forked192 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B1_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B1_branch(BLACKBOX,3)
    theconv_generic_B1_branch : conv_generic_B1_branch
    PORT MAP (
        in_c0_exe8 => bb_conv_generic_B1_stall_region_out_c0_exe8,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_generic_B1_stall_region_out_valid_out,
        out_stall_out => conv_generic_B1_branch_out_stall_out,
        out_valid_out_0 => conv_generic_B1_branch_out_valid_out_0,
        out_valid_out_1 => conv_generic_B1_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B1_merge(BLACKBOX,4)
    theconv_generic_B1_merge : conv_generic_B1_merge
    PORT MAP (
        in_forked192_0 => in_forked192_0,
        in_forked192_1 => in_forked192_1,
        in_stall_in => bb_conv_generic_B1_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_forked192 => conv_generic_B1_merge_out_forked192,
        out_stall_out_0 => conv_generic_B1_merge_out_stall_out_0,
        out_stall_out_1 => conv_generic_B1_merge_out_stall_out_1,
        out_valid_out => conv_generic_B1_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B1_stall_region(BLACKBOX,2)
    thebb_conv_generic_B1_stall_region : bb_conv_generic_B1_stall_region
    PORT MAP (
        in_b_off => in_b_off,
        in_bias => in_bias,
        in_flush => in_flush,
        in_forked192 => conv_generic_B1_merge_out_forked192,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => conv_generic_B1_branch_out_stall_out,
        in_tile_channels => in_tile_channels,
        in_unnamed_conv_generic0_avm_readdata => in_unnamed_conv_generic0_avm_readdata,
        in_unnamed_conv_generic0_avm_readdatavalid => in_unnamed_conv_generic0_avm_readdatavalid,
        in_unnamed_conv_generic0_avm_waitrequest => in_unnamed_conv_generic0_avm_waitrequest,
        in_unnamed_conv_generic0_avm_writeack => in_unnamed_conv_generic0_avm_writeack,
        in_valid_in => conv_generic_B1_merge_out_valid_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out => bb_conv_generic_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out => bb_conv_generic_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out,
        out_c0_exe8 => bb_conv_generic_B1_stall_region_out_c0_exe8,
        out_intel_reserved_ffwd_0_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_10_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_10_0,
        out_intel_reserved_ffwd_11_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_11_0,
        out_intel_reserved_ffwd_12_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_12_0,
        out_intel_reserved_ffwd_13_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_13_0,
        out_intel_reserved_ffwd_14_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_14_0,
        out_intel_reserved_ffwd_15_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_15_0,
        out_intel_reserved_ffwd_1_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_2_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_2_0,
        out_intel_reserved_ffwd_3_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_3_0,
        out_intel_reserved_ffwd_4_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_6_0,
        out_intel_reserved_ffwd_7_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_7_0,
        out_intel_reserved_ffwd_8_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_8_0,
        out_intel_reserved_ffwd_9_0 => bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_9_0,
        out_pipeline_valid_out => bb_conv_generic_B1_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_conv_generic_B1_stall_region_out_stall_out,
        out_unnamed_conv_generic0_avm_address => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_address,
        out_unnamed_conv_generic0_avm_burstcount => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_burstcount,
        out_unnamed_conv_generic0_avm_byteenable => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_byteenable,
        out_unnamed_conv_generic0_avm_enable => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_enable,
        out_unnamed_conv_generic0_avm_read => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_read,
        out_unnamed_conv_generic0_avm_write => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_write,
        out_unnamed_conv_generic0_avm_writedata => bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_writedata,
        out_valid_out => bb_conv_generic_B1_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- out_exiting_stall_out(GPOUT,31)
    out_exiting_stall_out <= bb_conv_generic_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,32)
    out_exiting_valid_out <= bb_conv_generic_B1_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out;

    -- out_intel_reserved_ffwd_0_0(GPOUT,33)
    out_intel_reserved_ffwd_0_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_0_0;

    -- out_intel_reserved_ffwd_10_0(GPOUT,34)
    out_intel_reserved_ffwd_10_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_10_0;

    -- out_intel_reserved_ffwd_11_0(GPOUT,35)
    out_intel_reserved_ffwd_11_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_11_0;

    -- out_intel_reserved_ffwd_12_0(GPOUT,36)
    out_intel_reserved_ffwd_12_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_12_0;

    -- out_intel_reserved_ffwd_13_0(GPOUT,37)
    out_intel_reserved_ffwd_13_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_13_0;

    -- out_intel_reserved_ffwd_14_0(GPOUT,38)
    out_intel_reserved_ffwd_14_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_14_0;

    -- out_intel_reserved_ffwd_15_0(GPOUT,39)
    out_intel_reserved_ffwd_15_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_15_0;

    -- out_intel_reserved_ffwd_1_0(GPOUT,40)
    out_intel_reserved_ffwd_1_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_1_0;

    -- out_intel_reserved_ffwd_2_0(GPOUT,41)
    out_intel_reserved_ffwd_2_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_2_0;

    -- out_intel_reserved_ffwd_3_0(GPOUT,42)
    out_intel_reserved_ffwd_3_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_3_0;

    -- out_intel_reserved_ffwd_4_0(GPOUT,43)
    out_intel_reserved_ffwd_4_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_4_0;

    -- out_intel_reserved_ffwd_5_0(GPOUT,44)
    out_intel_reserved_ffwd_5_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_5_0;

    -- out_intel_reserved_ffwd_6_0(GPOUT,45)
    out_intel_reserved_ffwd_6_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_6_0;

    -- out_intel_reserved_ffwd_7_0(GPOUT,46)
    out_intel_reserved_ffwd_7_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_7_0;

    -- out_intel_reserved_ffwd_8_0(GPOUT,47)
    out_intel_reserved_ffwd_8_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_8_0;

    -- out_intel_reserved_ffwd_9_0(GPOUT,48)
    out_intel_reserved_ffwd_9_0 <= bb_conv_generic_B1_stall_region_out_intel_reserved_ffwd_9_0;

    -- out_stall_out_0(GPOUT,49)
    out_stall_out_0 <= conv_generic_B1_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,50)
    out_stall_out_1 <= conv_generic_B1_merge_out_stall_out_1;

    -- out_unnamed_conv_generic0_avm_address(GPOUT,51)
    out_unnamed_conv_generic0_avm_address <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_address;

    -- out_unnamed_conv_generic0_avm_burstcount(GPOUT,52)
    out_unnamed_conv_generic0_avm_burstcount <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_burstcount;

    -- out_unnamed_conv_generic0_avm_byteenable(GPOUT,53)
    out_unnamed_conv_generic0_avm_byteenable <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_byteenable;

    -- out_unnamed_conv_generic0_avm_enable(GPOUT,54)
    out_unnamed_conv_generic0_avm_enable <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_enable;

    -- out_unnamed_conv_generic0_avm_read(GPOUT,55)
    out_unnamed_conv_generic0_avm_read <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_read;

    -- out_unnamed_conv_generic0_avm_write(GPOUT,56)
    out_unnamed_conv_generic0_avm_write <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_write;

    -- out_unnamed_conv_generic0_avm_writedata(GPOUT,57)
    out_unnamed_conv_generic0_avm_writedata <= bb_conv_generic_B1_stall_region_out_unnamed_conv_generic0_avm_writedata;

    -- out_valid_out_0(GPOUT,58)
    out_valid_out_0 <= conv_generic_B1_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,59)
    out_valid_out_1 <= conv_generic_B1_branch_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,61)
    out_pipeline_valid_out <= bb_conv_generic_B1_stall_region_out_pipeline_valid_out;

END normal;
