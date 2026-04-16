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

-- VHDL created from i_sfc_logic_c0_for_body106_conv_generic_c0_enter440_conv_generic728
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

entity i_sfc_logic_c0_for_body106_conv_generic_c0_enter440_conv_generic728 is
    port (
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni6439_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6439_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6439_2 : in std_logic_vector(511 downto 0);  -- ufix512
        in_c0_eni6439_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6439_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6439_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6439_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_11_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_13_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_14_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_15_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi6452_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6452_1 : out std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exi6452_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6452_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6452_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6452_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6452_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body106_conv_generic_c0_enter440_conv_generic728;

architecture normal of i_sfc_logic_c0_for_body106_conv_generic_c0_enter440_conv_generic728 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going256_conv_generic730 is
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


    component i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic789 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_54 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_54 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_54 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop51_conv_generic806 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_51 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_51 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_51 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop52_conv_generic810 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_52 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_52 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_52 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop53_conv_generic787 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_53 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_oc102_215_pop50_conv_generic732 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_50 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_50 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_50 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i512_select316278_pop55_conv_generic735 is
        port (
            in_data_in : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_55 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_feedback_valid_in_55 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_feedback_stall_out_55 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_cmp10414_rm277_push54_conv_generic798 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_54 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit258 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_54 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_54 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond257_conv_generic804 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_push_i1_push51_conv_generic808 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_51 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit258_fanout_adaptor : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_51 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_51 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push52_conv_generic812 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_52 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit258_fanout_adaptor : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_52 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_52 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push53_conv_generic800 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit258 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_53 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_oc102_215_push50_conv_generic802 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_50 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit258 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_50 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_50 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i512_select316278_push55_conv_generic796 is
        port (
            in_data_in : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_feedback_stall_in_55 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit258_fanout_adaptor : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_feedback_out_55 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_feedback_valid_out_55 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_acl_286184_conv_generic768 is
        port (
            in_intel_reserved_ffwd_11_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_11_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_0173_conv_generic758 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_10183_conv_generic740 is
        port (
            in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_10_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_11185_conv_generic766 is
        port (
            in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_12_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_1174_conv_generic756 is
        port (
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_12186_conv_generic764 is
        port (
            in_intel_reserved_ffwd_13_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_13_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_13187_conv_generic762 is
        port (
            in_intel_reserved_ffwd_14_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_14_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_14188_conv_generic760 is
        port (
            in_intel_reserved_ffwd_15_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_15_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_2175_conv_generic754 is
        port (
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_3176_conv_generic752 is
        port (
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_4177_conv_generic750 is
        port (
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_4_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_5178_conv_generic748 is
        port (
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_6179_conv_generic746 is
        port (
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_6_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_7180_conv_generic744 is
        port (
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_7_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_8181_conv_generic742 is
        port (
            in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_8_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_reduction_conv_generic_9182_conv_generic738 is
        port (
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_9_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_m_mult_sync_buffer_conv_generic771 is
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


    component i_syncbuf_m_shift_sync_buffer156_conv_generic776 is
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


    component i_syncbuf_m_shift_sync_buffer157_conv_generic779 is
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


    component i_syncbuf_m_shift_sync_buffer_conv_generic773 is
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


    component i_syncbuf_tile_channels_sync_buffer130_conv_generic792 is
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


    component i_syncbuf_y_zero_sync_buffer_conv_generic782 is
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
    signal bgTrunc_i_add111_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add119_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_add125_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc136_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub118_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_15_comparator_x_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_15_comparator_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx108_pmg_o_pml_ba_conv_generic_sel_x_b : STD_LOGIC_VECTOR (511 downto 0);
    signal i_idxprom107_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_pml_s_conv_generic_conv_generic737_shift_narrow_x_b : STD_LOGIC_VECTOR (8 downto 0);
    signal i_pml_t_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_q_res_3_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sh_prom120_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_shr121_conv_generic_conv_generic778_shift_narrow_x_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_unnamed_conv_generic786_sel_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_255_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_4gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_5gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_6gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_7gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i64_1gr_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i8_1gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_315_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_315_conv_generic_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_case_case_stmt475_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_case_case_stmt479_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_case_case_stmt_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_feedback_stall_out_54 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop51_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop51_conv_generic_out_feedback_stall_out_51 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop52_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop52_conv_generic_out_feedback_stall_out_52 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop53_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop53_conv_generic_out_feedback_stall_out_53 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_oc102_215_pop50_conv_generic_out_feedback_stall_out_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out : STD_LOGIC_VECTOR (511 downto 0);
    signal i_acl_pop_i512_select316278_pop55_conv_generic_out_feedback_stall_out_55 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_cmp10414_rm277_push54_conv_generic_out_feedback_out_54 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_cmp10414_rm277_push54_conv_generic_out_feedback_valid_out_54 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond257_conv_generic_out_feedback_out_14 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond257_conv_generic_out_feedback_valid_out_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push51_conv_generic_out_feedback_out_51 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push51_conv_generic_out_feedback_valid_out_51 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push52_conv_generic_out_feedback_out_52 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push52_conv_generic_out_feedback_valid_out_52 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push53_conv_generic_out_feedback_out_53 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push53_conv_generic_out_feedback_valid_out_53 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_oc102_215_push50_conv_generic_out_feedback_out_50 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_oc102_215_push50_conv_generic_out_feedback_valid_out_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i512_select316278_push55_conv_generic_out_feedback_out_55 : STD_LOGIC_VECTOR (511 downto 0);
    signal i_acl_push_i512_select316278_push55_conv_generic_out_feedback_valid_out_55 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add111_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add111_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add111_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add111_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add119_conv_generic_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add119_conv_generic_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add119_conv_generic_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add119_conv_generic_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_add125_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add125_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add125_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add125_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_4_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_511_q : STD_LOGIC_VECTOR (447 downto 0);
    signal i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_join_q : STD_LOGIC_VECTOR (511 downto 0);
    signal i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_select_63_b : STD_LOGIC_VECTOR (58 downto 0);
    signal i_arrayidx108_pmg_s_conv_generic_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx108_pmg_s_conv_generic_vt_select_63_b : STD_LOGIC_VECTOR (58 downto 0);
    signal i_cmp115_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp115_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp115_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp115_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp130_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp130_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp130_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp130_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv134_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_conv134_conv_generic_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_exitcond39_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond39_not_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_acl_286184_conv_generic_out_dest_data_out_11_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_0173_conv_generic_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_11185_conv_generic_out_dest_data_out_12_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_1174_conv_generic_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_12186_conv_generic_out_dest_data_out_13_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_13187_conv_generic_out_dest_data_out_14_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_14188_conv_generic_out_dest_data_out_15_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_2175_conv_generic_out_dest_data_out_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_3176_conv_generic_out_dest_data_out_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_4177_conv_generic_out_dest_data_out_4_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_5178_conv_generic_out_dest_data_out_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_6179_conv_generic_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_7180_conv_generic_out_dest_data_out_7_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_8181_conv_generic_out_dest_data_out_8_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_reduction_conv_generic_9182_conv_generic_out_dest_data_out_9_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_inc136_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc136_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc136_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc136_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_notexit258_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision383_xor_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_q_res_4_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_q_res_4_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sel_bits466_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sel_bits466_conv_generic_vt_const_31_q : STD_LOGIC_VECTOR (28 downto 0);
    signal i_sel_bits466_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sel_bits466_conv_generic_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_sel_shr_conv_generic_vt_const_31_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_sel_shr_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sel_shr_conv_generic_vt_select_28_b : STD_LOGIC_VECTOR (28 downto 0);
    signal i_sh_prom120_rm_conv_generic_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom120_rm_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sh_prom_rm_conv_generic_vt_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sh_prom_rm_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sub118_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub118_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub118_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub118_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_m_mult_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_m_shift_sync_buffer156_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_m_shift_sync_buffer157_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_m_shift_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer130_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_y_zero_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic791_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic795_q : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0Idx1Pad4_uid221_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage0Idx1_uid223_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage1Idx1_uid228_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0Idx1Rng128_uid235_i_pml_s_conv_generic_conv_generic737_shift_x_b : STD_LOGIC_VECTOR (383 downto 0);
    signal rightShiftStage0Idx1Pad128_uid236_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal rightShiftStage0Idx1_uid237_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage0Idx2Rng256_uid238_i_pml_s_conv_generic_conv_generic737_shift_x_b : STD_LOGIC_VECTOR (255 downto 0);
    signal rightShiftStage0Idx2Pad256_uid239_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (255 downto 0);
    signal rightShiftStage0Idx2_uid240_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage0Idx3Rng384_uid241_i_pml_s_conv_generic_conv_generic737_shift_x_b : STD_LOGIC_VECTOR (127 downto 0);
    signal rightShiftStage0Idx3Pad384_uid242_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (383 downto 0);
    signal rightShiftStage0Idx3_uid243_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage1Idx1Rng32_uid246_i_pml_s_conv_generic_conv_generic737_shift_x_b : STD_LOGIC_VECTOR (479 downto 0);
    signal rightShiftStage1Idx1_uid248_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage1Idx2Rng64_uid249_i_pml_s_conv_generic_conv_generic737_shift_x_b : STD_LOGIC_VECTOR (447 downto 0);
    signal rightShiftStage1Idx2Pad64_uid250_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1Idx2_uid251_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage1Idx3Rng96_uid252_i_pml_s_conv_generic_conv_generic737_shift_x_b : STD_LOGIC_VECTOR (415 downto 0);
    signal rightShiftStage1Idx3Pad96_uid253_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (95 downto 0);
    signal rightShiftStage1Idx3_uid254_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q : STD_LOGIC_VECTOR (511 downto 0);
    signal rightShiftStage0Idx1Rng2_uid261_i_sel_shr_conv_generic_conv_generic770_shift_x_b : STD_LOGIC_VECTOR (29 downto 0);
    signal rightShiftStage0Idx1Pad2_uid262_i_sel_shr_conv_generic_conv_generic770_shift_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0Idx1_uid263_i_sel_shr_conv_generic_conv_generic770_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1Idx1Rng1_uid266_i_sel_shr_conv_generic_conv_generic770_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage1Idx1_uid268_i_sel_shr_conv_generic_conv_generic770_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Pad16_uid275_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx1_uid277_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx2_uid280_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0Idx3Pad48_uid281_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (47 downto 0);
    signal leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal leftShiftStage0Idx3_uid283_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal leftShiftStage1Idx1_uid288_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx2Pad8_uid289_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal leftShiftStage1Idx2_uid291_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1Idx3Pad12_uid292_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (11 downto 0);
    signal leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal leftShiftStage1Idx3_uid294_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal leftShiftStage2Idx1_uid299_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal leftShiftStage2Idx2_uid302_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x_in : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal leftShiftStage2Idx3_uid305_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal seMsb_to16_uid312_in : STD_LOGIC_VECTOR (15 downto 0);
    signal seMsb_to16_uid312_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx1Rng16_uid313_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx1_uid314_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to32_uid315_in : STD_LOGIC_VECTOR (31 downto 0);
    signal seMsb_to32_uid315_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2Rng32_uid316_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0Idx2_uid317_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to48_uid318_in : STD_LOGIC_VECTOR (47 downto 0);
    signal seMsb_to48_uid318_b : STD_LOGIC_VECTOR (47 downto 0);
    signal rightShiftStage0Idx3Rng48_uid319_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (15 downto 0);
    signal rightShiftStage0Idx3_uid320_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to4_uid323_in : STD_LOGIC_VECTOR (3 downto 0);
    signal seMsb_to4_uid323_b : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage1Idx1Rng4_uid324_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (59 downto 0);
    signal rightShiftStage1Idx1_uid325_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to8_uid326_in : STD_LOGIC_VECTOR (7 downto 0);
    signal seMsb_to8_uid326_b : STD_LOGIC_VECTOR (7 downto 0);
    signal rightShiftStage1Idx2Rng8_uid327_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (55 downto 0);
    signal rightShiftStage1Idx2_uid328_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to12_uid329_in : STD_LOGIC_VECTOR (11 downto 0);
    signal seMsb_to12_uid329_b : STD_LOGIC_VECTOR (11 downto 0);
    signal rightShiftStage1Idx3Rng12_uid330_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (51 downto 0);
    signal rightShiftStage1Idx3_uid331_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2Idx1Rng1_uid334_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (62 downto 0);
    signal rightShiftStage2Idx1_uid335_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to2_uid336_in : STD_LOGIC_VECTOR (1 downto 0);
    signal seMsb_to2_uid336_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2Idx2Rng2_uid337_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (61 downto 0);
    signal rightShiftStage2Idx2_uid338_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal seMsb_to3_uid339_in : STD_LOGIC_VECTOR (2 downto 0);
    signal seMsb_to3_uid339_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage2Idx3Rng3_uid340_i_shr121_conv_generic_conv_generic778_shift_x_b : STD_LOGIC_VECTOR (60 downto 0);
    signal rightShiftStage2Idx3_uid341_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_s : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul114_conv_generic_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul114_conv_generic_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul114_conv_generic_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul114_conv_generic_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul114_conv_generic_bs2_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul114_conv_generic_bs2_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul114_conv_generic_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul114_conv_generic_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul114_conv_generic_bs5_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul114_conv_generic_bs6_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul114_conv_generic_bs10_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul114_conv_generic_join_11_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul114_conv_generic_align_12_q : STD_LOGIC_VECTOR (50 downto 0);
    signal i_mul114_conv_generic_align_12_qint : STD_LOGIC_VECTOR (50 downto 0);
    signal i_mul114_conv_generic_result_add_0_0_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_mul114_conv_generic_result_add_0_0_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_mul114_conv_generic_result_add_0_0_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_mul114_conv_generic_result_add_0_0_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_cmp126_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul114_conv_generic_im0_cma_reset : std_logic;
    type i_mul114_conv_generic_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul114_conv_generic_im0_cma_a0 : i_mul114_conv_generic_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul114_conv_generic_im0_cma_a0 : signal is true;
    signal i_mul114_conv_generic_im0_cma_c0 : i_mul114_conv_generic_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul114_conv_generic_im0_cma_c0 : signal is true;
    type i_mul114_conv_generic_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul114_conv_generic_im0_cma_p : i_mul114_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im0_cma_u : i_mul114_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im0_cma_w : i_mul114_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im0_cma_x : i_mul114_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im0_cma_y : i_mul114_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im0_cma_s : i_mul114_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul114_conv_generic_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul114_conv_generic_im0_cma_ena0 : std_logic;
    signal i_mul114_conv_generic_im0_cma_ena1 : std_logic;
    signal i_mul114_conv_generic_im8_cma_reset : std_logic;
    type i_mul114_conv_generic_im8_cma_a0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal i_mul114_conv_generic_im8_cma_a0 : i_mul114_conv_generic_im8_cma_a0type(0 to 0);
    attribute preserve of i_mul114_conv_generic_im8_cma_a0 : signal is true;
    signal i_mul114_conv_generic_im8_cma_c0 : i_mul114_conv_generic_im8_cma_a0type(0 to 0);
    attribute preserve of i_mul114_conv_generic_im8_cma_c0 : signal is true;
    type i_mul114_conv_generic_im8_cma_ptype is array(NATURAL range <>) of SIGNED(27 downto 0);
    signal i_mul114_conv_generic_im8_cma_p : i_mul114_conv_generic_im8_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im8_cma_u : i_mul114_conv_generic_im8_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im8_cma_w : i_mul114_conv_generic_im8_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im8_cma_x : i_mul114_conv_generic_im8_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im8_cma_y : i_mul114_conv_generic_im8_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im8_cma_s : i_mul114_conv_generic_im8_cma_ptype(0 to 0);
    signal i_mul114_conv_generic_im8_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul114_conv_generic_im8_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul114_conv_generic_im8_cma_ena0 : std_logic;
    signal i_mul114_conv_generic_im8_cma_ena1 : std_logic;
    signal i_mul114_conv_generic_ma3_cma_reset : std_logic;
    signal i_mul114_conv_generic_ma3_cma_a0 : i_mul114_conv_generic_im0_cma_a0type(0 to 1);
    attribute preserve of i_mul114_conv_generic_ma3_cma_a0 : signal is true;
    signal i_mul114_conv_generic_ma3_cma_c0 : i_mul114_conv_generic_im8_cma_a0type(0 to 1);
    attribute preserve of i_mul114_conv_generic_ma3_cma_c0 : signal is true;
    type i_mul114_conv_generic_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul114_conv_generic_ma3_cma_l : i_mul114_conv_generic_ma3_cma_ltype(0 to 1);
    type i_mul114_conv_generic_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(32 downto 0);
    signal i_mul114_conv_generic_ma3_cma_p : i_mul114_conv_generic_ma3_cma_ptype(0 to 1);
    type i_mul114_conv_generic_ma3_cma_utype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul114_conv_generic_ma3_cma_u : i_mul114_conv_generic_ma3_cma_utype(0 to 1);
    signal i_mul114_conv_generic_ma3_cma_w : i_mul114_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul114_conv_generic_ma3_cma_x : i_mul114_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul114_conv_generic_ma3_cma_y : i_mul114_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul114_conv_generic_ma3_cma_s : i_mul114_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul114_conv_generic_ma3_cma_qq : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul114_conv_generic_ma3_cma_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul114_conv_generic_ma3_cma_ena0 : std_logic;
    signal i_mul114_conv_generic_ma3_cma_ena1 : std_logic;
    signal rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_b : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_c : STD_LOGIC_VECTOR (1 downto 0);
    signal rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_d : STD_LOGIC_VECTOR (1 downto 0);
    signal redist0_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b_1_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist1_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c_2_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist2_i_mul114_conv_generic_ma3_cma_q_1_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist3_i_mul114_conv_generic_im8_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist4_i_mul114_conv_generic_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist5_bgTrunc_i_mul114_conv_generic_rnd_sel_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist6_bgTrunc_i_mul114_conv_generic_rnd_sel_b_3_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist7_i_unnamed_conv_generic791_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sel_bits466_conv_generic_vt_select_2_b_1_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_i_notexit258_conv_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_notexit258_conv_generic_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_exitcond39_conv_generic_q_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (511 downto 0);
    signal redist13_i_acl_pop_i1_pop52_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_acl_pop_i1_pop52_conv_generic_out_data_out_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_acl_pop_i1_pop51_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_acl_pop_i1_pop51_conv_generic_out_data_out_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_sync_in_aunroll_x_in_i_valid_9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_sync_in_aunroll_x_in_i_valid_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_sync_in_aunroll_x_in_i_valid_14_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_i_unnamed_conv_generic786_sel_x_b_1_q : STD_LOGIC_VECTOR (7 downto 0);
    signal redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal redist26_i_q_res_3_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_i_pml_t_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_dupName_15_comparator_x_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist29_dupName_14_comparator_x_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist30_bgTrunc_i_add125_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist17_sync_in_aunroll_x_in_i_valid_1(DELAY,397)
    redist17_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist17_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist18_sync_in_aunroll_x_in_i_valid_2(DELAY,398)
    redist18_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_1_q, xout => redist18_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist19_sync_in_aunroll_x_in_i_valid_4(DELAY,399)
    redist19_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_sync_in_aunroll_x_in_i_valid_2_q, xout => redist19_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist20_sync_in_aunroll_x_in_i_valid_6(DELAY,400)
    redist20_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_sync_in_aunroll_x_in_i_valid_4_q, xout => redist20_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- redist21_sync_in_aunroll_x_in_i_valid_9(DELAY,401)
    redist21_sync_in_aunroll_x_in_i_valid_9 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist20_sync_in_aunroll_x_in_i_valid_6_q, xout => redist21_sync_in_aunroll_x_in_i_valid_9_q, clk => clock, aclr => resetn );

    -- redist22_sync_in_aunroll_x_in_i_valid_11(DELAY,402)
    redist22_sync_in_aunroll_x_in_i_valid_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist21_sync_in_aunroll_x_in_i_valid_9_q, xout => redist22_sync_in_aunroll_x_in_i_valid_11_q, clk => clock, aclr => resetn );

    -- redist23_sync_in_aunroll_x_in_i_valid_14(DELAY,403)
    redist23_sync_in_aunroll_x_in_i_valid_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist22_sync_in_aunroll_x_in_i_valid_11_q, xout => redist23_sync_in_aunroll_x_in_i_valid_14_q, clk => clock, aclr => resetn );

    -- i_syncbuf_tile_channels_sync_buffer130_conv_generic(BLACKBOX,201)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_tile_channels_sync_buffer130_conv_generic : i_syncbuf_tile_channels_sync_buffer130_conv_generic792
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer130_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,104)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_acl_push_i32_oc102_215_push50_conv_generic(BLACKBOX,133)@1
    -- out out_feedback_out_50@20000000
    -- out out_feedback_valid_out_50@20000000
    thei_acl_push_i32_oc102_215_push50_conv_generic : i_acl_push_i32_oc102_215_push50_conv_generic802
    PORT MAP (
        in_data_in => bgTrunc_i_inc136_conv_generic_sel_x_b,
        in_feedback_stall_in_50 => i_acl_pop_i32_oc102_215_pop50_conv_generic_out_feedback_stall_out_50,
        in_notexit258 => i_notexit258_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_50 => i_acl_push_i32_oc102_215_push50_conv_generic_out_feedback_out_50,
        out_feedback_valid_out_50 => i_acl_push_i32_oc102_215_push50_conv_generic_out_feedback_valid_out_50,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,103)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_oc102_215_pop50_conv_generic(BLACKBOX,126)@1
    -- out out_feedback_stall_out_50@20000000
    thei_acl_pop_i32_oc102_215_pop50_conv_generic : i_acl_pop_i32_oc102_215_pop50_conv_generic732
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni6439_1,
        in_feedback_in_50 => i_acl_push_i32_oc102_215_push50_conv_generic_out_feedback_out_50,
        in_feedback_valid_in_50 => i_acl_push_i32_oc102_215_push50_conv_generic_out_feedback_valid_out_50,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out,
        out_feedback_stall_out_50 => i_acl_pop_i32_oc102_215_pop50_conv_generic_out_feedback_stall_out_50,
        clock => clock,
        resetn => resetn
    );

    -- i_inc136_conv_generic(ADD,170)@1
    i_inc136_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out);
    i_inc136_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc136_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc136_conv_generic_a) + UNSIGNED(i_inc136_conv_generic_b));
    i_inc136_conv_generic_q <= i_inc136_conv_generic_o(32 downto 0);

    -- bgTrunc_i_inc136_conv_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_inc136_conv_generic_sel_x_b <= i_inc136_conv_generic_q(31 downto 0);

    -- i_exitcond39_conv_generic(LOGICAL,150)@1
    i_exitcond39_conv_generic_q <= "1" WHEN bgTrunc_i_inc136_conv_generic_sel_x_b = i_syncbuf_tile_channels_sync_buffer130_conv_generic_out_buffer_out ELSE "0";

    -- i_exitcond39_not_conv_generic(LOGICAL,151)@1
    i_exitcond39_not_conv_generic_q <= i_exitcond39_conv_generic_q xor VCC_q;

    -- i_acl_push_i1_cmp10414_rm277_push54_conv_generic(BLACKBOX,128)@1
    -- out out_feedback_out_54@20000000
    -- out out_feedback_valid_out_54@20000000
    thei_acl_push_i1_cmp10414_rm277_push54_conv_generic : i_acl_push_i1_cmp10414_rm277_push54_conv_generic798
    PORT MAP (
        in_data_in => i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_data_out,
        in_feedback_stall_in_54 => i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_feedback_stall_out_54,
        in_notexit258 => i_notexit258_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_54 => i_acl_push_i1_cmp10414_rm277_push54_conv_generic_out_feedback_out_54,
        out_feedback_valid_out_54 => i_acl_push_i1_cmp10414_rm277_push54_conv_generic_out_feedback_valid_out_54,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic(BLACKBOX,122)@1
    -- out out_feedback_stall_out_54@20000000
    thei_acl_pop_i1_cmp10414_rm277_pop54_conv_generic : i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic789
    PORT MAP (
        in_data_in => in_c0_eni6439_4,
        in_dir => in_c0_eni6439_1,
        in_feedback_in_54 => i_acl_push_i1_cmp10414_rm277_push54_conv_generic_out_feedback_out_54,
        in_feedback_valid_in_54 => i_acl_push_i1_cmp10414_rm277_push54_conv_generic_out_feedback_valid_out_54,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_data_out,
        out_feedback_stall_out_54 => i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_feedback_stall_out_54,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_push53_conv_generic(BLACKBOX,132)@1
    -- out out_feedback_out_53@20000000
    -- out out_feedback_valid_out_53@20000000
    thei_acl_push_i1_push53_conv_generic : i_acl_push_i1_push53_conv_generic800
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop53_conv_generic_out_data_out,
        in_feedback_stall_in_53 => i_acl_pop_i1_pop53_conv_generic_out_feedback_stall_out_53,
        in_notexit258 => i_notexit258_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_53 => i_acl_push_i1_push53_conv_generic_out_feedback_out_53,
        out_feedback_valid_out_53 => i_acl_push_i1_push53_conv_generic_out_feedback_valid_out_53,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop53_conv_generic(BLACKBOX,125)@1
    -- out out_feedback_stall_out_53@20000000
    thei_acl_pop_i1_pop53_conv_generic : i_acl_pop_i1_pop53_conv_generic787
    PORT MAP (
        in_data_in => in_c0_eni6439_3,
        in_dir => in_c0_eni6439_1,
        in_feedback_in_53 => i_acl_push_i1_push53_conv_generic_out_feedback_out_53,
        in_feedback_valid_in_53 => i_acl_push_i1_push53_conv_generic_out_feedback_valid_out_53,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop53_conv_generic_out_data_out,
        out_feedback_stall_out_53 => i_acl_pop_i1_pop53_conv_generic_out_feedback_stall_out_53,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_conv_generic791(LOGICAL,204)@1
    i_unnamed_conv_generic791_q <= i_acl_pop_i1_pop53_conv_generic_out_data_out and i_acl_pop_i1_cmp10414_rm277_pop54_conv_generic_out_data_out;

    -- i_notexit258_conv_generic(LOGICAL,172)@1
    i_notexit258_conv_generic_q <= i_unnamed_conv_generic791_q and i_exitcond39_not_conv_generic_q;

    -- redist9_i_notexit258_conv_generic_q_1(DELAY,389)
    redist9_i_notexit258_conv_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit258_conv_generic_q, xout => redist9_i_notexit258_conv_generic_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push52_conv_generic(BLACKBOX,131)@2
    -- out out_feedback_out_52@20000000
    -- out out_feedback_valid_out_52@20000000
    thei_acl_push_i1_push52_conv_generic : i_acl_push_i1_push52_conv_generic812
    PORT MAP (
        in_data_in => redist13_i_acl_pop_i1_pop52_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_52 => i_acl_pop_i1_pop52_conv_generic_out_feedback_stall_out_52,
        in_notexit258_fanout_adaptor => redist9_i_notexit258_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_52 => i_acl_push_i1_push52_conv_generic_out_feedback_out_52,
        out_feedback_valid_out_52 => i_acl_push_i1_push52_conv_generic_out_feedback_valid_out_52,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop52_conv_generic(BLACKBOX,124)@1
    -- out out_feedback_stall_out_52@20000000
    thei_acl_pop_i1_pop52_conv_generic : i_acl_pop_i1_pop52_conv_generic810
    PORT MAP (
        in_data_in => in_c0_eni6439_6,
        in_dir => in_c0_eni6439_1,
        in_feedback_in_52 => i_acl_push_i1_push52_conv_generic_out_feedback_out_52,
        in_feedback_valid_in_52 => i_acl_push_i1_push52_conv_generic_out_feedback_valid_out_52,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop52_conv_generic_out_data_out,
        out_feedback_stall_out_52 => i_acl_pop_i1_pop52_conv_generic_out_feedback_stall_out_52,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_acl_pop_i1_pop52_conv_generic_out_data_out_1(DELAY,393)
    redist13_i_acl_pop_i1_pop52_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop52_conv_generic_out_data_out, xout => redist13_i_acl_pop_i1_pop52_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist14_i_acl_pop_i1_pop52_conv_generic_out_data_out_14(DELAY,394)
    redist14_i_acl_pop_i1_pop52_conv_generic_out_data_out_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 13, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist13_i_acl_pop_i1_pop52_conv_generic_out_data_out_1_q, xout => redist14_i_acl_pop_i1_pop52_conv_generic_out_data_out_14_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push51_conv_generic(BLACKBOX,130)@2
    -- out out_feedback_out_51@20000000
    -- out out_feedback_valid_out_51@20000000
    thei_acl_push_i1_push51_conv_generic : i_acl_push_i1_push51_conv_generic808
    PORT MAP (
        in_data_in => redist15_i_acl_pop_i1_pop51_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_51 => i_acl_pop_i1_pop51_conv_generic_out_feedback_stall_out_51,
        in_notexit258_fanout_adaptor => redist9_i_notexit258_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_51 => i_acl_push_i1_push51_conv_generic_out_feedback_out_51,
        out_feedback_valid_out_51 => i_acl_push_i1_push51_conv_generic_out_feedback_valid_out_51,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop51_conv_generic(BLACKBOX,123)@1
    -- out out_feedback_stall_out_51@20000000
    thei_acl_pop_i1_pop51_conv_generic : i_acl_pop_i1_pop51_conv_generic806
    PORT MAP (
        in_data_in => in_c0_eni6439_5,
        in_dir => in_c0_eni6439_1,
        in_feedback_in_51 => i_acl_push_i1_push51_conv_generic_out_feedback_out_51,
        in_feedback_valid_in_51 => i_acl_push_i1_push51_conv_generic_out_feedback_valid_out_51,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop51_conv_generic_out_data_out,
        out_feedback_stall_out_51 => i_acl_pop_i1_pop51_conv_generic_out_feedback_stall_out_51,
        clock => clock,
        resetn => resetn
    );

    -- redist15_i_acl_pop_i1_pop51_conv_generic_out_data_out_1(DELAY,395)
    redist15_i_acl_pop_i1_pop51_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop51_conv_generic_out_data_out, xout => redist15_i_acl_pop_i1_pop51_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist16_i_acl_pop_i1_pop51_conv_generic_out_data_out_14(DELAY,396)
    redist16_i_acl_pop_i1_pop51_conv_generic_out_data_out_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 13, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist15_i_acl_pop_i1_pop51_conv_generic_out_data_out_1_q, xout => redist16_i_acl_pop_i1_pop51_conv_generic_out_data_out_14_q, clk => clock, aclr => resetn );

    -- redist10_i_notexit258_conv_generic_q_14(DELAY,390)
    redist10_i_notexit258_conv_generic_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 13, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_i_notexit258_conv_generic_q_1_q, xout => redist10_i_notexit258_conv_generic_q_14_q, clk => clock, aclr => resetn );

    -- redist11_i_exitcond39_conv_generic_q_14(DELAY,391)
    redist11_i_exitcond39_conv_generic_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond39_conv_generic_q, xout => redist11_i_exitcond39_conv_generic_q_14_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv_generic795(LOGICAL,205)@15
    i_unnamed_conv_generic795_q <= redist11_i_exitcond39_conv_generic_q_14_q or i_phi_decision383_xor_rm_conv_generic_q;

    -- redist7_i_unnamed_conv_generic791_q_14(DELAY,387)
    redist7_i_unnamed_conv_generic791_q_14 : dspba_delay
    GENERIC MAP ( width => 1, depth => 14, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic791_q, xout => redist7_i_unnamed_conv_generic791_q_14_q, clk => clock, aclr => resetn );

    -- i_phi_decision383_xor_rm_conv_generic(LOGICAL,173)@15
    i_phi_decision383_xor_rm_conv_generic_q <= redist7_i_unnamed_conv_generic791_q_14_q xor VCC_q;

    -- c_i8_1gr(CONSTANT,114)
    c_i8_1gr_q <= "11111111";

    -- i_syncbuf_y_zero_sync_buffer_conv_generic(BLACKBOX,202)@0
    -- in in_i_dependence@12
    -- in in_valid_in@12
    -- out out_buffer_out@12
    -- out out_valid_out@12
    thei_syncbuf_y_zero_sync_buffer_conv_generic : i_syncbuf_y_zero_sync_buffer_conv_generic782
    PORT MAP (
        in_buffer_in => in_y_zero,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_11_q,
        out_buffer_out => i_syncbuf_y_zero_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,303)@8
    leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q(60 downto 0);
    leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x_in(60 downto 0);

    -- i_sel_shr_conv_generic_vt_const_31(CONSTANT,185)
    i_sel_shr_conv_generic_vt_const_31_q <= "000";

    -- leftShiftStage2Idx3_uid305_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,304)@8
    leftShiftStage2Idx3_uid305_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage2Idx3Rng3_uid304_i_shl_rm_conv_generic_conv_generic775_shift_x_b & i_sel_shr_conv_generic_vt_const_31_q;

    -- leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,300)@8
    leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q(61 downto 0);
    leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x_in(61 downto 0);

    -- rightShiftStage0Idx1Pad2_uid262_i_sel_shr_conv_generic_conv_generic770_shift_x(CONSTANT,261)
    rightShiftStage0Idx1Pad2_uid262_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= "00";

    -- leftShiftStage2Idx2_uid302_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,301)@8
    leftShiftStage2Idx2_uid302_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage2Idx2Rng2_uid301_i_shl_rm_conv_generic_conv_generic775_shift_x_b & rightShiftStage0Idx1Pad2_uid262_i_sel_shr_conv_generic_conv_generic770_shift_x_q;

    -- leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,297)@8
    leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q(62 downto 0);
    leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x_in(62 downto 0);

    -- leftShiftStage2Idx1_uid299_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,298)@8
    leftShiftStage2Idx1_uid299_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage2Idx1Rng1_uid298_i_shl_rm_conv_generic_conv_generic775_shift_x_b & GND_q;

    -- leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,292)@8
    leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q(51 downto 0);
    leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x_in(51 downto 0);

    -- leftShiftStage1Idx3Pad12_uid292_i_shl_rm_conv_generic_conv_generic775_shift_x(CONSTANT,291)
    leftShiftStage1Idx3Pad12_uid292_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= "000000000000";

    -- leftShiftStage1Idx3_uid294_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,293)@8
    leftShiftStage1Idx3_uid294_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1Idx3Rng12_uid293_i_shl_rm_conv_generic_conv_generic775_shift_x_b & leftShiftStage1Idx3Pad12_uid292_i_shl_rm_conv_generic_conv_generic775_shift_x_q;

    -- leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,289)@8
    leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q(55 downto 0);
    leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x_in(55 downto 0);

    -- leftShiftStage1Idx2Pad8_uid289_i_shl_rm_conv_generic_conv_generic775_shift_x(CONSTANT,288)
    leftShiftStage1Idx2Pad8_uid289_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= "00000000";

    -- leftShiftStage1Idx2_uid291_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,290)@8
    leftShiftStage1Idx2_uid291_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1Idx2Rng8_uid290_i_shl_rm_conv_generic_conv_generic775_shift_x_b & leftShiftStage1Idx2Pad8_uid289_i_shl_rm_conv_generic_conv_generic775_shift_x_q;

    -- leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,286)@8
    leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q(59 downto 0);
    leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x_in(59 downto 0);

    -- leftShiftStage0Idx1Pad4_uid221_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(CONSTANT,220)
    leftShiftStage0Idx1Pad4_uid221_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= "0000";

    -- leftShiftStage1Idx1_uid288_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,287)@8
    leftShiftStage1Idx1_uid288_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1Idx1Rng4_uid287_i_shl_rm_conv_generic_conv_generic775_shift_x_b & leftShiftStage0Idx1Pad4_uid221_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q;

    -- leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,281)
    leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= c_i64_1gr_q(15 downto 0);
    leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x_in(15 downto 0);

    -- leftShiftStage0Idx3Pad48_uid281_i_shl_rm_conv_generic_conv_generic775_shift_x(CONSTANT,280)
    leftShiftStage0Idx3Pad48_uid281_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= "000000000000000000000000000000000000000000000000";

    -- leftShiftStage0Idx3_uid283_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,282)
    leftShiftStage0Idx3_uid283_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0Idx3Rng48_uid282_i_shl_rm_conv_generic_conv_generic775_shift_x_b & leftShiftStage0Idx3Pad48_uid281_i_shl_rm_conv_generic_conv_generic775_shift_x_q;

    -- leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,278)
    leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= c_i64_1gr_q(31 downto 0);
    leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x_in(31 downto 0);

    -- leftShiftStage0Idx2_uid280_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,279)
    leftShiftStage0Idx2_uid280_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0Idx2Rng32_uid279_i_shl_rm_conv_generic_conv_generic775_shift_x_b & c_i32_0gr_q;

    -- leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x(BITSELECT,275)
    leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x_in <= c_i64_1gr_q(47 downto 0);
    leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x_b <= leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x_in(47 downto 0);

    -- leftShiftStage0Idx1Pad16_uid275_i_shl_rm_conv_generic_conv_generic775_shift_x(CONSTANT,274)
    leftShiftStage0Idx1Pad16_uid275_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= "0000000000000000";

    -- leftShiftStage0Idx1_uid277_i_shl_rm_conv_generic_conv_generic775_shift_x(BITJOIN,276)
    leftShiftStage0Idx1_uid277_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0Idx1Rng16_uid276_i_shl_rm_conv_generic_conv_generic775_shift_x_b & leftShiftStage0Idx1Pad16_uid275_i_shl_rm_conv_generic_conv_generic775_shift_x_q;

    -- c_i64_1gr(CONSTANT,112)
    c_i64_1gr_q <= "0000000000000000000000000000000000000000000000000000000000000001";

    -- leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x(MUX,284)@8
    leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_s <= leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_b;
    leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_combproc: PROCESS (leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_s, c_i64_1gr_q, leftShiftStage0Idx1_uid277_i_shl_rm_conv_generic_conv_generic775_shift_x_q, leftShiftStage0Idx2_uid280_i_shl_rm_conv_generic_conv_generic775_shift_x_q, leftShiftStage0Idx3_uid283_i_shl_rm_conv_generic_conv_generic775_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_s) IS
            WHEN "00" => leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= c_i64_1gr_q;
            WHEN "01" => leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0Idx1_uid277_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN "10" => leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0Idx2_uid280_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN "11" => leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0Idx3_uid283_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x(MUX,295)@8
    leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_s <= leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_c;
    leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_combproc: PROCESS (leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_s, leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q, leftShiftStage1Idx1_uid288_i_shl_rm_conv_generic_conv_generic775_shift_x_q, leftShiftStage1Idx2_uid291_i_shl_rm_conv_generic_conv_generic775_shift_x_q, leftShiftStage1Idx3_uid294_i_shl_rm_conv_generic_conv_generic775_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_s) IS
            WHEN "00" => leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage0_uid285_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN "01" => leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1Idx1_uid288_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN "10" => leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1Idx2_uid291_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN "11" => leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1Idx3_uid294_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- dupName_0_c_i32_1gr_x(CONSTANT,9)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- i_syncbuf_m_shift_sync_buffer_conv_generic(BLACKBOX,200)@0
    -- in in_i_dependence@7
    -- in in_valid_in@7
    -- out out_buffer_out@7
    -- out out_valid_out@7
    thei_syncbuf_m_shift_sync_buffer_conv_generic : i_syncbuf_m_shift_sync_buffer_conv_generic773
    PORT MAP (
        in_buffer_in => in_M_shift,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist20_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_m_shift_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_sub118_rm_conv_generic(ADD,196)@7
    i_sub118_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_m_shift_sync_buffer_conv_generic_out_buffer_out);
    i_sub118_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_sub118_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub118_rm_conv_generic_a) + UNSIGNED(i_sub118_rm_conv_generic_b));
    i_sub118_rm_conv_generic_q <= i_sub118_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub118_rm_conv_generic_sel_x(BITSELECT,7)@7
    bgTrunc_i_sub118_rm_conv_generic_sel_x_b <= i_sub118_rm_conv_generic_q(31 downto 0);

    -- i_sh_prom_rm_conv_generic_sel_x(BITSELECT,81)@7
    i_sh_prom_rm_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_sub118_rm_conv_generic_sel_x_b(31 downto 0)), 64));

    -- i_sh_prom_rm_conv_generic_vt_select_31(BITSELECT,195)@7
    i_sh_prom_rm_conv_generic_vt_select_31_b <= i_sh_prom_rm_conv_generic_sel_x_b(31 downto 0);

    -- i_sh_prom_rm_conv_generic_vt_join(BITJOIN,194)@7
    i_sh_prom_rm_conv_generic_vt_join_q <= c_i32_0gr_q & i_sh_prom_rm_conv_generic_vt_select_31_b;

    -- i_shl_rm_conv_generic_conv_generic775_shift_narrow_x(BITSELECT,85)@7
    i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b <= i_sh_prom_rm_conv_generic_vt_join_q(5 downto 0);

    -- redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1(DELAY,405)
    redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1 : dspba_delay
    GENERIC MAP ( width => 6, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b, xout => redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1_q, clk => clock, aclr => resetn );

    -- leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select(BITSELECT,378)@8
    leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_b <= redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1_q(5 downto 4);
    leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_c <= redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1_q(3 downto 2);
    leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_d <= redist25_i_shl_rm_conv_generic_conv_generic775_shift_narrow_x_b_1_q(1 downto 0);

    -- leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x(MUX,306)@8 + 1
    leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_s <= leftShiftStageSel5Dto4_uid284_i_shl_rm_conv_generic_conv_generic775_shift_x_merged_bit_select_d;
    leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_s) IS
                WHEN "00" => leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage1_uid296_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
                WHEN "01" => leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage2Idx1_uid299_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
                WHEN "10" => leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage2Idx2_uid302_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
                WHEN "11" => leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= leftShiftStage2Idx3_uid305_i_shl_rm_conv_generic_conv_generic775_shift_x_q;
                WHEN OTHERS => leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_syncbuf_m_mult_sync_buffer_conv_generic(BLACKBOX,197)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_m_mult_sync_buffer_conv_generic : i_syncbuf_m_mult_sync_buffer_conv_generic771
    PORT MAP (
        in_buffer_in => in_M_mult,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_m_mult_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul114_conv_generic_bs5(BITSELECT,357)@5
    i_mul114_conv_generic_bs5_b <= i_syncbuf_m_mult_sync_buffer_conv_generic_out_buffer_out(31 downto 18);

    -- rightShiftStage1Idx3Pad96_uid253_i_pml_s_conv_generic_conv_generic737_shift_x(CONSTANT,252)
    rightShiftStage1Idx3Pad96_uid253_i_pml_s_conv_generic_conv_generic737_shift_x_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage1Idx3Rng96_uid252_i_pml_s_conv_generic_conv_generic737_shift_x(BITSELECT,251)@3
    rightShiftStage1Idx3Rng96_uid252_i_pml_s_conv_generic_conv_generic737_shift_x_b <= rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q(511 downto 96);

    -- rightShiftStage1Idx3_uid254_i_pml_s_conv_generic_conv_generic737_shift_x(BITJOIN,253)@3
    rightShiftStage1Idx3_uid254_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage1Idx3Pad96_uid253_i_pml_s_conv_generic_conv_generic737_shift_x_q & rightShiftStage1Idx3Rng96_uid252_i_pml_s_conv_generic_conv_generic737_shift_x_b;

    -- rightShiftStage1Idx2Pad64_uid250_i_pml_s_conv_generic_conv_generic737_shift_x(CONSTANT,249)
    rightShiftStage1Idx2Pad64_uid250_i_pml_s_conv_generic_conv_generic737_shift_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage1Idx2Rng64_uid249_i_pml_s_conv_generic_conv_generic737_shift_x(BITSELECT,248)@3
    rightShiftStage1Idx2Rng64_uid249_i_pml_s_conv_generic_conv_generic737_shift_x_b <= rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q(511 downto 64);

    -- rightShiftStage1Idx2_uid251_i_pml_s_conv_generic_conv_generic737_shift_x(BITJOIN,250)@3
    rightShiftStage1Idx2_uid251_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage1Idx2Pad64_uid250_i_pml_s_conv_generic_conv_generic737_shift_x_q & rightShiftStage1Idx2Rng64_uid249_i_pml_s_conv_generic_conv_generic737_shift_x_b;

    -- rightShiftStage1Idx1Rng32_uid246_i_pml_s_conv_generic_conv_generic737_shift_x(BITSELECT,245)@3
    rightShiftStage1Idx1Rng32_uid246_i_pml_s_conv_generic_conv_generic737_shift_x_b <= rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q(511 downto 32);

    -- rightShiftStage1Idx1_uid248_i_pml_s_conv_generic_conv_generic737_shift_x(BITJOIN,247)@3
    rightShiftStage1Idx1_uid248_i_pml_s_conv_generic_conv_generic737_shift_x_q <= c_i32_0gr_q & rightShiftStage1Idx1Rng32_uid246_i_pml_s_conv_generic_conv_generic737_shift_x_b;

    -- rightShiftStage0Idx3Pad384_uid242_i_pml_s_conv_generic_conv_generic737_shift_x(CONSTANT,241)
    rightShiftStage0Idx3Pad384_uid242_i_pml_s_conv_generic_conv_generic737_shift_x_q <= "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx3Rng384_uid241_i_pml_s_conv_generic_conv_generic737_shift_x(BITSELECT,240)@2
    rightShiftStage0Idx3Rng384_uid241_i_pml_s_conv_generic_conv_generic737_shift_x_b <= redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1_q(511 downto 384);

    -- rightShiftStage0Idx3_uid243_i_pml_s_conv_generic_conv_generic737_shift_x(BITJOIN,242)@2
    rightShiftStage0Idx3_uid243_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0Idx3Pad384_uid242_i_pml_s_conv_generic_conv_generic737_shift_x_q & rightShiftStage0Idx3Rng384_uid241_i_pml_s_conv_generic_conv_generic737_shift_x_b;

    -- rightShiftStage0Idx2Pad256_uid239_i_pml_s_conv_generic_conv_generic737_shift_x(CONSTANT,238)
    rightShiftStage0Idx2Pad256_uid239_i_pml_s_conv_generic_conv_generic737_shift_x_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx2Rng256_uid238_i_pml_s_conv_generic_conv_generic737_shift_x(BITSELECT,237)@2
    rightShiftStage0Idx2Rng256_uid238_i_pml_s_conv_generic_conv_generic737_shift_x_b <= redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1_q(511 downto 256);

    -- rightShiftStage0Idx2_uid240_i_pml_s_conv_generic_conv_generic737_shift_x(BITJOIN,239)@2
    rightShiftStage0Idx2_uid240_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0Idx2Pad256_uid239_i_pml_s_conv_generic_conv_generic737_shift_x_q & rightShiftStage0Idx2Rng256_uid238_i_pml_s_conv_generic_conv_generic737_shift_x_b;

    -- rightShiftStage0Idx1Pad128_uid236_i_pml_s_conv_generic_conv_generic737_shift_x(CONSTANT,235)
    rightShiftStage0Idx1Pad128_uid236_i_pml_s_conv_generic_conv_generic737_shift_x_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- rightShiftStage0Idx1Rng128_uid235_i_pml_s_conv_generic_conv_generic737_shift_x(BITSELECT,234)@2
    rightShiftStage0Idx1Rng128_uid235_i_pml_s_conv_generic_conv_generic737_shift_x_b <= redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1_q(511 downto 128);

    -- rightShiftStage0Idx1_uid237_i_pml_s_conv_generic_conv_generic737_shift_x(BITJOIN,236)@2
    rightShiftStage0Idx1_uid237_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0Idx1Pad128_uid236_i_pml_s_conv_generic_conv_generic737_shift_x_q & rightShiftStage0Idx1Rng128_uid235_i_pml_s_conv_generic_conv_generic737_shift_x_b;

    -- i_acl_push_i512_select316278_push55_conv_generic(BLACKBOX,134)@1
    -- out out_feedback_out_55@20000000
    -- out out_feedback_valid_out_55@20000000
    thei_acl_push_i512_select316278_push55_conv_generic : i_acl_push_i512_select316278_push55_conv_generic796
    PORT MAP (
        in_data_in => i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out,
        in_feedback_stall_in_55 => i_acl_pop_i512_select316278_pop55_conv_generic_out_feedback_stall_out_55,
        in_notexit258_fanout_adaptor => i_notexit258_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_55 => i_acl_push_i512_select316278_push55_conv_generic_out_feedback_out_55,
        out_feedback_valid_out_55 => i_acl_push_i512_select316278_push55_conv_generic_out_feedback_valid_out_55,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i512_select316278_pop55_conv_generic(BLACKBOX,127)@1
    -- out out_feedback_stall_out_55@20000000
    thei_acl_pop_i512_select316278_pop55_conv_generic : i_acl_pop_i512_select316278_pop55_conv_generic735
    PORT MAP (
        in_data_in => in_c0_eni6439_2,
        in_dir => in_c0_eni6439_1,
        in_feedback_in_55 => i_acl_push_i512_select316278_push55_conv_generic_out_feedback_out_55,
        in_feedback_valid_in_55 => i_acl_push_i512_select316278_push55_conv_generic_out_feedback_valid_out_55,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out,
        out_feedback_stall_out_55 => i_acl_pop_i512_select316278_pop55_conv_generic_out_feedback_stall_out_55,
        clock => clock,
        resetn => resetn
    );

    -- redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1(DELAY,392)
    redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 512, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out, xout => redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_511(CONSTANT,140)
    i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_511_q <= "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(BITSELECT,226)@1
    leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_in <= leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q(62 downto 0);
    leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_b <= leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_in(62 downto 0);

    -- leftShiftStage1Idx1_uid228_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(BITJOIN,227)@1
    leftShiftStage1Idx1_uid228_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= leftShiftStage1Idx1Rng1_uid227_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_b & GND_q;

    -- leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(BITSELECT,221)@1
    leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_in <= i_idxprom107_conv_generic_sel_x_b(59 downto 0);
    leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_b <= leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_in(59 downto 0);

    -- leftShiftStage0Idx1_uid223_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(BITJOIN,222)@1
    leftShiftStage0Idx1_uid223_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= leftShiftStage0Idx1Rng4_uid222_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_b & leftShiftStage0Idx1Pad4_uid221_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q;

    -- i_idxprom107_conv_generic_sel_x(BITSELECT,69)@1
    i_idxprom107_conv_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out(31 downto 0)), 64)));

    -- leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(MUX,224)@1
    leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s <= VCC_q;
    leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_combproc: PROCESS (leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s, i_idxprom107_conv_generic_sel_x_b, leftShiftStage0Idx1_uid223_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= i_idxprom107_conv_generic_sel_x_b;
            WHEN "1" => leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= leftShiftStage0Idx1_uid223_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x(MUX,229)@1
    leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s <= VCC_q;
    leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_combproc: PROCESS (leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s, leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q, leftShiftStage1Idx1_uid228_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q)
    BEGIN
        CASE (leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_s) IS
            WHEN "0" => leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= leftShiftStage0_uid225_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q;
            WHEN "1" => leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= leftShiftStage1Idx1_uid228_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q;
            WHEN OTHERS => leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_arrayidx108_pmg_s_conv_generic_vt_select_63(BITSELECT,145)@1
    i_arrayidx108_pmg_s_conv_generic_vt_select_63_b <= leftShiftStage1_uid230_i_arrayidx108_pmg_s_conv_generic_conv_generic734_shift_x_q(63 downto 5);

    -- i_arrayidx108_pmg_s_conv_generic_vt_join(BITJOIN,144)@1
    i_arrayidx108_pmg_s_conv_generic_vt_join_q <= i_arrayidx108_pmg_s_conv_generic_vt_select_63_b & i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_4_q;

    -- i_arrayidx108_pmg_o_pml_ba_conv_generic_sel_x(BITSELECT,64)@1
    i_arrayidx108_pmg_o_pml_ba_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_arrayidx108_pmg_s_conv_generic_vt_join_q(63 downto 0)), 512));

    -- i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_select_63(BITSELECT,142)@1
    i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_select_63_b <= i_arrayidx108_pmg_o_pml_ba_conv_generic_sel_x_b(63 downto 5);

    -- i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_4(CONSTANT,139)
    i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_4_q <= "00000";

    -- i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_join(BITJOIN,141)@1
    i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_join_q <= i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_511_q & i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_select_63_b & i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_const_4_q;

    -- i_pml_s_conv_generic_conv_generic737_shift_narrow_x(BITSELECT,73)@1
    i_pml_s_conv_generic_conv_generic737_shift_narrow_x_b <= i_arrayidx108_pmg_o_pml_ba_conv_generic_vt_join_q(8 downto 0);

    -- rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select(BITSELECT,377)@1
    rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b <= i_pml_s_conv_generic_conv_generic737_shift_narrow_x_b(8 downto 7);
    rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c <= i_pml_s_conv_generic_conv_generic737_shift_narrow_x_b(6 downto 5);

    -- redist0_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b_1(DELAY,380)
    redist0_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b_1 : dspba_delay
    GENERIC MAP ( width => 2, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b, xout => redist0_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x(MUX,244)@2 + 1
    rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_s <= redist0_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_b_1_q;
    rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_s) IS
                WHEN "00" => rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q <= redist12_i_acl_pop_i512_select316278_pop55_conv_generic_out_data_out_1_q;
                WHEN "01" => rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0Idx1_uid237_i_pml_s_conv_generic_conv_generic737_shift_x_q;
                WHEN "10" => rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0Idx2_uid240_i_pml_s_conv_generic_conv_generic737_shift_x_q;
                WHEN "11" => rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0Idx3_uid243_i_pml_s_conv_generic_conv_generic737_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist1_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c_2(DELAY,381)
    redist1_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c_2 : dspba_delay
    GENERIC MAP ( width => 2, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c, xout => redist1_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c_2_q, clk => clock, aclr => resetn );

    -- rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x(MUX,255)@3
    rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_s <= redist1_rightShiftStageSel8Dto7_uid244_i_pml_s_conv_generic_conv_generic737_shift_x_merged_bit_select_c_2_q;
    rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_combproc: PROCESS (rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_s, rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q, rightShiftStage1Idx1_uid248_i_pml_s_conv_generic_conv_generic737_shift_x_q, rightShiftStage1Idx2_uid251_i_pml_s_conv_generic_conv_generic737_shift_x_q, rightShiftStage1Idx3_uid254_i_pml_s_conv_generic_conv_generic737_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_s) IS
            WHEN "00" => rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage0_uid245_i_pml_s_conv_generic_conv_generic737_shift_x_q;
            WHEN "01" => rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage1Idx1_uid248_i_pml_s_conv_generic_conv_generic737_shift_x_q;
            WHEN "10" => rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage1Idx2_uid251_i_pml_s_conv_generic_conv_generic737_shift_x_q;
            WHEN "11" => rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q <= rightShiftStage1Idx3_uid254_i_pml_s_conv_generic_conv_generic737_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_pml_t_conv_generic_sel_x(BITSELECT,74)@3
    i_pml_t_conv_generic_sel_x_b <= rightShiftStage1_uid256_i_pml_s_conv_generic_conv_generic737_shift_x_q(31 downto 0);

    -- redist27_i_pml_t_conv_generic_sel_x_b_1(DELAY,407)
    redist27_i_pml_t_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_pml_t_conv_generic_sel_x_b, xout => redist27_i_pml_t_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_10183_conv_generic(BLACKBOX,154)@3
    thei_ffwd_dst_reduction_conv_generic_10183_conv_generic : i_ffwd_dst_reduction_conv_generic_10183_conv_generic740
    PORT MAP (
        in_intel_reserved_ffwd_10_0 => in_intel_reserved_ffwd_10_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_10_0 => i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_acl_286184_conv_generic(BLACKBOX,152)@3
    thei_ffwd_dst_acl_286184_conv_generic : i_ffwd_dst_acl_286184_conv_generic768
    PORT MAP (
        in_intel_reserved_ffwd_11_0 => in_intel_reserved_ffwd_11_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_11_0 => i_ffwd_dst_acl_286184_conv_generic_out_dest_data_out_11_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_7gr(CONSTANT,111)
    c_i32_7gr_q <= "00000000000000000000000000000111";

    -- i_sel_bits466_conv_generic_vt_const_31(CONSTANT,178)
    i_sel_bits466_conv_generic_vt_const_31_q <= "00000000000000000000000000000";

    -- i_sel_bits466_conv_generic(LOGICAL,177)@1
    i_sel_bits466_conv_generic_q <= i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out and c_i32_7gr_q;

    -- i_sel_bits466_conv_generic_vt_select_2(BITSELECT,180)@1
    i_sel_bits466_conv_generic_vt_select_2_b <= i_sel_bits466_conv_generic_q(2 downto 0);

    -- redist8_i_sel_bits466_conv_generic_vt_select_2_b_1(DELAY,388)
    redist8_i_sel_bits466_conv_generic_vt_select_2_b_1 : dspba_delay
    GENERIC MAP ( width => 3, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_sel_bits466_conv_generic_vt_select_2_b, xout => redist8_i_sel_bits466_conv_generic_vt_select_2_b_1_q, clk => clock, aclr => resetn );

    -- i_sel_bits466_conv_generic_vt_join(BITJOIN,179)@2
    i_sel_bits466_conv_generic_vt_join_q <= i_sel_bits466_conv_generic_vt_const_31_q & redist8_i_sel_bits466_conv_generic_vt_select_2_b_1_q;

    -- dupName_5_comparator_x(LOGICAL,22)@2 + 1
    dupName_5_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_7gr_q ELSE "0";
    dupName_5_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_5_comparator_x_qi, xout => dupName_5_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_11185_conv_generic(BLACKBOX,155)@3
    thei_ffwd_dst_reduction_conv_generic_11185_conv_generic : i_ffwd_dst_reduction_conv_generic_11185_conv_generic766
    PORT MAP (
        in_intel_reserved_ffwd_12_0 => in_intel_reserved_ffwd_12_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_12_0 => i_ffwd_dst_reduction_conv_generic_11185_conv_generic_out_dest_data_out_12_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_6gr(CONSTANT,110)
    c_i32_6gr_q <= "00000000000000000000000000000110";

    -- dupName_4_comparator_x(LOGICAL,20)@2 + 1
    dupName_4_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_6gr_q ELSE "0";
    dupName_4_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_4_comparator_x_qi, xout => dupName_4_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_12186_conv_generic(BLACKBOX,157)@3
    thei_ffwd_dst_reduction_conv_generic_12186_conv_generic : i_ffwd_dst_reduction_conv_generic_12186_conv_generic764
    PORT MAP (
        in_intel_reserved_ffwd_13_0 => in_intel_reserved_ffwd_13_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_13_0 => i_ffwd_dst_reduction_conv_generic_12186_conv_generic_out_dest_data_out_13_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_5gr(CONSTANT,109)
    c_i32_5gr_q <= "00000000000000000000000000000101";

    -- dupName_3_comparator_x(LOGICAL,18)@2 + 1
    dupName_3_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_5gr_q ELSE "0";
    dupName_3_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_3_comparator_x_qi, xout => dupName_3_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_13187_conv_generic(BLACKBOX,158)@3
    thei_ffwd_dst_reduction_conv_generic_13187_conv_generic : i_ffwd_dst_reduction_conv_generic_13187_conv_generic762
    PORT MAP (
        in_intel_reserved_ffwd_14_0 => in_intel_reserved_ffwd_14_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_14_0 => i_ffwd_dst_reduction_conv_generic_13187_conv_generic_out_dest_data_out_14_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_4gr(CONSTANT,108)
    c_i32_4gr_q <= "00000000000000000000000000000100";

    -- dupName_2_comparator_x(LOGICAL,16)@2 + 1
    dupName_2_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_4gr_q ELSE "0";
    dupName_2_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_2_comparator_x_qi, xout => dupName_2_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_14188_conv_generic(BLACKBOX,159)@3
    thei_ffwd_dst_reduction_conv_generic_14188_conv_generic : i_ffwd_dst_reduction_conv_generic_14188_conv_generic760
    PORT MAP (
        in_intel_reserved_ffwd_15_0 => in_intel_reserved_ffwd_15_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_15_0 => i_ffwd_dst_reduction_conv_generic_14188_conv_generic_out_dest_data_out_15_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_3gr(CONSTANT,107)
    c_i32_3gr_q <= "00000000000000000000000000000011";

    -- dupName_1_comparator_x(LOGICAL,13)@2 + 1
    dupName_1_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_3gr_q ELSE "0";
    dupName_1_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_1_comparator_x_qi, xout => dupName_1_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_0173_conv_generic(BLACKBOX,153)@3
    thei_ffwd_dst_reduction_conv_generic_0173_conv_generic : i_ffwd_dst_reduction_conv_generic_0173_conv_generic758
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_0_0 => i_ffwd_dst_reduction_conv_generic_0173_conv_generic_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_2gr(CONSTANT,106)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- dupName_0_comparator_x(LOGICAL,10)@2 + 1
    dupName_0_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_2gr_q ELSE "0";
    dupName_0_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_0_comparator_x_qi, xout => dupName_0_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_1174_conv_generic(BLACKBOX,156)@3
    thei_ffwd_dst_reduction_conv_generic_1174_conv_generic : i_ffwd_dst_reduction_conv_generic_1174_conv_generic756
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_1_0 => i_ffwd_dst_reduction_conv_generic_1174_conv_generic_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- dupName_7_comparator_x(LOGICAL,26)@2 + 1
    dupName_7_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_1gr_q ELSE "0";
    dupName_7_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_7_comparator_x_qi, xout => dupName_7_comparator_x_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_2175_conv_generic(BLACKBOX,160)@3
    thei_ffwd_dst_reduction_conv_generic_2175_conv_generic : i_ffwd_dst_reduction_conv_generic_2175_conv_generic754
    PORT MAP (
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_2_0 => i_ffwd_dst_reduction_conv_generic_2175_conv_generic_out_dest_data_out_2_0,
        clock => clock,
        resetn => resetn
    );

    -- dupName_6_comparator_x(LOGICAL,24)@2 + 1
    dupName_6_comparator_x_qi <= "1" WHEN i_sel_bits466_conv_generic_vt_join_q = c_i32_0gr_q ELSE "0";
    dupName_6_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_6_comparator_x_qi, xout => dupName_6_comparator_x_q, clk => clock, aclr => resetn );

    -- i_acl_case_case_stmt475_conv_generic(SELECTOR,118)@3
    i_acl_case_case_stmt475_conv_generic_combproc: PROCESS (dupName_6_comparator_x_q, i_ffwd_dst_reduction_conv_generic_2175_conv_generic_out_dest_data_out_2_0, dupName_7_comparator_x_q, i_ffwd_dst_reduction_conv_generic_1174_conv_generic_out_dest_data_out_1_0, dupName_0_comparator_x_q, i_ffwd_dst_reduction_conv_generic_0173_conv_generic_out_dest_data_out_0_0, dupName_1_comparator_x_q, i_ffwd_dst_reduction_conv_generic_14188_conv_generic_out_dest_data_out_15_0, dupName_2_comparator_x_q, i_ffwd_dst_reduction_conv_generic_13187_conv_generic_out_dest_data_out_14_0, dupName_3_comparator_x_q, i_ffwd_dst_reduction_conv_generic_12186_conv_generic_out_dest_data_out_13_0, dupName_4_comparator_x_q, i_ffwd_dst_reduction_conv_generic_11185_conv_generic_out_dest_data_out_12_0, dupName_5_comparator_x_q, i_ffwd_dst_acl_286184_conv_generic_out_dest_data_out_11_0, i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0)
    BEGIN
        i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0;
        IF (dupName_5_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_acl_286184_conv_generic_out_dest_data_out_11_0;
        END IF;
        IF (dupName_4_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_11185_conv_generic_out_dest_data_out_12_0;
        END IF;
        IF (dupName_3_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_12186_conv_generic_out_dest_data_out_13_0;
        END IF;
        IF (dupName_2_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_13187_conv_generic_out_dest_data_out_14_0;
        END IF;
        IF (dupName_1_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_14188_conv_generic_out_dest_data_out_15_0;
        END IF;
        IF (dupName_0_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_0173_conv_generic_out_dest_data_out_0_0;
        END IF;
        IF (dupName_7_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_1174_conv_generic_out_dest_data_out_1_0;
        END IF;
        IF (dupName_6_comparator_x_q = "1") THEN
            i_acl_case_case_stmt475_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_2175_conv_generic_out_dest_data_out_2_0;
        END IF;
    END PROCESS;

    -- rightShiftStage1Idx1Rng1_uid266_i_sel_shr_conv_generic_conv_generic770_shift_x(BITSELECT,265)@1
    rightShiftStage1Idx1Rng1_uid266_i_sel_shr_conv_generic_conv_generic770_shift_x_b <= rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q(31 downto 1);

    -- rightShiftStage1Idx1_uid268_i_sel_shr_conv_generic_conv_generic770_shift_x(BITJOIN,267)@1
    rightShiftStage1Idx1_uid268_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= GND_q & rightShiftStage1Idx1Rng1_uid266_i_sel_shr_conv_generic_conv_generic770_shift_x_b;

    -- rightShiftStage0Idx1Rng2_uid261_i_sel_shr_conv_generic_conv_generic770_shift_x(BITSELECT,260)@1
    rightShiftStage0Idx1Rng2_uid261_i_sel_shr_conv_generic_conv_generic770_shift_x_b <= i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out(31 downto 2);

    -- rightShiftStage0Idx1_uid263_i_sel_shr_conv_generic_conv_generic770_shift_x(BITJOIN,262)@1
    rightShiftStage0Idx1_uid263_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= rightShiftStage0Idx1Pad2_uid262_i_sel_shr_conv_generic_conv_generic770_shift_x_q & rightShiftStage0Idx1Rng2_uid261_i_sel_shr_conv_generic_conv_generic770_shift_x_b;

    -- rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x(MUX,264)@1
    rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_s <= VCC_q;
    rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_combproc: PROCESS (rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_s, i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out, rightShiftStage0Idx1_uid263_i_sel_shr_conv_generic_conv_generic770_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= i_acl_pop_i32_oc102_215_pop50_conv_generic_out_data_out;
            WHEN "1" => rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= rightShiftStage0Idx1_uid263_i_sel_shr_conv_generic_conv_generic770_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x(MUX,269)@1
    rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_s <= VCC_q;
    rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_combproc: PROCESS (rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_s, rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q, rightShiftStage1Idx1_uid268_i_sel_shr_conv_generic_conv_generic770_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_s) IS
            WHEN "0" => rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= rightShiftStage0_uid265_i_sel_shr_conv_generic_conv_generic770_shift_x_q;
            WHEN "1" => rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= rightShiftStage1Idx1_uid268_i_sel_shr_conv_generic_conv_generic770_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_sel_shr_conv_generic_vt_select_28(BITSELECT,187)@1
    i_sel_shr_conv_generic_vt_select_28_b <= rightShiftStage1_uid270_i_sel_shr_conv_generic_conv_generic770_shift_x_q(28 downto 0);

    -- i_sel_shr_conv_generic_vt_join(BITJOIN,186)@1
    i_sel_shr_conv_generic_vt_join_q <= i_sel_shr_conv_generic_vt_const_31_q & i_sel_shr_conv_generic_vt_select_28_b;

    -- dupName_15_comparator_x(LOGICAL,42)@1 + 1
    dupName_15_comparator_x_qi <= "1" WHEN i_sel_shr_conv_generic_vt_join_q = c_i32_1gr_q ELSE "0";
    dupName_15_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_15_comparator_x_qi, xout => dupName_15_comparator_x_q, clk => clock, aclr => resetn );

    -- redist28_dupName_15_comparator_x_q_2(DELAY,408)
    redist28_dupName_15_comparator_x_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_15_comparator_x_q, xout => redist28_dupName_15_comparator_x_q_2_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_reduction_conv_generic_3176_conv_generic(BLACKBOX,161)@3
    thei_ffwd_dst_reduction_conv_generic_3176_conv_generic : i_ffwd_dst_reduction_conv_generic_3176_conv_generic752
    PORT MAP (
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_3_0 => i_ffwd_dst_reduction_conv_generic_3176_conv_generic_out_dest_data_out_3_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_conv_generic_4177_conv_generic(BLACKBOX,162)@3
    thei_ffwd_dst_reduction_conv_generic_4177_conv_generic : i_ffwd_dst_reduction_conv_generic_4177_conv_generic750
    PORT MAP (
        in_intel_reserved_ffwd_4_0 => in_intel_reserved_ffwd_4_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_4_0 => i_ffwd_dst_reduction_conv_generic_4177_conv_generic_out_dest_data_out_4_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_conv_generic_5178_conv_generic(BLACKBOX,163)@3
    thei_ffwd_dst_reduction_conv_generic_5178_conv_generic : i_ffwd_dst_reduction_conv_generic_5178_conv_generic748
    PORT MAP (
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_5_0 => i_ffwd_dst_reduction_conv_generic_5178_conv_generic_out_dest_data_out_5_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_conv_generic_6179_conv_generic(BLACKBOX,164)@3
    thei_ffwd_dst_reduction_conv_generic_6179_conv_generic : i_ffwd_dst_reduction_conv_generic_6179_conv_generic746
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_6_0 => i_ffwd_dst_reduction_conv_generic_6179_conv_generic_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_conv_generic_7180_conv_generic(BLACKBOX,165)@3
    thei_ffwd_dst_reduction_conv_generic_7180_conv_generic : i_ffwd_dst_reduction_conv_generic_7180_conv_generic744
    PORT MAP (
        in_intel_reserved_ffwd_7_0 => in_intel_reserved_ffwd_7_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_7_0 => i_ffwd_dst_reduction_conv_generic_7180_conv_generic_out_dest_data_out_7_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_conv_generic_8181_conv_generic(BLACKBOX,166)@3
    thei_ffwd_dst_reduction_conv_generic_8181_conv_generic : i_ffwd_dst_reduction_conv_generic_8181_conv_generic742
    PORT MAP (
        in_intel_reserved_ffwd_8_0 => in_intel_reserved_ffwd_8_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_8_0 => i_ffwd_dst_reduction_conv_generic_8181_conv_generic_out_dest_data_out_8_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_reduction_conv_generic_9182_conv_generic(BLACKBOX,167)@3
    thei_ffwd_dst_reduction_conv_generic_9182_conv_generic : i_ffwd_dst_reduction_conv_generic_9182_conv_generic738
    PORT MAP (
        in_intel_reserved_ffwd_9_0 => in_intel_reserved_ffwd_9_0,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_dest_data_out_9_0 => i_ffwd_dst_reduction_conv_generic_9182_conv_generic_out_dest_data_out_9_0,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_case_case_stmt_conv_generic(SELECTOR,120)@3
    i_acl_case_case_stmt_conv_generic_combproc: PROCESS (dupName_7_comparator_x_q, i_ffwd_dst_reduction_conv_generic_9182_conv_generic_out_dest_data_out_9_0, dupName_0_comparator_x_q, i_ffwd_dst_reduction_conv_generic_8181_conv_generic_out_dest_data_out_8_0, dupName_1_comparator_x_q, i_ffwd_dst_reduction_conv_generic_7180_conv_generic_out_dest_data_out_7_0, dupName_2_comparator_x_q, i_ffwd_dst_reduction_conv_generic_6179_conv_generic_out_dest_data_out_6_0, dupName_3_comparator_x_q, i_ffwd_dst_reduction_conv_generic_5178_conv_generic_out_dest_data_out_5_0, dupName_4_comparator_x_q, i_ffwd_dst_reduction_conv_generic_4177_conv_generic_out_dest_data_out_4_0, dupName_5_comparator_x_q, i_ffwd_dst_reduction_conv_generic_3176_conv_generic_out_dest_data_out_3_0, i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0)
    BEGIN
        i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0;
        IF (dupName_5_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_3176_conv_generic_out_dest_data_out_3_0;
        END IF;
        IF (dupName_4_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_4177_conv_generic_out_dest_data_out_4_0;
        END IF;
        IF (dupName_3_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_5178_conv_generic_out_dest_data_out_5_0;
        END IF;
        IF (dupName_2_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_6179_conv_generic_out_dest_data_out_6_0;
        END IF;
        IF (dupName_1_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_7180_conv_generic_out_dest_data_out_7_0;
        END IF;
        IF (dupName_0_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_8181_conv_generic_out_dest_data_out_8_0;
        END IF;
        IF (dupName_7_comparator_x_q = "1") THEN
            i_acl_case_case_stmt_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_9182_conv_generic_out_dest_data_out_9_0;
        END IF;
    END PROCESS;

    -- dupName_14_comparator_x(LOGICAL,40)@1 + 1
    dupName_14_comparator_x_qi <= "1" WHEN i_sel_shr_conv_generic_vt_join_q = c_i32_0gr_q ELSE "0";
    dupName_14_comparator_x_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_14_comparator_x_qi, xout => dupName_14_comparator_x_q, clk => clock, aclr => resetn );

    -- redist29_dupName_14_comparator_x_q_2(DELAY,409)
    redist29_dupName_14_comparator_x_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => dupName_14_comparator_x_q, xout => redist29_dupName_14_comparator_x_q_2_q, clk => clock, aclr => resetn );

    -- i_acl_case_case_stmt479_conv_generic(SELECTOR,119)@3 + 1
    i_acl_case_case_stmt479_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_acl_case_case_stmt479_conv_generic_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_acl_case_case_stmt479_conv_generic_q <= i_ffwd_dst_reduction_conv_generic_10183_conv_generic_out_dest_data_out_10_0;
            IF (redist28_dupName_15_comparator_x_q_2_q = "1") THEN
                i_acl_case_case_stmt479_conv_generic_q <= i_acl_case_case_stmt475_conv_generic_q;
            END IF;
            IF (redist29_dupName_14_comparator_x_q_2_q = "1") THEN
                i_acl_case_case_stmt479_conv_generic_q <= i_acl_case_case_stmt_conv_generic_q;
            END IF;
        END IF;
    END PROCESS;

    -- i_add111_conv_generic(ADD,135)@4
    i_add111_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_case_case_stmt479_conv_generic_q);
    i_add111_conv_generic_b <= STD_LOGIC_VECTOR("0" & redist27_i_pml_t_conv_generic_sel_x_b_1_q);
    i_add111_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add111_conv_generic_a) + UNSIGNED(i_add111_conv_generic_b));
    i_add111_conv_generic_q <= i_add111_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add111_conv_generic_sel_x(BITSELECT,2)@4
    bgTrunc_i_add111_conv_generic_sel_x_b <= i_add111_conv_generic_q(31 downto 0);

    -- redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1(DELAY,412)
    redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add111_conv_generic_sel_x_b, xout => redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul114_conv_generic_bs4(BITSELECT,356)@5
    i_mul114_conv_generic_bs4_in <= STD_LOGIC_VECTOR(redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1_q(17 downto 0));
    i_mul114_conv_generic_bs4_b <= STD_LOGIC_VECTOR(i_mul114_conv_generic_bs4_in(17 downto 0));

    -- i_mul114_conv_generic_bs6(BITSELECT,358)@5
    i_mul114_conv_generic_bs6_b <= STD_LOGIC_VECTOR(redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1_q(31 downto 18));

    -- i_mul114_conv_generic_bs2(BITSELECT,354)@5
    i_mul114_conv_generic_bs2_in <= i_syncbuf_m_mult_sync_buffer_conv_generic_out_buffer_out(17 downto 0);
    i_mul114_conv_generic_bs2_b <= i_mul114_conv_generic_bs2_in(17 downto 0);

    -- i_mul114_conv_generic_ma3_cma(CHAINMULTADD,376)@5 + 2
    i_mul114_conv_generic_ma3_cma_reset <= not (resetn);
    i_mul114_conv_generic_ma3_cma_ena0 <= '1';
    i_mul114_conv_generic_ma3_cma_ena1 <= i_mul114_conv_generic_ma3_cma_ena0;
    i_mul114_conv_generic_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul114_conv_generic_ma3_cma_a0(0),19));
    i_mul114_conv_generic_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul114_conv_generic_ma3_cma_a0(1),19));
    i_mul114_conv_generic_ma3_cma_p(0) <= i_mul114_conv_generic_ma3_cma_l(0) * i_mul114_conv_generic_ma3_cma_c0(0);
    i_mul114_conv_generic_ma3_cma_p(1) <= i_mul114_conv_generic_ma3_cma_l(1) * i_mul114_conv_generic_ma3_cma_c0(1);
    i_mul114_conv_generic_ma3_cma_u(0) <= RESIZE(i_mul114_conv_generic_ma3_cma_p(0),34);
    i_mul114_conv_generic_ma3_cma_u(1) <= RESIZE(i_mul114_conv_generic_ma3_cma_p(1),34);
    i_mul114_conv_generic_ma3_cma_w(0) <= i_mul114_conv_generic_ma3_cma_u(0) + i_mul114_conv_generic_ma3_cma_u(1);
    i_mul114_conv_generic_ma3_cma_x(0) <= i_mul114_conv_generic_ma3_cma_w(0);
    i_mul114_conv_generic_ma3_cma_y(0) <= i_mul114_conv_generic_ma3_cma_x(0);
    i_mul114_conv_generic_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul114_conv_generic_ma3_cma_a0 <= (others => (others => '0'));
            i_mul114_conv_generic_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul114_conv_generic_ma3_cma_ena0 = '1') THEN
                i_mul114_conv_generic_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul114_conv_generic_bs2_b),18);
                i_mul114_conv_generic_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul114_conv_generic_bs4_b),18);
                i_mul114_conv_generic_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul114_conv_generic_bs6_b),14);
                i_mul114_conv_generic_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul114_conv_generic_bs5_b),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul114_conv_generic_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul114_conv_generic_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul114_conv_generic_ma3_cma_ena1 = '1') THEN
                i_mul114_conv_generic_ma3_cma_s(0) <= i_mul114_conv_generic_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul114_conv_generic_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 33, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul114_conv_generic_ma3_cma_s(0)(32 downto 0)), xout => i_mul114_conv_generic_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul114_conv_generic_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul114_conv_generic_ma3_cma_qq(32 downto 0));

    -- redist2_i_mul114_conv_generic_ma3_cma_q_1(DELAY,382)
    redist2_i_mul114_conv_generic_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul114_conv_generic_ma3_cma_q, xout => redist2_i_mul114_conv_generic_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul114_conv_generic_align_12(BITSHIFT,364)@8
    i_mul114_conv_generic_align_12_qint <= redist2_i_mul114_conv_generic_ma3_cma_q_1_q & "000000000000000000";
    i_mul114_conv_generic_align_12_q <= i_mul114_conv_generic_align_12_qint(50 downto 0);

    -- i_mul114_conv_generic_bs10(BITSELECT,362)@5
    i_mul114_conv_generic_bs10_b <= STD_LOGIC_VECTOR(i_syncbuf_m_mult_sync_buffer_conv_generic_out_buffer_out(31 downto 18));

    -- i_mul114_conv_generic_im8_cma(CHAINMULTADD,375)@5 + 2
    i_mul114_conv_generic_im8_cma_reset <= not (resetn);
    i_mul114_conv_generic_im8_cma_ena0 <= '1';
    i_mul114_conv_generic_im8_cma_ena1 <= i_mul114_conv_generic_im8_cma_ena0;
    i_mul114_conv_generic_im8_cma_p(0) <= i_mul114_conv_generic_im8_cma_a0(0) * i_mul114_conv_generic_im8_cma_c0(0);
    i_mul114_conv_generic_im8_cma_u(0) <= RESIZE(i_mul114_conv_generic_im8_cma_p(0),28);
    i_mul114_conv_generic_im8_cma_w(0) <= i_mul114_conv_generic_im8_cma_u(0);
    i_mul114_conv_generic_im8_cma_x(0) <= i_mul114_conv_generic_im8_cma_w(0);
    i_mul114_conv_generic_im8_cma_y(0) <= i_mul114_conv_generic_im8_cma_x(0);
    i_mul114_conv_generic_im8_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul114_conv_generic_im8_cma_a0 <= (others => (others => '0'));
            i_mul114_conv_generic_im8_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul114_conv_generic_im8_cma_ena0 = '1') THEN
                i_mul114_conv_generic_im8_cma_a0(0) <= RESIZE(SIGNED(i_mul114_conv_generic_bs6_b),14);
                i_mul114_conv_generic_im8_cma_c0(0) <= RESIZE(SIGNED(i_mul114_conv_generic_bs10_b),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul114_conv_generic_im8_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul114_conv_generic_im8_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul114_conv_generic_im8_cma_ena1 = '1') THEN
                i_mul114_conv_generic_im8_cma_s(0) <= i_mul114_conv_generic_im8_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul114_conv_generic_im8_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul114_conv_generic_im8_cma_s(0)(27 downto 0)), xout => i_mul114_conv_generic_im8_cma_qq, clk => clock, aclr => resetn );
    i_mul114_conv_generic_im8_cma_q <= STD_LOGIC_VECTOR(i_mul114_conv_generic_im8_cma_qq(27 downto 0));

    -- redist3_i_mul114_conv_generic_im8_cma_q_1(DELAY,383)
    redist3_i_mul114_conv_generic_im8_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul114_conv_generic_im8_cma_q, xout => redist3_i_mul114_conv_generic_im8_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul114_conv_generic_bs1(BITSELECT,353)@5
    i_mul114_conv_generic_bs1_in <= redist32_bgTrunc_i_add111_conv_generic_sel_x_b_1_q(17 downto 0);
    i_mul114_conv_generic_bs1_b <= i_mul114_conv_generic_bs1_in(17 downto 0);

    -- i_mul114_conv_generic_im0_cma(CHAINMULTADD,374)@5 + 2
    i_mul114_conv_generic_im0_cma_reset <= not (resetn);
    i_mul114_conv_generic_im0_cma_ena0 <= '1';
    i_mul114_conv_generic_im0_cma_ena1 <= i_mul114_conv_generic_im0_cma_ena0;
    i_mul114_conv_generic_im0_cma_p(0) <= i_mul114_conv_generic_im0_cma_a0(0) * i_mul114_conv_generic_im0_cma_c0(0);
    i_mul114_conv_generic_im0_cma_u(0) <= RESIZE(i_mul114_conv_generic_im0_cma_p(0),36);
    i_mul114_conv_generic_im0_cma_w(0) <= i_mul114_conv_generic_im0_cma_u(0);
    i_mul114_conv_generic_im0_cma_x(0) <= i_mul114_conv_generic_im0_cma_w(0);
    i_mul114_conv_generic_im0_cma_y(0) <= i_mul114_conv_generic_im0_cma_x(0);
    i_mul114_conv_generic_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul114_conv_generic_im0_cma_a0 <= (others => (others => '0'));
            i_mul114_conv_generic_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul114_conv_generic_im0_cma_ena0 = '1') THEN
                i_mul114_conv_generic_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul114_conv_generic_bs1_b),18);
                i_mul114_conv_generic_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul114_conv_generic_bs2_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul114_conv_generic_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul114_conv_generic_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul114_conv_generic_im0_cma_ena1 = '1') THEN
                i_mul114_conv_generic_im0_cma_s(0) <= i_mul114_conv_generic_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul114_conv_generic_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul114_conv_generic_im0_cma_s(0)(35 downto 0)), xout => i_mul114_conv_generic_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul114_conv_generic_im0_cma_q <= STD_LOGIC_VECTOR(i_mul114_conv_generic_im0_cma_qq(35 downto 0));

    -- redist4_i_mul114_conv_generic_im0_cma_q_1(DELAY,384)
    redist4_i_mul114_conv_generic_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul114_conv_generic_im0_cma_q, xout => redist4_i_mul114_conv_generic_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul114_conv_generic_join_11(BITJOIN,363)@8
    i_mul114_conv_generic_join_11_q <= redist3_i_mul114_conv_generic_im8_cma_q_1_q & redist4_i_mul114_conv_generic_im0_cma_q_1_q;

    -- i_mul114_conv_generic_result_add_0_0(ADD,366)@8
    i_mul114_conv_generic_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 64 => i_mul114_conv_generic_join_11_q(63)) & i_mul114_conv_generic_join_11_q));
    i_mul114_conv_generic_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((64 downto 51 => i_mul114_conv_generic_align_12_q(50)) & i_mul114_conv_generic_align_12_q));
    i_mul114_conv_generic_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul114_conv_generic_result_add_0_0_a) + SIGNED(i_mul114_conv_generic_result_add_0_0_b));
    i_mul114_conv_generic_result_add_0_0_q <= i_mul114_conv_generic_result_add_0_0_o(64 downto 0);

    -- bgTrunc_i_mul114_conv_generic_rnd_sel(BITSELECT,348)@8
    bgTrunc_i_mul114_conv_generic_rnd_sel_in <= STD_LOGIC_VECTOR(i_mul114_conv_generic_result_add_0_0_q(63 downto 0));
    bgTrunc_i_mul114_conv_generic_rnd_sel_b <= STD_LOGIC_VECTOR(bgTrunc_i_mul114_conv_generic_rnd_sel_in(63 downto 0));

    -- redist5_bgTrunc_i_mul114_conv_generic_rnd_sel_b_1(DELAY,385)
    redist5_bgTrunc_i_mul114_conv_generic_rnd_sel_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul114_conv_generic_rnd_sel_b, xout => redist5_bgTrunc_i_mul114_conv_generic_rnd_sel_b_1_q, clk => clock, aclr => resetn );

    -- i_add119_conv_generic(ADD,136)@9
    i_add119_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist5_bgTrunc_i_mul114_conv_generic_rnd_sel_b_1_q);
    i_add119_conv_generic_b <= STD_LOGIC_VECTOR("0" & leftShiftStage2_uid307_i_shl_rm_conv_generic_conv_generic775_shift_x_q);
    i_add119_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add119_conv_generic_a) + UNSIGNED(i_add119_conv_generic_b));
    i_add119_conv_generic_q <= i_add119_conv_generic_o(64 downto 0);

    -- bgTrunc_i_add119_conv_generic_sel_x(BITSELECT,3)@9
    bgTrunc_i_add119_conv_generic_sel_x_b <= i_add119_conv_generic_q(63 downto 0);

    -- redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1(DELAY,411)
    redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 64, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add119_conv_generic_sel_x_b, xout => redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,309)@10
    xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b <= STD_LOGIC_VECTOR(redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q(63 downto 63));

    -- seMsb_to3_uid339(BITSELECT,338)@10
    seMsb_to3_uid339_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((2 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to3_uid339_b <= STD_LOGIC_VECTOR(seMsb_to3_uid339_in(2 downto 0));

    -- rightShiftStage2Idx3Rng3_uid340_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,339)@10
    rightShiftStage2Idx3Rng3_uid340_i_shr121_conv_generic_conv_generic778_shift_x_b <= rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q(63 downto 3);

    -- rightShiftStage2Idx3_uid341_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,340)@10
    rightShiftStage2Idx3_uid341_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to3_uid339_b & rightShiftStage2Idx3Rng3_uid340_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to2_uid336(BITSELECT,335)@10
    seMsb_to2_uid336_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((1 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to2_uid336_b <= STD_LOGIC_VECTOR(seMsb_to2_uid336_in(1 downto 0));

    -- rightShiftStage2Idx2Rng2_uid337_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,336)@10
    rightShiftStage2Idx2Rng2_uid337_i_shr121_conv_generic_conv_generic778_shift_x_b <= rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q(63 downto 2);

    -- rightShiftStage2Idx2_uid338_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,337)@10
    rightShiftStage2Idx2_uid338_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to2_uid336_b & rightShiftStage2Idx2Rng2_uid337_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- rightShiftStage2Idx1Rng1_uid334_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,333)@10
    rightShiftStage2Idx1Rng1_uid334_i_shr121_conv_generic_conv_generic778_shift_x_b <= rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q(63 downto 1);

    -- rightShiftStage2Idx1_uid335_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,334)@10
    rightShiftStage2Idx1_uid335_i_shr121_conv_generic_conv_generic778_shift_x_q <= xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b & rightShiftStage2Idx1Rng1_uid334_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to12_uid329(BITSELECT,328)@10
    seMsb_to12_uid329_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((11 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to12_uid329_b <= STD_LOGIC_VECTOR(seMsb_to12_uid329_in(11 downto 0));

    -- rightShiftStage1Idx3Rng12_uid330_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,329)@10
    rightShiftStage1Idx3Rng12_uid330_i_shr121_conv_generic_conv_generic778_shift_x_b <= rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q(63 downto 12);

    -- rightShiftStage1Idx3_uid331_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,330)@10
    rightShiftStage1Idx3_uid331_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to12_uid329_b & rightShiftStage1Idx3Rng12_uid330_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to8_uid326(BITSELECT,325)@10
    seMsb_to8_uid326_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((7 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to8_uid326_b <= STD_LOGIC_VECTOR(seMsb_to8_uid326_in(7 downto 0));

    -- rightShiftStage1Idx2Rng8_uid327_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,326)@10
    rightShiftStage1Idx2Rng8_uid327_i_shr121_conv_generic_conv_generic778_shift_x_b <= rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q(63 downto 8);

    -- rightShiftStage1Idx2_uid328_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,327)@10
    rightShiftStage1Idx2_uid328_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to8_uid326_b & rightShiftStage1Idx2Rng8_uid327_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to4_uid323(BITSELECT,322)@10
    seMsb_to4_uid323_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((3 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to4_uid323_b <= STD_LOGIC_VECTOR(seMsb_to4_uid323_in(3 downto 0));

    -- rightShiftStage1Idx1Rng4_uid324_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,323)@10
    rightShiftStage1Idx1Rng4_uid324_i_shr121_conv_generic_conv_generic778_shift_x_b <= rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q(63 downto 4);

    -- rightShiftStage1Idx1_uid325_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,324)@10
    rightShiftStage1Idx1_uid325_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to4_uid323_b & rightShiftStage1Idx1Rng4_uid324_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to48_uid318(BITSELECT,317)@10
    seMsb_to48_uid318_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((47 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to48_uid318_b <= STD_LOGIC_VECTOR(seMsb_to48_uid318_in(47 downto 0));

    -- rightShiftStage0Idx3Rng48_uid319_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,318)@10
    rightShiftStage0Idx3Rng48_uid319_i_shr121_conv_generic_conv_generic778_shift_x_b <= redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q(63 downto 48);

    -- rightShiftStage0Idx3_uid320_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,319)@10
    rightShiftStage0Idx3_uid320_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to48_uid318_b & rightShiftStage0Idx3Rng48_uid319_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to32_uid315(BITSELECT,314)@10
    seMsb_to32_uid315_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to32_uid315_b <= STD_LOGIC_VECTOR(seMsb_to32_uid315_in(31 downto 0));

    -- rightShiftStage0Idx2Rng32_uid316_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,315)@10
    rightShiftStage0Idx2Rng32_uid316_i_shr121_conv_generic_conv_generic778_shift_x_b <= redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q(63 downto 32);

    -- rightShiftStage0Idx2_uid317_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,316)@10
    rightShiftStage0Idx2_uid317_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to32_uid315_b & rightShiftStage0Idx2Rng32_uid316_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- seMsb_to16_uid312(BITSELECT,311)@10
    seMsb_to16_uid312_in <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b(0)) & xMSB_uid310_i_shr121_conv_generic_conv_generic778_shift_x_b));
    seMsb_to16_uid312_b <= STD_LOGIC_VECTOR(seMsb_to16_uid312_in(15 downto 0));

    -- rightShiftStage0Idx1Rng16_uid313_i_shr121_conv_generic_conv_generic778_shift_x(BITSELECT,312)@10
    rightShiftStage0Idx1Rng16_uid313_i_shr121_conv_generic_conv_generic778_shift_x_b <= redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q(63 downto 16);

    -- rightShiftStage0Idx1_uid314_i_shr121_conv_generic_conv_generic778_shift_x(BITJOIN,313)@10
    rightShiftStage0Idx1_uid314_i_shr121_conv_generic_conv_generic778_shift_x_q <= seMsb_to16_uid312_b & rightShiftStage0Idx1Rng16_uid313_i_shr121_conv_generic_conv_generic778_shift_x_b;

    -- rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x(MUX,321)@10
    rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_s <= rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_b;
    rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_combproc: PROCESS (rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_s, redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q, rightShiftStage0Idx1_uid314_i_shr121_conv_generic_conv_generic778_shift_x_q, rightShiftStage0Idx2_uid317_i_shr121_conv_generic_conv_generic778_shift_x_q, rightShiftStage0Idx3_uid320_i_shr121_conv_generic_conv_generic778_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_s) IS
            WHEN "00" => rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q <= redist31_bgTrunc_i_add119_conv_generic_sel_x_b_1_q;
            WHEN "01" => rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage0Idx1_uid314_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN "10" => rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage0Idx2_uid317_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN "11" => rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage0Idx3_uid320_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x(MUX,332)@10
    rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_s <= rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_c;
    rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_combproc: PROCESS (rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_s, rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q, rightShiftStage1Idx1_uid325_i_shr121_conv_generic_conv_generic778_shift_x_q, rightShiftStage1Idx2_uid328_i_shr121_conv_generic_conv_generic778_shift_x_q, rightShiftStage1Idx3_uid331_i_shr121_conv_generic_conv_generic778_shift_x_q)
    BEGIN
        CASE (rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_s) IS
            WHEN "00" => rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage0_uid322_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN "01" => rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage1Idx1_uid325_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN "10" => rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage1Idx2_uid328_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN "11" => rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage1Idx3_uid331_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN OTHERS => rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_syncbuf_m_shift_sync_buffer156_conv_generic(BLACKBOX,198)@0
    -- in in_i_dependence@10
    -- in in_valid_in@10
    -- out out_buffer_out@10
    -- out out_valid_out@10
    thei_syncbuf_m_shift_sync_buffer156_conv_generic : i_syncbuf_m_shift_sync_buffer156_conv_generic776
    PORT MAP (
        in_buffer_in => in_M_shift,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_9_q,
        out_buffer_out => i_syncbuf_m_shift_sync_buffer156_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_sh_prom120_rm_conv_generic_sel_x(BITSELECT,80)@10
    i_sh_prom120_rm_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_syncbuf_m_shift_sync_buffer156_conv_generic_out_buffer_out(31 downto 0)), 64));

    -- i_sh_prom120_rm_conv_generic_vt_select_31(BITSELECT,191)@10
    i_sh_prom120_rm_conv_generic_vt_select_31_b <= i_sh_prom120_rm_conv_generic_sel_x_b(31 downto 0);

    -- i_sh_prom120_rm_conv_generic_vt_join(BITJOIN,190)@10
    i_sh_prom120_rm_conv_generic_vt_join_q <= c_i32_0gr_q & i_sh_prom120_rm_conv_generic_vt_select_31_b;

    -- i_shr121_conv_generic_conv_generic778_shift_narrow_x(BITSELECT,91)@10
    i_shr121_conv_generic_conv_generic778_shift_narrow_x_b <= i_sh_prom120_rm_conv_generic_vt_join_q(5 downto 0);

    -- rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select(BITSELECT,379)@10
    rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_b <= i_shr121_conv_generic_conv_generic778_shift_narrow_x_b(5 downto 4);
    rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_c <= i_shr121_conv_generic_conv_generic778_shift_narrow_x_b(3 downto 2);
    rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_d <= i_shr121_conv_generic_conv_generic778_shift_narrow_x_b(1 downto 0);

    -- rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x(MUX,342)@10 + 1
    rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_s <= rightShiftStageSel5Dto4_uid321_i_shr121_conv_generic_conv_generic778_shift_x_merged_bit_select_d;
    rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_s) IS
                WHEN "00" => rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage1_uid333_i_shr121_conv_generic_conv_generic778_shift_x_q;
                WHEN "01" => rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage2Idx1_uid335_i_shr121_conv_generic_conv_generic778_shift_x_q;
                WHEN "10" => rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage2Idx2_uid338_i_shr121_conv_generic_conv_generic778_shift_x_q;
                WHEN "11" => rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q <= rightShiftStage2Idx3_uid341_i_shr121_conv_generic_conv_generic778_shift_x_q;
                WHEN OTHERS => rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- redist6_bgTrunc_i_mul114_conv_generic_rnd_sel_b_3(DELAY,386)
    redist6_bgTrunc_i_mul114_conv_generic_rnd_sel_b_3 : dspba_delay
    GENERIC MAP ( width => 64, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_bgTrunc_i_mul114_conv_generic_rnd_sel_b_1_q, xout => redist6_bgTrunc_i_mul114_conv_generic_rnd_sel_b_3_q, clk => clock, aclr => resetn );

    -- i_syncbuf_m_shift_sync_buffer157_conv_generic(BLACKBOX,199)@0
    -- in in_i_dependence@10
    -- in in_valid_in@10
    -- out out_buffer_out@10
    -- out out_valid_out@10
    thei_syncbuf_m_shift_sync_buffer157_conv_generic : i_syncbuf_m_shift_sync_buffer157_conv_generic779
    PORT MAP (
        in_buffer_in => in_M_shift,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_9_q,
        out_buffer_out => i_syncbuf_m_shift_sync_buffer157_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp115_rm_conv_generic(COMPARE,146)@10 + 1
    i_cmp115_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp115_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_m_shift_sync_buffer157_conv_generic_out_buffer_out(31)) & i_syncbuf_m_shift_sync_buffer157_conv_generic_out_buffer_out));
    i_cmp115_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp115_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp115_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp115_rm_conv_generic_a) - SIGNED(i_cmp115_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp115_rm_conv_generic_c(0) <= i_cmp115_rm_conv_generic_o(33);

    -- i_acl_315_conv_generic(MUX,117)@11
    i_acl_315_conv_generic_s <= i_cmp115_rm_conv_generic_c;
    i_acl_315_conv_generic_combproc: PROCESS (i_acl_315_conv_generic_s, redist6_bgTrunc_i_mul114_conv_generic_rnd_sel_b_3_q, rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q)
    BEGIN
        CASE (i_acl_315_conv_generic_s) IS
            WHEN "0" => i_acl_315_conv_generic_q <= redist6_bgTrunc_i_mul114_conv_generic_rnd_sel_b_3_q;
            WHEN "1" => i_acl_315_conv_generic_q <= rightShiftStage2_uid343_i_shr121_conv_generic_conv_generic778_shift_x_q;
            WHEN OTHERS => i_acl_315_conv_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_q_res_3_conv_generic_sel_x(BITSELECT,75)@11
    i_q_res_3_conv_generic_sel_x_b <= i_acl_315_conv_generic_q(31 downto 0);

    -- redist26_i_q_res_3_conv_generic_sel_x_b_1(DELAY,406)
    redist26_i_q_res_3_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_q_res_3_conv_generic_sel_x_b, xout => redist26_i_q_res_3_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add125_conv_generic(ADD,137)@12
    i_add125_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist26_i_q_res_3_conv_generic_sel_x_b_1_q);
    i_add125_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_y_zero_sync_buffer_conv_generic_out_buffer_out);
    i_add125_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add125_conv_generic_a) + UNSIGNED(i_add125_conv_generic_b));
    i_add125_conv_generic_q <= i_add125_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add125_conv_generic_sel_x(BITSELECT,4)@12
    bgTrunc_i_add125_conv_generic_sel_x_b <= i_add125_conv_generic_q(31 downto 0);

    -- redist30_bgTrunc_i_add125_conv_generic_sel_x_b_1(DELAY,410)
    redist30_bgTrunc_i_add125_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add125_conv_generic_sel_x_b, xout => redist30_bgTrunc_i_add125_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp126_conv_generic_cmp_sign(LOGICAL,372)@13
    i_cmp126_conv_generic_cmp_sign_q <= STD_LOGIC_VECTOR(redist30_bgTrunc_i_add125_conv_generic_sel_x_b_1_q(31 downto 31));

    -- i_q_res_4_conv_generic(MUX,176)@13 + 1
    i_q_res_4_conv_generic_s <= i_cmp126_conv_generic_cmp_sign_q;
    i_q_res_4_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_q_res_4_conv_generic_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (i_q_res_4_conv_generic_s) IS
                WHEN "0" => i_q_res_4_conv_generic_q <= redist30_bgTrunc_i_add125_conv_generic_sel_x_b_1_q;
                WHEN "1" => i_q_res_4_conv_generic_q <= c_i32_0gr_q;
                WHEN OTHERS => i_q_res_4_conv_generic_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_unnamed_conv_generic786_sel_x(BITSELECT,92)@14
    i_unnamed_conv_generic786_sel_x_b <= i_q_res_4_conv_generic_q(7 downto 0);

    -- redist24_i_unnamed_conv_generic786_sel_x_b_1(DELAY,404)
    redist24_i_unnamed_conv_generic786_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 8, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic786_sel_x_b, xout => redist24_i_unnamed_conv_generic786_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- c_i32_255(CONSTANT,105)
    c_i32_255_q <= "00000000000000000000000011111111";

    -- i_cmp130_conv_generic(COMPARE,148)@14 + 1
    i_cmp130_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_255_q(31)) & c_i32_255_q));
    i_cmp130_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_q_res_4_conv_generic_q(31)) & i_q_res_4_conv_generic_q));
    i_cmp130_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp130_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp130_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp130_conv_generic_a) - SIGNED(i_cmp130_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp130_conv_generic_c(0) <= i_cmp130_conv_generic_o(33);

    -- i_conv134_conv_generic(MUX,149)@15
    i_conv134_conv_generic_s <= i_cmp130_conv_generic_c;
    i_conv134_conv_generic_combproc: PROCESS (i_conv134_conv_generic_s, redist24_i_unnamed_conv_generic786_sel_x_b_1_q, c_i8_1gr_q)
    BEGIN
        CASE (i_conv134_conv_generic_s) IS
            WHEN "0" => i_conv134_conv_generic_q <= redist24_i_unnamed_conv_generic786_sel_x_b_1_q;
            WHEN "1" => i_conv134_conv_generic_q <= c_i8_1gr_q;
            WHEN OTHERS => i_conv134_conv_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,94)@15
    out_c0_exi6452_0 <= GND_q;
    out_c0_exi6452_1 <= i_conv134_conv_generic_q;
    out_c0_exi6452_2 <= i_phi_decision383_xor_rm_conv_generic_q;
    out_c0_exi6452_3 <= i_unnamed_conv_generic795_q;
    out_c0_exi6452_4 <= redist10_i_notexit258_conv_generic_q_14_q;
    out_c0_exi6452_5 <= redist16_i_acl_pop_i1_pop51_conv_generic_out_data_out_14_q;
    out_c0_exi6452_6 <= redist14_i_acl_pop_i1_pop52_conv_generic_out_data_out_14_q;
    out_o_valid <= redist23_sync_in_aunroll_x_in_i_valid_14_q;

    -- i_acl_push_i1_notexitcond257_conv_generic(BLACKBOX,129)@1
    -- out out_feedback_out_14@20000000
    -- out out_feedback_valid_out_14@20000000
    thei_acl_push_i1_notexitcond257_conv_generic : i_acl_push_i1_notexitcond257_conv_generic804
    PORT MAP (
        in_data_in => i_notexit258_conv_generic_q,
        in_feedback_stall_in_14 => i_acl_pipeline_keep_going256_conv_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_14 => i_acl_push_i1_notexitcond257_conv_generic_out_feedback_out_14,
        out_feedback_valid_out_14 => i_acl_push_i1_notexitcond257_conv_generic_out_feedback_valid_out_14,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going256_conv_generic(BLACKBOX,121)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going256_conv_generic : i_acl_pipeline_keep_going256_conv_generic730
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond257_conv_generic_out_feedback_out_14,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond257_conv_generic_out_feedback_valid_out_14,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going256_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going256_conv_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going256_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going256_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,116)
    out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going256_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going256_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going256_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,212)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going256_conv_generic_out_pipeline_valid_out;

END normal;
