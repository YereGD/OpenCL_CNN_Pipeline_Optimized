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

-- VHDL created from i_sfc_logic_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic406
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

entity i_sfc_logic_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic406 is
    port (
        in_c0_eni6_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni6_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi9_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi9_6 : out std_logic_vector(32 downto 0);  -- ufix33
        out_c0_exi9_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi9_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic406;

architecture normal of i_sfc_logic_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic406 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going248_conv_generic410 is
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


    component i_acl_pop_i1_forked268279_pop63_conv_generic408 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_63 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_63 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_63 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_notexit254281_pop65_conv_generic432 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_65 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_65 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_65 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop61_conv_generic464 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_61 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop62_conv_generic468 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_62 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop64_conv_generic472 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_64 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_64 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_64 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_w_idx_38_pop60_conv_generic458 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_60 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic424 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_59 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_stall_out_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_forked268279_push63_conv_generic428 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_63 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_63 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_63 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexit254281_push65_conv_generic434 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_65 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_65 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_65 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond249_conv_generic436 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_10 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push61_conv_generic466 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_61 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push62_conv_generic470 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_62 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push64_conv_generic474 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_64 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_64 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_64 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_w_idx_38_push60_conv_generic460 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250_or : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_60 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic430 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_feedback_stall_in_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_out_59 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer122_conv_generic438 is
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


    component i_syncbuf_h_sync_buffer123_conv_generic414 is
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


    component i_syncbuf_in_c_sync_buffer127_conv_generic412 is
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


    component i_syncbuf_in_c_sync_buffer_conv_generic453 is
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


    component i_syncbuf_pad_sync_buffer153_conv_generic440 is
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


    component i_syncbuf_pad_sync_buffer154_conv_generic416 is
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


    component i_syncbuf_stride_sync_buffer148_conv_generic443 is
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


    component i_syncbuf_w_sync_buffer117_conv_generic448 is
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


    component i_syncbuf_w_sync_buffer118_conv_generic419 is
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
    signal bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm_rm_rm71_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm_rm_rm63_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next159_conv_generic_sel_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal bgTrunc_i_select331_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm_rm_rm72_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm_rm_rm65_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_unnamed_conv_generic462_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_1gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i3_1gr_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr_rm_rm_rm80_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic463_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i3_1gr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_forked268279_pop63_conv_generic_out_feedback_stall_out_63 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_notexit254281_pop65_conv_generic_out_feedback_stall_out_65 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop61_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop61_conv_generic_out_feedback_stall_out_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop62_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop62_conv_generic_out_feedback_stall_out_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop64_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop64_conv_generic_out_feedback_stall_out_64 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_feedback_stall_out_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_data_out : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_feedback_stall_out_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_forked268279_push63_conv_generic_out_feedback_out_63 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_forked268279_push63_conv_generic_out_feedback_valid_out_63 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexit254281_push65_conv_generic_out_feedback_out_65 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexit254281_push65_conv_generic_out_feedback_valid_out_65 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond249_conv_generic_out_feedback_out_10 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond249_conv_generic_out_feedback_valid_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push61_conv_generic_out_feedback_out_61 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push61_conv_generic_out_feedback_valid_out_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push62_conv_generic_out_feedback_out_62 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push62_conv_generic_out_feedback_valid_out_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push64_conv_generic_out_feedback_out_64 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push64_conv_generic_out_feedback_valid_out_64 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_w_idx_38_push60_conv_generic_out_feedback_out_60 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_w_idx_38_push60_conv_generic_out_feedback_valid_out_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic_out_feedback_out_59 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic_out_feedback_valid_out_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add11_rm_rm87_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm87_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm87_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm87_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm71_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm71_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm71_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm71_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm84_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm84_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm84_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm84_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm82_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm82_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm82_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm82_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm63_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm63_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm63_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm63_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm76_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm76_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm76_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm76_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp4425_rm83_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4425_rm83_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4425_rm83_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4425_rm83_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp4717_rm88_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4717_rm88_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4717_rm88_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4717_rm88_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp653_rm89_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp653_rm89_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp653_rm89_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp653_rm89_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_rm_rm_rm79_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_forked267_and_conv_generic_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_forked267_and_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next159_conv_generic_a : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next159_conv_generic_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next159_conv_generic_o : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next159_conv_generic_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_mul_rm_rm_rm64_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_rm_rm64_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_mul_rm_rm_rm77_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_rm_rm77_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_notexit250_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit250_demorgan_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit250_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select331_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_select331_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_select331_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_select331_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_shr_rm_rm_rm80_conv_generic_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_rm_rm_rm80_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_rm_rm_rm80_conv_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_rm_rm_rm72_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm72_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm72_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm72_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm85_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm85_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm85_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm85_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm65_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm65_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm65_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm65_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm78_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm78_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm78_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm78_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer122_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_h_sync_buffer123_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer127_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer153_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer154_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer148_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer117_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer118_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic421_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic452_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic456_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic456_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic457_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic457_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic462_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic462_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic462_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic462_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic463_vt_join_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_conv_generic463_vt_select_31_b : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid172_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid174_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid175_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid180_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid182_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid183_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid192_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid201_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond160_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic422_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit250_demorgan_conv_generic_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_notexit250_conv_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_notexit250_conv_generic_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i1_pop64_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i1_pop64_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_pop_i1_pop62_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_acl_pop_i1_pop62_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i1_pop61_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i1_pop61_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_sync_in_aunroll_x_in_c0_eni6_1_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sync_in_aunroll_x_in_c0_eni6_2_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist21_bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist22_bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist23_bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist15_sync_in_aunroll_x_in_i_valid_1(DELAY,238)
    redist15_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist15_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_i_valid_4(DELAY,239)
    redist16_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist15_sync_in_aunroll_x_in_i_valid_1_q, xout => redist16_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist17_sync_in_aunroll_x_in_i_valid_5(DELAY,240)
    redist17_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_4_q, xout => redist17_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist18_sync_in_aunroll_x_in_i_valid_6(DELAY,241)
    redist18_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_5_q, xout => redist18_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x(BITSELECT,190)@1
    leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_in <= i_syncbuf_pad_sync_buffer154_conv_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_b <= leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid192_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x(BITJOIN,191)@1
    leftShiftStage0Idx1_uid192_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q <= leftShiftStage0Idx1Rng1_uid191_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer154_conv_generic(BLACKBOX,141)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer154_conv_generic : i_syncbuf_pad_sync_buffer154_conv_generic416
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer154_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x(MUX,193)@1
    leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_s <= VCC_q;
    leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_combproc: PROCESS (leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_s, i_syncbuf_pad_sync_buffer154_conv_generic_out_buffer_out, leftShiftStage0Idx1_uid192_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q <= i_syncbuf_pad_sync_buffer154_conv_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q <= leftShiftStage0Idx1_uid192_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_rm_rm64_conv_generic_vt_select_31(BITSELECT,120)@1
    i_mul_rm_rm_rm64_conv_generic_vt_select_31_b <= leftShiftStage0_uid194_i_mul_rm_rm_rm64_conv_generic_conv_generic418_shift_x_q(31 downto 1);

    -- i_mul_rm_rm_rm64_conv_generic_vt_join(BITJOIN,119)@1
    i_mul_rm_rm_rm64_conv_generic_vt_join_q <= i_mul_rm_rm_rm64_conv_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,85)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer123_conv_generic(BLACKBOX,137)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer123_conv_generic : i_syncbuf_h_sync_buffer123_conv_generic414
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer123_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm_rm_rm63_conv_generic(ADD,109)@1
    i_add_rm_rm_rm63_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer123_conv_generic_out_buffer_out);
    i_add_rm_rm_rm63_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm_rm_rm63_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm_rm_rm63_conv_generic_a) + UNSIGNED(i_add_rm_rm_rm63_conv_generic_b));
    i_add_rm_rm_rm63_conv_generic_q <= i_add_rm_rm_rm63_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm_rm_rm63_conv_generic_sel_x(BITSELECT,6)@1
    bgTrunc_i_add_rm_rm_rm63_conv_generic_sel_x_b <= i_add_rm_rm_rm63_conv_generic_q(31 downto 0);

    -- i_sub_rm_rm_rm65_conv_generic(ADD,134)@1
    i_sub_rm_rm_rm65_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add_rm_rm_rm63_conv_generic_sel_x_b);
    i_sub_rm_rm_rm65_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm64_conv_generic_vt_join_q);
    i_sub_rm_rm_rm65_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm_rm_rm65_conv_generic_a) + UNSIGNED(i_sub_rm_rm_rm65_conv_generic_b));
    i_sub_rm_rm_rm65_conv_generic_q <= i_sub_rm_rm_rm65_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm_rm_rm65_conv_generic_sel_x(BITSELECT,12)@1
    bgTrunc_i_sub_rm_rm_rm65_conv_generic_sel_x_b <= i_sub_rm_rm_rm65_conv_generic_q(31 downto 0);

    -- i_syncbuf_w_sync_buffer118_conv_generic(BLACKBOX,144)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer118_conv_generic : i_syncbuf_w_sync_buffer118_conv_generic419
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer118_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_rm_rm71_conv_generic(ADD,106)@1
    i_add2_rm_rm_rm71_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer118_conv_generic_out_buffer_out);
    i_add2_rm_rm_rm71_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_rm_rm71_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_rm_rm71_conv_generic_a) + UNSIGNED(i_add2_rm_rm_rm71_conv_generic_b));
    i_add2_rm_rm_rm71_conv_generic_q <= i_add2_rm_rm_rm71_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_rm_rm71_conv_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add2_rm_rm_rm71_conv_generic_sel_x_b <= i_add2_rm_rm_rm71_conv_generic_q(31 downto 0);

    -- i_sub3_rm_rm_rm72_conv_generic(ADD,132)@1
    i_sub3_rm_rm_rm72_conv_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm_rm_rm71_conv_generic_sel_x_b);
    i_sub3_rm_rm_rm72_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm64_conv_generic_vt_join_q);
    i_sub3_rm_rm_rm72_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_rm_rm72_conv_generic_a) + UNSIGNED(i_sub3_rm_rm_rm72_conv_generic_b));
    i_sub3_rm_rm_rm72_conv_generic_q <= i_sub3_rm_rm_rm72_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_rm_rm72_conv_generic_sel_x(BITSELECT,10)@1
    bgTrunc_i_sub3_rm_rm_rm72_conv_generic_sel_x_b <= i_sub3_rm_rm_rm72_conv_generic_q(31 downto 0);

    -- i_unnamed_conv_generic421(LOGICAL,145)@1
    i_unnamed_conv_generic421_q <= bgTrunc_i_sub3_rm_rm_rm72_conv_generic_sel_x_b or bgTrunc_i_sub_rm_rm_rm65_conv_generic_sel_x_b;

    -- i_unnamed_conv_generic422_cmp_sign(LOGICAL,221)@1
    i_unnamed_conv_generic422_cmp_sign_q <= STD_LOGIC_VECTOR(i_unnamed_conv_generic421_q(31 downto 31));

    -- dupName_0_c_i3_1gr_x(CONSTANT,17)
    dupName_0_c_i3_1gr_x_q <= "111";

    -- i_fpgaindvars_iv_next159_conv_generic(ADD,117)@1
    i_fpgaindvars_iv_next159_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_data_out);
    i_fpgaindvars_iv_next159_conv_generic_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i3_1gr_x_q);
    i_fpgaindvars_iv_next159_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next159_conv_generic_a) + UNSIGNED(i_fpgaindvars_iv_next159_conv_generic_b));
    i_fpgaindvars_iv_next159_conv_generic_q <= i_fpgaindvars_iv_next159_conv_generic_o(3 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next159_conv_generic_sel_x(BITSELECT,8)@1
    bgTrunc_i_fpgaindvars_iv_next159_conv_generic_sel_x_b <= i_fpgaindvars_iv_next159_conv_generic_q(2 downto 0);

    -- i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic(BLACKBOX,104)@1
    -- out out_feedback_out_59@20000000
    -- out out_feedback_valid_out_59@20000000
    thei_acl_push_i3_fpgaindvars_iv158_push59_conv_generic : i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic430
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next159_conv_generic_sel_x_b,
        in_feedback_stall_in_59 => i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_feedback_stall_out_59,
        in_notexit250 => i_notexit250_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_59 => i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic_out_feedback_out_59,
        out_feedback_valid_out_59 => i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic_out_feedback_valid_out_59,
        clock => clock,
        resetn => resetn
    );

    -- c_i3_1gr(CONSTANT,87)
    c_i3_1gr_q <= "001";

    -- i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic(BLACKBOX,96)@1
    -- out out_feedback_stall_out_59@20000000
    thei_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic : i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic424
    PORT MAP (
        in_data_in => c_i3_1gr_q,
        in_dir => in_c0_eni6_2,
        in_feedback_in_59 => i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic_out_feedback_out_59,
        in_feedback_valid_in_59 => i_acl_push_i3_fpgaindvars_iv158_push59_conv_generic_out_feedback_valid_out_59,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_data_out,
        out_feedback_stall_out_59 => i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_feedback_stall_out_59,
        clock => clock,
        resetn => resetn
    );

    -- i_exitcond160_conv_generic_cmp_sign(LOGICAL,219)@1
    i_exitcond160_conv_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_acl_pop_i3_fpgaindvars_iv158_pop59_conv_generic_out_data_out(2 downto 2));

    -- i_notexit250_demorgan_conv_generic(LOGICAL,125)@1
    i_notexit250_demorgan_conv_generic_q <= i_exitcond160_conv_generic_cmp_sign_q or i_unnamed_conv_generic422_cmp_sign_q;

    -- i_notexit250_conv_generic(LOGICAL,124)@1
    i_notexit250_conv_generic_q <= i_notexit250_demorgan_conv_generic_q xor VCC_q;

    -- redist2_i_notexit250_conv_generic_q_1(DELAY,225)
    redist2_i_notexit250_conv_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit250_conv_generic_q, xout => redist2_i_notexit250_conv_generic_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push64_conv_generic(BLACKBOX,102)@2
    -- out out_feedback_out_64@20000000
    -- out out_feedback_valid_out_64@20000000
    thei_acl_push_i1_push64_conv_generic : i_acl_push_i1_push64_conv_generic474
    PORT MAP (
        in_data_in => redist4_i_acl_pop_i1_pop64_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_64 => i_acl_pop_i1_pop64_conv_generic_out_feedback_stall_out_64,
        in_notexit250 => redist2_i_notexit250_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_64 => i_acl_push_i1_push64_conv_generic_out_feedback_out_64,
        out_feedback_valid_out_64 => i_acl_push_i1_push64_conv_generic_out_feedback_valid_out_64,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop64_conv_generic(BLACKBOX,94)@1
    -- out out_feedback_stall_out_64@20000000
    thei_acl_pop_i1_pop64_conv_generic : i_acl_pop_i1_pop64_conv_generic472
    PORT MAP (
        in_data_in => in_c0_eni6_6,
        in_dir => in_c0_eni6_2,
        in_feedback_in_64 => i_acl_push_i1_push64_conv_generic_out_feedback_out_64,
        in_feedback_valid_in_64 => i_acl_push_i1_push64_conv_generic_out_feedback_valid_out_64,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop64_conv_generic_out_data_out,
        out_feedback_stall_out_64 => i_acl_pop_i1_pop64_conv_generic_out_feedback_stall_out_64,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pop_i1_pop64_conv_generic_out_data_out_1(DELAY,227)
    redist4_i_acl_pop_i1_pop64_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop64_conv_generic_out_data_out, xout => redist4_i_acl_pop_i1_pop64_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist5_i_acl_pop_i1_pop64_conv_generic_out_data_out_6(DELAY,228)
    redist5_i_acl_pop_i1_pop64_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_acl_pop_i1_pop64_conv_generic_out_data_out_1_q, xout => redist5_i_acl_pop_i1_pop64_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push62_conv_generic(BLACKBOX,101)@2
    -- out out_feedback_out_62@20000000
    -- out out_feedback_valid_out_62@20000000
    thei_acl_push_i1_push62_conv_generic : i_acl_push_i1_push62_conv_generic470
    PORT MAP (
        in_data_in => redist6_i_acl_pop_i1_pop62_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_62 => i_acl_pop_i1_pop62_conv_generic_out_feedback_stall_out_62,
        in_notexit250 => redist2_i_notexit250_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_62 => i_acl_push_i1_push62_conv_generic_out_feedback_out_62,
        out_feedback_valid_out_62 => i_acl_push_i1_push62_conv_generic_out_feedback_valid_out_62,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop62_conv_generic(BLACKBOX,93)@1
    -- out out_feedback_stall_out_62@20000000
    thei_acl_pop_i1_pop62_conv_generic : i_acl_pop_i1_pop62_conv_generic468
    PORT MAP (
        in_data_in => in_c0_eni6_5,
        in_dir => in_c0_eni6_2,
        in_feedback_in_62 => i_acl_push_i1_push62_conv_generic_out_feedback_out_62,
        in_feedback_valid_in_62 => i_acl_push_i1_push62_conv_generic_out_feedback_valid_out_62,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop62_conv_generic_out_data_out,
        out_feedback_stall_out_62 => i_acl_pop_i1_pop62_conv_generic_out_feedback_stall_out_62,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_pop_i1_pop62_conv_generic_out_data_out_1(DELAY,229)
    redist6_i_acl_pop_i1_pop62_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop62_conv_generic_out_data_out, xout => redist6_i_acl_pop_i1_pop62_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist7_i_acl_pop_i1_pop62_conv_generic_out_data_out_6(DELAY,230)
    redist7_i_acl_pop_i1_pop62_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist6_i_acl_pop_i1_pop62_conv_generic_out_data_out_1_q, xout => redist7_i_acl_pop_i1_pop62_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push61_conv_generic(BLACKBOX,100)@2
    -- out out_feedback_out_61@20000000
    -- out out_feedback_valid_out_61@20000000
    thei_acl_push_i1_push61_conv_generic : i_acl_push_i1_push61_conv_generic466
    PORT MAP (
        in_data_in => redist8_i_acl_pop_i1_pop61_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_61 => i_acl_pop_i1_pop61_conv_generic_out_feedback_stall_out_61,
        in_notexit250 => redist2_i_notexit250_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_61 => i_acl_push_i1_push61_conv_generic_out_feedback_out_61,
        out_feedback_valid_out_61 => i_acl_push_i1_push61_conv_generic_out_feedback_valid_out_61,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop61_conv_generic(BLACKBOX,92)@1
    -- out out_feedback_stall_out_61@20000000
    thei_acl_pop_i1_pop61_conv_generic : i_acl_pop_i1_pop61_conv_generic464
    PORT MAP (
        in_data_in => in_c0_eni6_4,
        in_dir => in_c0_eni6_2,
        in_feedback_in_61 => i_acl_push_i1_push61_conv_generic_out_feedback_out_61,
        in_feedback_valid_in_61 => i_acl_push_i1_push61_conv_generic_out_feedback_valid_out_61,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop61_conv_generic_out_data_out,
        out_feedback_stall_out_61 => i_acl_pop_i1_pop61_conv_generic_out_feedback_stall_out_61,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_acl_pop_i1_pop61_conv_generic_out_data_out_1(DELAY,231)
    redist8_i_acl_pop_i1_pop61_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop61_conv_generic_out_data_out, xout => redist8_i_acl_pop_i1_pop61_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist9_i_acl_pop_i1_pop61_conv_generic_out_data_out_6(DELAY,232)
    redist9_i_acl_pop_i1_pop61_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist8_i_acl_pop_i1_pop61_conv_generic_out_data_out_1_q, xout => redist9_i_acl_pop_i1_pop61_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- dupName_0_c_i32_1gr_x(CONSTANT,16)
    dupName_0_c_i32_1gr_x_q <= "11111111111111111111111111111111";

    -- i_syncbuf_in_c_sync_buffer127_conv_generic(BLACKBOX,138)@0
    -- in in_i_dependence@7
    -- in in_valid_in@7
    -- out out_buffer_out@7
    -- out out_valid_out@7
    thei_syncbuf_in_c_sync_buffer127_conv_generic : i_syncbuf_in_c_sync_buffer127_conv_generic412
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_6_q,
        out_buffer_out => i_syncbuf_in_c_sync_buffer127_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_conv_generic462(ADD,151)@7
    i_unnamed_conv_generic462_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_in_c_sync_buffer127_conv_generic_out_buffer_out);
    i_unnamed_conv_generic462_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i32_1gr_x_q);
    i_unnamed_conv_generic462_o <= STD_LOGIC_VECTOR(UNSIGNED(i_unnamed_conv_generic462_a) + UNSIGNED(i_unnamed_conv_generic462_b));
    i_unnamed_conv_generic462_q <= i_unnamed_conv_generic462_o(32 downto 0);

    -- bgTrunc_i_unnamed_conv_generic462_sel_x(BITSELECT,14)@7
    bgTrunc_i_unnamed_conv_generic462_sel_x_b <= i_unnamed_conv_generic462_q(31 downto 0);

    -- i_unnamed_conv_generic463_sel_x(BITSELECT,64)@7
    i_unnamed_conv_generic463_sel_x_b <= std_logic_vector(resize(unsigned(bgTrunc_i_unnamed_conv_generic462_sel_x_b(31 downto 0)), 33));

    -- i_unnamed_conv_generic463_vt_select_31(BITSELECT,155)@7
    i_unnamed_conv_generic463_vt_select_31_b <= i_unnamed_conv_generic463_sel_x_b(31 downto 0);

    -- i_unnamed_conv_generic463_vt_join(BITJOIN,154)@7
    i_unnamed_conv_generic463_vt_join_q <= GND_q & i_unnamed_conv_generic463_vt_select_31_b;

    -- i_notexit250_or_conv_generic(LOGICAL,126)@7
    i_notexit250_or_conv_generic_q <= redist11_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_6_q or redist3_i_notexit250_conv_generic_q_6_q;

    -- i_syncbuf_in_c_sync_buffer_conv_generic(BLACKBOX,139)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_in_c_sync_buffer_conv_generic : i_syncbuf_in_c_sync_buffer_conv_generic453
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_in_c_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp653_rm89_conv_generic(COMPARE,113)@5 + 1
    i_cmp653_rm89_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp653_rm89_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_in_c_sync_buffer_conv_generic_out_buffer_out(31)) & i_syncbuf_in_c_sync_buffer_conv_generic_out_buffer_out));
    i_cmp653_rm89_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp653_rm89_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp653_rm89_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp653_rm89_conv_generic_a) - SIGNED(i_cmp653_rm89_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp653_rm89_conv_generic_c(0) <= i_cmp653_rm89_conv_generic_o(33);

    -- c_i32_1gr(CONSTANT,83)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- xMSB_uid172_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x(BITSELECT,171)@3
    xMSB_uid172_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b <= STD_LOGIC_VECTOR(redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid174_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x(BITSELECT,173)@3
    rightShiftStage0Idx1Rng1_uid174_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b <= redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid175_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x(BITJOIN,174)@3
    rightShiftStage0Idx1_uid175_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q <= xMSB_uid172_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b & rightShiftStage0Idx1Rng1_uid174_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b;

    -- leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x(BITSELECT,199)@2
    leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_in <= i_syncbuf_pad_sync_buffer153_conv_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_b <= leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid201_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x(BITJOIN,200)@2
    leftShiftStage0Idx1_uid201_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q <= leftShiftStage0Idx1Rng1_uid200_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer153_conv_generic(BLACKBOX,140)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_pad_sync_buffer153_conv_generic : i_syncbuf_pad_sync_buffer153_conv_generic440
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_pad_sync_buffer153_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x(MUX,202)@2
    leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_s <= VCC_q;
    leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_combproc: PROCESS (leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_s, i_syncbuf_pad_sync_buffer153_conv_generic_out_buffer_out, leftShiftStage0Idx1_uid201_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q <= i_syncbuf_pad_sync_buffer153_conv_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q <= leftShiftStage0Idx1_uid201_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_rm_rm77_conv_generic_vt_select_31(BITSELECT,123)@2
    i_mul_rm_rm_rm77_conv_generic_vt_select_31_b <= leftShiftStage0_uid203_i_mul_rm_rm_rm77_conv_generic_conv_generic442_shift_x_q(31 downto 1);

    -- i_mul_rm_rm_rm77_conv_generic_vt_join(BITJOIN,122)@2
    i_mul_rm_rm_rm77_conv_generic_vt_join_q <= i_mul_rm_rm_rm77_conv_generic_vt_select_31_b & GND_q;

    -- i_syncbuf_w_sync_buffer117_conv_generic(BLACKBOX,143)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer117_conv_generic : i_syncbuf_w_sync_buffer117_conv_generic448
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer117_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_rm_rm84_conv_generic(ADD,107)@1
    i_add2_rm_rm_rm84_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer117_conv_generic_out_buffer_out);
    i_add2_rm_rm_rm84_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_rm_rm84_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_rm_rm84_conv_generic_a) + UNSIGNED(i_add2_rm_rm_rm84_conv_generic_b));
    i_add2_rm_rm_rm84_conv_generic_q <= i_add2_rm_rm_rm84_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b <= i_add2_rm_rm_rm84_conv_generic_q(31 downto 0);

    -- redist23_bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b_1(DELAY,246)
    redist23_bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b, xout => redist23_bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub3_rm_rm_rm85_conv_generic(ADD,133)@2
    i_sub3_rm_rm_rm85_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist23_bgTrunc_i_add2_rm_rm_rm84_conv_generic_sel_x_b_1_q);
    i_sub3_rm_rm_rm85_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm77_conv_generic_vt_join_q);
    i_sub3_rm_rm_rm85_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_rm_rm85_conv_generic_a) + UNSIGNED(i_sub3_rm_rm_rm85_conv_generic_b));
    i_sub3_rm_rm_rm85_conv_generic_q <= i_sub3_rm_rm_rm85_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x(BITSELECT,11)@2
    bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b <= i_sub3_rm_rm_rm85_conv_generic_q(31 downto 0);

    -- redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1(DELAY,243)
    redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b, xout => redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_shr_rm_rm_rm80_conv_generic_vt_const_31(CONSTANT,129)
    i_shr_rm_rm_rm80_conv_generic_vt_const_31_q <= "0000000000000000000000000000000";

    -- c_i32_2gr(CONSTANT,84)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_syncbuf_stride_sync_buffer148_conv_generic(BLACKBOX,142)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_stride_sync_buffer148_conv_generic : i_syncbuf_stride_sync_buffer148_conv_generic443
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer148_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_rm_rm_rm79_conv_generic(LOGICAL,114)@2
    i_cmp_rm_rm_rm79_conv_generic_q <= "1" WHEN i_syncbuf_stride_sync_buffer148_conv_generic_out_buffer_out = c_i32_2gr_q ELSE "0";

    -- i_shr_rm_rm_rm80_conv_generic_sel_x(BITSELECT,63)@2
    i_shr_rm_rm_rm80_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp_rm_rm_rm79_conv_generic_q(0 downto 0)), 32));

    -- i_shr_rm_rm_rm80_conv_generic_vt_select_0(BITSELECT,131)@2
    i_shr_rm_rm_rm80_conv_generic_vt_select_0_b <= i_shr_rm_rm_rm80_conv_generic_sel_x_b(0 downto 0);

    -- i_shr_rm_rm_rm80_conv_generic_vt_join(BITJOIN,130)@2
    i_shr_rm_rm_rm80_conv_generic_vt_join_q <= i_shr_rm_rm_rm80_conv_generic_vt_const_31_q & i_shr_rm_rm_rm80_conv_generic_vt_select_0_b;

    -- i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_narrow_x(BITSELECT,48)@2
    i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_narrow_x_b <= i_shr_rm_rm_rm80_conv_generic_vt_join_q(4 downto 0);

    -- rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x(BITSELECT,175)@2
    rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_in <= i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_narrow_x_b(0 downto 0);
    rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b <= rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_in(0 downto 0);

    -- redist0_rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b_1(DELAY,223)
    redist0_rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b, xout => redist0_rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x(MUX,176)@3 + 1
    rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_s <= redist0_rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b_1_q;
    rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q <= redist20_bgTrunc_i_sub3_rm_rm_rm85_conv_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q <= rightShiftStage0Idx1_uid175_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add11_rm_rm87_conv_generic(ADD,105)@4
    i_add11_rm_rm87_conv_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid177_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_q);
    i_add11_rm_rm87_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add11_rm_rm87_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_rm_rm87_conv_generic_a) + UNSIGNED(i_add11_rm_rm87_conv_generic_b));
    i_add11_rm_rm87_conv_generic_q <= i_add11_rm_rm87_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add11_rm_rm87_conv_generic_sel_x(BITSELECT,2)@4
    bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b <= i_add11_rm_rm87_conv_generic_q(31 downto 0);

    -- redist24_bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b_1(DELAY,247)
    redist24_bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b, xout => redist24_bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp4717_rm88_conv_generic(COMPARE,112)@5 + 1
    i_cmp4717_rm88_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp4717_rm88_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist24_bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b_1_q(31)) & redist24_bgTrunc_i_add11_rm_rm87_conv_generic_sel_x_b_1_q));
    i_cmp4717_rm88_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp4717_rm88_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp4717_rm88_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp4717_rm88_conv_generic_a) - SIGNED(i_cmp4717_rm88_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp4717_rm88_conv_generic_c(0) <= i_cmp4717_rm88_conv_generic_o(33);

    -- xMSB_uid180_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x(BITSELECT,179)@3
    xMSB_uid180_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_b <= STD_LOGIC_VECTOR(redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid182_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x(BITSELECT,181)@3
    rightShiftStage0Idx1Rng1_uid182_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_b <= redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid183_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x(BITJOIN,182)@3
    rightShiftStage0Idx1_uid183_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q <= xMSB_uid180_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_b & rightShiftStage0Idx1Rng1_uid182_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_b;

    -- i_syncbuf_h_sync_buffer122_conv_generic(BLACKBOX,136)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer122_conv_generic : i_syncbuf_h_sync_buffer122_conv_generic438
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer122_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm_rm_rm76_conv_generic(ADD,110)@1
    i_add_rm_rm_rm76_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer122_conv_generic_out_buffer_out);
    i_add_rm_rm_rm76_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm_rm_rm76_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm_rm_rm76_conv_generic_a) + UNSIGNED(i_add_rm_rm_rm76_conv_generic_b));
    i_add_rm_rm_rm76_conv_generic_q <= i_add_rm_rm_rm76_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x(BITSELECT,7)@1
    bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b <= i_add_rm_rm_rm76_conv_generic_q(31 downto 0);

    -- redist21_bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b_1(DELAY,244)
    redist21_bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b, xout => redist21_bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub_rm_rm_rm78_conv_generic(ADD,135)@2
    i_sub_rm_rm_rm78_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist21_bgTrunc_i_add_rm_rm_rm76_conv_generic_sel_x_b_1_q);
    i_sub_rm_rm_rm78_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm77_conv_generic_vt_join_q);
    i_sub_rm_rm_rm78_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm_rm_rm78_conv_generic_a) + UNSIGNED(i_sub_rm_rm_rm78_conv_generic_b));
    i_sub_rm_rm_rm78_conv_generic_q <= i_sub_rm_rm_rm78_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x(BITSELECT,13)@2
    bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b <= i_sub_rm_rm_rm78_conv_generic_q(31 downto 0);

    -- redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1(DELAY,242)
    redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b, xout => redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x(MUX,184)@3 + 1
    rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_s <= redist0_rightShiftStageSel0Dto0_uid176_i_cond10_rm_rm_rm86_conv_generic_conv_generic450_shift_x_b_1_q;
    rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q <= redist19_bgTrunc_i_sub_rm_rm_rm78_conv_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q <= rightShiftStage0Idx1_uid183_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add4_rm_rm82_conv_generic(ADD,108)@4
    i_add4_rm_rm82_conv_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid185_i_cond_rm_rm_rm81_conv_generic_conv_generic446_shift_x_q);
    i_add4_rm_rm82_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add4_rm_rm82_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add4_rm_rm82_conv_generic_a) + UNSIGNED(i_add4_rm_rm82_conv_generic_b));
    i_add4_rm_rm82_conv_generic_q <= i_add4_rm_rm82_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add4_rm_rm82_conv_generic_sel_x(BITSELECT,5)@4
    bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b <= i_add4_rm_rm82_conv_generic_q(31 downto 0);

    -- redist22_bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b_1(DELAY,245)
    redist22_bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b, xout => redist22_bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp4425_rm83_conv_generic(COMPARE,111)@5 + 1
    i_cmp4425_rm83_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp4425_rm83_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist22_bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b_1_q(31)) & redist22_bgTrunc_i_add4_rm_rm82_conv_generic_sel_x_b_1_q));
    i_cmp4425_rm83_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp4425_rm83_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp4425_rm83_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp4425_rm83_conv_generic_a) - SIGNED(i_cmp4425_rm83_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp4425_rm83_conv_generic_c(0) <= i_cmp4425_rm83_conv_generic_o(33);

    -- i_unnamed_conv_generic452(LOGICAL,148)@6
    i_unnamed_conv_generic452_q <= i_cmp4425_rm83_conv_generic_c and i_cmp4717_rm88_conv_generic_c;

    -- i_unnamed_conv_generic456(LOGICAL,149)@6 + 1
    i_unnamed_conv_generic456_qi <= i_unnamed_conv_generic452_q and i_cmp653_rm89_conv_generic_c;
    i_unnamed_conv_generic456_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic456_qi, xout => i_unnamed_conv_generic456_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv_generic457(MUX,150)@7
    i_unnamed_conv_generic457_s <= i_unnamed_conv_generic456_q;
    i_unnamed_conv_generic457_combproc: PROCESS (i_unnamed_conv_generic457_s, c_i32_0gr_q, i_syncbuf_in_c_sync_buffer127_conv_generic_out_buffer_out)
    BEGIN
        CASE (i_unnamed_conv_generic457_s) IS
            WHEN "0" => i_unnamed_conv_generic457_q <= c_i32_0gr_q;
            WHEN "1" => i_unnamed_conv_generic457_q <= i_syncbuf_in_c_sync_buffer127_conv_generic_out_buffer_out;
            WHEN OTHERS => i_unnamed_conv_generic457_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_select331_conv_generic(ADD,127)@7
    i_select331_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_data_out);
    i_select331_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_unnamed_conv_generic457_q);
    i_select331_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_select331_conv_generic_a) + UNSIGNED(i_select331_conv_generic_b));
    i_select331_conv_generic_q <= i_select331_conv_generic_o(32 downto 0);

    -- bgTrunc_i_select331_conv_generic_sel_x(BITSELECT,9)@7
    bgTrunc_i_select331_conv_generic_sel_x_b <= i_select331_conv_generic_q(31 downto 0);

    -- i_acl_push_i32_w_idx_38_push60_conv_generic(BLACKBOX,103)@7
    -- out out_feedback_out_60@20000000
    -- out out_feedback_valid_out_60@20000000
    thei_acl_push_i32_w_idx_38_push60_conv_generic : i_acl_push_i32_w_idx_38_push60_conv_generic460
    PORT MAP (
        in_data_in => bgTrunc_i_select331_conv_generic_sel_x_b,
        in_feedback_stall_in_60 => i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_feedback_stall_out_60,
        in_notexit250_or => i_notexit250_or_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_60 => i_acl_push_i32_w_idx_38_push60_conv_generic_out_feedback_out_60,
        out_feedback_valid_out_60 => i_acl_push_i32_w_idx_38_push60_conv_generic_out_feedback_valid_out_60,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_forked268279_push63_conv_generic(BLACKBOX,97)@7
    -- out out_feedback_out_63@20000000
    -- out out_feedback_valid_out_63@20000000
    thei_acl_push_i1_forked268279_push63_conv_generic : i_acl_push_i1_forked268279_push63_conv_generic428
    PORT MAP (
        in_data_in => redist12_i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_63 => i_acl_pop_i1_forked268279_pop63_conv_generic_out_feedback_stall_out_63,
        in_notexit250 => redist3_i_notexit250_conv_generic_q_6_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_63 => i_acl_push_i1_forked268279_push63_conv_generic_out_feedback_out_63,
        out_feedback_valid_out_63 => i_acl_push_i1_forked268279_push63_conv_generic_out_feedback_valid_out_63,
        clock => clock,
        resetn => resetn
    );

    -- redist13_sync_in_aunroll_x_in_c0_eni6_1_5(DELAY,236)
    redist13_sync_in_aunroll_x_in_c0_eni6_1_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni6_1, xout => redist13_sync_in_aunroll_x_in_c0_eni6_1_5_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i1_forked268279_pop63_conv_generic(BLACKBOX,90)@6
    -- out out_feedback_stall_out_63@20000000
    thei_acl_pop_i1_forked268279_pop63_conv_generic : i_acl_pop_i1_forked268279_pop63_conv_generic408
    PORT MAP (
        in_data_in => redist13_sync_in_aunroll_x_in_c0_eni6_1_5_q,
        in_dir => redist14_sync_in_aunroll_x_in_c0_eni6_2_5_q,
        in_feedback_in_63 => i_acl_push_i1_forked268279_push63_conv_generic_out_feedback_out_63,
        in_feedback_valid_in_63 => i_acl_push_i1_forked268279_push63_conv_generic_out_feedback_valid_out_63,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out,
        out_feedback_stall_out_63 => i_acl_pop_i1_forked268279_pop63_conv_generic_out_feedback_stall_out_63,
        clock => clock,
        resetn => resetn
    );

    -- redist14_sync_in_aunroll_x_in_c0_eni6_2_5(DELAY,237)
    redist14_sync_in_aunroll_x_in_c0_eni6_2_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni6_2, xout => redist14_sync_in_aunroll_x_in_c0_eni6_2_5_q, clk => clock, aclr => resetn );

    -- i_forked267_and_conv_generic(LOGICAL,116)@6 + 1
    i_forked267_and_conv_generic_qi <= redist14_sync_in_aunroll_x_in_c0_eni6_2_5_q and i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out;
    i_forked267_and_conv_generic_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_forked267_and_conv_generic_qi, xout => i_forked267_and_conv_generic_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,82)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_w_idx_38_pop60_conv_generic(BLACKBOX,95)@7
    -- out out_feedback_stall_out_60@20000000
    thei_acl_pop_i32_w_idx_38_pop60_conv_generic : i_acl_pop_i32_w_idx_38_pop60_conv_generic458
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => i_forked267_and_conv_generic_q,
        in_feedback_in_60 => i_acl_push_i32_w_idx_38_push60_conv_generic_out_feedback_out_60,
        in_feedback_valid_in_60 => i_acl_push_i32_w_idx_38_push60_conv_generic_out_feedback_valid_out_60,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_6_q,
        out_data_out => i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_data_out,
        out_feedback_stall_out_60 => i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_feedback_stall_out_60,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i1_notexit254281_push65_conv_generic(BLACKBOX,98)@2
    -- out out_feedback_out_65@20000000
    -- out out_feedback_valid_out_65@20000000
    thei_acl_push_i1_notexit254281_push65_conv_generic : i_acl_push_i1_notexit254281_push65_conv_generic434
    PORT MAP (
        in_data_in => redist10_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_65 => i_acl_pop_i1_notexit254281_pop65_conv_generic_out_feedback_stall_out_65,
        in_notexit250 => redist2_i_notexit250_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist15_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_65 => i_acl_push_i1_notexit254281_push65_conv_generic_out_feedback_out_65,
        out_feedback_valid_out_65 => i_acl_push_i1_notexit254281_push65_conv_generic_out_feedback_valid_out_65,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_notexit254281_pop65_conv_generic(BLACKBOX,91)@1
    -- out out_feedback_stall_out_65@20000000
    thei_acl_pop_i1_notexit254281_pop65_conv_generic : i_acl_pop_i1_notexit254281_pop65_conv_generic432
    PORT MAP (
        in_data_in => in_c0_eni6_3,
        in_dir => in_c0_eni6_2,
        in_feedback_in_65 => i_acl_push_i1_notexit254281_push65_conv_generic_out_feedback_out_65,
        in_feedback_valid_in_65 => i_acl_push_i1_notexit254281_push65_conv_generic_out_feedback_valid_out_65,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out,
        out_feedback_stall_out_65 => i_acl_pop_i1_notexit254281_pop65_conv_generic_out_feedback_stall_out_65,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_1(DELAY,233)
    redist10_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out, xout => redist10_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist11_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_6(DELAY,234)
    redist11_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_1_q, xout => redist11_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- redist3_i_notexit250_conv_generic_q_6(DELAY,226)
    redist3_i_notexit250_conv_generic_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist2_i_notexit250_conv_generic_q_1_q, xout => redist3_i_notexit250_conv_generic_q_6_q, clk => clock, aclr => resetn );

    -- redist1_i_notexit250_demorgan_conv_generic_q_6(DELAY,224)
    redist1_i_notexit250_demorgan_conv_generic_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit250_demorgan_conv_generic_q, xout => redist1_i_notexit250_demorgan_conv_generic_q_6_q, clk => clock, aclr => resetn );

    -- redist12_i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out_1(DELAY,235)
    redist12_i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out, xout => redist12_i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,66)@7
    out_c0_exi9_0 <= GND_q;
    out_c0_exi9_1 <= redist12_i_acl_pop_i1_forked268279_pop63_conv_generic_out_data_out_1_q;
    out_c0_exi9_2 <= redist1_i_notexit250_demorgan_conv_generic_q_6_q;
    out_c0_exi9_3 <= redist3_i_notexit250_conv_generic_q_6_q;
    out_c0_exi9_4 <= redist11_i_acl_pop_i1_notexit254281_pop65_conv_generic_out_data_out_6_q;
    out_c0_exi9_5 <= i_acl_pop_i32_w_idx_38_pop60_conv_generic_out_data_out;
    out_c0_exi9_6 <= i_unnamed_conv_generic463_vt_join_q;
    out_c0_exi9_7 <= redist9_i_acl_pop_i1_pop61_conv_generic_out_data_out_6_q;
    out_c0_exi9_8 <= redist7_i_acl_pop_i1_pop62_conv_generic_out_data_out_6_q;
    out_c0_exi9_9 <= redist5_i_acl_pop_i1_pop64_conv_generic_out_data_out_6_q;
    out_o_valid <= redist18_sync_in_aunroll_x_in_i_valid_6_q;

    -- i_acl_push_i1_notexitcond249_conv_generic(BLACKBOX,99)@1
    -- out out_feedback_out_10@20000000
    -- out out_feedback_valid_out_10@20000000
    thei_acl_push_i1_notexitcond249_conv_generic : i_acl_push_i1_notexitcond249_conv_generic436
    PORT MAP (
        in_data_in => i_notexit250_conv_generic_q,
        in_feedback_stall_in_10 => i_acl_pipeline_keep_going248_conv_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_10 => i_acl_push_i1_notexitcond249_conv_generic_out_feedback_out_10,
        out_feedback_valid_out_10 => i_acl_push_i1_notexitcond249_conv_generic_out_feedback_valid_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going248_conv_generic(BLACKBOX,89)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going248_conv_generic : i_acl_pipeline_keep_going248_conv_generic410
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond249_conv_generic_out_feedback_out_10,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond249_conv_generic_out_feedback_valid_out_10,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going248_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going248_conv_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going248_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going248_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,88)
    out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going248_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going248_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,163)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going248_conv_generic_out_pipeline_valid_out;

END normal;
