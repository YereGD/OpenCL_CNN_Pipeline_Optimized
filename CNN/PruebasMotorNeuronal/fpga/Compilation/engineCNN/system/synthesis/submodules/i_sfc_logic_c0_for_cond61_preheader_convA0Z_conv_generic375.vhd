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

-- VHDL created from i_sfc_logic_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic375
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

entity i_sfc_logic_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic375 is
    port (
        in_c0_eni3346_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3346_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3346_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3346_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi4354_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4354_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4354_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4354_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4354_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic375;

architecture normal of i_sfc_logic_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic375 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going252_conv_generic377 is
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


    component i_acl_pop_i1_pop57_conv_generic397 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_57 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop58_conv_generic401 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_58 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic389 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_56 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_stall_out_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond253_conv_generic395 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_12 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push57_conv_generic399 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_57 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push58_conv_generic403 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_58 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic393 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_feedback_stall_in_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_out_56 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer121_conv_generic379 is
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


    component i_syncbuf_pad_sync_buffer152_conv_generic381 is
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


    component i_syncbuf_w_sync_buffer116_conv_generic384 is
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
    signal bgTrunc_i_add2_rm_rm_rm93_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm_rm_rm90_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next162_conv_generic_sel_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal bgTrunc_i_sub3_rm_rm_rm94_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm_rm_rm92_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i3_1gr_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i3_1gr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop57_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop57_conv_generic_out_feedback_stall_out_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop58_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop58_conv_generic_out_feedback_stall_out_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_data_out : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_feedback_stall_out_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond253_conv_generic_out_feedback_out_12 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond253_conv_generic_out_feedback_valid_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push57_conv_generic_out_feedback_out_57 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push57_conv_generic_out_feedback_valid_out_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push58_conv_generic_out_feedback_out_58 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push58_conv_generic_out_feedback_valid_out_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic_out_feedback_out_56 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic_out_feedback_valid_out_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add2_rm_rm_rm93_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm93_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm93_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm93_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm90_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm90_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm90_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm90_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next162_conv_generic_a : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next162_conv_generic_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next162_conv_generic_o : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next162_conv_generic_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_mul_rm_rm_rm91_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_rm_rm91_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_notexit254_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit254_demorgan_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_rm_rm_rm94_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm94_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm94_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm94_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm92_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm92_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm92_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm92_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer121_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer152_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer116_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic386_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid76_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond163_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic387_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_acl_push_i1_push58_conv_generic(BLACKBOX,45)@1
    -- out out_feedback_out_58@20000000
    -- out out_feedback_valid_out_58@20000000
    thei_acl_push_i1_push58_conv_generic : i_acl_push_i1_push58_conv_generic403
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop58_conv_generic_out_data_out,
        in_feedback_stall_in_58 => i_acl_pop_i1_pop58_conv_generic_out_feedback_stall_out_58,
        in_notexit254 => i_notexit254_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_58 => i_acl_push_i1_push58_conv_generic_out_feedback_out_58,
        out_feedback_valid_out_58 => i_acl_push_i1_push58_conv_generic_out_feedback_valid_out_58,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop58_conv_generic(BLACKBOX,41)@1
    -- out out_feedback_stall_out_58@20000000
    thei_acl_pop_i1_pop58_conv_generic : i_acl_pop_i1_pop58_conv_generic401
    PORT MAP (
        in_data_in => in_c0_eni3346_3,
        in_dir => in_c0_eni3346_1,
        in_feedback_in_58 => i_acl_push_i1_push58_conv_generic_out_feedback_out_58,
        in_feedback_valid_in_58 => i_acl_push_i1_push58_conv_generic_out_feedback_valid_out_58,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop58_conv_generic_out_data_out,
        out_feedback_stall_out_58 => i_acl_pop_i1_pop58_conv_generic_out_feedback_stall_out_58,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_push57_conv_generic(BLACKBOX,44)@1
    -- out out_feedback_out_57@20000000
    -- out out_feedback_valid_out_57@20000000
    thei_acl_push_i1_push57_conv_generic : i_acl_push_i1_push57_conv_generic399
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop57_conv_generic_out_data_out,
        in_feedback_stall_in_57 => i_acl_pop_i1_pop57_conv_generic_out_feedback_stall_out_57,
        in_notexit254 => i_notexit254_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_57 => i_acl_push_i1_push57_conv_generic_out_feedback_out_57,
        out_feedback_valid_out_57 => i_acl_push_i1_push57_conv_generic_out_feedback_valid_out_57,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop57_conv_generic(BLACKBOX,40)@1
    -- out out_feedback_stall_out_57@20000000
    thei_acl_pop_i1_pop57_conv_generic : i_acl_pop_i1_pop57_conv_generic397
    PORT MAP (
        in_data_in => in_c0_eni3346_2,
        in_dir => in_c0_eni3346_1,
        in_feedback_in_57 => i_acl_push_i1_push57_conv_generic_out_feedback_out_57,
        in_feedback_valid_in_57 => i_acl_push_i1_push57_conv_generic_out_feedback_valid_out_57,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop57_conv_generic_out_data_out,
        out_feedback_stall_out_57 => i_acl_pop_i1_pop57_conv_generic_out_feedback_stall_out_57,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_notexit254_conv_generic(LOGICAL,54)@1
    i_notexit254_conv_generic_q <= i_notexit254_demorgan_conv_generic_q xor VCC_q;

    -- leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x(BITSELECT,74)@1
    leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_in <= i_syncbuf_pad_sync_buffer152_conv_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_b <= leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid76_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x(BITJOIN,75)@1
    leftShiftStage0Idx1_uid76_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q <= leftShiftStage0Idx1Rng1_uid75_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer152_conv_generic(BLACKBOX,59)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer152_conv_generic : i_syncbuf_pad_sync_buffer152_conv_generic381
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer152_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x(MUX,77)@1
    leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_s <= VCC_q;
    leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_combproc: PROCESS (leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_s, i_syncbuf_pad_sync_buffer152_conv_generic_out_buffer_out, leftShiftStage0Idx1_uid76_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q <= i_syncbuf_pad_sync_buffer152_conv_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q <= leftShiftStage0Idx1_uid76_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_rm_rm91_conv_generic_vt_select_31(BITSELECT,53)@1
    i_mul_rm_rm_rm91_conv_generic_vt_select_31_b <= leftShiftStage0_uid78_i_mul_rm_rm_rm91_conv_generic_conv_generic383_shift_x_q(31 downto 1);

    -- i_mul_rm_rm_rm91_conv_generic_vt_join(BITJOIN,52)@1
    i_mul_rm_rm_rm91_conv_generic_vt_join_q <= i_mul_rm_rm_rm91_conv_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,35)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer121_conv_generic(BLACKBOX,58)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer121_conv_generic : i_syncbuf_h_sync_buffer121_conv_generic379
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer121_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm_rm_rm90_conv_generic(ADD,48)@1
    i_add_rm_rm_rm90_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer121_conv_generic_out_buffer_out);
    i_add_rm_rm_rm90_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm_rm_rm90_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm_rm_rm90_conv_generic_a) + UNSIGNED(i_add_rm_rm_rm90_conv_generic_b));
    i_add_rm_rm_rm90_conv_generic_q <= i_add_rm_rm_rm90_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm_rm_rm90_conv_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add_rm_rm_rm90_conv_generic_sel_x_b <= i_add_rm_rm_rm90_conv_generic_q(31 downto 0);

    -- i_sub_rm_rm_rm92_conv_generic(ADD,57)@1
    i_sub_rm_rm_rm92_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add_rm_rm_rm90_conv_generic_sel_x_b);
    i_sub_rm_rm_rm92_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm91_conv_generic_vt_join_q);
    i_sub_rm_rm_rm92_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm_rm_rm92_conv_generic_a) + UNSIGNED(i_sub_rm_rm_rm92_conv_generic_b));
    i_sub_rm_rm_rm92_conv_generic_q <= i_sub_rm_rm_rm92_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm_rm_rm92_conv_generic_sel_x(BITSELECT,6)@1
    bgTrunc_i_sub_rm_rm_rm92_conv_generic_sel_x_b <= i_sub_rm_rm_rm92_conv_generic_q(31 downto 0);

    -- i_syncbuf_w_sync_buffer116_conv_generic(BLACKBOX,60)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer116_conv_generic : i_syncbuf_w_sync_buffer116_conv_generic384
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer116_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_rm_rm93_conv_generic(ADD,47)@1
    i_add2_rm_rm_rm93_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer116_conv_generic_out_buffer_out);
    i_add2_rm_rm_rm93_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_rm_rm93_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_rm_rm93_conv_generic_a) + UNSIGNED(i_add2_rm_rm_rm93_conv_generic_b));
    i_add2_rm_rm_rm93_conv_generic_q <= i_add2_rm_rm_rm93_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_rm_rm93_conv_generic_sel_x(BITSELECT,2)@1
    bgTrunc_i_add2_rm_rm_rm93_conv_generic_sel_x_b <= i_add2_rm_rm_rm93_conv_generic_q(31 downto 0);

    -- i_sub3_rm_rm_rm94_conv_generic(ADD,56)@1
    i_sub3_rm_rm_rm94_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm_rm_rm93_conv_generic_sel_x_b);
    i_sub3_rm_rm_rm94_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm91_conv_generic_vt_join_q);
    i_sub3_rm_rm_rm94_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_rm_rm94_conv_generic_a) + UNSIGNED(i_sub3_rm_rm_rm94_conv_generic_b));
    i_sub3_rm_rm_rm94_conv_generic_q <= i_sub3_rm_rm_rm94_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_rm_rm94_conv_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_sub3_rm_rm_rm94_conv_generic_sel_x_b <= i_sub3_rm_rm_rm94_conv_generic_q(31 downto 0);

    -- i_unnamed_conv_generic386(LOGICAL,61)@1
    i_unnamed_conv_generic386_q <= bgTrunc_i_sub3_rm_rm_rm94_conv_generic_sel_x_b or bgTrunc_i_sub_rm_rm_rm92_conv_generic_sel_x_b;

    -- i_unnamed_conv_generic387_cmp_sign(LOGICAL,86)@1
    i_unnamed_conv_generic387_cmp_sign_q <= STD_LOGIC_VECTOR(i_unnamed_conv_generic386_q(31 downto 31));

    -- dupName_0_c_i3_1gr_x(CONSTANT,8)
    dupName_0_c_i3_1gr_x_q <= "111";

    -- i_fpgaindvars_iv_next162_conv_generic(ADD,50)@1
    i_fpgaindvars_iv_next162_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_data_out);
    i_fpgaindvars_iv_next162_conv_generic_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i3_1gr_x_q);
    i_fpgaindvars_iv_next162_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next162_conv_generic_a) + UNSIGNED(i_fpgaindvars_iv_next162_conv_generic_b));
    i_fpgaindvars_iv_next162_conv_generic_q <= i_fpgaindvars_iv_next162_conv_generic_o(3 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next162_conv_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_fpgaindvars_iv_next162_conv_generic_sel_x_b <= i_fpgaindvars_iv_next162_conv_generic_q(2 downto 0);

    -- i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic(BLACKBOX,46)@1
    -- out out_feedback_out_56@20000000
    -- out out_feedback_valid_out_56@20000000
    thei_acl_push_i3_fpgaindvars_iv161_push56_conv_generic : i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic393
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next162_conv_generic_sel_x_b,
        in_feedback_stall_in_56 => i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_feedback_stall_out_56,
        in_notexit254 => i_notexit254_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_56 => i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic_out_feedback_out_56,
        out_feedback_valid_out_56 => i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic_out_feedback_valid_out_56,
        clock => clock,
        resetn => resetn
    );

    -- c_i3_1gr(CONSTANT,37)
    c_i3_1gr_q <= "001";

    -- i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic(BLACKBOX,42)@1
    -- out out_feedback_stall_out_56@20000000
    thei_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic : i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic389
    PORT MAP (
        in_data_in => c_i3_1gr_q,
        in_dir => in_c0_eni3346_1,
        in_feedback_in_56 => i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic_out_feedback_out_56,
        in_feedback_valid_in_56 => i_acl_push_i3_fpgaindvars_iv161_push56_conv_generic_out_feedback_valid_out_56,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_data_out,
        out_feedback_stall_out_56 => i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_feedback_stall_out_56,
        clock => clock,
        resetn => resetn
    );

    -- i_exitcond163_conv_generic_cmp_sign(LOGICAL,84)@1
    i_exitcond163_conv_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_acl_pop_i3_fpgaindvars_iv161_pop56_conv_generic_out_data_out(2 downto 2));

    -- i_notexit254_demorgan_conv_generic(LOGICAL,55)@1
    i_notexit254_demorgan_conv_generic_q <= i_exitcond163_conv_generic_cmp_sign_q or i_unnamed_conv_generic387_cmp_sign_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,25)@1
    out_c0_exi4354_0 <= GND_q;
    out_c0_exi4354_1 <= i_notexit254_demorgan_conv_generic_q;
    out_c0_exi4354_2 <= i_notexit254_conv_generic_q;
    out_c0_exi4354_3 <= i_acl_pop_i1_pop57_conv_generic_out_data_out;
    out_c0_exi4354_4 <= i_acl_pop_i1_pop58_conv_generic_out_data_out;
    out_o_valid <= in_i_valid;

    -- i_acl_push_i1_notexitcond253_conv_generic(BLACKBOX,43)@1
    -- out out_feedback_out_12@20000000
    -- out out_feedback_valid_out_12@20000000
    thei_acl_push_i1_notexitcond253_conv_generic : i_acl_push_i1_notexitcond253_conv_generic395
    PORT MAP (
        in_data_in => i_notexit254_conv_generic_q,
        in_feedback_stall_in_12 => i_acl_pipeline_keep_going252_conv_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_12 => i_acl_push_i1_notexitcond253_conv_generic_out_feedback_out_12,
        out_feedback_valid_out_12 => i_acl_push_i1_notexitcond253_conv_generic_out_feedback_valid_out_12,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going252_conv_generic(BLACKBOX,39)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going252_conv_generic : i_acl_pipeline_keep_going252_conv_generic377
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond253_conv_generic_out_feedback_out_12,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond253_conv_generic_out_feedback_valid_out_12,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going252_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going252_conv_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going252_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going252_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,38)
    out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going252_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going252_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,67)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going252_conv_generic_out_pipeline_valid_out;

END normal;
