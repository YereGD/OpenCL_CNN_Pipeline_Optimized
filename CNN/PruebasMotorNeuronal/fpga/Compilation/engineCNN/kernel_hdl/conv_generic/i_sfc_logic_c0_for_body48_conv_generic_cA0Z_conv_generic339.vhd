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

-- VHDL created from i_sfc_logic_c0_for_body48_conv_generic_c0_enter334_conv_generic339
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

entity i_sfc_logic_c0_for_body48_conv_generic_c0_enter334_conv_generic339 is
    port (
        in_c0_eni2333_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2333_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni2333_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3339_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3339_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3339_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3339_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body48_conv_generic_c0_enter334_conv_generic339;

architecture normal of i_sfc_logic_c0_for_body48_conv_generic_c0_enter334_conv_generic339 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going260_conv_generic341 is
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


    component i_acl_pop_i1_pop49_conv_generic370 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_49 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_49 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_ox_118_pop48_conv_generic362 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_48 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_48 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_48 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond261_conv_generic368 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_16 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push49_conv_generic372 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit262 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_49 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_49 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_ox_118_push48_conv_generic366 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_48 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit262 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_48 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_48 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer120_conv_generic343 is
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


    component i_syncbuf_pad_sync_buffer150_conv_generic353 is
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


    component i_syncbuf_pad_sync_buffer151_conv_generic345 is
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


    component i_syncbuf_stride_sync_buffer147_conv_generic356 is
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


    component i_syncbuf_w_sync_buffer115_conv_generic348 is
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


    component i_syncbuf_w_sync_buffer_conv_generic359 is
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
    signal bgTrunc_i_add11_rm_rm106_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm_rm_rm103_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm_rm_rm9398_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm_rm_rm9095_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc139_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm_rm_rm9499_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm_rm_rm9297_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr_rm_rm_rm102_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop49_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop49_conv_generic_out_feedback_stall_out_49 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_ox_118_pop48_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_ox_118_pop48_conv_generic_out_feedback_stall_out_48 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond261_conv_generic_out_feedback_out_16 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond261_conv_generic_out_feedback_valid_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push49_conv_generic_out_feedback_out_49 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push49_conv_generic_out_feedback_valid_out_49 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_ox_118_push48_conv_generic_out_feedback_out_48 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_ox_118_push48_conv_generic_out_feedback_valid_out_48 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add11_rm_rm106_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm106_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm106_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm106_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm103_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm103_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm103_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm103_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm9398_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm9398_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm9398_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm9398_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm9095_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm9095_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm9095_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm9095_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp_rm_rm_rm101_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond40_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc139_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc139_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc139_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc139_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_rm_rm_rm100_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_rm_rm100_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_mul_rm_rm_rm9196_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_rm_rm9196_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_notexit262_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit262_demorgan_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shr_rm_rm_rm102_conv_generic_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_rm_rm_rm102_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_rm_rm_rm102_conv_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_rm_rm_rm104_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm104_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm104_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm104_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm9499_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm9499_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm9499_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm9499_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm9297_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm9297_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm9297_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm9297_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer120_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer150_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer151_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer147_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer115_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic350_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid102_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid104_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid105_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid114_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid123_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic351_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_acl_push_i1_push49_conv_generic(BLACKBOX,59)@1
    -- out out_feedback_out_49@20000000
    -- out out_feedback_valid_out_49@20000000
    thei_acl_push_i1_push49_conv_generic : i_acl_push_i1_push49_conv_generic372
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop49_conv_generic_out_data_out,
        in_feedback_stall_in_49 => i_acl_pop_i1_pop49_conv_generic_out_feedback_stall_out_49,
        in_notexit262 => i_notexit262_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_49 => i_acl_push_i1_push49_conv_generic_out_feedback_out_49,
        out_feedback_valid_out_49 => i_acl_push_i1_push49_conv_generic_out_feedback_valid_out_49,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop49_conv_generic(BLACKBOX,56)@1
    -- out out_feedback_stall_out_49@20000000
    thei_acl_pop_i1_pop49_conv_generic : i_acl_pop_i1_pop49_conv_generic370
    PORT MAP (
        in_data_in => in_c0_eni2333_2,
        in_dir => in_c0_eni2333_1,
        in_feedback_in_49 => i_acl_push_i1_push49_conv_generic_out_feedback_out_49,
        in_feedback_valid_in_49 => i_acl_push_i1_push49_conv_generic_out_feedback_valid_out_49,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop49_conv_generic_out_data_out,
        out_feedback_stall_out_49 => i_acl_pop_i1_pop49_conv_generic_out_feedback_stall_out_49,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_notexit262_conv_generic(LOGICAL,74)@1
    i_notexit262_conv_generic_q <= i_notexit262_demorgan_conv_generic_q xor VCC_q;

    -- leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x(BITSELECT,121)@1
    leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_in <= i_syncbuf_pad_sync_buffer151_conv_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_b <= leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid123_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x(BITJOIN,122)@1
    leftShiftStage0Idx1_uid123_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q <= leftShiftStage0Idx1Rng1_uid122_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer151_conv_generic(BLACKBOX,85)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer151_conv_generic : i_syncbuf_pad_sync_buffer151_conv_generic345
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer151_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x(MUX,124)@1
    leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_s <= VCC_q;
    leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_combproc: PROCESS (leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_s, i_syncbuf_pad_sync_buffer151_conv_generic_out_buffer_out, leftShiftStage0Idx1_uid123_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q <= i_syncbuf_pad_sync_buffer151_conv_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q <= leftShiftStage0Idx1_uid123_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_rm_rm9196_conv_generic_vt_select_31(BITSELECT,73)@1
    i_mul_rm_rm_rm9196_conv_generic_vt_select_31_b <= leftShiftStage0_uid125_i_mul_rm_rm_rm9196_conv_generic_conv_generic347_shift_x_q(31 downto 1);

    -- i_mul_rm_rm_rm9196_conv_generic_vt_join(BITJOIN,72)@1
    i_mul_rm_rm_rm9196_conv_generic_vt_join_q <= i_mul_rm_rm_rm9196_conv_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,53)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer120_conv_generic(BLACKBOX,83)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer120_conv_generic : i_syncbuf_h_sync_buffer120_conv_generic343
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer120_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm_rm_rm9095_conv_generic(ADD,64)@1
    i_add_rm_rm_rm9095_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer120_conv_generic_out_buffer_out);
    i_add_rm_rm_rm9095_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm_rm_rm9095_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm_rm_rm9095_conv_generic_a) + UNSIGNED(i_add_rm_rm_rm9095_conv_generic_b));
    i_add_rm_rm_rm9095_conv_generic_q <= i_add_rm_rm_rm9095_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm_rm_rm9095_conv_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_add_rm_rm_rm9095_conv_generic_sel_x_b <= i_add_rm_rm_rm9095_conv_generic_q(31 downto 0);

    -- i_sub_rm_rm_rm9297_conv_generic(ADD,82)@1
    i_sub_rm_rm_rm9297_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add_rm_rm_rm9095_conv_generic_sel_x_b);
    i_sub_rm_rm_rm9297_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm9196_conv_generic_vt_join_q);
    i_sub_rm_rm_rm9297_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm_rm_rm9297_conv_generic_a) + UNSIGNED(i_sub_rm_rm_rm9297_conv_generic_b));
    i_sub_rm_rm_rm9297_conv_generic_q <= i_sub_rm_rm_rm9297_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm_rm_rm9297_conv_generic_sel_x(BITSELECT,9)@1
    bgTrunc_i_sub_rm_rm_rm9297_conv_generic_sel_x_b <= i_sub_rm_rm_rm9297_conv_generic_q(31 downto 0);

    -- i_syncbuf_w_sync_buffer115_conv_generic(BLACKBOX,87)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer115_conv_generic : i_syncbuf_w_sync_buffer115_conv_generic348
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer115_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_rm_rm9398_conv_generic(ADD,63)@1
    i_add2_rm_rm_rm9398_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer115_conv_generic_out_buffer_out);
    i_add2_rm_rm_rm9398_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_rm_rm9398_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_rm_rm9398_conv_generic_a) + UNSIGNED(i_add2_rm_rm_rm9398_conv_generic_b));
    i_add2_rm_rm_rm9398_conv_generic_q <= i_add2_rm_rm_rm9398_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_rm_rm9398_conv_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_add2_rm_rm_rm9398_conv_generic_sel_x_b <= i_add2_rm_rm_rm9398_conv_generic_q(31 downto 0);

    -- i_sub3_rm_rm_rm9499_conv_generic(ADD,81)@1
    i_sub3_rm_rm_rm9499_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm_rm_rm9398_conv_generic_sel_x_b);
    i_sub3_rm_rm_rm9499_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm9196_conv_generic_vt_join_q);
    i_sub3_rm_rm_rm9499_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_rm_rm9499_conv_generic_a) + UNSIGNED(i_sub3_rm_rm_rm9499_conv_generic_b));
    i_sub3_rm_rm_rm9499_conv_generic_q <= i_sub3_rm_rm_rm9499_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_rm_rm9499_conv_generic_sel_x(BITSELECT,8)@1
    bgTrunc_i_sub3_rm_rm_rm9499_conv_generic_sel_x_b <= i_sub3_rm_rm_rm9499_conv_generic_q(31 downto 0);

    -- i_unnamed_conv_generic350(LOGICAL,89)@1
    i_unnamed_conv_generic350_q <= bgTrunc_i_sub3_rm_rm_rm9499_conv_generic_sel_x_b or bgTrunc_i_sub_rm_rm_rm9297_conv_generic_sel_x_b;

    -- i_unnamed_conv_generic351_cmp_sign(LOGICAL,135)@1
    i_unnamed_conv_generic351_cmp_sign_q <= STD_LOGIC_VECTOR(i_unnamed_conv_generic350_q(31 downto 31));

    -- c_i32_1gr(CONSTANT,51)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- xMSB_uid102_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x(BITSELECT,101)@1
    xMSB_uid102_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b <= STD_LOGIC_VECTOR(bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x_b(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid104_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x(BITSELECT,103)@1
    rightShiftStage0Idx1Rng1_uid104_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b <= bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x_b(31 downto 1);

    -- rightShiftStage0Idx1_uid105_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x(BITJOIN,104)@1
    rightShiftStage0Idx1_uid105_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q <= xMSB_uid102_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b & rightShiftStage0Idx1Rng1_uid104_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b;

    -- leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x(BITSELECT,112)@1
    leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_in <= i_syncbuf_pad_sync_buffer150_conv_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_b <= leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid114_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x(BITJOIN,113)@1
    leftShiftStage0Idx1_uid114_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q <= leftShiftStage0Idx1Rng1_uid113_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer150_conv_generic(BLACKBOX,84)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer150_conv_generic : i_syncbuf_pad_sync_buffer150_conv_generic353
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer150_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x(MUX,115)@1
    leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_s <= VCC_q;
    leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_combproc: PROCESS (leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_s, i_syncbuf_pad_sync_buffer150_conv_generic_out_buffer_out, leftShiftStage0Idx1_uid114_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q <= i_syncbuf_pad_sync_buffer150_conv_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q <= leftShiftStage0Idx1_uid114_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_rm_rm100_conv_generic_vt_select_31(BITSELECT,70)@1
    i_mul_rm_rm_rm100_conv_generic_vt_select_31_b <= leftShiftStage0_uid116_i_mul_rm_rm_rm100_conv_generic_conv_generic355_shift_x_q(31 downto 1);

    -- i_mul_rm_rm_rm100_conv_generic_vt_join(BITJOIN,69)@1
    i_mul_rm_rm_rm100_conv_generic_vt_join_q <= i_mul_rm_rm_rm100_conv_generic_vt_select_31_b & GND_q;

    -- i_syncbuf_w_sync_buffer_conv_generic(BLACKBOX,88)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer_conv_generic : i_syncbuf_w_sync_buffer_conv_generic359
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_rm_rm103_conv_generic(ADD,62)@1
    i_add2_rm_rm_rm103_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer_conv_generic_out_buffer_out);
    i_add2_rm_rm_rm103_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_rm_rm103_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_rm_rm103_conv_generic_a) + UNSIGNED(i_add2_rm_rm_rm103_conv_generic_b));
    i_add2_rm_rm_rm103_conv_generic_q <= i_add2_rm_rm_rm103_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_rm_rm103_conv_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add2_rm_rm_rm103_conv_generic_sel_x_b <= i_add2_rm_rm_rm103_conv_generic_q(31 downto 0);

    -- i_sub3_rm_rm_rm104_conv_generic(ADD,80)@1
    i_sub3_rm_rm_rm104_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm_rm_rm103_conv_generic_sel_x_b);
    i_sub3_rm_rm_rm104_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm100_conv_generic_vt_join_q);
    i_sub3_rm_rm_rm104_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_rm_rm104_conv_generic_a) + UNSIGNED(i_sub3_rm_rm_rm104_conv_generic_b));
    i_sub3_rm_rm_rm104_conv_generic_q <= i_sub3_rm_rm_rm104_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x(BITSELECT,7)@1
    bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x_b <= i_sub3_rm_rm_rm104_conv_generic_q(31 downto 0);

    -- i_shr_rm_rm_rm102_conv_generic_vt_const_31(CONSTANT,77)
    i_shr_rm_rm_rm102_conv_generic_vt_const_31_q <= "0000000000000000000000000000000";

    -- c_i32_2gr(CONSTANT,52)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_syncbuf_stride_sync_buffer147_conv_generic(BLACKBOX,86)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer147_conv_generic : i_syncbuf_stride_sync_buffer147_conv_generic356
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer147_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_rm_rm_rm101_conv_generic(LOGICAL,65)@1
    i_cmp_rm_rm_rm101_conv_generic_q <= "1" WHEN i_syncbuf_stride_sync_buffer147_conv_generic_out_buffer_out = c_i32_2gr_q ELSE "0";

    -- i_shr_rm_rm_rm102_conv_generic_sel_x(BITSELECT,37)@1
    i_shr_rm_rm_rm102_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp_rm_rm_rm101_conv_generic_q(0 downto 0)), 32));

    -- i_shr_rm_rm_rm102_conv_generic_vt_select_0(BITSELECT,79)@1
    i_shr_rm_rm_rm102_conv_generic_vt_select_0_b <= i_shr_rm_rm_rm102_conv_generic_sel_x_b(0 downto 0);

    -- i_shr_rm_rm_rm102_conv_generic_vt_join(BITJOIN,78)@1
    i_shr_rm_rm_rm102_conv_generic_vt_join_q <= i_shr_rm_rm_rm102_conv_generic_vt_const_31_q & i_shr_rm_rm_rm102_conv_generic_vt_select_0_b;

    -- i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_narrow_x(BITSELECT,28)@1
    i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_narrow_x_b <= i_shr_rm_rm_rm102_conv_generic_vt_join_q(4 downto 0);

    -- rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x(BITSELECT,105)@1
    rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_in <= i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_narrow_x_b(0 downto 0);
    rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b <= rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_in(0 downto 0);

    -- rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x(MUX,106)@1
    rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_s <= rightShiftStageSel0Dto0_uid106_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_b;
    rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_combproc: PROCESS (rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_s, bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x_b, rightShiftStage0Idx1_uid105_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q <= bgTrunc_i_sub3_rm_rm_rm104_conv_generic_sel_x_b;
            WHEN "1" => rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q <= rightShiftStage0Idx1_uid105_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_add11_rm_rm106_conv_generic(ADD,61)@1
    i_add11_rm_rm106_conv_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid107_i_cond10_rm_rm_rm105_conv_generic_conv_generic361_shift_x_q);
    i_add11_rm_rm106_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add11_rm_rm106_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_rm_rm106_conv_generic_a) + UNSIGNED(i_add11_rm_rm106_conv_generic_b));
    i_add11_rm_rm106_conv_generic_q <= i_add11_rm_rm106_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add11_rm_rm106_conv_generic_sel_x(BITSELECT,2)@1
    bgTrunc_i_add11_rm_rm106_conv_generic_sel_x_b <= i_add11_rm_rm106_conv_generic_q(31 downto 0);

    -- i_acl_push_i32_ox_118_push48_conv_generic(BLACKBOX,60)@1
    -- out out_feedback_out_48@20000000
    -- out out_feedback_valid_out_48@20000000
    thei_acl_push_i32_ox_118_push48_conv_generic : i_acl_push_i32_ox_118_push48_conv_generic366
    PORT MAP (
        in_data_in => bgTrunc_i_inc139_conv_generic_sel_x_b,
        in_feedback_stall_in_48 => i_acl_pop_i32_ox_118_pop48_conv_generic_out_feedback_stall_out_48,
        in_notexit262 => i_notexit262_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_48 => i_acl_push_i32_ox_118_push48_conv_generic_out_feedback_out_48,
        out_feedback_valid_out_48 => i_acl_push_i32_ox_118_push48_conv_generic_out_feedback_valid_out_48,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,50)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_ox_118_pop48_conv_generic(BLACKBOX,57)@1
    -- out out_feedback_stall_out_48@20000000
    thei_acl_pop_i32_ox_118_pop48_conv_generic : i_acl_pop_i32_ox_118_pop48_conv_generic362
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni2333_1,
        in_feedback_in_48 => i_acl_push_i32_ox_118_push48_conv_generic_out_feedback_out_48,
        in_feedback_valid_in_48 => i_acl_push_i32_ox_118_push48_conv_generic_out_feedback_valid_out_48,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_ox_118_pop48_conv_generic_out_data_out,
        out_feedback_stall_out_48 => i_acl_pop_i32_ox_118_pop48_conv_generic_out_feedback_stall_out_48,
        clock => clock,
        resetn => resetn
    );

    -- i_inc139_conv_generic(ADD,67)@1
    i_inc139_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_ox_118_pop48_conv_generic_out_data_out);
    i_inc139_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc139_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc139_conv_generic_a) + UNSIGNED(i_inc139_conv_generic_b));
    i_inc139_conv_generic_q <= i_inc139_conv_generic_o(32 downto 0);

    -- bgTrunc_i_inc139_conv_generic_sel_x(BITSELECT,6)@1
    bgTrunc_i_inc139_conv_generic_sel_x_b <= i_inc139_conv_generic_q(31 downto 0);

    -- i_exitcond40_conv_generic(LOGICAL,66)@1
    i_exitcond40_conv_generic_q <= "1" WHEN bgTrunc_i_inc139_conv_generic_sel_x_b = bgTrunc_i_add11_rm_rm106_conv_generic_sel_x_b ELSE "0";

    -- i_notexit262_demorgan_conv_generic(LOGICAL,75)@1
    i_notexit262_demorgan_conv_generic_q <= i_exitcond40_conv_generic_q or i_unnamed_conv_generic351_cmp_sign_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,39)@1
    out_c0_exi3339_0 <= GND_q;
    out_c0_exi3339_1 <= i_notexit262_demorgan_conv_generic_q;
    out_c0_exi3339_2 <= i_notexit262_conv_generic_q;
    out_c0_exi3339_3 <= i_acl_pop_i1_pop49_conv_generic_out_data_out;
    out_o_valid <= in_i_valid;

    -- i_acl_push_i1_notexitcond261_conv_generic(BLACKBOX,58)@1
    -- out out_feedback_out_16@20000000
    -- out out_feedback_valid_out_16@20000000
    thei_acl_push_i1_notexitcond261_conv_generic : i_acl_push_i1_notexitcond261_conv_generic368
    PORT MAP (
        in_data_in => i_notexit262_conv_generic_q,
        in_feedback_stall_in_16 => i_acl_pipeline_keep_going260_conv_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_16 => i_acl_push_i1_notexitcond261_conv_generic_out_feedback_out_16,
        out_feedback_valid_out_16 => i_acl_push_i1_notexitcond261_conv_generic_out_feedback_valid_out_16,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going260_conv_generic(BLACKBOX,55)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going260_conv_generic : i_acl_pipeline_keep_going260_conv_generic341
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond261_conv_generic_out_feedback_out_16,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond261_conv_generic_out_feedback_valid_out_16,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going260_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going260_conv_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going260_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going260_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,54)
    out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going260_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going260_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going260_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,96)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going260_conv_generic_out_pipeline_valid_out;

END normal;
