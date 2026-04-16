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

-- VHDL created from i_sfc_logic_c0_for_cond17_preheader_mem_read_generic_c0_enter81_mem_read_generic30
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

entity i_sfc_logic_c0_for_cond17_preheader_mem_read_generic_c0_enter81_mem_read_generic30 is
    port (
        in_c0_eni3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni3_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond17_preheader_mem_read_generic_c0_enter81_mem_read_generic30;

architecture normal of i_sfc_logic_c0_for_cond17_preheader_mem_read_generic_c0_enter81_mem_read_generic30 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going55_mem_read_generic32 is
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


    component i_acl_pop_i1_pop14_mem_read_generic64 is
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


    component i_acl_pop_i32_ox_111_pop12_mem_read_generic36 is
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


    component i_acl_pop_i32_sub2463_pop13_mem_read_generic60 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_13 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond56_mem_read_generic58 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push14_mem_read_generic66 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit57 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_push_i32_ox_111_push12_mem_read_generic56 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit57 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_push_i32_sub2463_push13_mem_read_generic62 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_13 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer27_mem_read_generic40 is
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


    component i_syncbuf_pad_sync_buffer37_mem_read_generic42 is
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


    component i_syncbuf_pad_sync_buffer39_mem_read_generic38 is
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


    component i_syncbuf_stride_sync_buffer33_mem_read_generic45 is
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


    component i_syncbuf_stride_sync_buffer35_mem_read_generic34 is
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


    component i_syncbuf_w_sync_buffer_mem_read_generic48 is
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
    signal bgTrunc_i_add11_rm15_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm12_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm7_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc49_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul26_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub27_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm9_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr_rm11_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop14_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop14_mem_read_generic_out_feedback_stall_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_feedback_stall_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_feedback_stall_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond56_mem_read_generic_out_feedback_out_8 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond56_mem_read_generic_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push14_mem_read_generic_out_feedback_out_14 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push14_mem_read_generic_out_feedback_valid_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_ox_111_push12_mem_read_generic_out_feedback_out_12 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_ox_111_push12_mem_read_generic_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sub2463_push13_mem_read_generic_out_feedback_out_13 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sub2463_push13_mem_read_generic_out_feedback_valid_out_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add11_rm15_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm15_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm15_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm15_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm12_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm12_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm12_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm12_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm7_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm7_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm7_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm7_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp_rm10_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond23_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc49_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc49_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc49_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc49_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_rm8_mem_read_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm8_mem_read_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_notexit57_demorgan_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit57_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shr_rm11_mem_read_generic_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_rm11_mem_read_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_rm11_mem_read_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub27_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub27_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm13_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm13_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm13_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm13_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm9_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm9_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm9_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm9_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer27_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer37_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer39_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer33_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer35_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_read_generic51_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid99_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid101_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid102_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid111_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul26_mem_read_generic_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul26_mem_read_generic_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul26_mem_read_generic_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul26_mem_read_generic_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul26_mem_read_generic_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul26_mem_read_generic_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul26_mem_read_generic_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul26_mem_read_generic_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul26_mem_read_generic_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul26_mem_read_generic_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul26_mem_read_generic_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul26_mem_read_generic_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul26_mem_read_generic_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul26_mem_read_generic_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul26_mem_read_generic_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul26_mem_read_generic_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul26_mem_read_generic_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_unnamed_mem_read_generic52_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul26_mem_read_generic_im0_cma_reset : std_logic;
    type i_mul26_mem_read_generic_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul26_mem_read_generic_im0_cma_a0 : i_mul26_mem_read_generic_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul26_mem_read_generic_im0_cma_a0 : signal is true;
    signal i_mul26_mem_read_generic_im0_cma_c0 : i_mul26_mem_read_generic_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul26_mem_read_generic_im0_cma_c0 : signal is true;
    type i_mul26_mem_read_generic_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul26_mem_read_generic_im0_cma_p : i_mul26_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im0_cma_u : i_mul26_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im0_cma_w : i_mul26_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im0_cma_x : i_mul26_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im0_cma_y : i_mul26_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im0_cma_s : i_mul26_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul26_mem_read_generic_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul26_mem_read_generic_im0_cma_ena0 : std_logic;
    signal i_mul26_mem_read_generic_im0_cma_ena1 : std_logic;
    signal i_mul26_mem_read_generic_im10_cma_reset : std_logic;
    type i_mul26_mem_read_generic_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul26_mem_read_generic_im10_cma_a0 : i_mul26_mem_read_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul26_mem_read_generic_im10_cma_a0 : signal is true;
    signal i_mul26_mem_read_generic_im10_cma_c0 : i_mul26_mem_read_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul26_mem_read_generic_im10_cma_c0 : signal is true;
    type i_mul26_mem_read_generic_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul26_mem_read_generic_im10_cma_p : i_mul26_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im10_cma_u : i_mul26_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im10_cma_w : i_mul26_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im10_cma_x : i_mul26_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im10_cma_y : i_mul26_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im10_cma_s : i_mul26_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul26_mem_read_generic_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul26_mem_read_generic_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul26_mem_read_generic_im10_cma_ena0 : std_logic;
    signal i_mul26_mem_read_generic_im10_cma_ena1 : std_logic;
    signal i_mul26_mem_read_generic_ma3_cma_reset : std_logic;
    signal i_mul26_mem_read_generic_ma3_cma_a0 : i_mul26_mem_read_generic_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul26_mem_read_generic_ma3_cma_a0 : signal is true;
    type i_mul26_mem_read_generic_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul26_mem_read_generic_ma3_cma_c0 : i_mul26_mem_read_generic_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul26_mem_read_generic_ma3_cma_c0 : signal is true;
    type i_mul26_mem_read_generic_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul26_mem_read_generic_ma3_cma_l : i_mul26_mem_read_generic_ma3_cma_ltype(0 to 1);
    type i_mul26_mem_read_generic_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul26_mem_read_generic_ma3_cma_p : i_mul26_mem_read_generic_ma3_cma_ptype(0 to 1);
    type i_mul26_mem_read_generic_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul26_mem_read_generic_ma3_cma_u : i_mul26_mem_read_generic_ma3_cma_utype(0 to 1);
    signal i_mul26_mem_read_generic_ma3_cma_w : i_mul26_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul26_mem_read_generic_ma3_cma_x : i_mul26_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul26_mem_read_generic_ma3_cma_y : i_mul26_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul26_mem_read_generic_ma3_cma_s : i_mul26_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul26_mem_read_generic_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul26_mem_read_generic_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul26_mem_read_generic_ma3_cma_ena0 : std_logic;
    signal i_mul26_mem_read_generic_ma3_cma_ena1 : std_logic;
    signal i_mul26_mem_read_generic_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul26_mem_read_generic_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_mul26_mem_read_generic_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul26_mem_read_generic_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_mul26_mem_read_generic_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist3_i_notexit57_mem_read_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_notexit57_mem_read_generic_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_notexit57_demorgan_mem_read_generic_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_bgTrunc_i_mul26_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist10_sync_in_aunroll_x_in_i_valid_1(DELAY,156)
    redist10_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist10_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist11_sync_in_aunroll_x_in_i_valid_4(DELAY,157)
    redist11_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_sync_in_aunroll_x_in_i_valid_1_q, xout => redist11_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x(BITSELECT,109)@1
    leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_in <= i_syncbuf_pad_sync_buffer37_mem_read_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_b <= leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid111_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x(BITJOIN,110)@1
    leftShiftStage0Idx1_uid111_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q <= leftShiftStage0Idx1Rng1_uid110_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer37_mem_read_generic(BLACKBOX,81)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer37_mem_read_generic : i_syncbuf_pad_sync_buffer37_mem_read_generic42
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer37_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x(MUX,112)@1
    leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_s <= VCC_q;
    leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_combproc: PROCESS (leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_s, i_syncbuf_pad_sync_buffer37_mem_read_generic_out_buffer_out, leftShiftStage0Idx1_uid111_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q <= i_syncbuf_pad_sync_buffer37_mem_read_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q <= leftShiftStage0Idx1_uid111_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm8_mem_read_generic_vt_select_31(BITSELECT,70)@1
    i_mul_rm8_mem_read_generic_vt_select_31_b <= leftShiftStage0_uid113_i_mul_rm8_mem_read_generic_mem_read_generic44_shift_x_q(31 downto 1);

    -- i_mul_rm8_mem_read_generic_vt_join(BITJOIN,69)@1
    i_mul_rm8_mem_read_generic_vt_join_q <= i_mul_rm8_mem_read_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,51)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer27_mem_read_generic(BLACKBOX,80)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer27_mem_read_generic : i_syncbuf_h_sync_buffer27_mem_read_generic40
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer27_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm7_mem_read_generic(ADD,63)@1
    i_add_rm7_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer27_mem_read_generic_out_buffer_out);
    i_add_rm7_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm7_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm7_mem_read_generic_a) + UNSIGNED(i_add_rm7_mem_read_generic_b));
    i_add_rm7_mem_read_generic_q <= i_add_rm7_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm7_mem_read_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_add_rm7_mem_read_generic_sel_x_b <= i_add_rm7_mem_read_generic_q(31 downto 0);

    -- i_sub_rm9_mem_read_generic(ADD,79)@1
    i_sub_rm9_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add_rm7_mem_read_generic_sel_x_b);
    i_sub_rm9_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm8_mem_read_generic_vt_join_q);
    i_sub_rm9_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm9_mem_read_generic_a) + UNSIGNED(i_sub_rm9_mem_read_generic_b));
    i_sub_rm9_mem_read_generic_q <= i_sub_rm9_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm9_mem_read_generic_sel_x(BITSELECT,9)@1
    bgTrunc_i_sub_rm9_mem_read_generic_sel_x_b <= i_sub_rm9_mem_read_generic_q(31 downto 0);

    -- i_syncbuf_w_sync_buffer_mem_read_generic(BLACKBOX,85)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer_mem_read_generic : i_syncbuf_w_sync_buffer_mem_read_generic48
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm12_mem_read_generic(ADD,62)@1
    i_add2_rm12_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer_mem_read_generic_out_buffer_out);
    i_add2_rm12_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm12_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm12_mem_read_generic_a) + UNSIGNED(i_add2_rm12_mem_read_generic_b));
    i_add2_rm12_mem_read_generic_q <= i_add2_rm12_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm12_mem_read_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add2_rm12_mem_read_generic_sel_x_b <= i_add2_rm12_mem_read_generic_q(31 downto 0);

    -- i_sub3_rm13_mem_read_generic(ADD,78)@1
    i_sub3_rm13_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm12_mem_read_generic_sel_x_b);
    i_sub3_rm13_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm8_mem_read_generic_vt_join_q);
    i_sub3_rm13_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm13_mem_read_generic_a) + UNSIGNED(i_sub3_rm13_mem_read_generic_b));
    i_sub3_rm13_mem_read_generic_q <= i_sub3_rm13_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm13_mem_read_generic_sel_x(BITSELECT,8)@1
    bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b <= i_sub3_rm13_mem_read_generic_q(31 downto 0);

    -- i_unnamed_mem_read_generic51(LOGICAL,86)@1
    i_unnamed_mem_read_generic51_q <= bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b or bgTrunc_i_sub_rm9_mem_read_generic_sel_x_b;

    -- i_unnamed_mem_read_generic52_cmp_sign(LOGICAL,140)@1
    i_unnamed_mem_read_generic52_cmp_sign_q <= STD_LOGIC_VECTOR(i_unnamed_mem_read_generic51_q(31 downto 31));

    -- c_i32_1gr(CONSTANT,49)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- xMSB_uid99_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x(BITSELECT,98)@1
    xMSB_uid99_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b <= STD_LOGIC_VECTOR(bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid101_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x(BITSELECT,100)@1
    rightShiftStage0Idx1Rng1_uid101_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b <= bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b(31 downto 1);

    -- rightShiftStage0Idx1_uid102_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x(BITJOIN,101)@1
    rightShiftStage0Idx1_uid102_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q <= xMSB_uid99_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b & rightShiftStage0Idx1Rng1_uid101_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b;

    -- i_shr_rm11_mem_read_generic_vt_const_31(CONSTANT,74)
    i_shr_rm11_mem_read_generic_vt_const_31_q <= "0000000000000000000000000000000";

    -- c_i32_2gr(CONSTANT,50)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_syncbuf_stride_sync_buffer33_mem_read_generic(BLACKBOX,83)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer33_mem_read_generic : i_syncbuf_stride_sync_buffer33_mem_read_generic45
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer33_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_rm10_mem_read_generic(LOGICAL,64)@1
    i_cmp_rm10_mem_read_generic_q <= "1" WHEN i_syncbuf_stride_sync_buffer33_mem_read_generic_out_buffer_out = c_i32_2gr_q ELSE "0";

    -- i_shr_rm11_mem_read_generic_sel_x(BITSELECT,35)@1
    i_shr_rm11_mem_read_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp_rm10_mem_read_generic_q(0 downto 0)), 32));

    -- i_shr_rm11_mem_read_generic_vt_select_0(BITSELECT,76)@1
    i_shr_rm11_mem_read_generic_vt_select_0_b <= i_shr_rm11_mem_read_generic_sel_x_b(0 downto 0);

    -- i_shr_rm11_mem_read_generic_vt_join(BITJOIN,75)@1
    i_shr_rm11_mem_read_generic_vt_join_q <= i_shr_rm11_mem_read_generic_vt_const_31_q & i_shr_rm11_mem_read_generic_vt_select_0_b;

    -- i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_narrow_x(BITSELECT,30)@1
    i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_narrow_x_b <= i_shr_rm11_mem_read_generic_vt_join_q(4 downto 0);

    -- rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x(BITSELECT,102)@1
    rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_in <= i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_narrow_x_b(0 downto 0);
    rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b <= rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_in(0 downto 0);

    -- rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x(MUX,103)@1
    rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_s <= rightShiftStageSel0Dto0_uid103_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_b;
    rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_combproc: PROCESS (rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_s, bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b, rightShiftStage0Idx1_uid102_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q <= bgTrunc_i_sub3_rm13_mem_read_generic_sel_x_b;
            WHEN "1" => rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q <= rightShiftStage0Idx1_uid102_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_add11_rm15_mem_read_generic(ADD,61)@1
    i_add11_rm15_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid104_i_cond10_rm14_mem_read_generic_mem_read_generic50_shift_x_q);
    i_add11_rm15_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add11_rm15_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_rm15_mem_read_generic_a) + UNSIGNED(i_add11_rm15_mem_read_generic_b));
    i_add11_rm15_mem_read_generic_q <= i_add11_rm15_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add11_rm15_mem_read_generic_sel_x(BITSELECT,2)@1
    bgTrunc_i_add11_rm15_mem_read_generic_sel_x_b <= i_add11_rm15_mem_read_generic_q(31 downto 0);

    -- i_acl_push_i32_ox_111_push12_mem_read_generic(BLACKBOX,59)@1
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i32_ox_111_push12_mem_read_generic : i_acl_push_i32_ox_111_push12_mem_read_generic56
    PORT MAP (
        in_data_in => bgTrunc_i_inc49_mem_read_generic_sel_x_b,
        in_feedback_stall_in_12 => i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_feedback_stall_out_12,
        in_notexit57 => i_notexit57_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_12 => i_acl_push_i32_ox_111_push12_mem_read_generic_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i32_ox_111_push12_mem_read_generic_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,48)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_ox_111_pop12_mem_read_generic(BLACKBOX,55)@1
    -- out out_feedback_stall_out_12@20000000
    thei_acl_pop_i32_ox_111_pop12_mem_read_generic : i_acl_pop_i32_ox_111_pop12_mem_read_generic36
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni3_1,
        in_feedback_in_12 => i_acl_push_i32_ox_111_push12_mem_read_generic_out_feedback_out_12,
        in_feedback_valid_in_12 => i_acl_push_i32_ox_111_push12_mem_read_generic_out_feedback_valid_out_12,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out,
        out_feedback_stall_out_12 => i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_feedback_stall_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_inc49_mem_read_generic(ADD,66)@1
    i_inc49_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out);
    i_inc49_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc49_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc49_mem_read_generic_a) + UNSIGNED(i_inc49_mem_read_generic_b));
    i_inc49_mem_read_generic_q <= i_inc49_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_inc49_mem_read_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_inc49_mem_read_generic_sel_x_b <= i_inc49_mem_read_generic_q(31 downto 0);

    -- i_exitcond23_mem_read_generic(LOGICAL,65)@1
    i_exitcond23_mem_read_generic_q <= "1" WHEN bgTrunc_i_inc49_mem_read_generic_sel_x_b = bgTrunc_i_add11_rm15_mem_read_generic_sel_x_b ELSE "0";

    -- i_notexit57_demorgan_mem_read_generic(LOGICAL,71)@1
    i_notexit57_demorgan_mem_read_generic_q <= i_exitcond23_mem_read_generic_q or i_unnamed_mem_read_generic52_cmp_sign_q;

    -- i_notexit57_mem_read_generic(LOGICAL,72)@1
    i_notexit57_mem_read_generic_q <= i_notexit57_demorgan_mem_read_generic_q xor VCC_q;

    -- redist3_i_notexit57_mem_read_generic_q_1(DELAY,149)
    redist3_i_notexit57_mem_read_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit57_mem_read_generic_q, xout => redist3_i_notexit57_mem_read_generic_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push14_mem_read_generic(BLACKBOX,58)@2
    -- out out_feedback_out_14@20000000
    -- out out_feedback_valid_out_14@20000000
    thei_acl_push_i1_push14_mem_read_generic : i_acl_push_i1_push14_mem_read_generic66
    PORT MAP (
        in_data_in => redist8_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_14 => i_acl_pop_i1_pop14_mem_read_generic_out_feedback_stall_out_14,
        in_notexit57 => redist3_i_notexit57_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_14 => i_acl_push_i1_push14_mem_read_generic_out_feedback_out_14,
        out_feedback_valid_out_14 => i_acl_push_i1_push14_mem_read_generic_out_feedback_valid_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop14_mem_read_generic(BLACKBOX,54)@1
    -- out out_feedback_stall_out_14@20000000
    thei_acl_pop_i1_pop14_mem_read_generic : i_acl_pop_i1_pop14_mem_read_generic64
    PORT MAP (
        in_data_in => in_c0_eni3_3,
        in_dir => in_c0_eni3_1,
        in_feedback_in_14 => i_acl_push_i1_push14_mem_read_generic_out_feedback_out_14,
        in_feedback_valid_in_14 => i_acl_push_i1_push14_mem_read_generic_out_feedback_valid_out_14,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop14_mem_read_generic_out_data_out,
        out_feedback_stall_out_14 => i_acl_pop_i1_pop14_mem_read_generic_out_feedback_stall_out_14,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_1(DELAY,154)
    redist8_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop14_mem_read_generic_out_data_out, xout => redist8_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist9_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_4(DELAY,155)
    redist9_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_1_q, xout => redist9_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_4_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_sub2463_push13_mem_read_generic(BLACKBOX,60)@2
    -- out out_feedback_out_13@20000000
    -- out out_feedback_valid_out_13@20000000
    thei_acl_push_i32_sub2463_push13_mem_read_generic : i_acl_push_i32_sub2463_push13_mem_read_generic62
    PORT MAP (
        in_data_in => redist6_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_13 => i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_feedback_stall_out_13,
        in_notexit57 => redist3_i_notexit57_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist10_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_13 => i_acl_push_i32_sub2463_push13_mem_read_generic_out_feedback_out_13,
        out_feedback_valid_out_13 => i_acl_push_i32_sub2463_push13_mem_read_generic_out_feedback_valid_out_13,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_sub2463_pop13_mem_read_generic(BLACKBOX,56)@1
    -- out out_feedback_stall_out_13@20000000
    thei_acl_pop_i32_sub2463_pop13_mem_read_generic : i_acl_pop_i32_sub2463_pop13_mem_read_generic60
    PORT MAP (
        in_data_in => in_c0_eni3_2,
        in_dir => in_c0_eni3_1,
        in_feedback_in_13 => i_acl_push_i32_sub2463_push13_mem_read_generic_out_feedback_out_13,
        in_feedback_valid_in_13 => i_acl_push_i32_sub2463_push13_mem_read_generic_out_feedback_valid_out_13,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out,
        out_feedback_stall_out_13 => i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_feedback_stall_out_13,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_1(DELAY,152)
    redist6_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out, xout => redist6_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_inputreg(DELAY,159)
    redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_1_q, xout => redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_inputreg_q, clk => clock, aclr => resetn );

    -- redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4(DELAY,153)
    redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_inputreg_q, xout => redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_q, clk => clock, aclr => resetn );

    -- redist4_i_notexit57_mem_read_generic_q_4(DELAY,150)
    redist4_i_notexit57_mem_read_generic_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_notexit57_mem_read_generic_q_1_q, xout => redist4_i_notexit57_mem_read_generic_q_4_q, clk => clock, aclr => resetn );

    -- redist5_i_notexit57_demorgan_mem_read_generic_q_4(DELAY,151)
    redist5_i_notexit57_demorgan_mem_read_generic_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit57_demorgan_mem_read_generic_q, xout => redist5_i_notexit57_demorgan_mem_read_generic_q_4_q, clk => clock, aclr => resetn );

    -- i_syncbuf_pad_sync_buffer39_mem_read_generic(BLACKBOX,82)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_pad_sync_buffer39_mem_read_generic : i_syncbuf_pad_sync_buffer39_mem_read_generic38
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist11_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_pad_sync_buffer39_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul26_mem_read_generic_bs4(BITSELECT,126)@1
    i_mul26_mem_read_generic_bs4_in <= STD_LOGIC_VECTOR(i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out(17 downto 0));
    i_mul26_mem_read_generic_bs4_b <= STD_LOGIC_VECTOR(i_mul26_mem_read_generic_bs4_in(17 downto 0));

    -- i_mul26_mem_read_generic_bjA5(BITJOIN,127)@1
    i_mul26_mem_read_generic_bjA5_q <= GND_q & i_mul26_mem_read_generic_bs4_b;

    -- i_syncbuf_stride_sync_buffer35_mem_read_generic(BLACKBOX,84)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer35_mem_read_generic : i_syncbuf_stride_sync_buffer35_mem_read_generic34
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer35_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul26_mem_read_generic_bs2_merged_bit_select(BITSELECT,145)@1
    i_mul26_mem_read_generic_bs2_merged_bit_select_b <= i_syncbuf_stride_sync_buffer35_mem_read_generic_out_buffer_out(17 downto 0);
    i_mul26_mem_read_generic_bs2_merged_bit_select_c <= i_syncbuf_stride_sync_buffer35_mem_read_generic_out_buffer_out(31 downto 18);

    -- i_mul26_mem_read_generic_bjB9(BITJOIN,131)@1
    i_mul26_mem_read_generic_bjB9_q <= GND_q & i_mul26_mem_read_generic_bs2_merged_bit_select_b;

    -- i_mul26_mem_read_generic_bs7(BITSELECT,129)@1
    i_mul26_mem_read_generic_bs7_b <= STD_LOGIC_VECTOR(i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out(31 downto 18));

    -- i_mul26_mem_read_generic_ma3_cma(CHAINMULTADD,144)@1 + 2
    i_mul26_mem_read_generic_ma3_cma_reset <= not (resetn);
    i_mul26_mem_read_generic_ma3_cma_ena0 <= '1';
    i_mul26_mem_read_generic_ma3_cma_ena1 <= i_mul26_mem_read_generic_ma3_cma_ena0;
    i_mul26_mem_read_generic_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul26_mem_read_generic_ma3_cma_a0(0),15));
    i_mul26_mem_read_generic_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul26_mem_read_generic_ma3_cma_a0(1),15));
    i_mul26_mem_read_generic_ma3_cma_p(0) <= i_mul26_mem_read_generic_ma3_cma_l(0) * i_mul26_mem_read_generic_ma3_cma_c0(0);
    i_mul26_mem_read_generic_ma3_cma_p(1) <= i_mul26_mem_read_generic_ma3_cma_l(1) * i_mul26_mem_read_generic_ma3_cma_c0(1);
    i_mul26_mem_read_generic_ma3_cma_u(0) <= RESIZE(i_mul26_mem_read_generic_ma3_cma_p(0),35);
    i_mul26_mem_read_generic_ma3_cma_u(1) <= RESIZE(i_mul26_mem_read_generic_ma3_cma_p(1),35);
    i_mul26_mem_read_generic_ma3_cma_w(0) <= i_mul26_mem_read_generic_ma3_cma_u(0) + i_mul26_mem_read_generic_ma3_cma_u(1);
    i_mul26_mem_read_generic_ma3_cma_x(0) <= i_mul26_mem_read_generic_ma3_cma_w(0);
    i_mul26_mem_read_generic_ma3_cma_y(0) <= i_mul26_mem_read_generic_ma3_cma_x(0);
    i_mul26_mem_read_generic_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul26_mem_read_generic_ma3_cma_a0 <= (others => (others => '0'));
            i_mul26_mem_read_generic_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul26_mem_read_generic_ma3_cma_ena0 = '1') THEN
                i_mul26_mem_read_generic_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul26_mem_read_generic_bs7_b),14);
                i_mul26_mem_read_generic_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul26_mem_read_generic_bs2_merged_bit_select_c),14);
                i_mul26_mem_read_generic_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul26_mem_read_generic_bjB9_q),19);
                i_mul26_mem_read_generic_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul26_mem_read_generic_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul26_mem_read_generic_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul26_mem_read_generic_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul26_mem_read_generic_ma3_cma_ena1 = '1') THEN
                i_mul26_mem_read_generic_ma3_cma_s(0) <= i_mul26_mem_read_generic_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul26_mem_read_generic_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul26_mem_read_generic_ma3_cma_s(0)(33 downto 0)), xout => i_mul26_mem_read_generic_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul26_mem_read_generic_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul26_mem_read_generic_ma3_cma_qq(33 downto 0));

    -- redist0_i_mul26_mem_read_generic_ma3_cma_q_1(DELAY,146)
    redist0_i_mul26_mem_read_generic_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul26_mem_read_generic_ma3_cma_q, xout => redist0_i_mul26_mem_read_generic_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul26_mem_read_generic_align_14(BITSHIFT,136)@4
    i_mul26_mem_read_generic_align_14_qint <= redist0_i_mul26_mem_read_generic_ma3_cma_q_1_q & "000000000000000000";
    i_mul26_mem_read_generic_align_14_q <= i_mul26_mem_read_generic_align_14_qint(51 downto 0);

    -- i_mul26_mem_read_generic_bs11(BITSELECT,133)@1
    i_mul26_mem_read_generic_bs11_b <= i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out(31 downto 18);

    -- i_mul26_mem_read_generic_im10_cma(CHAINMULTADD,143)@1 + 2
    i_mul26_mem_read_generic_im10_cma_reset <= not (resetn);
    i_mul26_mem_read_generic_im10_cma_ena0 <= '1';
    i_mul26_mem_read_generic_im10_cma_ena1 <= i_mul26_mem_read_generic_im10_cma_ena0;
    i_mul26_mem_read_generic_im10_cma_p(0) <= i_mul26_mem_read_generic_im10_cma_a0(0) * i_mul26_mem_read_generic_im10_cma_c0(0);
    i_mul26_mem_read_generic_im10_cma_u(0) <= RESIZE(i_mul26_mem_read_generic_im10_cma_p(0),28);
    i_mul26_mem_read_generic_im10_cma_w(0) <= i_mul26_mem_read_generic_im10_cma_u(0);
    i_mul26_mem_read_generic_im10_cma_x(0) <= i_mul26_mem_read_generic_im10_cma_w(0);
    i_mul26_mem_read_generic_im10_cma_y(0) <= i_mul26_mem_read_generic_im10_cma_x(0);
    i_mul26_mem_read_generic_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul26_mem_read_generic_im10_cma_a0 <= (others => (others => '0'));
            i_mul26_mem_read_generic_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul26_mem_read_generic_im10_cma_ena0 = '1') THEN
                i_mul26_mem_read_generic_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul26_mem_read_generic_bs11_b),14);
                i_mul26_mem_read_generic_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul26_mem_read_generic_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul26_mem_read_generic_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul26_mem_read_generic_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul26_mem_read_generic_im10_cma_ena1 = '1') THEN
                i_mul26_mem_read_generic_im10_cma_s(0) <= i_mul26_mem_read_generic_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul26_mem_read_generic_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul26_mem_read_generic_im10_cma_s(0)(27 downto 0)), xout => i_mul26_mem_read_generic_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul26_mem_read_generic_im10_cma_q <= STD_LOGIC_VECTOR(i_mul26_mem_read_generic_im10_cma_qq(27 downto 0));

    -- redist1_i_mul26_mem_read_generic_im10_cma_q_1(DELAY,147)
    redist1_i_mul26_mem_read_generic_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul26_mem_read_generic_im10_cma_q, xout => redist1_i_mul26_mem_read_generic_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul26_mem_read_generic_bs1(BITSELECT,123)@1
    i_mul26_mem_read_generic_bs1_in <= i_acl_pop_i32_ox_111_pop12_mem_read_generic_out_data_out(17 downto 0);
    i_mul26_mem_read_generic_bs1_b <= i_mul26_mem_read_generic_bs1_in(17 downto 0);

    -- i_mul26_mem_read_generic_im0_cma(CHAINMULTADD,142)@1 + 2
    i_mul26_mem_read_generic_im0_cma_reset <= not (resetn);
    i_mul26_mem_read_generic_im0_cma_ena0 <= '1';
    i_mul26_mem_read_generic_im0_cma_ena1 <= i_mul26_mem_read_generic_im0_cma_ena0;
    i_mul26_mem_read_generic_im0_cma_p(0) <= i_mul26_mem_read_generic_im0_cma_a0(0) * i_mul26_mem_read_generic_im0_cma_c0(0);
    i_mul26_mem_read_generic_im0_cma_u(0) <= RESIZE(i_mul26_mem_read_generic_im0_cma_p(0),36);
    i_mul26_mem_read_generic_im0_cma_w(0) <= i_mul26_mem_read_generic_im0_cma_u(0);
    i_mul26_mem_read_generic_im0_cma_x(0) <= i_mul26_mem_read_generic_im0_cma_w(0);
    i_mul26_mem_read_generic_im0_cma_y(0) <= i_mul26_mem_read_generic_im0_cma_x(0);
    i_mul26_mem_read_generic_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul26_mem_read_generic_im0_cma_a0 <= (others => (others => '0'));
            i_mul26_mem_read_generic_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul26_mem_read_generic_im0_cma_ena0 = '1') THEN
                i_mul26_mem_read_generic_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul26_mem_read_generic_bs1_b),18);
                i_mul26_mem_read_generic_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul26_mem_read_generic_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul26_mem_read_generic_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul26_mem_read_generic_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul26_mem_read_generic_im0_cma_ena1 = '1') THEN
                i_mul26_mem_read_generic_im0_cma_s(0) <= i_mul26_mem_read_generic_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul26_mem_read_generic_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul26_mem_read_generic_im0_cma_s(0)(35 downto 0)), xout => i_mul26_mem_read_generic_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul26_mem_read_generic_im0_cma_q <= STD_LOGIC_VECTOR(i_mul26_mem_read_generic_im0_cma_qq(35 downto 0));

    -- redist2_i_mul26_mem_read_generic_im0_cma_q_1(DELAY,148)
    redist2_i_mul26_mem_read_generic_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul26_mem_read_generic_im0_cma_q, xout => redist2_i_mul26_mem_read_generic_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul26_mem_read_generic_join_13(BITJOIN,135)@4
    i_mul26_mem_read_generic_join_13_q <= redist1_i_mul26_mem_read_generic_im10_cma_q_1_q & redist2_i_mul26_mem_read_generic_im0_cma_q_1_q;

    -- i_mul26_mem_read_generic_result_add_0_0(ADD,138)@4
    i_mul26_mem_read_generic_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul26_mem_read_generic_join_13_q));
    i_mul26_mem_read_generic_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul26_mem_read_generic_align_14_q(51)) & i_mul26_mem_read_generic_align_14_q));
    i_mul26_mem_read_generic_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul26_mem_read_generic_result_add_0_0_a) + SIGNED(i_mul26_mem_read_generic_result_add_0_0_b));
    i_mul26_mem_read_generic_result_add_0_0_q <= i_mul26_mem_read_generic_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul26_mem_read_generic_rnd_sel(BITSELECT,118)@4
    bgTrunc_i_mul26_mem_read_generic_rnd_sel_in <= i_mul26_mem_read_generic_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul26_mem_read_generic_rnd_sel_b <= bgTrunc_i_mul26_mem_read_generic_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul26_mem_read_generic_sel_x(BITSELECT,6)@4
    bgTrunc_i_mul26_mem_read_generic_sel_x_b <= bgTrunc_i_mul26_mem_read_generic_rnd_sel_b(31 downto 0);

    -- redist12_bgTrunc_i_mul26_mem_read_generic_sel_x_b_1(DELAY,158)
    redist12_bgTrunc_i_mul26_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul26_mem_read_generic_sel_x_b, xout => redist12_bgTrunc_i_mul26_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub27_mem_read_generic(SUB,77)@5
    i_sub27_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist12_bgTrunc_i_mul26_mem_read_generic_sel_x_b_1_q);
    i_sub27_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_pad_sync_buffer39_mem_read_generic_out_buffer_out);
    i_sub27_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub27_mem_read_generic_a) - UNSIGNED(i_sub27_mem_read_generic_b));
    i_sub27_mem_read_generic_q <= i_sub27_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub27_mem_read_generic_sel_x(BITSELECT,7)@5
    bgTrunc_i_sub27_mem_read_generic_sel_x_b <= STD_LOGIC_VECTOR(i_sub27_mem_read_generic_q(31 downto 0));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,37)@5
    out_c0_exi5_0 <= GND_q;
    out_c0_exi5_1 <= bgTrunc_i_sub27_mem_read_generic_sel_x_b;
    out_c0_exi5_2 <= redist5_i_notexit57_demorgan_mem_read_generic_q_4_q;
    out_c0_exi5_3 <= redist4_i_notexit57_mem_read_generic_q_4_q;
    out_c0_exi5_4 <= redist7_i_acl_pop_i32_sub2463_pop13_mem_read_generic_out_data_out_4_q;
    out_c0_exi5_5 <= redist9_i_acl_pop_i1_pop14_mem_read_generic_out_data_out_4_q;
    out_o_valid <= redist11_sync_in_aunroll_x_in_i_valid_4_q;

    -- i_acl_push_i1_notexitcond56_mem_read_generic(BLACKBOX,57)@1
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i1_notexitcond56_mem_read_generic : i_acl_push_i1_notexitcond56_mem_read_generic58
    PORT MAP (
        in_data_in => i_notexit57_mem_read_generic_q,
        in_feedback_stall_in_8 => i_acl_pipeline_keep_going55_mem_read_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_8 => i_acl_push_i1_notexitcond56_mem_read_generic_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i1_notexitcond56_mem_read_generic_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going55_mem_read_generic(BLACKBOX,53)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going55_mem_read_generic : i_acl_pipeline_keep_going55_mem_read_generic32
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond56_mem_read_generic_out_feedback_out_8,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond56_mem_read_generic_out_feedback_valid_out_8,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going55_mem_read_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going55_mem_read_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going55_mem_read_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going55_mem_read_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,52)
    out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_valid_out <= i_acl_pipeline_keep_going55_mem_read_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going55_mem_read_generic_exiting_stall_out <= i_acl_pipeline_keep_going55_mem_read_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,93)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going55_mem_read_generic_out_pipeline_valid_out;

END normal;
