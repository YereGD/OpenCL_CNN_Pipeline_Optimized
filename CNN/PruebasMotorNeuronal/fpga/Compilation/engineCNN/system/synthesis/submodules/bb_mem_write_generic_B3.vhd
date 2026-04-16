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

-- VHDL created from bb_mem_write_generic_B3
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

entity bb_mem_write_generic_B3 is
    port (
        out_c0_exit49_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit49_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_lsu_unnamed_mem_write_generic17_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_current_out_idx_14_pop1025_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_current_out_idx_14_pop1025_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked24_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked24_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- ufix8
        in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_write_generic13_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic13_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic14_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic14_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_write_generic_B3;

architecture normal of bb_mem_write_generic_B3 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component mem_write_generic_B3_branch is
        port (
            in_c0_exit49_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit49_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit49_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit49_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit49_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit49_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit49_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe352 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit49_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B3_stall_region is
        port (
            in_current_out_idx_14_pop1025 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit49_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe352 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_mem_write_generic17_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B3_merge is
        port (
            in_current_out_idx_14_pop1025_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_current_out_idx_14_pop1025_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked24_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked24_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic13_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic13_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic14_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_current_out_idx_14_pop1025 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_forked24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exit49_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exe352 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_iord_bl_ch_out_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_lsu_unnamed_mem_write_generic17_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_mem_write_generic_B3_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_out_current_out_idx_14_pop1025 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_write_generic_B3_merge_out_forked24 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_out_unnamed_mem_write_generic13 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_out_unnamed_mem_write_generic14 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_write_generic_B3_merge(BLACKBOX,50)
    themem_write_generic_B3_merge : mem_write_generic_B3_merge
    PORT MAP (
        in_current_out_idx_14_pop1025_0 => in_current_out_idx_14_pop1025_0,
        in_current_out_idx_14_pop1025_1 => in_current_out_idx_14_pop1025_1,
        in_forked24_0 => in_forked24_0,
        in_forked24_1 => in_forked24_1,
        in_stall_in => bb_mem_write_generic_B3_stall_region_out_stall_out,
        in_unnamed_mem_write_generic13_0 => in_unnamed_mem_write_generic13_0,
        in_unnamed_mem_write_generic13_1 => in_unnamed_mem_write_generic13_1,
        in_unnamed_mem_write_generic14_0 => in_unnamed_mem_write_generic14_0,
        in_unnamed_mem_write_generic14_1 => in_unnamed_mem_write_generic14_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_current_out_idx_14_pop1025 => mem_write_generic_B3_merge_out_current_out_idx_14_pop1025,
        out_forked24 => mem_write_generic_B3_merge_out_forked24,
        out_stall_out_0 => mem_write_generic_B3_merge_out_stall_out_0,
        out_stall_out_1 => mem_write_generic_B3_merge_out_stall_out_1,
        out_unnamed_mem_write_generic13 => mem_write_generic_B3_merge_out_unnamed_mem_write_generic13,
        out_unnamed_mem_write_generic14 => mem_write_generic_B3_merge_out_unnamed_mem_write_generic14,
        out_valid_out => mem_write_generic_B3_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B3_stall_region(BLACKBOX,26)
    thebb_mem_write_generic_B3_stall_region : bb_mem_write_generic_B3_stall_region
    PORT MAP (
        in_current_out_idx_14_pop1025 => mem_write_generic_B3_merge_out_current_out_idx_14_pop1025,
        in_flush => in_flush,
        in_forked24 => mem_write_generic_B3_merge_out_forked24,
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_iord_bl_ch_out_i_fifodata => in_iord_bl_ch_out_i_fifodata,
        in_iord_bl_ch_out_i_fifovalid => in_iord_bl_ch_out_i_fifovalid,
        in_mem_out => in_mem_out,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => mem_write_generic_B3_branch_aunroll_x_out_stall_out,
        in_tile_channels => in_tile_channels,
        in_unnamed_mem_write_generic13 => mem_write_generic_B3_merge_out_unnamed_mem_write_generic13,
        in_unnamed_mem_write_generic14 => mem_write_generic_B3_merge_out_unnamed_mem_write_generic14,
        in_unnamed_mem_write_generic17_avm_readdata => in_unnamed_mem_write_generic17_avm_readdata,
        in_unnamed_mem_write_generic17_avm_readdatavalid => in_unnamed_mem_write_generic17_avm_readdatavalid,
        in_unnamed_mem_write_generic17_avm_waitrequest => in_unnamed_mem_write_generic17_avm_waitrequest,
        in_unnamed_mem_write_generic17_avm_writeack => in_unnamed_mem_write_generic17_avm_writeack,
        in_valid_in => mem_write_generic_B3_merge_out_valid_out,
        out_c0_exit49_0 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_0,
        out_c0_exit49_1 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_1,
        out_c0_exit49_2 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_2,
        out_c0_exit49_3 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_3,
        out_c0_exit49_4 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_4,
        out_c0_exit49_5 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_5,
        out_c0_exit49_6 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_6,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out => bb_mem_write_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out => bb_mem_write_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out,
        out_c0_exe352 => bb_mem_write_generic_B3_stall_region_out_c0_exe352,
        out_c0_exe5 => bb_mem_write_generic_B3_stall_region_out_c0_exe5,
        out_iord_bl_ch_out_o_fifoready => bb_mem_write_generic_B3_stall_region_out_iord_bl_ch_out_o_fifoready,
        out_lsu_unnamed_mem_write_generic17_o_active => bb_mem_write_generic_B3_stall_region_out_lsu_unnamed_mem_write_generic17_o_active,
        out_pipeline_valid_out => bb_mem_write_generic_B3_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_mem_write_generic_B3_stall_region_out_stall_out,
        out_unnamed_mem_write_generic17_avm_address => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_address,
        out_unnamed_mem_write_generic17_avm_burstcount => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_burstcount,
        out_unnamed_mem_write_generic17_avm_byteenable => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_byteenable,
        out_unnamed_mem_write_generic17_avm_enable => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_enable,
        out_unnamed_mem_write_generic17_avm_read => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_read,
        out_unnamed_mem_write_generic17_avm_write => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_write,
        out_unnamed_mem_write_generic17_avm_writedata => bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_writedata,
        out_valid_out => bb_mem_write_generic_B3_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_write_generic_B3_branch_aunroll_x(BLACKBOX,2)
    themem_write_generic_B3_branch_aunroll_x : mem_write_generic_B3_branch
    PORT MAP (
        in_c0_exit49_0 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_0,
        in_c0_exit49_1 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_1,
        in_c0_exit49_2 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_2,
        in_c0_exit49_3 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_3,
        in_c0_exit49_4 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_4,
        in_c0_exit49_5 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_5,
        in_c0_exit49_6 => bb_mem_write_generic_B3_stall_region_out_c0_exit49_6,
        in_c0_exe352 => bb_mem_write_generic_B3_stall_region_out_c0_exe352,
        in_c0_exe5 => bb_mem_write_generic_B3_stall_region_out_c0_exe5,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_mem_write_generic_B3_stall_region_out_valid_out,
        out_c0_exit49_0 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_0,
        out_c0_exit49_1 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_1,
        out_c0_exit49_2 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_2,
        out_c0_exit49_3 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_3,
        out_c0_exit49_4 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_4,
        out_c0_exit49_5 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_5,
        out_c0_exit49_6 => mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_6,
        out_c0_exe5 => mem_write_generic_B3_branch_aunroll_x_out_c0_exe5,
        out_stall_out => mem_write_generic_B3_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => mem_write_generic_B3_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => mem_write_generic_B3_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit49_0(GPOUT,3)
    out_c0_exit49_0 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_0;

    -- out_c0_exit49_1(GPOUT,4)
    out_c0_exit49_1 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_1;

    -- out_c0_exit49_2(GPOUT,5)
    out_c0_exit49_2 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_2;

    -- out_c0_exit49_3(GPOUT,6)
    out_c0_exit49_3 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_3;

    -- out_c0_exit49_4(GPOUT,7)
    out_c0_exit49_4 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_4;

    -- out_c0_exit49_5(GPOUT,8)
    out_c0_exit49_5 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_5;

    -- out_c0_exit49_6(GPOUT,9)
    out_c0_exit49_6 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exit49_6;

    -- out_c0_exe5(GPOUT,10)
    out_c0_exe5 <= mem_write_generic_B3_branch_aunroll_x_out_c0_exe5;

    -- out_exiting_stall_out(GPOUT,11)
    out_exiting_stall_out <= bb_mem_write_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,12)
    out_exiting_valid_out <= bb_mem_write_generic_B3_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out;

    -- out_iord_bl_ch_out_o_fifoready(GPOUT,13)
    out_iord_bl_ch_out_o_fifoready <= bb_mem_write_generic_B3_stall_region_out_iord_bl_ch_out_o_fifoready;

    -- out_lsu_unnamed_mem_write_generic17_o_active(GPOUT,14)
    out_lsu_unnamed_mem_write_generic17_o_active <= bb_mem_write_generic_B3_stall_region_out_lsu_unnamed_mem_write_generic17_o_active;

    -- out_stall_out_0(GPOUT,15)
    out_stall_out_0 <= mem_write_generic_B3_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,16)
    out_stall_out_1 <= mem_write_generic_B3_merge_out_stall_out_1;

    -- out_unnamed_mem_write_generic17_avm_address(GPOUT,17)
    out_unnamed_mem_write_generic17_avm_address <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_address;

    -- out_unnamed_mem_write_generic17_avm_burstcount(GPOUT,18)
    out_unnamed_mem_write_generic17_avm_burstcount <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_burstcount;

    -- out_unnamed_mem_write_generic17_avm_byteenable(GPOUT,19)
    out_unnamed_mem_write_generic17_avm_byteenable <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_byteenable;

    -- out_unnamed_mem_write_generic17_avm_enable(GPOUT,20)
    out_unnamed_mem_write_generic17_avm_enable <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_enable;

    -- out_unnamed_mem_write_generic17_avm_read(GPOUT,21)
    out_unnamed_mem_write_generic17_avm_read <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_read;

    -- out_unnamed_mem_write_generic17_avm_write(GPOUT,22)
    out_unnamed_mem_write_generic17_avm_write <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_write;

    -- out_unnamed_mem_write_generic17_avm_writedata(GPOUT,23)
    out_unnamed_mem_write_generic17_avm_writedata <= bb_mem_write_generic_B3_stall_region_out_unnamed_mem_write_generic17_avm_writedata;

    -- out_valid_out_0(GPOUT,24)
    out_valid_out_0 <= mem_write_generic_B3_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,25)
    out_valid_out_1 <= mem_write_generic_B3_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,52)
    out_pipeline_valid_out <= bb_mem_write_generic_B3_stall_region_out_pipeline_valid_out;

END normal;
