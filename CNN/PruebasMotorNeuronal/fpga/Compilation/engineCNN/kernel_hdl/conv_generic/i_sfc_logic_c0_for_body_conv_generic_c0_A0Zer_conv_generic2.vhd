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

-- VHDL created from i_sfc_logic_c0_for_body_conv_generic_c0_enter_conv_generic2
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

entity i_sfc_logic_c0_for_body_conv_generic_c0_enter_conv_generic2 is
    port (
        in_b_off : in std_logic_vector(31 downto 0);  -- ufix32
        in_bias : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi8_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi8_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_5 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi8_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body_conv_generic_c0_enter_conv_generic2;

architecture normal of i_sfc_logic_c0_for_body_conv_generic_c0_enter_conv_generic2 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_conv_generic8 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(7 downto 0);  -- Fixed Point
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


    component i_acl_pop_i32_oc_034_pop36_conv_generic21 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_36 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_36 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_36 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups_pop38_conv_generic4 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_38 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations_pop37_conv_generic10 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_37 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_37 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic37 is
        port (
            in_data_in : in std_logic_vector(4 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_19 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_feedback_stall_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration_conv_generic17 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_conv_generic40 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_push_i32_oc_034_push36_conv_generic35 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_36 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_36 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_36 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups_push38_conv_generic43 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_38 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations_push37_conv_generic13 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_37 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_37 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic45 is
        port (
            in_data_in : in std_logic_vector(4 downto 0);  -- Fixed Point
            in_feedback_stall_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_feedback_out_19 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_b_off_sync_buffer114_conv_generic24 is
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


    component i_syncbuf_b_off_sync_buffer_conv_generic27 is
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


    component i_syncbuf_bias_sync_buffer_conv_generic30 is
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


    component i_syncbuf_tile_channels_sync_buffer_conv_generic19 is
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
    signal bgTrunc_i_add14_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next171_conv_generic_sel_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal bgTrunc_i_inc_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sdiv_add_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_multconst_x_q : STD_LOGIC_VECTOR (60 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_cleanups_shl_conv_generic_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_idxprom_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups_conv_generic_conv_generic42_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i5_14_q : STD_LOGIC_VECTOR (4 downto 0);
    signal c_i5_1gr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_acl_264_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_oc_034_pop36_conv_generic_out_feedback_stall_out_36 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups_pop38_conv_generic_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups_pop38_conv_generic_out_feedback_stall_out_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations_pop37_conv_generic_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations_pop37_conv_generic_out_feedback_stall_out_37 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_data_out : STD_LOGIC_VECTOR (4 downto 0);
    signal i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_feedback_stall_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration_conv_generic_out_feedback_out_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration_conv_generic_out_feedback_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_conv_generic_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_conv_generic_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_oc_034_push36_conv_generic_out_feedback_out_36 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_oc_034_push36_conv_generic_out_feedback_valid_out_36 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups_push38_conv_generic_out_feedback_out_38 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups_push38_conv_generic_out_feedback_valid_out_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations_push37_conv_generic_out_feedback_out_37 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations_push37_conv_generic_out_feedback_valid_out_37 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic_out_feedback_out_19 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic_out_feedback_valid_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add14_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add14_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add14_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add14_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cleanups_shl_conv_generic_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl_conv_generic_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl_conv_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp13_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp13_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp13_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp13_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp13_xor_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup_xor_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next171_conv_generic_a : STD_LOGIC_VECTOR (5 downto 0);
    signal i_fpgaindvars_iv_next171_conv_generic_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_fpgaindvars_iv_next171_conv_generic_o : STD_LOGIC_VECTOR (5 downto 0);
    signal i_fpgaindvars_iv_next171_conv_generic_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_inc_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_last_initeration_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_next_initerations_conv_generic_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations_conv_generic_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notexit_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sdiv_add_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sdiv_add_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sdiv_add_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sdiv_add_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sdiv_and_rm_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sdiv_and_rm_conv_generic_vt_const_31_q : STD_LOGIC_VECTOR (29 downto 0);
    signal i_sdiv_and_rm_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sdiv_and_rm_conv_generic_vt_select_1_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_syncbuf_b_off_sync_buffer114_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_b_off_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_bias_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic15_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic15_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic33_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic33_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic6_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic6_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic6_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_join_13_q : STD_LOGIC_VECTOR (56 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_align_14_q : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_align_14_qint : STD_LOGIC_VECTOR (38 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_join_16_q : STD_LOGIC_VECTOR (66 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_a : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_b : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_o : STD_LOGIC_VECTOR (67 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_q : STD_LOGIC_VECTOR (67 downto 0);
    signal leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid162_i_next_cleanups_conv_generic_conv_generic42_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid169_i_next_initerations_conv_generic_conv_generic12_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid171_i_next_initerations_conv_generic_conv_generic12_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid178_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid178_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid179_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1_uid180_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to8_uid183_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid183_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx1Rng8_uid184_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b : STD_LOGIC_VECTOR (23 downto 0);
    signal rightShiftStage1Idx1_uid185_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to4_uid188_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid188_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage2Idx1Rng4_uid189_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b : STD_LOGIC_VECTOR (27 downto 0);
    signal rightShiftStage2Idx1_uid190_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to2_uid193_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid193_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage3Idx1Rng2_uid194_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage3Idx1_uid195_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4Idx1Rng1_uid198_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage4Idx1_uid199_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid204_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to2_uid206_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid206_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0Idx1Rng2_uid207_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1_uid208_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic15_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic15_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (11 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (19 downto 0);
    signal i_exitcond172_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_acl_pipeline_keep_going_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_c0_eni1_1_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist10_bgTrunc_i_add14_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist6_sync_in_aunroll_x_in_i_valid_1(DELAY,232)
    redist6_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist6_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist7_sync_in_aunroll_x_in_i_valid_2(DELAY,233)
    redist7_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_sync_in_aunroll_x_in_i_valid_1_q, xout => redist7_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_3(DELAY,234)
    redist8_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_2_q, xout => redist8_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- c_i5_1gr(CONSTANT,71)
    c_i5_1gr_q <= "11111";

    -- i_fpgaindvars_iv_next171_conv_generic(ADD,95)@4
    i_fpgaindvars_iv_next171_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_data_out);
    i_fpgaindvars_iv_next171_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i5_1gr_q);
    i_fpgaindvars_iv_next171_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next171_conv_generic_a) + UNSIGNED(i_fpgaindvars_iv_next171_conv_generic_b));
    i_fpgaindvars_iv_next171_conv_generic_q <= i_fpgaindvars_iv_next171_conv_generic_o(5 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next171_conv_generic_sel_x(BITSELECT,3)@4
    bgTrunc_i_fpgaindvars_iv_next171_conv_generic_sel_x_b <= i_fpgaindvars_iv_next171_conv_generic_q(4 downto 0);

    -- i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic(BLACKBOX,84)@4
    -- out out_feedback_out_19@20000000
    -- out out_feedback_valid_out_19@20000000
    thei_acl_push_i5_fpgaindvars_iv170_push19_conv_generic : i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic45
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next171_conv_generic_sel_x_b,
        in_feedback_stall_in_19 => i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_feedback_stall_out_19,
        in_keep_going => redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_19 => i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic_out_feedback_out_19,
        out_feedback_valid_out_19 => i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic_out_feedback_valid_out_19,
        clock => clock,
        resetn => resetn
    );

    -- redist5_sync_in_aunroll_x_in_c0_eni1_1_3(DELAY,231)
    redist5_sync_in_aunroll_x_in_c0_eni1_1_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni1_1, xout => redist5_sync_in_aunroll_x_in_c0_eni1_1_3_q, clk => clock, aclr => resetn );

    -- c_i5_14(CONSTANT,70)
    c_i5_14_q <= "01110";

    -- i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic(BLACKBOX,78)@4
    -- out out_feedback_stall_out_19@20000000
    thei_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic : i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic37
    PORT MAP (
        in_data_in => c_i5_14_q,
        in_dir => redist5_sync_in_aunroll_x_in_c0_eni1_1_3_q,
        in_feedback_in_19 => i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic_out_feedback_out_19,
        in_feedback_valid_in_19 => i_acl_push_i5_fpgaindvars_iv170_push19_conv_generic_out_feedback_valid_out_19,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_data_out,
        out_feedback_stall_out_19 => i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_feedback_stall_out_19,
        clock => clock,
        resetn => resetn
    );

    -- i_exitcond172_conv_generic_cmp_sign(LOGICAL,223)@4
    i_exitcond172_conv_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_acl_pop_i5_fpgaindvars_iv170_pop19_conv_generic_out_data_out(4 downto 4));

    -- i_masked_conv_generic(LOGICAL,100)@4
    i_masked_conv_generic_q <= i_exitcond172_conv_generic_cmp_sign_q and i_first_cleanup_conv_generic_q;

    -- c_i32_15(CONSTANT,61)
    c_i32_15_q <= "00000000000000000000000000001111";

    -- i_notexit_conv_generic(LOGICAL,104)@4
    i_notexit_conv_generic_q <= i_exitcond172_conv_generic_cmp_sign_q xor VCC_q;

    -- i_acl_push_i1_notexitcond_conv_generic(BLACKBOX,80)@4
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_notexitcond_conv_generic : i_acl_push_i1_notexitcond_conv_generic40
    PORT MAP (
        in_data_in => i_notexit_conv_generic_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_conv_generic_out_not_exitcond_stall_out,
        in_first_cleanup => i_first_cleanup_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_2 => i_acl_push_i1_notexitcond_conv_generic_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_notexitcond_conv_generic_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_0gr(CONSTANT,66)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl_conv_generic_vt_const_3(CONSTANT,87)
    i_cleanups_shl_conv_generic_vt_const_3_q <= "000";

    -- rightShiftStage0Idx1Rng1_uid169_i_next_initerations_conv_generic_conv_generic12_shift_x(BITSELECT,168)@1
    rightShiftStage0Idx1Rng1_uid169_i_next_initerations_conv_generic_conv_generic12_shift_x_b <= i_acl_pop_i4_initerations_pop37_conv_generic_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid171_i_next_initerations_conv_generic_conv_generic12_shift_x(BITJOIN,170)@1
    rightShiftStage0Idx1_uid171_i_next_initerations_conv_generic_conv_generic12_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid169_i_next_initerations_conv_generic_conv_generic12_shift_x_b;

    -- i_acl_push_i4_initerations_push37_conv_generic(BLACKBOX,83)@1
    -- out out_feedback_out_37@20000000
    -- out out_feedback_valid_out_37@20000000
    thei_acl_push_i4_initerations_push37_conv_generic : i_acl_push_i4_initerations_push37_conv_generic13
    PORT MAP (
        in_data_in => i_next_initerations_conv_generic_vt_join_q,
        in_feedback_stall_in_37 => i_acl_pop_i4_initerations_pop37_conv_generic_out_feedback_stall_out_37,
        in_keep_going => i_acl_pipeline_keep_going_conv_generic_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_37 => i_acl_push_i4_initerations_push37_conv_generic_out_feedback_out_37,
        out_feedback_valid_out_37 => i_acl_push_i4_initerations_push37_conv_generic_out_feedback_valid_out_37,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_7gr(CONSTANT,68)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_initerations_pop37_conv_generic(BLACKBOX,77)@1
    -- out out_feedback_stall_out_37@20000000
    thei_acl_pop_i4_initerations_pop37_conv_generic : i_acl_pop_i4_initerations_pop37_conv_generic10
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_37 => i_acl_push_i4_initerations_push37_conv_generic_out_feedback_out_37,
        in_feedback_valid_in_37 => i_acl_push_i4_initerations_push37_conv_generic_out_feedback_valid_out_37,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i4_initerations_pop37_conv_generic_out_data_out,
        out_feedback_stall_out_37 => i_acl_pop_i4_initerations_pop37_conv_generic_out_feedback_stall_out_37,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x(MUX,172)@1
    rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_s <= VCC_q;
    rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_combproc: PROCESS (rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_s, i_acl_pop_i4_initerations_pop37_conv_generic_out_data_out, rightShiftStage0Idx1_uid171_i_next_initerations_conv_generic_conv_generic12_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_q <= i_acl_pop_i4_initerations_pop37_conv_generic_out_data_out;
            WHEN "1" => rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_q <= rightShiftStage0Idx1_uid171_i_next_initerations_conv_generic_conv_generic12_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations_conv_generic_vt_select_2(BITSELECT,103)@1
    i_next_initerations_conv_generic_vt_select_2_b <= rightShiftStage0_uid173_i_next_initerations_conv_generic_conv_generic12_shift_x_q(2 downto 0);

    -- i_next_initerations_conv_generic_vt_join(BITJOIN,102)@1
    i_next_initerations_conv_generic_vt_join_q <= GND_q & i_next_initerations_conv_generic_vt_select_2_b;

    -- i_unnamed_conv_generic15_BitSelect_for_a(BITSELECT,217)@1
    i_unnamed_conv_generic15_BitSelect_for_a_b <= i_next_initerations_conv_generic_vt_join_q(0 downto 0);

    -- i_unnamed_conv_generic15_join(BITJOIN,218)@1
    i_unnamed_conv_generic15_join_q <= GND_q & GND_q & GND_q & i_unnamed_conv_generic15_BitSelect_for_a_b;

    -- i_unnamed_conv_generic15_vt_select_0(BITSELECT,118)@1
    i_unnamed_conv_generic15_vt_select_0_b <= i_unnamed_conv_generic15_join_q(0 downto 0);

    -- i_unnamed_conv_generic15_vt_join(BITJOIN,117)@1
    i_unnamed_conv_generic15_vt_join_q <= i_cleanups_shl_conv_generic_vt_const_3_q & i_unnamed_conv_generic15_vt_select_0_b;

    -- i_last_initeration_conv_generic(LOGICAL,99)@1
    i_last_initeration_conv_generic_q <= "1" WHEN i_unnamed_conv_generic15_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration_conv_generic(BLACKBOX,79)@1
    -- out out_feedback_out_1@20000000
    -- out out_feedback_valid_out_1@20000000
    thei_acl_push_i1_lastiniteration_conv_generic : i_acl_push_i1_lastiniteration_conv_generic17
    PORT MAP (
        in_data_in => i_last_initeration_conv_generic_q,
        in_feedback_stall_in_1 => i_acl_pipeline_keep_going_conv_generic_out_initeration_stall_out,
        in_keep_going => i_acl_pipeline_keep_going_conv_generic_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_1 => i_acl_push_i1_lastiniteration_conv_generic_out_feedback_out_1,
        out_feedback_valid_out_1 => i_acl_push_i1_lastiniteration_conv_generic_out_feedback_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_conv_generic(BLACKBOX,74)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_conv_generic : i_acl_pipeline_keep_going_conv_generic8
    PORT MAP (
        in_data_in => in_c0_eni1_1,
        in_initeration_in => i_acl_push_i1_lastiniteration_conv_generic_out_feedback_out_1,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration_conv_generic_out_feedback_valid_out_1,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_conv_generic_out_feedback_out_2,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_conv_generic_out_feedback_valid_out_2,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pipeline_keep_going_conv_generic_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_conv_generic_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going_conv_generic_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pipeline_keep_going_conv_generic_out_data_out_1(DELAY,229)
    redist3_i_acl_pipeline_keep_going_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going_conv_generic_out_data_out, xout => redist3_i_acl_pipeline_keep_going_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,62)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc_conv_generic(ADD,98)@2
    i_inc_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1_q);
    i_inc_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_conv_generic_a) + UNSIGNED(i_inc_conv_generic_b));
    i_inc_conv_generic_q <= i_inc_conv_generic_o(32 downto 0);

    -- bgTrunc_i_inc_conv_generic_sel_x(BITSELECT,4)@2
    bgTrunc_i_inc_conv_generic_sel_x_b <= i_inc_conv_generic_q(31 downto 0);

    -- i_acl_push_i32_oc_034_push36_conv_generic(BLACKBOX,81)@2
    -- out out_feedback_out_36@20000000
    -- out out_feedback_valid_out_36@20000000
    thei_acl_push_i32_oc_034_push36_conv_generic : i_acl_push_i32_oc_034_push36_conv_generic35
    PORT MAP (
        in_data_in => bgTrunc_i_inc_conv_generic_sel_x_b,
        in_feedback_stall_in_36 => i_acl_pop_i32_oc_034_pop36_conv_generic_out_feedback_stall_out_36,
        in_keep_going => redist3_i_acl_pipeline_keep_going_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist6_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_36 => i_acl_push_i32_oc_034_push36_conv_generic_out_feedback_out_36,
        out_feedback_valid_out_36 => i_acl_push_i32_oc_034_push36_conv_generic_out_feedback_valid_out_36,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,60)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_oc_034_pop36_conv_generic(BLACKBOX,75)@1
    -- out out_feedback_stall_out_36@20000000
    thei_acl_pop_i32_oc_034_pop36_conv_generic : i_acl_pop_i32_oc_034_pop36_conv_generic21
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_36 => i_acl_push_i32_oc_034_push36_conv_generic_out_feedback_out_36,
        in_feedback_valid_in_36 => i_acl_push_i32_oc_034_push36_conv_generic_out_feedback_valid_out_36,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out,
        out_feedback_stall_out_36 => i_acl_pop_i32_oc_034_pop36_conv_generic_out_feedback_stall_out_36,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1(DELAY,226)
    redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out, xout => redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2(DELAY,227)
    redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1_q, xout => redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv_generic33(LOGICAL,119)@3 + 1
    i_unnamed_conv_generic33_qi <= "1" WHEN redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2_q = c_i32_15_q ELSE "0";
    i_unnamed_conv_generic33_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic33_qi, xout => i_unnamed_conv_generic33_q, clk => clock, aclr => resetn );

    -- i_acl_264_conv_generic(LOGICAL,73)@4
    i_acl_264_conv_generic_q <= i_cmp13_conv_generic_c and i_unnamed_conv_generic33_q;

    -- i_xor_conv_generic(LOGICAL,124)@4
    i_xor_conv_generic_q <= i_first_cleanup_conv_generic_q xor VCC_q;

    -- i_cmp13_xor_conv_generic(LOGICAL,91)@4
    i_cmp13_xor_conv_generic_q <= i_cmp13_conv_generic_c xor VCC_q;

    -- i_first_cleanup_xor_or_conv_generic(LOGICAL,94)@4
    i_first_cleanup_xor_or_conv_generic_q <= i_cmp13_xor_conv_generic_q or i_xor_conv_generic_q;

    -- i_arrayidx_conv_generic_conv_generic32_mult_multconst_x(CONSTANT,24)
    i_arrayidx_conv_generic_conv_generic32_mult_multconst_x_q <= "0000000000000000000000000000000000000000000000000000000000000";

    -- xMSB_uid204_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x(BITSELECT,203)@1
    xMSB_uid204_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b <= STD_LOGIC_VECTOR(bgTrunc_i_sdiv_add_rm_conv_generic_sel_x_b(31 downto 31));

    -- seMsb_to2_uid206(BITSELECT,205)@1
    seMsb_to2_uid206_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid204_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b(0)) & xMSB_uid204_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b));
    seMsb_to2_uid206_b <= STD_LOGIC_VECTOR(seMsb_to2_uid206_in(1 downto 0));

    -- rightShiftStage0Idx1Rng2_uid207_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x(BITSELECT,206)@1
    rightShiftStage0Idx1Rng2_uid207_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b <= bgTrunc_i_sdiv_add_rm_conv_generic_sel_x_b(31 downto 2);

    -- rightShiftStage0Idx1_uid208_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x(BITJOIN,207)@1
    rightShiftStage0Idx1_uid208_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q <= seMsb_to2_uid206_b & rightShiftStage0Idx1Rng2_uid207_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_b;

    -- i_syncbuf_b_off_sync_buffer_conv_generic(BLACKBOX,112)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_b_off_sync_buffer_conv_generic : i_syncbuf_b_off_sync_buffer_conv_generic27
    PORT MAP (
        in_buffer_in => in_b_off,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_b_off_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_sdiv_and_rm_conv_generic_vt_const_31(CONSTANT,108)
    i_sdiv_and_rm_conv_generic_vt_const_31_q <= "000000000000000000000000000000";

    -- c_i32_3gr(CONSTANT,65)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- i_syncbuf_b_off_sync_buffer114_conv_generic(BLACKBOX,111)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_b_off_sync_buffer114_conv_generic : i_syncbuf_b_off_sync_buffer114_conv_generic24
    PORT MAP (
        in_buffer_in => in_b_off,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_b_off_sync_buffer114_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITSELECT,175)@1
    xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b <= STD_LOGIC_VECTOR(i_syncbuf_b_off_sync_buffer114_conv_generic_out_buffer_out(31 downto 31));

    -- rightShiftStage4Idx1Rng1_uid198_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITSELECT,197)@1
    rightShiftStage4Idx1Rng1_uid198_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b <= rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q(31 downto 1);

    -- rightShiftStage4Idx1_uid199_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITJOIN,198)@1
    rightShiftStage4Idx1_uid199_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b & rightShiftStage4Idx1Rng1_uid198_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b;

    -- seMsb_to2_uid193(BITSELECT,192)@1
    seMsb_to2_uid193_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b(0)) & xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b));
    seMsb_to2_uid193_b <= STD_LOGIC_VECTOR(seMsb_to2_uid193_in(1 downto 0));

    -- rightShiftStage3Idx1Rng2_uid194_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITSELECT,193)@1
    rightShiftStage3Idx1Rng2_uid194_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b <= rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q(31 downto 2);

    -- rightShiftStage3Idx1_uid195_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITJOIN,194)@1
    rightShiftStage3Idx1_uid195_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= seMsb_to2_uid193_b & rightShiftStage3Idx1Rng2_uid194_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b;

    -- seMsb_to4_uid188(BITSELECT,187)@1
    seMsb_to4_uid188_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b(0)) & xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b));
    seMsb_to4_uid188_b <= STD_LOGIC_VECTOR(seMsb_to4_uid188_in(3 downto 0));

    -- rightShiftStage2Idx1Rng4_uid189_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITSELECT,188)@1
    rightShiftStage2Idx1Rng4_uid189_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b <= rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q(31 downto 4);

    -- rightShiftStage2Idx1_uid190_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITJOIN,189)@1
    rightShiftStage2Idx1_uid190_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= seMsb_to4_uid188_b & rightShiftStage2Idx1Rng4_uid189_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b;

    -- seMsb_to8_uid183(BITSELECT,182)@1
    seMsb_to8_uid183_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b(0)) & xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b));
    seMsb_to8_uid183_b <= STD_LOGIC_VECTOR(seMsb_to8_uid183_in(7 downto 0));

    -- rightShiftStage1Idx1Rng8_uid184_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITSELECT,183)@1
    rightShiftStage1Idx1Rng8_uid184_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b <= rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q(31 downto 8);

    -- rightShiftStage1Idx1_uid185_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITJOIN,184)@1
    rightShiftStage1Idx1_uid185_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= seMsb_to8_uid183_b & rightShiftStage1Idx1Rng8_uid184_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b;

    -- seMsb_to16_uid178(BITSELECT,177)@1
    seMsb_to16_uid178_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b(0)) & xMSB_uid176_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b));
    seMsb_to16_uid178_b <= STD_LOGIC_VECTOR(seMsb_to16_uid178_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid179_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITSELECT,178)@1
    rightShiftStage0Idx1Rng16_uid179_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b <= i_syncbuf_b_off_sync_buffer114_conv_generic_out_buffer_out(31 downto 16);

    -- rightShiftStage0Idx1_uid180_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(BITJOIN,179)@1
    rightShiftStage0Idx1_uid180_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= seMsb_to16_uid178_b & rightShiftStage0Idx1Rng16_uid179_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_b;

    -- rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(MUX,181)@1
    rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s <= VCC_q;
    rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_combproc: PROCESS (rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s, i_syncbuf_b_off_sync_buffer114_conv_generic_out_buffer_out, rightShiftStage0Idx1_uid180_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= i_syncbuf_b_off_sync_buffer114_conv_generic_out_buffer_out;
            WHEN "1" => rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage0Idx1_uid180_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(MUX,186)@1
    rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s <= VCC_q;
    rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_combproc: PROCESS (rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s, rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q, rightShiftStage1Idx1_uid185_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage0_uid182_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN "1" => rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage1Idx1_uid185_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(MUX,191)@1
    rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s <= VCC_q;
    rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_combproc: PROCESS (rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s, rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q, rightShiftStage2Idx1_uid190_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q)
    BEGIN
        CASE (rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s) IS
            WHEN "0" => rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage1_uid187_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN "1" => rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage2Idx1_uid190_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN OTHERS => rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(MUX,196)@1
    rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s <= VCC_q;
    rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_combproc: PROCESS (rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s, rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q, rightShiftStage3Idx1_uid195_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q)
    BEGIN
        CASE (rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s) IS
            WHEN "0" => rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage2_uid192_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN "1" => rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage3Idx1_uid195_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN OTHERS => rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x(MUX,200)@1
    rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s <= VCC_q;
    rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_combproc: PROCESS (rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s, rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q, rightShiftStage4Idx1_uid199_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q)
    BEGIN
        CASE (rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_s) IS
            WHEN "0" => rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage3_uid197_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN "1" => rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= rightShiftStage4Idx1_uid199_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q;
            WHEN OTHERS => rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sdiv_and_rm_conv_generic(LOGICAL,107)@1
    i_sdiv_and_rm_conv_generic_q <= rightShiftStage4_uid201_i_sdiv_mask_rm_conv_generic_conv_generic26_shift_x_q and c_i32_3gr_q;

    -- i_sdiv_and_rm_conv_generic_vt_select_1(BITSELECT,110)@1
    i_sdiv_and_rm_conv_generic_vt_select_1_b <= i_sdiv_and_rm_conv_generic_q(1 downto 0);

    -- i_sdiv_and_rm_conv_generic_vt_join(BITJOIN,109)@1
    i_sdiv_and_rm_conv_generic_vt_join_q <= i_sdiv_and_rm_conv_generic_vt_const_31_q & i_sdiv_and_rm_conv_generic_vt_select_1_b;

    -- i_sdiv_add_rm_conv_generic(ADD,106)@1
    i_sdiv_add_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_sdiv_and_rm_conv_generic_vt_join_q);
    i_sdiv_add_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_b_off_sync_buffer_conv_generic_out_buffer_out);
    i_sdiv_add_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sdiv_add_rm_conv_generic_a) + UNSIGNED(i_sdiv_add_rm_conv_generic_b));
    i_sdiv_add_rm_conv_generic_q <= i_sdiv_add_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sdiv_add_rm_conv_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_sdiv_add_rm_conv_generic_sel_x_b <= i_sdiv_add_rm_conv_generic_q(31 downto 0);

    -- rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x(MUX,209)@1 + 1
    rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_s <= VCC_q;
    rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q <= bgTrunc_i_sdiv_add_rm_conv_generic_sel_x_b;
                WHEN "1" => rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q <= rightShiftStage0Idx1_uid208_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add14_conv_generic(ADD,85)@2
    i_add14_conv_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid210_i_sdiv_sh_rm_conv_generic_conv_generic29_shift_x_q);
    i_add14_conv_generic_b <= STD_LOGIC_VECTOR("0" & redist0_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_1_q);
    i_add14_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add14_conv_generic_a) + UNSIGNED(i_add14_conv_generic_b));
    i_add14_conv_generic_q <= i_add14_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add14_conv_generic_sel_x(BITSELECT,2)@2
    bgTrunc_i_add14_conv_generic_sel_x_b <= i_add14_conv_generic_q(31 downto 0);

    -- redist10_bgTrunc_i_add14_conv_generic_sel_x_b_1(DELAY,236)
    redist10_bgTrunc_i_add14_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add14_conv_generic_sel_x_b, xout => redist10_bgTrunc_i_add14_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom_conv_generic_sel_x(BITSELECT,31)@3
    i_idxprom_conv_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist10_bgTrunc_i_add14_conv_generic_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select(BITSELECT,225)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_b <= i_idxprom_conv_generic_sel_x_b(17 downto 0);
    i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_c <= i_idxprom_conv_generic_sel_x_b(63 downto 54);
    i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_d <= i_idxprom_conv_generic_sel_x_b(35 downto 18);
    i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_e <= i_idxprom_conv_generic_sel_x_b(53 downto 36);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0(BITSHIFT,220)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0_qint <= i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_c & "00";
    i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0_qint(11 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_align_15(BITSHIFT,153)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_align_15_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_generic_conv_generic32_mult_x_im3_shift0_q) & "000000000000000";
    i_arrayidx_conv_generic_conv_generic32_mult_x_align_15_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0(BITSHIFT,221)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0_qint <= i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_d & "00";
    i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0_qint(19 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_align_14(BITSHIFT,152)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_align_14_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_generic_conv_generic32_mult_x_im6_shift0_q) & "000000000000000000";
    i_arrayidx_conv_generic_conv_generic32_mult_x_align_14_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_align_14_qint(38 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_join_16(BITJOIN,154)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_join_16_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_align_15_q & i_arrayidx_conv_generic_conv_generic32_mult_x_align_14_q;

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0(BITSHIFT,222)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0_qint <= i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_e & "00";
    i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0_qint(19 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_align_12(BITSHIFT,150)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_align_12_qint <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_generic_conv_generic32_mult_x_im9_shift0_q) & "000000000000000";
    i_arrayidx_conv_generic_conv_generic32_mult_x_align_12_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0(BITSHIFT,219)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0_qint <= i_arrayidx_conv_generic_conv_generic32_mult_x_bs1_merged_bit_select_b & "00";
    i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0_qint(19 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_join_13(BITJOIN,151)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_join_13_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_align_12_q & STD_LOGIC_VECTOR("0" & i_arrayidx_conv_generic_conv_generic32_mult_x_im0_shift0_q);

    -- i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0(ADD,155)@3
    i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_a <= STD_LOGIC_VECTOR("00000000000" & i_arrayidx_conv_generic_conv_generic32_mult_x_join_13_q);
    i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_b <= STD_LOGIC_VECTOR("0" & i_arrayidx_conv_generic_conv_generic32_mult_x_join_16_q);
    i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_a) + UNSIGNED(i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_b));
    i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_q <= i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_o(67 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_mult_extender_x(BITJOIN,23)@3
    i_arrayidx_conv_generic_conv_generic32_mult_extender_x_q <= i_arrayidx_conv_generic_conv_generic32_mult_multconst_x_q & i_arrayidx_conv_generic_conv_generic32_mult_x_result_add_0_0_q(66 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_trunc_sel_x(BITSELECT,25)@3
    i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b <= i_arrayidx_conv_generic_conv_generic32_mult_extender_x_q(63 downto 0);

    -- redist9_i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b_1(DELAY,235)
    redist9_i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b, xout => redist9_i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_syncbuf_bias_sync_buffer_conv_generic(BLACKBOX,113)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_bias_sync_buffer_conv_generic : i_syncbuf_bias_sync_buffer_conv_generic30
    PORT MAP (
        in_buffer_in => in_bias,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_bias_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_conv_generic_conv_generic32_add_x(ADD,26)@4
    i_arrayidx_conv_generic_conv_generic32_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_bias_sync_buffer_conv_generic_out_buffer_out);
    i_arrayidx_conv_generic_conv_generic32_add_x_b <= STD_LOGIC_VECTOR("0" & redist9_i_arrayidx_conv_generic_conv_generic32_trunc_sel_x_b_1_q);
    i_arrayidx_conv_generic_conv_generic32_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_conv_generic_conv_generic32_add_x_a) + UNSIGNED(i_arrayidx_conv_generic_conv_generic32_add_x_b));
    i_arrayidx_conv_generic_conv_generic32_add_x_q <= i_arrayidx_conv_generic_conv_generic32_add_x_o(64 downto 0);

    -- i_arrayidx_conv_generic_conv_generic32_dupName_0_trunc_sel_x(BITSELECT,20)@4
    i_arrayidx_conv_generic_conv_generic32_dupName_0_trunc_sel_x_b <= i_arrayidx_conv_generic_conv_generic32_add_x_q(63 downto 0);

    -- i_syncbuf_tile_channels_sync_buffer_conv_generic(BLACKBOX,114)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_tile_channels_sync_buffer_conv_generic : i_syncbuf_tile_channels_sync_buffer_conv_generic19
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp13_conv_generic(COMPARE,90)@3 + 1
    i_cmp13_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2_q(31)) & redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2_q));
    i_cmp13_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer_conv_generic_out_buffer_out));
    i_cmp13_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp13_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp13_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp13_conv_generic_a) - SIGNED(i_cmp13_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp13_conv_generic_c(0) <= i_cmp13_conv_generic_o(33);

    -- redist2_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_3(DELAY,228)
    redist2_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist1_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_2_q, xout => redist2_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3(DELAY,230)
    redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_acl_pipeline_keep_going_conv_generic_out_data_out_1_q, xout => redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- c_i4_1gr(CONSTANT,67)
    c_i4_1gr_q <= "0001";

    -- leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x(BITSELECT,160)@4
    leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x_in <= i_acl_pop_i4_cleanups_pop38_conv_generic_out_data_out(2 downto 0);
    leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x_b <= leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid162_i_next_cleanups_conv_generic_conv_generic42_shift_x(BITJOIN,161)@4
    leftShiftStage0Idx1_uid162_i_next_cleanups_conv_generic_conv_generic42_shift_x_q <= leftShiftStage0Idx1Rng1_uid161_i_next_cleanups_conv_generic_conv_generic42_shift_x_b & GND_q;

    -- i_or_conv_generic(LOGICAL,105)@4
    i_or_conv_generic_q <= i_exitcond172_conv_generic_cmp_sign_q or i_xor_conv_generic_q;

    -- i_cleanups_shl_conv_generic_sel_x(BITSELECT,30)@4
    i_cleanups_shl_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_or_conv_generic_q(0 downto 0)), 4));

    -- i_cleanups_shl_conv_generic_vt_select_0(BITSELECT,89)@4
    i_cleanups_shl_conv_generic_vt_select_0_b <= i_cleanups_shl_conv_generic_sel_x_b(0 downto 0);

    -- i_cleanups_shl_conv_generic_vt_join(BITJOIN,88)@4
    i_cleanups_shl_conv_generic_vt_join_q <= i_cleanups_shl_conv_generic_vt_const_3_q & i_cleanups_shl_conv_generic_vt_select_0_b;

    -- i_next_cleanups_conv_generic_conv_generic42_shift_narrow_x(BITSELECT,35)@4
    i_next_cleanups_conv_generic_conv_generic42_shift_narrow_x_b <= i_cleanups_shl_conv_generic_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x(BITSELECT,162)@4
    leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x_in <= i_next_cleanups_conv_generic_conv_generic42_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x_b <= leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x(MUX,163)@4
    leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_s <= leftShiftStageSel0Dto0_uid163_i_next_cleanups_conv_generic_conv_generic42_shift_x_b;
    leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_combproc: PROCESS (leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_s, i_acl_pop_i4_cleanups_pop38_conv_generic_out_data_out, leftShiftStage0Idx1_uid162_i_next_cleanups_conv_generic_conv_generic42_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_q <= i_acl_pop_i4_cleanups_pop38_conv_generic_out_data_out;
            WHEN "1" => leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_q <= leftShiftStage0Idx1_uid162_i_next_cleanups_conv_generic_conv_generic42_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups_push38_conv_generic(BLACKBOX,82)@4
    -- out out_feedback_out_38@20000000
    -- out out_feedback_valid_out_38@20000000
    thei_acl_push_i4_cleanups_push38_conv_generic : i_acl_push_i4_cleanups_push38_conv_generic43
    PORT MAP (
        in_data_in => leftShiftStage0_uid164_i_next_cleanups_conv_generic_conv_generic42_shift_x_q,
        in_feedback_stall_in_38 => i_acl_pop_i4_cleanups_pop38_conv_generic_out_feedback_stall_out_38,
        in_keep_going => redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_38 => i_acl_push_i4_cleanups_push38_conv_generic_out_feedback_out_38,
        out_feedback_valid_out_38 => i_acl_push_i4_cleanups_push38_conv_generic_out_feedback_valid_out_38,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_cleanups_pop38_conv_generic(BLACKBOX,76)@4
    -- out out_feedback_stall_out_38@20000000
    thei_acl_pop_i4_cleanups_pop38_conv_generic : i_acl_pop_i4_cleanups_pop38_conv_generic4
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist5_sync_in_aunroll_x_in_c0_eni1_1_3_q,
        in_feedback_in_38 => i_acl_push_i4_cleanups_push38_conv_generic_out_feedback_out_38,
        in_feedback_valid_in_38 => i_acl_push_i4_cleanups_push38_conv_generic_out_feedback_valid_out_38,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_3_q,
        out_data_out => i_acl_pop_i4_cleanups_pop38_conv_generic_out_data_out,
        out_feedback_stall_out_38 => i_acl_pop_i4_cleanups_pop38_conv_generic_out_feedback_stall_out_38,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_conv_generic6(LOGICAL,120)@4
    i_unnamed_conv_generic6_q <= i_acl_pop_i4_cleanups_pop38_conv_generic_out_data_out and c_i4_1gr_q;

    -- i_unnamed_conv_generic6_vt_select_0(BITSELECT,123)@4
    i_unnamed_conv_generic6_vt_select_0_b <= i_unnamed_conv_generic6_q(0 downto 0);

    -- i_unnamed_conv_generic6_vt_join(BITJOIN,122)@4
    i_unnamed_conv_generic6_vt_join_q <= i_cleanups_shl_conv_generic_vt_const_3_q & i_unnamed_conv_generic6_vt_select_0_b;

    -- i_first_cleanup_conv_generic(LOGICAL,93)@4
    i_first_cleanup_conv_generic_q <= "1" WHEN i_unnamed_conv_generic6_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,53)@4
    out_c0_exi8_0 <= GND_q;
    out_c0_exi8_1 <= i_first_cleanup_conv_generic_q;
    out_c0_exi8_2 <= redist4_i_acl_pipeline_keep_going_conv_generic_out_data_out_3_q;
    out_c0_exi8_3 <= redist2_i_acl_pop_i32_oc_034_pop36_conv_generic_out_data_out_3_q;
    out_c0_exi8_4 <= i_cmp13_conv_generic_c;
    out_c0_exi8_5 <= i_arrayidx_conv_generic_conv_generic32_dupName_0_trunc_sel_x_b;
    out_c0_exi8_6 <= i_first_cleanup_xor_or_conv_generic_q;
    out_c0_exi8_7 <= i_acl_264_conv_generic_q;
    out_c0_exi8_8 <= i_masked_conv_generic_q;
    out_o_valid <= redist8_sync_in_aunroll_x_in_i_valid_3_q;

    -- ext_sig_sync_out(GPOUT,72)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,132)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_conv_generic_out_pipeline_valid_out;

END normal;
