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

-- VHDL created from i_sfc_logic_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic105
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

entity i_sfc_logic_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic105 is
    port (
        in_c0_eni4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni4_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni4_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni4_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni4_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi6_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_2 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi6_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic105;

architecture normal of i_sfc_logic_c0_for_body19_mem_write_generic_c0_enter41_mem_write_generic105 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_mem_write_generic107 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop13_mem_write_generic132 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_13 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop14_mem_write_generic136 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_14 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic117 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_15 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_oc_22_pop12_mem_write_generic115 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_12 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_mem_write_generic130 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_2 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push13_mem_write_generic134 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_13 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push14_mem_write_generic138 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_14 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic126 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_15 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_oc_22_push12_mem_write_generic128 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_12 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic112 is
        port (
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_mem_out_sync_buffer_mem_write_generic119 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_tile_channels_sync_buffer3_mem_write_generic109 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_tile_channels_sync_buffer_mem_write_generic122 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add20_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx_mem_write_generic_mem_write_generic121_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_mem_write_generic_mem_write_generic121_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_mem_write_generic_mem_write_generic121_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_mem_write_generic_mem_write_generic121_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_mem_write_generic_mem_write_generic121_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop13_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop13_mem_write_generic_out_feedback_stall_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop14_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop14_mem_write_generic_out_feedback_stall_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_feedback_stall_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_feedback_stall_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_mem_write_generic_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_mem_write_generic_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push13_mem_write_generic_out_feedback_out_13 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push13_mem_write_generic_out_feedback_valid_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push14_mem_write_generic_out_feedback_out_14 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push14_mem_write_generic_out_feedback_valid_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic_out_feedback_out_15 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic_out_feedback_valid_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_oc_22_push12_mem_write_generic_out_feedback_out_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_oc_22_push12_mem_write_generic_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add20_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add20_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add20_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add20_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp181_rm_mem_write_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp181_rm_mem_write_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp181_rm_mem_write_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp181_rm_mem_write_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_not_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic_out_dest_data_out_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_notexit_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision24_xor_rm_mem_write_generic_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision24_xor_rm_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_mem_out_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer3_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_write_generic114_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_write_generic125_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_phi_decision24_xor_rm_mem_write_generic_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit_mem_write_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_notexit_mem_write_generic_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_exitcond_mem_write_generic_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_bgTrunc_i_add20_mem_write_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist10_sync_in_aunroll_x_in_i_valid_1(DELAY,77)
    redist10_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist10_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist11_sync_in_aunroll_x_in_i_valid_2(DELAY,78)
    redist11_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_sync_in_aunroll_x_in_i_valid_1_q, xout => redist11_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- i_syncbuf_tile_channels_sync_buffer_mem_write_generic(BLACKBOX,54)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_tile_channels_sync_buffer_mem_write_generic : i_syncbuf_tile_channels_sync_buffer_mem_write_generic122
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,30)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_acl_push_i32_oc_22_push12_mem_write_generic(BLACKBOX,41)@1
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i32_oc_22_push12_mem_write_generic : i_acl_push_i32_oc_22_push12_mem_write_generic128
    PORT MAP (
        in_data_in => bgTrunc_i_inc_mem_write_generic_sel_x_b,
        in_feedback_stall_in_12 => i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_feedback_stall_out_12,
        in_notexit => i_notexit_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_12 => i_acl_push_i32_oc_22_push12_mem_write_generic_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i32_oc_22_push12_mem_write_generic_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,29)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_oc_22_pop12_mem_write_generic(BLACKBOX,36)@1
    -- out out_feedback_stall_out_12@20000000
    thei_acl_pop_i32_oc_22_pop12_mem_write_generic : i_acl_pop_i32_oc_22_pop12_mem_write_generic115
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni4_1,
        in_feedback_in_12 => i_acl_push_i32_oc_22_push12_mem_write_generic_out_feedback_out_12,
        in_feedback_valid_in_12 => i_acl_push_i32_oc_22_push12_mem_write_generic_out_feedback_valid_out_12,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out,
        out_feedback_stall_out_12 => i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_feedback_stall_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_mem_write_generic(ADD,49)@1
    i_inc_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out);
    i_inc_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_mem_write_generic_a) + UNSIGNED(i_inc_mem_write_generic_b));
    i_inc_mem_write_generic_q <= i_inc_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_inc_mem_write_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_inc_mem_write_generic_sel_x_b <= i_inc_mem_write_generic_q(31 downto 0);

    -- i_exitcond_mem_write_generic(LOGICAL,44)@1
    i_exitcond_mem_write_generic_q <= "1" WHEN bgTrunc_i_inc_mem_write_generic_sel_x_b = i_syncbuf_tile_channels_sync_buffer_mem_write_generic_out_buffer_out ELSE "0";

    -- i_exitcond_not_mem_write_generic(LOGICAL,45)@1
    i_exitcond_not_mem_write_generic_q <= i_exitcond_mem_write_generic_q xor VCC_q;

    -- i_syncbuf_tile_channels_sync_buffer3_mem_write_generic(BLACKBOX,53)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_tile_channels_sync_buffer3_mem_write_generic : i_syncbuf_tile_channels_sync_buffer3_mem_write_generic109
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer3_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp181_rm_mem_write_generic(COMPARE,43)@1
    i_cmp181_rm_mem_write_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp181_rm_mem_write_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer3_mem_write_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer3_mem_write_generic_out_buffer_out));
    i_cmp181_rm_mem_write_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp181_rm_mem_write_generic_a) - SIGNED(i_cmp181_rm_mem_write_generic_b));
    i_cmp181_rm_mem_write_generic_c(0) <= i_cmp181_rm_mem_write_generic_o(33);

    -- i_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic(BLACKBOX,46)@1
    thei_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic : i_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic112
    PORT MAP (
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_4_0 => i_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic_out_dest_data_out_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_mem_write_generic114(LOGICAL,55)@1
    i_unnamed_mem_write_generic114_q <= i_ffwd_dst_unnamed_mem_write_generic15_mem_write_generic_out_dest_data_out_4_0 and i_cmp181_rm_mem_write_generic_c;

    -- i_notexit_mem_write_generic(LOGICAL,50)@1
    i_notexit_mem_write_generic_q <= i_unnamed_mem_write_generic114_q and i_exitcond_not_mem_write_generic_q;

    -- redist1_i_notexit_mem_write_generic_q_1(DELAY,68)
    redist1_i_notexit_mem_write_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit_mem_write_generic_q, xout => redist1_i_notexit_mem_write_generic_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push14_mem_write_generic(BLACKBOX,39)@2
    -- out out_feedback_out_14@20000000
    -- out out_feedback_valid_out_14@20000000
    thei_acl_push_i1_push14_mem_write_generic : i_acl_push_i1_push14_mem_write_generic138
    PORT MAP (
        in_data_in => redist6_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_1_q,
        in_feedback_stall_in_14 => i_acl_pop_i1_pop14_mem_write_generic_out_feedback_stall_out_14,
        in_notexit => redist1_i_notexit_mem_write_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_14 => i_acl_push_i1_push14_mem_write_generic_out_feedback_out_14,
        out_feedback_valid_out_14 => i_acl_push_i1_push14_mem_write_generic_out_feedback_valid_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop14_mem_write_generic(BLACKBOX,34)@1
    -- out out_feedback_stall_out_14@20000000
    thei_acl_pop_i1_pop14_mem_write_generic : i_acl_pop_i1_pop14_mem_write_generic136
    PORT MAP (
        in_data_in => in_c0_eni4_4,
        in_dir => in_c0_eni4_1,
        in_feedback_in_14 => i_acl_push_i1_push14_mem_write_generic_out_feedback_out_14,
        in_feedback_valid_in_14 => i_acl_push_i1_push14_mem_write_generic_out_feedback_valid_out_14,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop14_mem_write_generic_out_data_out,
        out_feedback_stall_out_14 => i_acl_pop_i1_pop14_mem_write_generic_out_feedback_stall_out_14,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_1(DELAY,73)
    redist6_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop14_mem_write_generic_out_data_out, xout => redist6_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist7_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_2(DELAY,74)
    redist7_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_1_q, xout => redist7_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push13_mem_write_generic(BLACKBOX,38)@2
    -- out out_feedback_out_13@20000000
    -- out out_feedback_valid_out_13@20000000
    thei_acl_push_i1_push13_mem_write_generic : i_acl_push_i1_push13_mem_write_generic134
    PORT MAP (
        in_data_in => redist8_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_1_q,
        in_feedback_stall_in_13 => i_acl_pop_i1_pop13_mem_write_generic_out_feedback_stall_out_13,
        in_notexit => redist1_i_notexit_mem_write_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_13 => i_acl_push_i1_push13_mem_write_generic_out_feedback_out_13,
        out_feedback_valid_out_13 => i_acl_push_i1_push13_mem_write_generic_out_feedback_valid_out_13,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop13_mem_write_generic(BLACKBOX,33)@1
    -- out out_feedback_stall_out_13@20000000
    thei_acl_pop_i1_pop13_mem_write_generic : i_acl_pop_i1_pop13_mem_write_generic132
    PORT MAP (
        in_data_in => in_c0_eni4_3,
        in_dir => in_c0_eni4_1,
        in_feedback_in_13 => i_acl_push_i1_push13_mem_write_generic_out_feedback_out_13,
        in_feedback_valid_in_13 => i_acl_push_i1_push13_mem_write_generic_out_feedback_valid_out_13,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop13_mem_write_generic_out_data_out,
        out_feedback_stall_out_13 => i_acl_pop_i1_pop13_mem_write_generic_out_feedback_stall_out_13,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_1(DELAY,75)
    redist8_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop13_mem_write_generic_out_data_out, xout => redist8_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist9_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_2(DELAY,76)
    redist9_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_1_q, xout => redist9_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- redist2_i_notexit_mem_write_generic_q_2(DELAY,69)
    redist2_i_notexit_mem_write_generic_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_notexit_mem_write_generic_q_1_q, xout => redist2_i_notexit_mem_write_generic_q_2_q, clk => clock, aclr => resetn );

    -- redist3_i_exitcond_mem_write_generic_q_2(DELAY,70)
    redist3_i_exitcond_mem_write_generic_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond_mem_write_generic_q, xout => redist3_i_exitcond_mem_write_generic_q_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_write_generic125(LOGICAL,56)@3
    i_unnamed_mem_write_generic125_q <= redist3_i_exitcond_mem_write_generic_q_2_q or redist0_i_phi_decision24_xor_rm_mem_write_generic_q_2_q;

    -- i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic(BLACKBOX,40)@1
    -- out out_feedback_out_15@20000000
    -- out out_feedback_valid_out_15@20000000
    thei_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic : i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic126
    PORT MAP (
        in_data_in => i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out,
        in_feedback_stall_in_15 => i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_feedback_stall_out_15,
        in_notexit => i_notexit_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_15 => i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic_out_feedback_out_15,
        out_feedback_valid_out_15 => i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic_out_feedback_valid_out_15,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic(BLACKBOX,35)@1
    -- out out_feedback_stall_out_15@20000000
    thei_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic : i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic117
    PORT MAP (
        in_data_in => in_c0_eni4_2,
        in_dir => in_c0_eni4_1,
        in_feedback_in_15 => i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic_out_feedback_out_15,
        in_feedback_valid_in_15 => i_acl_push_i32_current_out_idx_14_pop1025_push15_mem_write_generic_out_feedback_valid_out_15,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out,
        out_feedback_stall_out_15 => i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_feedback_stall_out_15,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out_1(DELAY,72)
    redist5_i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out, xout => redist5_i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out_1(DELAY,71)
    redist4_i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out, xout => redist4_i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_add20_mem_write_generic(ADD,42)@2
    i_add20_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & redist4_i_acl_pop_i32_oc_22_pop12_mem_write_generic_out_data_out_1_q);
    i_add20_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & redist5_i_acl_pop_i32_current_out_idx_14_pop1025_pop15_mem_write_generic_out_data_out_1_q);
    i_add20_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add20_mem_write_generic_a) + UNSIGNED(i_add20_mem_write_generic_b));
    i_add20_mem_write_generic_q <= i_add20_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_add20_mem_write_generic_sel_x(BITSELECT,2)@2
    bgTrunc_i_add20_mem_write_generic_sel_x_b <= i_add20_mem_write_generic_q(31 downto 0);

    -- redist12_bgTrunc_i_add20_mem_write_generic_sel_x_b_1(DELAY,79)
    redist12_bgTrunc_i_add20_mem_write_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add20_mem_write_generic_sel_x_b, xout => redist12_bgTrunc_i_add20_mem_write_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom_mem_write_generic_sel_x(BITSELECT,22)@3
    i_idxprom_mem_write_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist12_bgTrunc_i_add20_mem_write_generic_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_syncbuf_mem_out_sync_buffer_mem_write_generic(BLACKBOX,52)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_mem_out_sync_buffer_mem_write_generic : i_syncbuf_mem_out_sync_buffer_mem_write_generic119
    PORT MAP (
        in_buffer_in => in_mem_out,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist11_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_mem_out_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_mem_write_generic_mem_write_generic121_add_x(ADD,20)@3
    i_arrayidx_mem_write_generic_mem_write_generic121_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_mem_out_sync_buffer_mem_write_generic_out_buffer_out);
    i_arrayidx_mem_write_generic_mem_write_generic121_add_x_b <= STD_LOGIC_VECTOR("0" & i_idxprom_mem_write_generic_sel_x_b);
    i_arrayidx_mem_write_generic_mem_write_generic121_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_mem_write_generic_mem_write_generic121_add_x_a) + UNSIGNED(i_arrayidx_mem_write_generic_mem_write_generic121_add_x_b));
    i_arrayidx_mem_write_generic_mem_write_generic121_add_x_q <= i_arrayidx_mem_write_generic_mem_write_generic121_add_x_o(64 downto 0);

    -- i_arrayidx_mem_write_generic_mem_write_generic121_trunc_sel_x(BITSELECT,19)@3
    i_arrayidx_mem_write_generic_mem_write_generic121_trunc_sel_x_b <= i_arrayidx_mem_write_generic_mem_write_generic121_add_x_q(63 downto 0);

    -- i_phi_decision24_xor_rm_mem_write_generic(LOGICAL,51)@1 + 1
    i_phi_decision24_xor_rm_mem_write_generic_qi <= i_unnamed_mem_write_generic114_q xor VCC_q;
    i_phi_decision24_xor_rm_mem_write_generic_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_phi_decision24_xor_rm_mem_write_generic_qi, xout => i_phi_decision24_xor_rm_mem_write_generic_q, clk => clock, aclr => resetn );

    -- redist0_i_phi_decision24_xor_rm_mem_write_generic_q_2(DELAY,67)
    redist0_i_phi_decision24_xor_rm_mem_write_generic_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_phi_decision24_xor_rm_mem_write_generic_q, xout => redist0_i_phi_decision24_xor_rm_mem_write_generic_q_2_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,24)@3
    out_c0_exi6_0 <= GND_q;
    out_c0_exi6_1 <= redist0_i_phi_decision24_xor_rm_mem_write_generic_q_2_q;
    out_c0_exi6_2 <= i_arrayidx_mem_write_generic_mem_write_generic121_trunc_sel_x_b;
    out_c0_exi6_3 <= i_unnamed_mem_write_generic125_q;
    out_c0_exi6_4 <= redist2_i_notexit_mem_write_generic_q_2_q;
    out_c0_exi6_5 <= redist9_i_acl_pop_i1_pop13_mem_write_generic_out_data_out_2_q;
    out_c0_exi6_6 <= redist7_i_acl_pop_i1_pop14_mem_write_generic_out_data_out_2_q;
    out_o_valid <= redist11_sync_in_aunroll_x_in_i_valid_2_q;

    -- i_acl_push_i1_notexitcond_mem_write_generic(BLACKBOX,37)@1
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_notexitcond_mem_write_generic : i_acl_push_i1_notexitcond_mem_write_generic130
    PORT MAP (
        in_data_in => i_notexit_mem_write_generic_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_mem_write_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_2 => i_acl_push_i1_notexitcond_mem_write_generic_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_notexitcond_mem_write_generic_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_mem_write_generic(BLACKBOX,32)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_mem_write_generic : i_acl_pipeline_keep_going_mem_write_generic107
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_mem_write_generic_out_feedback_out_2,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_mem_write_generic_out_feedback_valid_out_2,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going_mem_write_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_mem_write_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_mem_write_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_mem_write_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,31)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_valid_out <= i_acl_pipeline_keep_going_mem_write_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_write_generic_exiting_stall_out <= i_acl_pipeline_keep_going_mem_write_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,61)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_mem_write_generic_out_pipeline_valid_out;

END normal;
