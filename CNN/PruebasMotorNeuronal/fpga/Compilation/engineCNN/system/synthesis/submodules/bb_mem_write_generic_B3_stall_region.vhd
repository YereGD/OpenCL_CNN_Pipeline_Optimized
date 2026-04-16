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

-- VHDL created from bb_mem_write_generic_B3_stall_region
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

entity bb_mem_write_generic_B3_stall_region is
    port (
        out_c0_exe352 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit49_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit49_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_current_out_idx_14_pop1025 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked24 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic13 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic14 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        out_lsu_unnamed_mem_write_generic17_o_active : out std_logic_vector(0 downto 0);  -- ufix1
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- ufix8
        in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_write_generic_B3_stall_region;

architecture normal of bb_mem_write_generic_B3_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic is
        port (
            in_c0_eni4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni4_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni4_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit49_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit49_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B3_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic141 is
        port (
            in_c0_exe150 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_mem_write_generic17_mem_write_generic142 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_mem_write_generic17_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_write_generic_B3_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B3_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_iord_bl_ch_out_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_data : STD_LOGIC_VECTOR (7 downto 0);
    signal i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_lsu_unnamed_mem_write_generic17_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q : STD_LOGIC_VECTOR (69 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_d : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_mem_write_generic_B3_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (34 downto 0);
    signal bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_q : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_select_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_b : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (34 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_write_generic_B3_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_write_generic_B3_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_write_generic_B3_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x(BITJOIN,57)
    bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q <= i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6 & i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5 & i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4 & i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3 & i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2 & i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1 & i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0;

    -- bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x(BITSELECT,58)
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(1 downto 1));
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(65 downto 2));
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(66 downto 66));
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(67 downto 67));
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(68 downto 68));
    bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_q(69 downto 69));

    -- i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic(BLACKBOX,24)@6
    -- in in_i_stall@20000000
    -- out out_iord_bl_ch_out_o_fifoready@20000000
    -- out out_o_stall@20000000
    thei_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic : i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic141
    PORT MAP (
        in_c0_exe150 => bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_c,
        in_i_stall => SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V2,
        in_iord_bl_ch_out_i_fifodata => in_iord_bl_ch_out_i_fifodata,
        in_iord_bl_ch_out_i_fifovalid => in_iord_bl_ch_out_i_fifovalid,
        out_iord_bl_ch_out_o_fifoready => i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_iord_bl_ch_out_o_fifoready,
        out_o_data => i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_data,
        out_o_stall => i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_stall,
        out_o_valid => i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic(STALLENABLE,75)
    -- Valid signal propagation
    SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_V0 <= SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_backStall <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_o_stall or not (SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_and0 <= i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_valid;
    SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_wireValid <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V0 and SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_and0;

    -- SE_stall_entry(STALLENABLE,78)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= mem_write_generic_B3_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,67)
    bubble_join_stall_entry_q <= in_unnamed_mem_write_generic14 & in_unnamed_mem_write_generic13 & in_forked24 & in_current_out_idx_14_pop1025;

    -- bubble_select_stall_entry(BITSELECT,68)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(33 downto 33));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(34 downto 34));

    -- mem_write_generic_B3_merge_reg_aunroll_x(BLACKBOX,18)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    themem_write_generic_B3_merge_reg_aunroll_x : mem_write_generic_B3_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_d,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_data_in_2 => bubble_select_stall_entry_e,
        in_data_in_3 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_mem_write_generic_B3_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_3,
        out_stall_out => mem_write_generic_B3_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => mem_write_generic_B3_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_mem_write_generic_B3_merge_reg_aunroll_x(STALLENABLE,73)
    -- Valid signal propagation
    SE_out_mem_write_generic_B3_merge_reg_aunroll_x_V0 <= SE_out_mem_write_generic_B3_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_mem_write_generic_B3_merge_reg_aunroll_x_backStall <= i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_o_stall or not (SE_out_mem_write_generic_B3_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_mem_write_generic_B3_merge_reg_aunroll_x_wireValid <= mem_write_generic_B3_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_mem_write_generic_B3_merge_reg_aunroll_x(BITJOIN,60)
    bubble_join_mem_write_generic_B3_merge_reg_aunroll_x_q <= mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_3 & mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_2 & mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_1 & mem_write_generic_B3_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_mem_write_generic_B3_merge_reg_aunroll_x(BITSELECT,61)
    bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_mem_write_generic_B3_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_mem_write_generic_B3_merge_reg_aunroll_x_q(1 downto 1));
    bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_mem_write_generic_B3_merge_reg_aunroll_x_q(2 downto 2));
    bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_mem_write_generic_B3_merge_reg_aunroll_x_q(34 downto 3));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x(BLACKBOX,17)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit49_0@6
    -- out out_c0_exit49_1@6
    -- out out_c0_exit49_2@6
    -- out out_c0_exit49_3@6
    -- out out_c0_exit49_4@6
    -- out out_c0_exit49_5@6
    -- out out_c0_exit49_6@6
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@6
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x : i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic
    PORT MAP (
        in_c0_eni4_0 => GND_q,
        in_c0_eni4_1 => bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_c,
        in_c0_eni4_2 => bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_e,
        in_c0_eni4_3 => bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_b,
        in_c0_eni4_4 => bubble_select_mem_write_generic_B3_merge_reg_aunroll_x_d,
        in_i_stall => SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_backStall,
        in_i_valid => SE_out_mem_write_generic_B3_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_mem_out => in_mem_out,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_tile_channels => in_tile_channels,
        out_c0_exit49_0 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0,
        out_c0_exit49_1 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1,
        out_c0_exit49_2 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2,
        out_c0_exit49_3 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3,
        out_c0_exit49_4 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4,
        out_c0_exit49_5 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5,
        out_c0_exit49_6 => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x(STALLENABLE,71)
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg2 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg2 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg2;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed0 <= (not (SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_backStall) and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed1 <= (not (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backStall) and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg1;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed2 <= (not (i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_stall) and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg2;
    -- Consuming
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_backStall and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed1;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_toReg2 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed2;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_or0 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_or1 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_or0;
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_consumed2 and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_or1);
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_backStall <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V1 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg1);
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V2 <= SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_fromReg2);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_wireValid <= i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_o_valid;

    -- SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0(STALLENABLE,80)
    -- Valid signal propagation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_V0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_s_tv_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backStall and SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN <= not (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_v_s_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN and SE_out_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_V1;
    -- Backward Stall generation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backStall <= not (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_v_s_0);
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "0") THEN
                SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0 and SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_s_tv_0;
            ELSE
                SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_R_v_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1(STALLENABLE,81)
    -- Valid signal propagation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_V0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0;
    -- Stall signal propagation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_s_tv_0 <= SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_backStall and SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0;
    -- Backward Enable generation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN <= not (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_v_s_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN and SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_V0;
    -- Backward Stall generation
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backStall <= not (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_v_s_0);
    SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "0") THEN
                SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0 and SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_s_tv_0;
            ELSE
                SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_R_v_0 <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic(BITJOIN,63)
    bubble_join_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_q <= i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_o_data;

    -- bubble_select_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic(BITSELECT,64)
    bubble_select_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_b <= STD_LOGIC_VECTOR(bubble_join_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_q(7 downto 0));

    -- i_store_unnamed_mem_write_generic17_mem_write_generic(BLACKBOX,25)@6
    -- in in_i_stall@20000000
    -- out out_lsu_unnamed_mem_write_generic17_o_active@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@8
    -- out out_unnamed_mem_write_generic17_avm_address@20000000
    -- out out_unnamed_mem_write_generic17_avm_burstcount@20000000
    -- out out_unnamed_mem_write_generic17_avm_byteenable@20000000
    -- out out_unnamed_mem_write_generic17_avm_enable@20000000
    -- out out_unnamed_mem_write_generic17_avm_read@20000000
    -- out out_unnamed_mem_write_generic17_avm_write@20000000
    -- out out_unnamed_mem_write_generic17_avm_writedata@20000000
    thei_store_unnamed_mem_write_generic17_mem_write_generic : i_store_unnamed_mem_write_generic17_mem_write_generic142
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_d,
        in_i_predicate => bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_c,
        in_i_stall => SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_backStall,
        in_i_valid => SE_out_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_V0,
        in_i_writedata => bubble_select_i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_b,
        in_unnamed_mem_write_generic17_avm_readdata => in_unnamed_mem_write_generic17_avm_readdata,
        in_unnamed_mem_write_generic17_avm_readdatavalid => in_unnamed_mem_write_generic17_avm_readdatavalid,
        in_unnamed_mem_write_generic17_avm_waitrequest => in_unnamed_mem_write_generic17_avm_waitrequest,
        in_unnamed_mem_write_generic17_avm_writeack => in_unnamed_mem_write_generic17_avm_writeack,
        out_lsu_unnamed_mem_write_generic17_o_active => i_store_unnamed_mem_write_generic17_mem_write_generic_out_lsu_unnamed_mem_write_generic17_o_active,
        out_o_stall => i_store_unnamed_mem_write_generic17_mem_write_generic_out_o_stall,
        out_o_valid => i_store_unnamed_mem_write_generic17_mem_write_generic_out_o_valid,
        out_unnamed_mem_write_generic17_avm_address => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_address,
        out_unnamed_mem_write_generic17_avm_burstcount => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_burstcount,
        out_unnamed_mem_write_generic17_avm_byteenable => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_byteenable,
        out_unnamed_mem_write_generic17_avm_enable => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_enable,
        out_unnamed_mem_write_generic17_avm_read => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_read,
        out_unnamed_mem_write_generic17_avm_write => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_write,
        out_unnamed_mem_write_generic17_avm_writedata => i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic(STALLENABLE,77)
    -- Valid signal propagation
    SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_V0 <= SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_backStall <= in_stall_in or not (SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_and0 <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_o_valid;
    SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_wireValid <= SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_V0 and SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_and0;

    -- redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_0(REG,54)
    redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_h);
            END IF;
        END IF;
    END PROCESS;

    -- redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_1(REG,55)
    redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_1_q <= STD_LOGIC_VECTOR(redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_0(REG,50)
    redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_f);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_1(REG,51)
    redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_1_q <= STD_LOGIC_VECTOR(redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_0(REG,46)
    redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_d);
            END IF;
        END IF;
    END PROCESS;

    -- redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_1(REG,47)
    redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_1_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_1_q <= STD_LOGIC_VECTOR(redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_0(REG,44)
    redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_c);
            END IF;
        END IF;
    END PROCESS;

    -- redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_1(REG,45)
    redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_1_q <= STD_LOGIC_VECTOR(redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0(REG,42)
    redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1(REG,43)
    redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_q <= STD_LOGIC_VECTOR(redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_0(REG,52)
    redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_g);
            END IF;
        END IF;
    END PROCESS;

    -- redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1(REG,53)
    redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1_q <= STD_LOGIC_VECTOR(redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_0(REG,48)
    redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_0_backEN = "1") THEN
                redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_0_q <= STD_LOGIC_VECTOR(bubble_select_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_e);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1(REG,49)
    redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_backEN = "1") THEN
                redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1_q <= STD_LOGIC_VECTOR(redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- dupName_0_sync_out_aunroll_x(GPOUT,2)@8
    out_c0_exe352 <= redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1_q;
    out_c0_exe5 <= redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1_q;
    out_c0_exit49_0 <= redist0_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_0_2_1_q;
    out_c0_exit49_1 <= redist1_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_1_2_1_q;
    out_c0_exit49_2 <= redist2_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_2_2_1_q;
    out_c0_exit49_3 <= redist3_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_3_2_1_q;
    out_c0_exit49_4 <= redist4_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_4_2_1_q;
    out_c0_exit49_5 <= redist5_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_5_2_1_q;
    out_c0_exit49_6 <= redist6_i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_c0_exit49_6_2_1_q;
    out_valid_out <= SE_out_i_store_unnamed_mem_write_generic17_mem_write_generic_V0;

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_iord_bl_ch_out_o_fifoready <= i_iord_bl_ch_out_unnamed_mem_write_generic16_mem_write_generic_out_iord_bl_ch_out_o_fifoready;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_unnamed_mem_write_generic17_avm_address <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_address;
    out_unnamed_mem_write_generic17_avm_enable <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_enable;
    out_unnamed_mem_write_generic17_avm_read <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_read;
    out_unnamed_mem_write_generic17_avm_write <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_write;
    out_unnamed_mem_write_generic17_avm_writedata <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_writedata;
    out_unnamed_mem_write_generic17_avm_byteenable <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_byteenable;
    out_unnamed_mem_write_generic17_avm_burstcount <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_unnamed_mem_write_generic17_avm_burstcount;

    -- dupName_2_ext_sig_sync_out_x(GPOUT,13)
    out_lsu_unnamed_mem_write_generic17_o_active <= i_store_unnamed_mem_write_generic17_mem_write_generic_out_lsu_unnamed_mem_write_generic17_o_active;

    -- ext_sig_sync_out(GPOUT,23)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out <= i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out <= i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,29)
    out_pipeline_valid_out <= i_sfc_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,34)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
