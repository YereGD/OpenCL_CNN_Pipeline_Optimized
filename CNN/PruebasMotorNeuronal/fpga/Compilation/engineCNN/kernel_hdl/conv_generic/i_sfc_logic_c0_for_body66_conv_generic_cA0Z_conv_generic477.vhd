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

-- VHDL created from i_sfc_logic_c0_for_body66_conv_generic_c0_enter394_conv_generic477
-- VHDL created on Thu Apr 16 12:21:58 2026


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

entity i_sfc_logic_c0_for_body66_conv_generic_c0_enter394_conv_generic477 is
    port (
        in_c0_eni11_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_4 : in std_logic_vector(32 downto 0);  -- ufix33
        in_c0_eni11_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_7 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni11_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_10 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni11_11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi62_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_10 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_13 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_14 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_15 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_16 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_17 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_18 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_20 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_21 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_22 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_23 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_25 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_26 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_27 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_28 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_29 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_30 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_31 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_32 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_34 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_35 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_36 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_37 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_38 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_40 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_41 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_43 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_44 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_45 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_46 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_47 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_48 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_49 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_50 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_51 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_52 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_53 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_54 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_55 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi62_56 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_57 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_58 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_59 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_60 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_61 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi62_62 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going219_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going219_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body66_conv_generic_c0_enter394_conv_generic477;

architecture normal of i_sfc_logic_c0_for_body66_conv_generic_c0_enter394_conv_generic477 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going219_conv_generic489 is
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


    component i_acl_pop_i1_forked267283_pop80_conv_generic479 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_80 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_80 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_80 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_forked268280_pop77_conv_generic481 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_77 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_77 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_77 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_notexit250284_pop82_conv_generic497 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_82 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_82 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_82 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_notexit254282_pop79_conv_generic501 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_79 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_79 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_79 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop75_conv_generic608 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_75 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_75 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_75 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop76_conv_generic612 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_76 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_76 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_76 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop78_conv_generic616 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_78 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_78 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_78 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop81_conv_generic620 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_81 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_81 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_81 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_w_idx_44_pop72_conv_generic533 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_72 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_72 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_72 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic483 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_66 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_66 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_66 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_cleanups222_pop74_conv_generic485 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_74 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_74 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_74 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i4_initerations217_pop73_conv_generic505 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_73 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_73 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_stall_out_73 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_forked267283_push80_conv_generic491 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_80 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_80 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_80 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_forked268280_push77_conv_generic493 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_77 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_77 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_77 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_lastiniteration221_conv_generic512 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexit250284_push82_conv_generic499 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_82 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_82 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_82 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexit254282_push79_conv_generic503 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_79 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_79 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_79 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond229_conv_generic603 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_first_cleanup224 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_acl_push_i1_push75_conv_generic610 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_75 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_75 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_75 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push76_conv_generic614 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_76 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_76 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_76 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push78_conv_generic618 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_78 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_78 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_78 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push81_conv_generic622 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_81 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_81 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_81 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_w_idx_44_push72_conv_generic599 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_72 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_72 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_72 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic495 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_66 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_66 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_66 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_cleanups222_push74_conv_generic606 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_74 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_74 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_74 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i4_initerations217_push73_conv_generic508 is
        port (
            in_data_in : in std_logic_vector(3 downto 0);  -- Fixed Point
            in_feedback_stall_in_73 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_keep_going219 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(3 downto 0);  -- Fixed Point
            out_feedback_out_73 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_73 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer124_conv_generic514 is
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


    component i_syncbuf_in_c_sync_buffer128_conv_generic529 is
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


    component i_syncbuf_pad_sync_buffer155_conv_generic516 is
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


    component i_syncbuf_stride_sync_buffer149_conv_generic519 is
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


    component i_syncbuf_tile_channels_sync_buffer131_conv_generic536 is
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


    component i_syncbuf_tile_channels_sync_buffer132_conv_generic540 is
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


    component i_syncbuf_tile_channels_sync_buffer133_conv_generic544 is
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


    component i_syncbuf_tile_channels_sync_buffer134_conv_generic548 is
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


    component i_syncbuf_tile_channels_sync_buffer135_conv_generic552 is
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


    component i_syncbuf_tile_channels_sync_buffer136_conv_generic556 is
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


    component i_syncbuf_tile_channels_sync_buffer137_conv_generic560 is
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


    component i_syncbuf_tile_channels_sync_buffer138_conv_generic564 is
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


    component i_syncbuf_tile_channels_sync_buffer139_conv_generic568 is
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


    component i_syncbuf_tile_channels_sync_buffer140_conv_generic572 is
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


    component i_syncbuf_tile_channels_sync_buffer141_conv_generic576 is
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


    component i_syncbuf_tile_channels_sync_buffer142_conv_generic580 is
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


    component i_syncbuf_tile_channels_sync_buffer143_conv_generic584 is
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


    component i_syncbuf_tile_channels_sync_buffer144_conv_generic588 is
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


    component i_syncbuf_tile_channels_sync_buffer145_conv_generic592 is
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


    component i_syncbuf_tile_channels_sync_buffer146_conv_generic596 is
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


    component i_syncbuf_w_sync_buffer119_conv_generic524 is
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
    signal bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_conv_generic_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_inc92_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i32_3gr_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_10_conv_generic_conv_generic575_c_i64_92160_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_11_conv_generic_conv_generic579_c_i64_101376_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_12_conv_generic_conv_generic583_c_i64_110592_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_13_conv_generic_conv_generic587_c_i64_119808_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_14_conv_generic_conv_generic591_c_i64_129024_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_15_conv_generic_conv_generic595_c_i64_138240_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_1_conv_generic_conv_generic539_c_i64_9216_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_2_conv_generic_conv_generic543_c_i64_18432_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_3_conv_generic_conv_generic547_c_i64_27648_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_4_conv_generic_conv_generic551_c_i64_36864_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_5_conv_generic_conv_generic555_c_i64_46080_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_6_conv_generic_conv_generic559_c_i64_55296_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_7_conv_generic_conv_generic563_c_i64_64512_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_8_conv_generic_conv_generic567_c_i64_73728_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx80_9_conv_generic_conv_generic571_c_i64_82944_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_cleanups_shl223_conv_generic_sel_x_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_idxprom77_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_next_cleanups227_conv_generic_conv_generic605_shift_narrow_x_b : STD_LOGIC_VECTOR (1 downto 0);
    signal i_shr_rm_rm_rm_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_10_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_11_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_12_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_13_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_14_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_15_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_4gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_5gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_6gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_7gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_8gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_9gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i4_0gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_1gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal c_i4_7gr_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_out_initeration_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_forked267283_pop80_conv_generic_out_feedback_stall_out_80 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_forked268280_pop77_conv_generic_out_feedback_stall_out_77 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_notexit250284_pop82_conv_generic_out_feedback_stall_out_82 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_notexit254282_pop79_conv_generic_out_feedback_stall_out_79 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop75_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop75_conv_generic_out_feedback_stall_out_75 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop76_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop76_conv_generic_out_feedback_stall_out_76 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop78_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop78_conv_generic_out_feedback_stall_out_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop81_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop81_conv_generic_out_feedback_stall_out_81 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_feedback_stall_out_72 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_feedback_stall_out_66 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_cleanups222_pop74_conv_generic_out_feedback_stall_out_74 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i4_initerations217_pop73_conv_generic_out_data_out : STD_LOGIC_VECTOR (3 downto 0);
    signal i_acl_pop_i4_initerations217_pop73_conv_generic_out_feedback_stall_out_73 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_forked267283_push80_conv_generic_out_feedback_out_80 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_forked267283_push80_conv_generic_out_feedback_valid_out_80 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_forked268280_push77_conv_generic_out_feedback_out_77 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_forked268280_push77_conv_generic_out_feedback_valid_out_77 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_lastiniteration221_conv_generic_out_feedback_out_7 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_lastiniteration221_conv_generic_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexit250284_push82_conv_generic_out_feedback_out_82 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexit250284_push82_conv_generic_out_feedback_valid_out_82 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexit254282_push79_conv_generic_out_feedback_out_79 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexit254282_push79_conv_generic_out_feedback_valid_out_79 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond229_conv_generic_out_feedback_out_8 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond229_conv_generic_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push75_conv_generic_out_feedback_out_75 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push75_conv_generic_out_feedback_valid_out_75 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push76_conv_generic_out_feedback_out_76 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push76_conv_generic_out_feedback_valid_out_76 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push78_conv_generic_out_feedback_out_78 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push78_conv_generic_out_feedback_valid_out_78 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push81_conv_generic_out_feedback_out_81 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push81_conv_generic_out_feedback_valid_out_81 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_w_idx_44_push72_conv_generic_out_feedback_out_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_w_idx_44_push72_conv_generic_out_feedback_valid_out_72 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic_out_feedback_out_66 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic_out_feedback_valid_out_66 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_cleanups222_push74_conv_generic_out_feedback_out_74 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_cleanups222_push74_conv_generic_out_feedback_valid_out_74 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i4_initerations217_push73_conv_generic_out_feedback_out_73 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i4_initerations217_push73_conv_generic_out_feedback_valid_out_73 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add11_rm_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cleanups_shl223_conv_generic_vt_const_3_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cleanups_shl223_conv_generic_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_cleanups_shl223_conv_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp10414_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp10414_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp10414_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp10414_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp4425_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4425_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4425_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4425_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp4717_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4717_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4717_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp4717_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp653_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp653_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp653_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp653_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_10_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_10_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_10_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_10_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_11_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_11_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_11_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_11_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_12_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_12_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_12_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_12_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_13_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_13_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_13_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_13_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_14_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_14_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_14_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_14_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_15_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_15_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_15_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_15_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_1_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_1_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_1_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_1_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_2_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_2_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_2_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_2_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_3_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_3_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_3_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_3_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_4_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_4_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_4_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_4_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_5_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_5_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_5_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_5_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_6_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_6_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_6_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_6_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_7_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_7_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_7_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_7_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_8_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_8_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_8_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_8_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp74_9_rm_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_9_rm_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_9_rm_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp74_9_rm_conv_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_rm_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_not_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor231_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor232_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor233_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor234_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor235_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor236_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor237_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor238_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor239_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor240_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor241_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor242_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor243_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor244_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor245_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor246_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_first_cleanup224_xor_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_conv_generic_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_inc92_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc92_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc92_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc92_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_keep_going219_or_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_last_initeration220_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_masked228_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul_rm_rm_rm_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_rm_rm_conv_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_next_initerations218_conv_generic_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_next_initerations218_conv_generic_vt_select_2_b : STD_LOGIC_VECTOR (2 downto 0);
    signal i_notexit230_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or226_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor359_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor359_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor360_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor360_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor361_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor361_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor362_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor362_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor363_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor363_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor364_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor364_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor365_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor365_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor366_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor366_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor367_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor367_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor368_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor368_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor369_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor369_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor370_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor370_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor371_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor371_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor372_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor372_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor373_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor373_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor374_or_demorgan_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor374_or_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision358_xor_rm_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shr_rm_rm_rm_conv_generic_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_rm_rm_rm_conv_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_rm_rm_rm_conv_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_rm_rm_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_rm_rm_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer124_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer128_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer155_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer149_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer131_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer132_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer133_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer134_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer135_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer136_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer137_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer138_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer139_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer140_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer141_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer142_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer143_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer144_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer145_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer146_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer119_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic487_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic487_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic487_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic510_vt_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic510_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic528_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic532_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic532_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic602_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_xor225_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal xMSB_uid441_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid443_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid444_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid449_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid451_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid452_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid461_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x_in : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal leftShiftStage0Idx1_uid470_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0Idx1Rng1_uid477_i_next_initerations218_conv_generic_conv_generic507_shift_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal rightShiftStage0Idx1_uid479_i_next_initerations218_conv_generic_conv_generic507_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_unnamed_conv_generic510_BitSelect_for_a_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic510_join_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_exitcond_conv_generic_cmp_sign_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_unnamed_conv_generic528_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (3 downto 0);
    signal redist5_i_acl_pop_i1_pop81_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_pop_i1_pop78_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_acl_pop_i1_pop76_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i1_pop75_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sync_in_aunroll_x_in_c0_eni11_1_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_c0_eni11_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_c0_eni11_2_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_c0_eni11_7_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist19_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist25_bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist26_bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist27_bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_outputreg_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_reset0 : std_logic;
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_ia : STD_LOGIC_VECTOR (32 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_iq : STD_LOGIC_VECTOR (32 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_q : STD_LOGIC_VECTOR (32 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve : boolean;
    attribute preserve of redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i : signal is true;
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_eq : std_logic;
    attribute preserve of redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_eq : signal is true;
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_q : signal is true;
    signal redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_inputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_reset0 : std_logic;
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_i : signal is true;
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_q : signal is true;
    signal redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist19_sync_in_aunroll_x_in_i_valid_1(DELAY,516)
    redist19_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist19_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist20_sync_in_aunroll_x_in_i_valid_4(DELAY,517)
    redist20_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_sync_in_aunroll_x_in_i_valid_1_q, xout => redist20_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- redist21_sync_in_aunroll_x_in_i_valid_5(DELAY,518)
    redist21_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist20_sync_in_aunroll_x_in_i_valid_4_q, xout => redist21_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist22_sync_in_aunroll_x_in_i_valid_6(DELAY,519)
    redist22_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist21_sync_in_aunroll_x_in_i_valid_5_q, xout => redist22_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push81_conv_generic(BLACKBOX,250)@7
    -- out out_feedback_out_81@20000000
    -- out out_feedback_valid_out_81@20000000
    thei_acl_push_i1_push81_conv_generic : i_acl_push_i1_push81_conv_generic622
    PORT MAP (
        in_data_in => redist5_i_acl_pop_i1_pop81_conv_generic_out_data_out_6_q,
        in_feedback_stall_in_81 => i_acl_pop_i1_pop81_conv_generic_out_feedback_stall_out_81,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_81 => i_acl_push_i1_push81_conv_generic_out_feedback_out_81,
        out_feedback_valid_out_81 => i_acl_push_i1_push81_conv_generic_out_feedback_valid_out_81,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop81_conv_generic(BLACKBOX,236)@1
    -- out out_feedback_stall_out_81@20000000
    thei_acl_pop_i1_pop81_conv_generic : i_acl_pop_i1_pop81_conv_generic620
    PORT MAP (
        in_data_in => in_c0_eni11_11,
        in_dir => in_c0_eni11_2,
        in_feedback_in_81 => i_acl_push_i1_push81_conv_generic_out_feedback_out_81,
        in_feedback_valid_in_81 => i_acl_push_i1_push81_conv_generic_out_feedback_valid_out_81,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop81_conv_generic_out_data_out,
        out_feedback_stall_out_81 => i_acl_pop_i1_pop81_conv_generic_out_feedback_stall_out_81,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i1_pop81_conv_generic_out_data_out_6(DELAY,502)
    redist5_i_acl_pop_i1_pop81_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop81_conv_generic_out_data_out, xout => redist5_i_acl_pop_i1_pop81_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push78_conv_generic(BLACKBOX,249)@7
    -- out out_feedback_out_78@20000000
    -- out out_feedback_valid_out_78@20000000
    thei_acl_push_i1_push78_conv_generic : i_acl_push_i1_push78_conv_generic618
    PORT MAP (
        in_data_in => redist6_i_acl_pop_i1_pop78_conv_generic_out_data_out_6_q,
        in_feedback_stall_in_78 => i_acl_pop_i1_pop78_conv_generic_out_feedback_stall_out_78,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_78 => i_acl_push_i1_push78_conv_generic_out_feedback_out_78,
        out_feedback_valid_out_78 => i_acl_push_i1_push78_conv_generic_out_feedback_valid_out_78,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop78_conv_generic(BLACKBOX,235)@1
    -- out out_feedback_stall_out_78@20000000
    thei_acl_pop_i1_pop78_conv_generic : i_acl_pop_i1_pop78_conv_generic616
    PORT MAP (
        in_data_in => in_c0_eni11_10,
        in_dir => in_c0_eni11_2,
        in_feedback_in_78 => i_acl_push_i1_push78_conv_generic_out_feedback_out_78,
        in_feedback_valid_in_78 => i_acl_push_i1_push78_conv_generic_out_feedback_valid_out_78,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop78_conv_generic_out_data_out,
        out_feedback_stall_out_78 => i_acl_pop_i1_pop78_conv_generic_out_feedback_stall_out_78,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_pop_i1_pop78_conv_generic_out_data_out_6(DELAY,503)
    redist6_i_acl_pop_i1_pop78_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop78_conv_generic_out_data_out, xout => redist6_i_acl_pop_i1_pop78_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push76_conv_generic(BLACKBOX,248)@7
    -- out out_feedback_out_76@20000000
    -- out out_feedback_valid_out_76@20000000
    thei_acl_push_i1_push76_conv_generic : i_acl_push_i1_push76_conv_generic614
    PORT MAP (
        in_data_in => redist7_i_acl_pop_i1_pop76_conv_generic_out_data_out_6_q,
        in_feedback_stall_in_76 => i_acl_pop_i1_pop76_conv_generic_out_feedback_stall_out_76,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_76 => i_acl_push_i1_push76_conv_generic_out_feedback_out_76,
        out_feedback_valid_out_76 => i_acl_push_i1_push76_conv_generic_out_feedback_valid_out_76,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop76_conv_generic(BLACKBOX,234)@1
    -- out out_feedback_stall_out_76@20000000
    thei_acl_pop_i1_pop76_conv_generic : i_acl_pop_i1_pop76_conv_generic612
    PORT MAP (
        in_data_in => in_c0_eni11_9,
        in_dir => in_c0_eni11_2,
        in_feedback_in_76 => i_acl_push_i1_push76_conv_generic_out_feedback_out_76,
        in_feedback_valid_in_76 => i_acl_push_i1_push76_conv_generic_out_feedback_valid_out_76,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop76_conv_generic_out_data_out,
        out_feedback_stall_out_76 => i_acl_pop_i1_pop76_conv_generic_out_feedback_stall_out_76,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_acl_pop_i1_pop76_conv_generic_out_data_out_6(DELAY,504)
    redist7_i_acl_pop_i1_pop76_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop76_conv_generic_out_data_out, xout => redist7_i_acl_pop_i1_pop76_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push75_conv_generic(BLACKBOX,247)@7
    -- out out_feedback_out_75@20000000
    -- out out_feedback_valid_out_75@20000000
    thei_acl_push_i1_push75_conv_generic : i_acl_push_i1_push75_conv_generic610
    PORT MAP (
        in_data_in => redist8_i_acl_pop_i1_pop75_conv_generic_out_data_out_6_q,
        in_feedback_stall_in_75 => i_acl_pop_i1_pop75_conv_generic_out_feedback_stall_out_75,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_75 => i_acl_push_i1_push75_conv_generic_out_feedback_out_75,
        out_feedback_valid_out_75 => i_acl_push_i1_push75_conv_generic_out_feedback_valid_out_75,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop75_conv_generic(BLACKBOX,233)@1
    -- out out_feedback_stall_out_75@20000000
    thei_acl_pop_i1_pop75_conv_generic : i_acl_pop_i1_pop75_conv_generic608
    PORT MAP (
        in_data_in => in_c0_eni11_8,
        in_dir => in_c0_eni11_2,
        in_feedback_in_75 => i_acl_push_i1_push75_conv_generic_out_feedback_out_75,
        in_feedback_valid_in_75 => i_acl_push_i1_push75_conv_generic_out_feedback_valid_out_75,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop75_conv_generic_out_data_out,
        out_feedback_stall_out_75 => i_acl_pop_i1_pop75_conv_generic_out_feedback_stall_out_75,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_acl_pop_i1_pop75_conv_generic_out_data_out_6(DELAY,505)
    redist8_i_acl_pop_i1_pop75_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop75_conv_generic_out_data_out, xout => redist8_i_acl_pop_i1_pop75_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_phi_decision358_xor_rm_conv_generic(LOGICAL,350)@7
    i_phi_decision358_xor_rm_conv_generic_q <= i_unnamed_conv_generic532_q xor VCC_q;

    -- c_i33_1gr(CONSTANT,223)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_notEnable(LOGICAL,533)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_nor(LOGICAL,534)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_nor_q <= not (redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_notEnable_q or redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_q);

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_last(CONSTANT,530)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_last_q <= "01";

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmp(LOGICAL,531)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmp_q <= "1" WHEN redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_last_q = redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_q ELSE "0";

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmpReg(REG,532)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmpReg_q <= STD_LOGIC_VECTOR(redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena(REG,535)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_nor_q = "1") THEN
                redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_enaAnd(LOGICAL,536)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_enaAnd_q <= redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_sticky_ena_q and VCC_q;

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt(COUNTER,528)
    -- low=0, high=2, step=1, init=0
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_eq <= '1';
            ELSE
                redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_eq <= '0';
            END IF;
            IF (redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_eq = '1') THEN
                redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i <= redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i + 2;
            ELSE
                redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i <= redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_i, 2)));

    -- i_exitcond_not_conv_generic(LOGICAL,284)@7
    i_exitcond_not_conv_generic_q <= i_exitcond_conv_generic_cmp_sign_q xor VCC_q;

    -- i_notexit230_conv_generic(LOGICAL,316)@7
    i_notexit230_conv_generic_q <= i_unnamed_conv_generic532_q and i_exitcond_not_conv_generic_q;

    -- i_acl_push_i1_notexitcond229_conv_generic(BLACKBOX,246)@7
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i1_notexitcond229_conv_generic : i_acl_push_i1_notexitcond229_conv_generic603
    PORT MAP (
        in_data_in => i_notexit230_conv_generic_q,
        in_feedback_stall_in_8 => i_acl_pipeline_keep_going219_conv_generic_out_not_exitcond_stall_out,
        in_first_cleanup224 => i_first_cleanup224_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_8 => i_acl_push_i1_notexitcond229_conv_generic_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i1_notexitcond229_conv_generic_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_0gr(CONSTANT,224)
    c_i4_0gr_q <= "0000";

    -- i_cleanups_shl223_conv_generic_vt_const_3(CONSTANT,260)
    i_cleanups_shl223_conv_generic_vt_const_3_q <= "000";

    -- rightShiftStage0Idx1Rng1_uid477_i_next_initerations218_conv_generic_conv_generic507_shift_x(BITSELECT,476)@6
    rightShiftStage0Idx1Rng1_uid477_i_next_initerations218_conv_generic_conv_generic507_shift_x_b <= i_acl_pop_i4_initerations217_pop73_conv_generic_out_data_out(3 downto 1);

    -- rightShiftStage0Idx1_uid479_i_next_initerations218_conv_generic_conv_generic507_shift_x(BITJOIN,478)@6
    rightShiftStage0Idx1_uid479_i_next_initerations218_conv_generic_conv_generic507_shift_x_q <= GND_q & rightShiftStage0Idx1Rng1_uid477_i_next_initerations218_conv_generic_conv_generic507_shift_x_b;

    -- i_acl_push_i4_initerations217_push73_conv_generic(BLACKBOX,254)@6
    -- out out_feedback_out_73@20000000
    -- out out_feedback_valid_out_73@20000000
    thei_acl_push_i4_initerations217_push73_conv_generic : i_acl_push_i4_initerations217_push73_conv_generic508
    PORT MAP (
        in_data_in => i_next_initerations218_conv_generic_vt_join_q,
        in_feedback_stall_in_73 => i_acl_pop_i4_initerations217_pop73_conv_generic_out_feedback_stall_out_73,
        in_keep_going219 => i_acl_pipeline_keep_going219_conv_generic_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_feedback_out_73 => i_acl_push_i4_initerations217_push73_conv_generic_out_feedback_out_73,
        out_feedback_valid_out_73 => i_acl_push_i4_initerations217_push73_conv_generic_out_feedback_valid_out_73,
        clock => clock,
        resetn => resetn
    );

    -- c_i4_7gr(CONSTANT,226)
    c_i4_7gr_q <= "0111";

    -- i_acl_pop_i4_initerations217_pop73_conv_generic(BLACKBOX,240)@6
    -- out out_feedback_stall_out_73@20000000
    thei_acl_pop_i4_initerations217_pop73_conv_generic : i_acl_pop_i4_initerations217_pop73_conv_generic505
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist17_sync_in_aunroll_x_in_c0_eni11_2_5_q,
        in_feedback_in_73 => i_acl_push_i4_initerations217_push73_conv_generic_out_feedback_out_73,
        in_feedback_valid_in_73 => i_acl_push_i4_initerations217_push73_conv_generic_out_feedback_valid_out_73,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i4_initerations217_pop73_conv_generic_out_data_out,
        out_feedback_stall_out_73 => i_acl_pop_i4_initerations217_pop73_conv_generic_out_feedback_stall_out_73,
        clock => clock,
        resetn => resetn
    );

    -- rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x(MUX,480)@6
    rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_s <= VCC_q;
    rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_combproc: PROCESS (rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_s, i_acl_pop_i4_initerations217_pop73_conv_generic_out_data_out, rightShiftStage0Idx1_uid479_i_next_initerations218_conv_generic_conv_generic507_shift_x_q)
    BEGIN
        CASE (rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_s) IS
            WHEN "0" => rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_q <= i_acl_pop_i4_initerations217_pop73_conv_generic_out_data_out;
            WHEN "1" => rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_q <= rightShiftStage0Idx1_uid479_i_next_initerations218_conv_generic_conv_generic507_shift_x_q;
            WHEN OTHERS => rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_next_initerations218_conv_generic_vt_select_2(BITSELECT,315)@6
    i_next_initerations218_conv_generic_vt_select_2_b <= rightShiftStage0_uid481_i_next_initerations218_conv_generic_conv_generic507_shift_x_q(2 downto 0);

    -- i_next_initerations218_conv_generic_vt_join(BITJOIN,314)@6
    i_next_initerations218_conv_generic_vt_join_q <= GND_q & i_next_initerations218_conv_generic_vt_select_2_b;

    -- i_unnamed_conv_generic510_BitSelect_for_a(BITSELECT,493)@6
    i_unnamed_conv_generic510_BitSelect_for_a_b <= i_next_initerations218_conv_generic_vt_join_q(0 downto 0);

    -- i_unnamed_conv_generic510_join(BITJOIN,494)@6
    i_unnamed_conv_generic510_join_q <= GND_q & GND_q & GND_q & i_unnamed_conv_generic510_BitSelect_for_a_b;

    -- i_unnamed_conv_generic510_vt_select_0(BITSELECT,385)@6
    i_unnamed_conv_generic510_vt_select_0_b <= i_unnamed_conv_generic510_join_q(0 downto 0);

    -- i_unnamed_conv_generic510_vt_join(BITJOIN,384)@6
    i_unnamed_conv_generic510_vt_join_q <= i_cleanups_shl223_conv_generic_vt_const_3_q & i_unnamed_conv_generic510_vt_select_0_b;

    -- i_last_initeration220_conv_generic(LOGICAL,308)@6
    i_last_initeration220_conv_generic_q <= "1" WHEN i_unnamed_conv_generic510_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_lastiniteration221_conv_generic(BLACKBOX,243)@6
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i1_lastiniteration221_conv_generic : i_acl_push_i1_lastiniteration221_conv_generic512
    PORT MAP (
        in_data_in => i_last_initeration220_conv_generic_q,
        in_feedback_stall_in_7 => i_acl_pipeline_keep_going219_conv_generic_out_initeration_stall_out,
        in_keep_going219 => i_acl_pipeline_keep_going219_conv_generic_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_feedback_out_7 => i_acl_push_i1_lastiniteration221_conv_generic_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i1_lastiniteration221_conv_generic_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- redist16_sync_in_aunroll_x_in_c0_eni11_2_1(DELAY,513)
    redist16_sync_in_aunroll_x_in_c0_eni11_2_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni11_2, xout => redist16_sync_in_aunroll_x_in_c0_eni11_2_1_q, clk => clock, aclr => resetn );

    -- redist17_sync_in_aunroll_x_in_c0_eni11_2_5(DELAY,514)
    redist17_sync_in_aunroll_x_in_c0_eni11_2_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_c0_eni11_2_1_q, xout => redist17_sync_in_aunroll_x_in_c0_eni11_2_5_q, clk => clock, aclr => resetn );

    -- i_acl_pipeline_keep_going219_conv_generic(BLACKBOX,228)@6
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going219_conv_generic : i_acl_pipeline_keep_going219_conv_generic489
    PORT MAP (
        in_data_in => redist17_sync_in_aunroll_x_in_c0_eni11_2_5_q,
        in_initeration_in => i_acl_push_i1_lastiniteration221_conv_generic_out_feedback_out_7,
        in_initeration_valid_in => i_acl_push_i1_lastiniteration221_conv_generic_out_feedback_valid_out_7,
        in_not_exitcond_in => i_acl_push_i1_notexitcond229_conv_generic_out_feedback_out_8,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond229_conv_generic_out_feedback_valid_out_8,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pipeline_keep_going219_conv_generic_out_data_out,
        out_exiting_stall_out => i_acl_pipeline_keep_going219_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going219_conv_generic_out_exiting_valid_out,
        out_initeration_stall_out => i_acl_pipeline_keep_going219_conv_generic_out_initeration_stall_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going219_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going219_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic(BLACKBOX,252)@6
    -- out out_feedback_out_66@20000000
    -- out out_feedback_valid_out_66@20000000
    thei_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic : i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic495
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_conv_generic_sel_x_b,
        in_feedback_stall_in_66 => i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_feedback_stall_out_66,
        in_keep_going219 => i_acl_pipeline_keep_going219_conv_generic_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_feedback_out_66 => i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic_out_feedback_out_66,
        out_feedback_valid_out_66 => i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic_out_feedback_valid_out_66,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic(BLACKBOX,238)@1
    -- out out_feedback_stall_out_66@20000000
    thei_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic : i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic483
    PORT MAP (
        in_data_in => in_c0_eni11_4,
        in_dir => in_c0_eni11_2,
        in_feedback_in_66 => i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic_out_feedback_out_66,
        in_feedback_valid_in_66 => i_acl_push_i33_fpgaindvars_iv_in_push66_conv_generic_out_feedback_valid_out_66,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out,
        out_feedback_stall_out_66 => i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_feedback_stall_out_66,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_wraddr(REG,529)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_wraddr_q <= STD_LOGIC_VECTOR(redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem(DUALMEM,527)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_ia <= STD_LOGIC_VECTOR(i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out);
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_aa <= redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_wraddr_q;
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_ab <= redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_rdcnt_q;
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_reset0 <= not (resetn);
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 33,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 33,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_reset0,
        clock1 => clock,
        address_a => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_aa,
        data_a => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_ab,
        q_b => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_iq
    );
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_q <= redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_iq(32 downto 0);

    -- redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_outputreg(DELAY,526)
    redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_outputreg : dspba_delay
    GENERIC MAP ( width => 33, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_mem_q, xout => redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_fpgaindvars_iv_conv_generic(ADD,303)@6
    i_fpgaindvars_iv_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist3_i_acl_pop_i33_fpgaindvars_iv_in_pop66_conv_generic_out_data_out_5_outputreg_q);
    i_fpgaindvars_iv_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_conv_generic_a) + UNSIGNED(i_fpgaindvars_iv_conv_generic_b));
    i_fpgaindvars_iv_conv_generic_q <= i_fpgaindvars_iv_conv_generic_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_conv_generic_sel_x(BITSELECT,6)@6
    bgTrunc_i_fpgaindvars_iv_conv_generic_sel_x_b <= i_fpgaindvars_iv_conv_generic_q(32 downto 0);

    -- i_exitcond_conv_generic_cmp_sign(LOGICAL,495)@6 + 1
    i_exitcond_conv_generic_cmp_sign_qi <= STD_LOGIC_VECTOR(bgTrunc_i_fpgaindvars_iv_conv_generic_sel_x_b(32 downto 32));
    i_exitcond_conv_generic_cmp_sign_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond_conv_generic_cmp_sign_qi, xout => i_exitcond_conv_generic_cmp_sign_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv_generic602(LOGICAL,388)@7
    i_unnamed_conv_generic602_q <= i_exitcond_conv_generic_cmp_sign_q or i_phi_decision358_xor_rm_conv_generic_q;

    -- i_masked228_conv_generic(LOGICAL,309)@7
    i_masked228_conv_generic_q <= i_unnamed_conv_generic602_q and i_first_cleanup224_conv_generic_q;

    -- i_xor225_conv_generic(LOGICAL,389)@7
    i_xor225_conv_generic_q <= i_first_cleanup224_conv_generic_q xor VCC_q;

    -- i_phi_decision358_xor374_or_demorgan_rm_conv_generic(LOGICAL,348)@7
    i_phi_decision358_xor374_or_demorgan_rm_conv_generic_q <= i_cmp74_15_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor374_or_rm_conv_generic(LOGICAL,349)@7
    i_phi_decision358_xor374_or_rm_conv_generic_q <= i_phi_decision358_xor374_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor246_or_conv_generic(LOGICAL,301)@7
    i_first_cleanup224_xor246_or_conv_generic_q <= i_phi_decision358_xor374_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer146_conv_generic(BLACKBOX,376)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer146_conv_generic : i_syncbuf_tile_channels_sync_buffer146_conv_generic596
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer146_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_15(CONSTANT,212)
    c_i32_15_q <= "00000000000000000000000000001111";

    -- i_cmp74_15_rm_conv_generic(COMPARE,272)@6 + 1
    i_cmp74_15_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_15_q(31)) & c_i32_15_q));
    i_cmp74_15_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer146_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer146_conv_generic_out_buffer_out));
    i_cmp74_15_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_15_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_15_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_15_rm_conv_generic_a) - SIGNED(i_cmp74_15_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_15_rm_conv_generic_c(0) <= i_cmp74_15_rm_conv_generic_o(33);

    -- i_arrayidx80_15_conv_generic_conv_generic595_c_i64_138240_x(CONSTANT,98)
    i_arrayidx80_15_conv_generic_conv_generic595_c_i64_138240_x_q <= "0000000000000000000000000000000000000000000000100001110000000000";

    -- i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x(ADD,94)@7
    i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_15_conv_generic_conv_generic595_c_i64_138240_x_q);
    i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_b));
    i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_q <= i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_trunc_sel_x(BITSELECT,93)@7
    i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_trunc_sel_x_b <= i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor373_or_demorgan_rm_conv_generic(LOGICAL,346)@7
    i_phi_decision358_xor373_or_demorgan_rm_conv_generic_q <= i_cmp74_14_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor373_or_rm_conv_generic(LOGICAL,347)@7
    i_phi_decision358_xor373_or_rm_conv_generic_q <= i_phi_decision358_xor373_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor245_or_conv_generic(LOGICAL,300)@7
    i_first_cleanup224_xor245_or_conv_generic_q <= i_phi_decision358_xor373_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer145_conv_generic(BLACKBOX,375)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer145_conv_generic : i_syncbuf_tile_channels_sync_buffer145_conv_generic592
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer145_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_14(CONSTANT,211)
    c_i32_14_q <= "00000000000000000000000000001110";

    -- i_cmp74_14_rm_conv_generic(COMPARE,271)@6 + 1
    i_cmp74_14_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_14_q(31)) & c_i32_14_q));
    i_cmp74_14_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer145_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer145_conv_generic_out_buffer_out));
    i_cmp74_14_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_14_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_14_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_14_rm_conv_generic_a) - SIGNED(i_cmp74_14_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_14_rm_conv_generic_c(0) <= i_cmp74_14_rm_conv_generic_o(33);

    -- i_arrayidx80_14_conv_generic_conv_generic591_c_i64_129024_x(CONSTANT,91)
    i_arrayidx80_14_conv_generic_conv_generic591_c_i64_129024_x_q <= "0000000000000000000000000000000000000000000000011111100000000000";

    -- i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x(ADD,87)@7
    i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_14_conv_generic_conv_generic591_c_i64_129024_x_q);
    i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_b));
    i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_q <= i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_trunc_sel_x(BITSELECT,86)@7
    i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_trunc_sel_x_b <= i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor372_or_demorgan_rm_conv_generic(LOGICAL,344)@7
    i_phi_decision358_xor372_or_demorgan_rm_conv_generic_q <= i_cmp74_13_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor372_or_rm_conv_generic(LOGICAL,345)@7
    i_phi_decision358_xor372_or_rm_conv_generic_q <= i_phi_decision358_xor372_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor244_or_conv_generic(LOGICAL,299)@7
    i_first_cleanup224_xor244_or_conv_generic_q <= i_phi_decision358_xor372_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer144_conv_generic(BLACKBOX,374)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer144_conv_generic : i_syncbuf_tile_channels_sync_buffer144_conv_generic588
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer144_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_13(CONSTANT,210)
    c_i32_13_q <= "00000000000000000000000000001101";

    -- i_cmp74_13_rm_conv_generic(COMPARE,270)@6 + 1
    i_cmp74_13_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_13_q(31)) & c_i32_13_q));
    i_cmp74_13_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer144_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer144_conv_generic_out_buffer_out));
    i_cmp74_13_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_13_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_13_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_13_rm_conv_generic_a) - SIGNED(i_cmp74_13_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_13_rm_conv_generic_c(0) <= i_cmp74_13_rm_conv_generic_o(33);

    -- i_arrayidx80_13_conv_generic_conv_generic587_c_i64_119808_x(CONSTANT,84)
    i_arrayidx80_13_conv_generic_conv_generic587_c_i64_119808_x_q <= "0000000000000000000000000000000000000000000000011101010000000000";

    -- i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x(ADD,80)@7
    i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_13_conv_generic_conv_generic587_c_i64_119808_x_q);
    i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_b));
    i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_q <= i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_trunc_sel_x(BITSELECT,79)@7
    i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_trunc_sel_x_b <= i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor371_or_demorgan_rm_conv_generic(LOGICAL,342)@7
    i_phi_decision358_xor371_or_demorgan_rm_conv_generic_q <= i_cmp74_12_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor371_or_rm_conv_generic(LOGICAL,343)@7
    i_phi_decision358_xor371_or_rm_conv_generic_q <= i_phi_decision358_xor371_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor243_or_conv_generic(LOGICAL,298)@7
    i_first_cleanup224_xor243_or_conv_generic_q <= i_phi_decision358_xor371_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer143_conv_generic(BLACKBOX,373)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer143_conv_generic : i_syncbuf_tile_channels_sync_buffer143_conv_generic584
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer143_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_12(CONSTANT,209)
    c_i32_12_q <= "00000000000000000000000000001100";

    -- i_cmp74_12_rm_conv_generic(COMPARE,269)@6 + 1
    i_cmp74_12_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_12_q(31)) & c_i32_12_q));
    i_cmp74_12_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer143_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer143_conv_generic_out_buffer_out));
    i_cmp74_12_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_12_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_12_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_12_rm_conv_generic_a) - SIGNED(i_cmp74_12_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_12_rm_conv_generic_c(0) <= i_cmp74_12_rm_conv_generic_o(33);

    -- i_arrayidx80_12_conv_generic_conv_generic583_c_i64_110592_x(CONSTANT,77)
    i_arrayidx80_12_conv_generic_conv_generic583_c_i64_110592_x_q <= "0000000000000000000000000000000000000000000000011011000000000000";

    -- i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x(ADD,73)@7
    i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_12_conv_generic_conv_generic583_c_i64_110592_x_q);
    i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_b));
    i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_q <= i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_trunc_sel_x(BITSELECT,72)@7
    i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_trunc_sel_x_b <= i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor370_or_demorgan_rm_conv_generic(LOGICAL,340)@7
    i_phi_decision358_xor370_or_demorgan_rm_conv_generic_q <= i_cmp74_11_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor370_or_rm_conv_generic(LOGICAL,341)@7
    i_phi_decision358_xor370_or_rm_conv_generic_q <= i_phi_decision358_xor370_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor242_or_conv_generic(LOGICAL,297)@7
    i_first_cleanup224_xor242_or_conv_generic_q <= i_phi_decision358_xor370_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer142_conv_generic(BLACKBOX,372)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer142_conv_generic : i_syncbuf_tile_channels_sync_buffer142_conv_generic580
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer142_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_11(CONSTANT,208)
    c_i32_11_q <= "00000000000000000000000000001011";

    -- i_cmp74_11_rm_conv_generic(COMPARE,268)@6 + 1
    i_cmp74_11_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_11_q(31)) & c_i32_11_q));
    i_cmp74_11_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer142_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer142_conv_generic_out_buffer_out));
    i_cmp74_11_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_11_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_11_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_11_rm_conv_generic_a) - SIGNED(i_cmp74_11_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_11_rm_conv_generic_c(0) <= i_cmp74_11_rm_conv_generic_o(33);

    -- i_arrayidx80_11_conv_generic_conv_generic579_c_i64_101376_x(CONSTANT,70)
    i_arrayidx80_11_conv_generic_conv_generic579_c_i64_101376_x_q <= "0000000000000000000000000000000000000000000000011000110000000000";

    -- i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x(ADD,66)@7
    i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_11_conv_generic_conv_generic579_c_i64_101376_x_q);
    i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_b));
    i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_q <= i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_trunc_sel_x(BITSELECT,65)@7
    i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_trunc_sel_x_b <= i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor369_or_demorgan_rm_conv_generic(LOGICAL,338)@7
    i_phi_decision358_xor369_or_demorgan_rm_conv_generic_q <= i_cmp74_10_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor369_or_rm_conv_generic(LOGICAL,339)@7
    i_phi_decision358_xor369_or_rm_conv_generic_q <= i_phi_decision358_xor369_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor241_or_conv_generic(LOGICAL,296)@7
    i_first_cleanup224_xor241_or_conv_generic_q <= i_phi_decision358_xor369_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer141_conv_generic(BLACKBOX,371)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer141_conv_generic : i_syncbuf_tile_channels_sync_buffer141_conv_generic576
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer141_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_10(CONSTANT,207)
    c_i32_10_q <= "00000000000000000000000000001010";

    -- i_cmp74_10_rm_conv_generic(COMPARE,267)@6 + 1
    i_cmp74_10_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_10_q(31)) & c_i32_10_q));
    i_cmp74_10_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer141_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer141_conv_generic_out_buffer_out));
    i_cmp74_10_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_10_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_10_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_10_rm_conv_generic_a) - SIGNED(i_cmp74_10_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_10_rm_conv_generic_c(0) <= i_cmp74_10_rm_conv_generic_o(33);

    -- i_arrayidx80_10_conv_generic_conv_generic575_c_i64_92160_x(CONSTANT,63)
    i_arrayidx80_10_conv_generic_conv_generic575_c_i64_92160_x_q <= "0000000000000000000000000000000000000000000000010110100000000000";

    -- i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x(ADD,59)@7
    i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_c_i64_92160_x_q);
    i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_b));
    i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_q <= i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_trunc_sel_x(BITSELECT,58)@7
    i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_trunc_sel_x_b <= i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor368_or_demorgan_rm_conv_generic(LOGICAL,336)@7
    i_phi_decision358_xor368_or_demorgan_rm_conv_generic_q <= i_cmp74_9_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor368_or_rm_conv_generic(LOGICAL,337)@7
    i_phi_decision358_xor368_or_rm_conv_generic_q <= i_phi_decision358_xor368_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor240_or_conv_generic(LOGICAL,295)@7
    i_first_cleanup224_xor240_or_conv_generic_q <= i_phi_decision358_xor368_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer140_conv_generic(BLACKBOX,370)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer140_conv_generic : i_syncbuf_tile_channels_sync_buffer140_conv_generic572
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer140_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_9gr(CONSTANT,221)
    c_i32_9gr_q <= "00000000000000000000000000001001";

    -- i_cmp74_9_rm_conv_generic(COMPARE,281)@6 + 1
    i_cmp74_9_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_9gr_q(31)) & c_i32_9gr_q));
    i_cmp74_9_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer140_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer140_conv_generic_out_buffer_out));
    i_cmp74_9_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_9_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_9_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_9_rm_conv_generic_a) - SIGNED(i_cmp74_9_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_9_rm_conv_generic_c(0) <= i_cmp74_9_rm_conv_generic_o(33);

    -- i_arrayidx80_9_conv_generic_conv_generic571_c_i64_82944_x(CONSTANT,161)
    i_arrayidx80_9_conv_generic_conv_generic571_c_i64_82944_x_q <= "0000000000000000000000000000000000000000000000010100010000000000";

    -- i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x(ADD,157)@7
    i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_9_conv_generic_conv_generic571_c_i64_82944_x_q);
    i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_b));
    i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_q <= i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_trunc_sel_x(BITSELECT,156)@7
    i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_trunc_sel_x_b <= i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor367_or_demorgan_rm_conv_generic(LOGICAL,334)@7
    i_phi_decision358_xor367_or_demorgan_rm_conv_generic_q <= i_cmp74_8_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor367_or_rm_conv_generic(LOGICAL,335)@7
    i_phi_decision358_xor367_or_rm_conv_generic_q <= i_phi_decision358_xor367_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor239_or_conv_generic(LOGICAL,294)@7
    i_first_cleanup224_xor239_or_conv_generic_q <= i_phi_decision358_xor367_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer139_conv_generic(BLACKBOX,369)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer139_conv_generic : i_syncbuf_tile_channels_sync_buffer139_conv_generic568
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer139_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_8gr(CONSTANT,220)
    c_i32_8gr_q <= "00000000000000000000000000001000";

    -- i_cmp74_8_rm_conv_generic(COMPARE,280)@6 + 1
    i_cmp74_8_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_8gr_q(31)) & c_i32_8gr_q));
    i_cmp74_8_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer139_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer139_conv_generic_out_buffer_out));
    i_cmp74_8_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_8_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_8_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_8_rm_conv_generic_a) - SIGNED(i_cmp74_8_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_8_rm_conv_generic_c(0) <= i_cmp74_8_rm_conv_generic_o(33);

    -- i_arrayidx80_8_conv_generic_conv_generic567_c_i64_73728_x(CONSTANT,154)
    i_arrayidx80_8_conv_generic_conv_generic567_c_i64_73728_x_q <= "0000000000000000000000000000000000000000000000010010000000000000";

    -- i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x(ADD,150)@7
    i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_8_conv_generic_conv_generic567_c_i64_73728_x_q);
    i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_b));
    i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_q <= i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_trunc_sel_x(BITSELECT,149)@7
    i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_trunc_sel_x_b <= i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor366_or_demorgan_rm_conv_generic(LOGICAL,332)@7
    i_phi_decision358_xor366_or_demorgan_rm_conv_generic_q <= i_cmp74_7_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor366_or_rm_conv_generic(LOGICAL,333)@7
    i_phi_decision358_xor366_or_rm_conv_generic_q <= i_phi_decision358_xor366_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor238_or_conv_generic(LOGICAL,293)@7
    i_first_cleanup224_xor238_or_conv_generic_q <= i_phi_decision358_xor366_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer138_conv_generic(BLACKBOX,368)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer138_conv_generic : i_syncbuf_tile_channels_sync_buffer138_conv_generic564
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer138_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_7gr(CONSTANT,219)
    c_i32_7gr_q <= "00000000000000000000000000000111";

    -- i_cmp74_7_rm_conv_generic(COMPARE,279)@6 + 1
    i_cmp74_7_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_7gr_q(31)) & c_i32_7gr_q));
    i_cmp74_7_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer138_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer138_conv_generic_out_buffer_out));
    i_cmp74_7_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_7_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_7_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_7_rm_conv_generic_a) - SIGNED(i_cmp74_7_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_7_rm_conv_generic_c(0) <= i_cmp74_7_rm_conv_generic_o(33);

    -- i_arrayidx80_7_conv_generic_conv_generic563_c_i64_64512_x(CONSTANT,147)
    i_arrayidx80_7_conv_generic_conv_generic563_c_i64_64512_x_q <= "0000000000000000000000000000000000000000000000001111110000000000";

    -- i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x(ADD,143)@7
    i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_7_conv_generic_conv_generic563_c_i64_64512_x_q);
    i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_b));
    i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_q <= i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_trunc_sel_x(BITSELECT,142)@7
    i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_trunc_sel_x_b <= i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor365_or_demorgan_rm_conv_generic(LOGICAL,330)@7
    i_phi_decision358_xor365_or_demorgan_rm_conv_generic_q <= i_cmp74_6_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor365_or_rm_conv_generic(LOGICAL,331)@7
    i_phi_decision358_xor365_or_rm_conv_generic_q <= i_phi_decision358_xor365_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor237_or_conv_generic(LOGICAL,292)@7
    i_first_cleanup224_xor237_or_conv_generic_q <= i_phi_decision358_xor365_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer137_conv_generic(BLACKBOX,367)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer137_conv_generic : i_syncbuf_tile_channels_sync_buffer137_conv_generic560
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer137_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_6gr(CONSTANT,218)
    c_i32_6gr_q <= "00000000000000000000000000000110";

    -- i_cmp74_6_rm_conv_generic(COMPARE,278)@6 + 1
    i_cmp74_6_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_6gr_q(31)) & c_i32_6gr_q));
    i_cmp74_6_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer137_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer137_conv_generic_out_buffer_out));
    i_cmp74_6_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_6_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_6_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_6_rm_conv_generic_a) - SIGNED(i_cmp74_6_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_6_rm_conv_generic_c(0) <= i_cmp74_6_rm_conv_generic_o(33);

    -- i_arrayidx80_6_conv_generic_conv_generic559_c_i64_55296_x(CONSTANT,140)
    i_arrayidx80_6_conv_generic_conv_generic559_c_i64_55296_x_q <= "0000000000000000000000000000000000000000000000001101100000000000";

    -- i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x(ADD,136)@7
    i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_6_conv_generic_conv_generic559_c_i64_55296_x_q);
    i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_b));
    i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_q <= i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_trunc_sel_x(BITSELECT,135)@7
    i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_trunc_sel_x_b <= i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor364_or_demorgan_rm_conv_generic(LOGICAL,328)@7
    i_phi_decision358_xor364_or_demorgan_rm_conv_generic_q <= i_cmp74_5_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor364_or_rm_conv_generic(LOGICAL,329)@7
    i_phi_decision358_xor364_or_rm_conv_generic_q <= i_phi_decision358_xor364_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor236_or_conv_generic(LOGICAL,291)@7
    i_first_cleanup224_xor236_or_conv_generic_q <= i_phi_decision358_xor364_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer136_conv_generic(BLACKBOX,366)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer136_conv_generic : i_syncbuf_tile_channels_sync_buffer136_conv_generic556
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer136_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_5gr(CONSTANT,217)
    c_i32_5gr_q <= "00000000000000000000000000000101";

    -- i_cmp74_5_rm_conv_generic(COMPARE,277)@6 + 1
    i_cmp74_5_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_5gr_q(31)) & c_i32_5gr_q));
    i_cmp74_5_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer136_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer136_conv_generic_out_buffer_out));
    i_cmp74_5_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_5_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_5_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_5_rm_conv_generic_a) - SIGNED(i_cmp74_5_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_5_rm_conv_generic_c(0) <= i_cmp74_5_rm_conv_generic_o(33);

    -- i_arrayidx80_5_conv_generic_conv_generic555_c_i64_46080_x(CONSTANT,133)
    i_arrayidx80_5_conv_generic_conv_generic555_c_i64_46080_x_q <= "0000000000000000000000000000000000000000000000001011010000000000";

    -- i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x(ADD,129)@7
    i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_5_conv_generic_conv_generic555_c_i64_46080_x_q);
    i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_b));
    i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_q <= i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_trunc_sel_x(BITSELECT,128)@7
    i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_trunc_sel_x_b <= i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor363_or_demorgan_rm_conv_generic(LOGICAL,326)@7
    i_phi_decision358_xor363_or_demorgan_rm_conv_generic_q <= i_cmp74_4_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor363_or_rm_conv_generic(LOGICAL,327)@7
    i_phi_decision358_xor363_or_rm_conv_generic_q <= i_phi_decision358_xor363_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor235_or_conv_generic(LOGICAL,290)@7
    i_first_cleanup224_xor235_or_conv_generic_q <= i_phi_decision358_xor363_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer135_conv_generic(BLACKBOX,365)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer135_conv_generic : i_syncbuf_tile_channels_sync_buffer135_conv_generic552
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer135_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_4gr(CONSTANT,216)
    c_i32_4gr_q <= "00000000000000000000000000000100";

    -- i_cmp74_4_rm_conv_generic(COMPARE,276)@6 + 1
    i_cmp74_4_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_4gr_q(31)) & c_i32_4gr_q));
    i_cmp74_4_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer135_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer135_conv_generic_out_buffer_out));
    i_cmp74_4_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_4_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_4_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_4_rm_conv_generic_a) - SIGNED(i_cmp74_4_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_4_rm_conv_generic_c(0) <= i_cmp74_4_rm_conv_generic_o(33);

    -- i_arrayidx80_4_conv_generic_conv_generic551_c_i64_36864_x(CONSTANT,126)
    i_arrayidx80_4_conv_generic_conv_generic551_c_i64_36864_x_q <= "0000000000000000000000000000000000000000000000001001000000000000";

    -- i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x(ADD,122)@7
    i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_4_conv_generic_conv_generic551_c_i64_36864_x_q);
    i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_b));
    i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_q <= i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_trunc_sel_x(BITSELECT,121)@7
    i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_trunc_sel_x_b <= i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor362_or_demorgan_rm_conv_generic(LOGICAL,324)@7
    i_phi_decision358_xor362_or_demorgan_rm_conv_generic_q <= i_cmp74_3_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor362_or_rm_conv_generic(LOGICAL,325)@7
    i_phi_decision358_xor362_or_rm_conv_generic_q <= i_phi_decision358_xor362_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor234_or_conv_generic(LOGICAL,289)@7
    i_first_cleanup224_xor234_or_conv_generic_q <= i_phi_decision358_xor362_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer134_conv_generic(BLACKBOX,364)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer134_conv_generic : i_syncbuf_tile_channels_sync_buffer134_conv_generic548
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer134_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_c_i32_3gr_x(CONSTANT,11)
    dupName_0_c_i32_3gr_x_q <= "00000000000000000000000000000011";

    -- i_cmp74_3_rm_conv_generic(COMPARE,275)@6 + 1
    i_cmp74_3_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => dupName_0_c_i32_3gr_x_q(31)) & dupName_0_c_i32_3gr_x_q));
    i_cmp74_3_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer134_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer134_conv_generic_out_buffer_out));
    i_cmp74_3_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_3_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_3_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_3_rm_conv_generic_a) - SIGNED(i_cmp74_3_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_3_rm_conv_generic_c(0) <= i_cmp74_3_rm_conv_generic_o(33);

    -- i_arrayidx80_3_conv_generic_conv_generic547_c_i64_27648_x(CONSTANT,119)
    i_arrayidx80_3_conv_generic_conv_generic547_c_i64_27648_x_q <= "0000000000000000000000000000000000000000000000000110110000000000";

    -- i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x(ADD,115)@7
    i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_3_conv_generic_conv_generic547_c_i64_27648_x_q);
    i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_b));
    i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_q <= i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_trunc_sel_x(BITSELECT,114)@7
    i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_trunc_sel_x_b <= i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor361_or_demorgan_rm_conv_generic(LOGICAL,322)@7
    i_phi_decision358_xor361_or_demorgan_rm_conv_generic_q <= i_cmp74_2_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor361_or_rm_conv_generic(LOGICAL,323)@7
    i_phi_decision358_xor361_or_rm_conv_generic_q <= i_phi_decision358_xor361_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor233_or_conv_generic(LOGICAL,288)@7
    i_first_cleanup224_xor233_or_conv_generic_q <= i_phi_decision358_xor361_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer133_conv_generic(BLACKBOX,363)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer133_conv_generic : i_syncbuf_tile_channels_sync_buffer133_conv_generic544
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer133_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_2gr(CONSTANT,214)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_cmp74_2_rm_conv_generic(COMPARE,274)@6 + 1
    i_cmp74_2_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_2gr_q(31)) & c_i32_2gr_q));
    i_cmp74_2_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer133_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer133_conv_generic_out_buffer_out));
    i_cmp74_2_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_2_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_2_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_2_rm_conv_generic_a) - SIGNED(i_cmp74_2_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_2_rm_conv_generic_c(0) <= i_cmp74_2_rm_conv_generic_o(33);

    -- i_arrayidx80_2_conv_generic_conv_generic543_c_i64_18432_x(CONSTANT,112)
    i_arrayidx80_2_conv_generic_conv_generic543_c_i64_18432_x_q <= "0000000000000000000000000000000000000000000000000100100000000000";

    -- i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x(ADD,108)@7
    i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_2_conv_generic_conv_generic543_c_i64_18432_x_q);
    i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_b));
    i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_q <= i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_trunc_sel_x(BITSELECT,107)@7
    i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_trunc_sel_x_b <= i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor360_or_demorgan_rm_conv_generic(LOGICAL,320)@7
    i_phi_decision358_xor360_or_demorgan_rm_conv_generic_q <= i_cmp74_1_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor360_or_rm_conv_generic(LOGICAL,321)@7
    i_phi_decision358_xor360_or_rm_conv_generic_q <= i_phi_decision358_xor360_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor232_or_conv_generic(LOGICAL,287)@7
    i_first_cleanup224_xor232_or_conv_generic_q <= i_phi_decision358_xor360_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer132_conv_generic(BLACKBOX,362)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer132_conv_generic : i_syncbuf_tile_channels_sync_buffer132_conv_generic540
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer132_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,213)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_cmp74_1_rm_conv_generic(COMPARE,273)@6 + 1
    i_cmp74_1_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_1gr_q(31)) & c_i32_1gr_q));
    i_cmp74_1_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer132_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer132_conv_generic_out_buffer_out));
    i_cmp74_1_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp74_1_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp74_1_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp74_1_rm_conv_generic_a) - SIGNED(i_cmp74_1_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp74_1_rm_conv_generic_c(0) <= i_cmp74_1_rm_conv_generic_o(33);

    -- i_arrayidx80_1_conv_generic_conv_generic539_c_i64_9216_x(CONSTANT,105)
    i_arrayidx80_1_conv_generic_conv_generic539_c_i64_9216_x_q <= "0000000000000000000000000000000000000000000000000010010000000000";

    -- i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x(ADD,101)@7
    i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b);
    i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_arrayidx80_1_conv_generic_conv_generic539_c_i64_9216_x_q);
    i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_a) + UNSIGNED(i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_b));
    i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_q <= i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_trunc_sel_x(BITSELECT,100)@7
    i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_trunc_sel_x_b <= i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_add_x_q(63 downto 0);

    -- i_phi_decision358_xor359_or_demorgan_rm_conv_generic(LOGICAL,318)@7
    i_phi_decision358_xor359_or_demorgan_rm_conv_generic_q <= i_cmp10414_rm_conv_generic_c and i_unnamed_conv_generic532_q;

    -- i_phi_decision358_xor359_or_rm_conv_generic(LOGICAL,319)@7
    i_phi_decision358_xor359_or_rm_conv_generic_q <= i_phi_decision358_xor359_or_demorgan_rm_conv_generic_q xor VCC_q;

    -- i_first_cleanup224_xor231_or_conv_generic(LOGICAL,286)@7
    i_first_cleanup224_xor231_or_conv_generic_q <= i_phi_decision358_xor359_or_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_tile_channels_sync_buffer131_conv_generic(BLACKBOX,361)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_tile_channels_sync_buffer131_conv_generic : i_syncbuf_tile_channels_sync_buffer131_conv_generic536
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer131_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,206)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp10414_rm_conv_generic(COMPARE,263)@6 + 1
    i_cmp10414_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp10414_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer131_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer131_conv_generic_out_buffer_out));
    i_cmp10414_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp10414_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp10414_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp10414_rm_conv_generic_a) - SIGNED(i_cmp10414_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp10414_rm_conv_generic_c(0) <= i_cmp10414_rm_conv_generic_o(33);

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_notEnable(LOGICAL,543)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_nor(LOGICAL,544)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_nor_q <= not (redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_notEnable_q or redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_q);

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_cmpReg(REG,542)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena(REG,545)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_nor_q = "1") THEN
                redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_enaAnd(LOGICAL,546)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_enaAnd_q <= redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_sticky_ena_q and VCC_q;

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt(COUNTER,540)
    -- low=0, high=1, step=1, init=0
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_i <= redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_i, 1)));

    -- i_inc92_conv_generic(ADD,306)@7
    i_inc92_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_outputreg_q);
    i_inc92_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc92_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc92_conv_generic_a) + UNSIGNED(i_inc92_conv_generic_b));
    i_inc92_conv_generic_q <= i_inc92_conv_generic_o(32 downto 0);

    -- bgTrunc_i_inc92_conv_generic_sel_x(BITSELECT,7)@7
    bgTrunc_i_inc92_conv_generic_sel_x_b <= i_inc92_conv_generic_q(31 downto 0);

    -- i_acl_push_i32_w_idx_44_push72_conv_generic(BLACKBOX,251)@7
    -- out out_feedback_out_72@20000000
    -- out out_feedback_valid_out_72@20000000
    thei_acl_push_i32_w_idx_44_push72_conv_generic : i_acl_push_i32_w_idx_44_push72_conv_generic599
    PORT MAP (
        in_data_in => bgTrunc_i_inc92_conv_generic_sel_x_b,
        in_feedback_stall_in_72 => i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_feedback_stall_out_72,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_72 => i_acl_push_i32_w_idx_44_push72_conv_generic_out_feedback_out_72,
        out_feedback_valid_out_72 => i_acl_push_i32_w_idx_44_push72_conv_generic_out_feedback_valid_out_72,
        clock => clock,
        resetn => resetn
    );

    -- redist18_sync_in_aunroll_x_in_c0_eni11_7_1(DELAY,515)
    redist18_sync_in_aunroll_x_in_c0_eni11_7_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni11_7, xout => redist18_sync_in_aunroll_x_in_c0_eni11_7_1_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i32_w_idx_44_pop72_conv_generic(BLACKBOX,237)@2
    -- out out_feedback_stall_out_72@20000000
    thei_acl_pop_i32_w_idx_44_pop72_conv_generic : i_acl_pop_i32_w_idx_44_pop72_conv_generic533
    PORT MAP (
        in_data_in => redist18_sync_in_aunroll_x_in_c0_eni11_7_1_q,
        in_dir => redist16_sync_in_aunroll_x_in_c0_eni11_2_1_q,
        in_feedback_in_72 => i_acl_push_i32_w_idx_44_push72_conv_generic_out_feedback_out_72,
        in_feedback_valid_in_72 => i_acl_push_i32_w_idx_44_push72_conv_generic_out_feedback_valid_out_72,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out,
        out_feedback_stall_out_72 => i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_feedback_stall_out_72,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_inputreg(DELAY,537)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_inputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out, xout => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_inputreg_q, clk => clock, aclr => resetn );

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_wraddr(REG,541)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_wraddr_q <= "1";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_wraddr_q <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem(DUALMEM,539)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_ia <= STD_LOGIC_VECTOR(redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_inputreg_q);
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_aa <= redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_wraddr_q;
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_ab <= redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_rdcnt_q;
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_reset0 <= not (resetn);
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_reset0,
        clock1 => clock,
        address_a => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_aa,
        data_a => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_ab,
        q_b => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_iq
    );
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_q <= redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_iq(31 downto 0);

    -- redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_outputreg(DELAY,538)
    redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_mem_q, xout => redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_outputreg_q, clk => clock, aclr => resetn );

    -- i_idxprom77_conv_generic_sel_x(BITSELECT,179)@7
    i_idxprom77_conv_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist4_i_acl_pop_i32_w_idx_44_pop72_conv_generic_out_data_out_5_outputreg_q(31 downto 0)), 64)));

    -- i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x(BITSELECT,61)@7
    i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_idxprom77_conv_generic_sel_x_b);
    i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b <= i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_in(63 downto 0);

    -- i_first_cleanup224_xor_or_conv_generic(LOGICAL,302)@7
    i_first_cleanup224_xor_or_conv_generic_q <= i_phi_decision358_xor_rm_conv_generic_q or i_xor225_conv_generic_q;

    -- i_syncbuf_in_c_sync_buffer128_conv_generic(BLACKBOX,358)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_in_c_sync_buffer128_conv_generic : i_syncbuf_in_c_sync_buffer128_conv_generic529
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist20_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_in_c_sync_buffer128_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp653_rm_conv_generic(COMPARE,266)@5 + 1
    i_cmp653_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp653_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_in_c_sync_buffer128_conv_generic_out_buffer_out(31)) & i_syncbuf_in_c_sync_buffer128_conv_generic_out_buffer_out));
    i_cmp653_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp653_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp653_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp653_rm_conv_generic_a) - SIGNED(i_cmp653_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp653_rm_conv_generic_c(0) <= i_cmp653_rm_conv_generic_o(33);

    -- xMSB_uid441_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x(BITSELECT,440)@3
    xMSB_uid441_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b <= STD_LOGIC_VECTOR(redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid443_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x(BITSELECT,442)@3
    rightShiftStage0Idx1Rng1_uid443_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b <= redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid444_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x(BITJOIN,443)@3
    rightShiftStage0Idx1_uid444_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q <= xMSB_uid441_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b & rightShiftStage0Idx1Rng1_uid443_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b;

    -- leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x(BITSELECT,459)@2
    leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_in <= i_syncbuf_pad_sync_buffer155_conv_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_b <= leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid461_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x(BITJOIN,460)@2
    leftShiftStage0Idx1_uid461_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q <= leftShiftStage0Idx1Rng1_uid460_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer155_conv_generic(BLACKBOX,359)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_pad_sync_buffer155_conv_generic : i_syncbuf_pad_sync_buffer155_conv_generic516
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_pad_sync_buffer155_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x(MUX,462)@2
    leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_s <= VCC_q;
    leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_combproc: PROCESS (leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_s, i_syncbuf_pad_sync_buffer155_conv_generic_out_buffer_out, leftShiftStage0Idx1_uid461_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q <= i_syncbuf_pad_sync_buffer155_conv_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q <= leftShiftStage0Idx1_uid461_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_rm_rm_conv_generic_vt_select_31(BITSELECT,312)@2
    i_mul_rm_rm_rm_conv_generic_vt_select_31_b <= leftShiftStage0_uid463_i_mul_rm_rm_rm_conv_generic_conv_generic518_shift_x_q(31 downto 1);

    -- i_mul_rm_rm_rm_conv_generic_vt_join(BITJOIN,311)@2
    i_mul_rm_rm_rm_conv_generic_vt_join_q <= i_mul_rm_rm_rm_conv_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,215)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_w_sync_buffer119_conv_generic(BLACKBOX,377)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer119_conv_generic : i_syncbuf_w_sync_buffer119_conv_generic524
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer119_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_rm_rm_conv_generic(ADD,256)@1
    i_add2_rm_rm_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer119_conv_generic_out_buffer_out);
    i_add2_rm_rm_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_rm_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_rm_rm_conv_generic_a) + UNSIGNED(i_add2_rm_rm_rm_conv_generic_b));
    i_add2_rm_rm_rm_conv_generic_q <= i_add2_rm_rm_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b <= i_add2_rm_rm_rm_conv_generic_q(31 downto 0);

    -- redist27_bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b_1(DELAY,524)
    redist27_bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b, xout => redist27_bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub3_rm_rm_rm_conv_generic(ADD,355)@2
    i_sub3_rm_rm_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist27_bgTrunc_i_add2_rm_rm_rm_conv_generic_sel_x_b_1_q);
    i_sub3_rm_rm_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm_conv_generic_vt_join_q);
    i_sub3_rm_rm_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_rm_rm_conv_generic_a) + UNSIGNED(i_sub3_rm_rm_rm_conv_generic_b));
    i_sub3_rm_rm_rm_conv_generic_q <= i_sub3_rm_rm_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x(BITSELECT,8)@2
    bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b <= i_sub3_rm_rm_rm_conv_generic_q(31 downto 0);

    -- redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1(DELAY,521)
    redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b, xout => redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_shr_rm_rm_rm_conv_generic_vt_const_31(CONSTANT,352)
    i_shr_rm_rm_rm_conv_generic_vt_const_31_q <= "0000000000000000000000000000000";

    -- i_syncbuf_stride_sync_buffer149_conv_generic(BLACKBOX,360)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_stride_sync_buffer149_conv_generic : i_syncbuf_stride_sync_buffer149_conv_generic519
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_stride_sync_buffer149_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_rm_rm_rm_conv_generic(LOGICAL,282)@2
    i_cmp_rm_rm_rm_conv_generic_q <= "1" WHEN i_syncbuf_stride_sync_buffer149_conv_generic_out_buffer_out = c_i32_2gr_q ELSE "0";

    -- i_shr_rm_rm_rm_conv_generic_sel_x(BITSELECT,192)@2
    i_shr_rm_rm_rm_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp_rm_rm_rm_conv_generic_q(0 downto 0)), 32));

    -- i_shr_rm_rm_rm_conv_generic_vt_select_0(BITSELECT,354)@2
    i_shr_rm_rm_rm_conv_generic_vt_select_0_b <= i_shr_rm_rm_rm_conv_generic_sel_x_b(0 downto 0);

    -- i_shr_rm_rm_rm_conv_generic_vt_join(BITJOIN,353)@2
    i_shr_rm_rm_rm_conv_generic_vt_join_q <= i_shr_rm_rm_rm_conv_generic_vt_const_31_q & i_shr_rm_rm_rm_conv_generic_vt_select_0_b;

    -- i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_narrow_x(BITSELECT,172)@2
    i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_narrow_x_b <= i_shr_rm_rm_rm_conv_generic_vt_join_q(4 downto 0);

    -- rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x(BITSELECT,444)@2
    rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_in <= i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_narrow_x_b(0 downto 0);
    rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b <= rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_in(0 downto 0);

    -- redist0_rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b_1(DELAY,497)
    redist0_rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b, xout => redist0_rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x(MUX,445)@3 + 1
    rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_s <= redist0_rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b_1_q;
    rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q <= redist24_bgTrunc_i_sub3_rm_rm_rm_conv_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q <= rightShiftStage0Idx1_uid444_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add11_rm_rm_conv_generic(ADD,255)@4
    i_add11_rm_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid446_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_q);
    i_add11_rm_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add11_rm_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_rm_rm_conv_generic_a) + UNSIGNED(i_add11_rm_rm_conv_generic_b));
    i_add11_rm_rm_conv_generic_q <= i_add11_rm_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add11_rm_rm_conv_generic_sel_x(BITSELECT,2)@4
    bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b <= i_add11_rm_rm_conv_generic_q(31 downto 0);

    -- redist28_bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b_1(DELAY,525)
    redist28_bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b, xout => redist28_bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp4717_rm_conv_generic(COMPARE,265)@5 + 1
    i_cmp4717_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp4717_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist28_bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b_1_q(31)) & redist28_bgTrunc_i_add11_rm_rm_conv_generic_sel_x_b_1_q));
    i_cmp4717_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp4717_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp4717_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp4717_rm_conv_generic_a) - SIGNED(i_cmp4717_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp4717_rm_conv_generic_c(0) <= i_cmp4717_rm_conv_generic_o(33);

    -- xMSB_uid449_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x(BITSELECT,448)@3
    xMSB_uid449_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_b <= STD_LOGIC_VECTOR(redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid451_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x(BITSELECT,450)@3
    rightShiftStage0Idx1Rng1_uid451_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_b <= redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid452_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x(BITJOIN,451)@3
    rightShiftStage0Idx1_uid452_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q <= xMSB_uid449_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_b & rightShiftStage0Idx1Rng1_uid451_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_b;

    -- i_syncbuf_h_sync_buffer124_conv_generic(BLACKBOX,357)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer124_conv_generic : i_syncbuf_h_sync_buffer124_conv_generic514
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer124_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm_rm_rm_conv_generic(ADD,258)@1
    i_add_rm_rm_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer124_conv_generic_out_buffer_out);
    i_add_rm_rm_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm_rm_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm_rm_rm_conv_generic_a) + UNSIGNED(i_add_rm_rm_rm_conv_generic_b));
    i_add_rm_rm_rm_conv_generic_q <= i_add_rm_rm_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b <= i_add_rm_rm_rm_conv_generic_q(31 downto 0);

    -- redist25_bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b_1(DELAY,522)
    redist25_bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b, xout => redist25_bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_sub_rm_rm_rm_conv_generic(ADD,356)@2
    i_sub_rm_rm_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist25_bgTrunc_i_add_rm_rm_rm_conv_generic_sel_x_b_1_q);
    i_sub_rm_rm_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_rm_rm_conv_generic_vt_join_q);
    i_sub_rm_rm_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm_rm_rm_conv_generic_a) + UNSIGNED(i_sub_rm_rm_rm_conv_generic_b));
    i_sub_rm_rm_rm_conv_generic_q <= i_sub_rm_rm_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x(BITSELECT,9)@2
    bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b <= i_sub_rm_rm_rm_conv_generic_q(31 downto 0);

    -- redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1(DELAY,520)
    redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b, xout => redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x(MUX,453)@3 + 1
    rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_s <= redist0_rightShiftStageSel0Dto0_uid445_i_cond10_rm_rm_rm_conv_generic_conv_generic526_shift_x_b_1_q;
    rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q <= redist23_bgTrunc_i_sub_rm_rm_rm_conv_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q <= rightShiftStage0Idx1_uid452_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add4_rm_rm_conv_generic(ADD,257)@4
    i_add4_rm_rm_conv_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid454_i_cond_rm_rm_rm_conv_generic_conv_generic522_shift_x_q);
    i_add4_rm_rm_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add4_rm_rm_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add4_rm_rm_conv_generic_a) + UNSIGNED(i_add4_rm_rm_conv_generic_b));
    i_add4_rm_rm_conv_generic_q <= i_add4_rm_rm_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add4_rm_rm_conv_generic_sel_x(BITSELECT,4)@4
    bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b <= i_add4_rm_rm_conv_generic_q(31 downto 0);

    -- redist26_bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b_1(DELAY,523)
    redist26_bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b, xout => redist26_bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp4425_rm_conv_generic(COMPARE,264)@5 + 1
    i_cmp4425_rm_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp4425_rm_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist26_bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b_1_q(31)) & redist26_bgTrunc_i_add4_rm_rm_conv_generic_sel_x_b_1_q));
    i_cmp4425_rm_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp4425_rm_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp4425_rm_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp4425_rm_conv_generic_a) - SIGNED(i_cmp4425_rm_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp4425_rm_conv_generic_c(0) <= i_cmp4425_rm_conv_generic_o(33);

    -- i_unnamed_conv_generic528(LOGICAL,386)@6
    i_unnamed_conv_generic528_q <= i_cmp4425_rm_conv_generic_c and i_cmp4717_rm_conv_generic_c;

    -- i_unnamed_conv_generic532(LOGICAL,387)@6 + 1
    i_unnamed_conv_generic532_qi <= i_unnamed_conv_generic528_q and i_cmp653_rm_conv_generic_c;
    i_unnamed_conv_generic532_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic532_qi, xout => i_unnamed_conv_generic532_q, clk => clock, aclr => resetn );

    -- redist1_i_unnamed_conv_generic528_q_1(DELAY,498)
    redist1_i_unnamed_conv_generic528_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic528_q, xout => redist1_i_unnamed_conv_generic528_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_notexit254282_push79_conv_generic(BLACKBOX,245)@7
    -- out out_feedback_out_79@20000000
    -- out out_feedback_valid_out_79@20000000
    thei_acl_push_i1_notexit254282_push79_conv_generic : i_acl_push_i1_notexit254282_push79_conv_generic503
    PORT MAP (
        in_data_in => redist9_i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out_6_q,
        in_feedback_stall_in_79 => i_acl_pop_i1_notexit254282_pop79_conv_generic_out_feedback_stall_out_79,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_79 => i_acl_push_i1_notexit254282_push79_conv_generic_out_feedback_out_79,
        out_feedback_valid_out_79 => i_acl_push_i1_notexit254282_push79_conv_generic_out_feedback_valid_out_79,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_notexit254282_pop79_conv_generic(BLACKBOX,232)@1
    -- out out_feedback_stall_out_79@20000000
    thei_acl_pop_i1_notexit254282_pop79_conv_generic : i_acl_pop_i1_notexit254282_pop79_conv_generic501
    PORT MAP (
        in_data_in => in_c0_eni11_6,
        in_dir => in_c0_eni11_2,
        in_feedback_in_79 => i_acl_push_i1_notexit254282_push79_conv_generic_out_feedback_out_79,
        in_feedback_valid_in_79 => i_acl_push_i1_notexit254282_push79_conv_generic_out_feedback_valid_out_79,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out,
        out_feedback_stall_out_79 => i_acl_pop_i1_notexit254282_pop79_conv_generic_out_feedback_stall_out_79,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out_6(DELAY,506)
    redist9_i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out, xout => redist9_i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_notexit250284_push82_conv_generic(BLACKBOX,244)@7
    -- out out_feedback_out_82@20000000
    -- out out_feedback_valid_out_82@20000000
    thei_acl_push_i1_notexit250284_push82_conv_generic : i_acl_push_i1_notexit250284_push82_conv_generic499
    PORT MAP (
        in_data_in => redist10_i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out_6_q,
        in_feedback_stall_in_82 => i_acl_pop_i1_notexit250284_pop82_conv_generic_out_feedback_stall_out_82,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_82 => i_acl_push_i1_notexit250284_push82_conv_generic_out_feedback_out_82,
        out_feedback_valid_out_82 => i_acl_push_i1_notexit250284_push82_conv_generic_out_feedback_valid_out_82,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_notexit250284_pop82_conv_generic(BLACKBOX,231)@1
    -- out out_feedback_stall_out_82@20000000
    thei_acl_pop_i1_notexit250284_pop82_conv_generic : i_acl_pop_i1_notexit250284_pop82_conv_generic497
    PORT MAP (
        in_data_in => in_c0_eni11_5,
        in_dir => in_c0_eni11_2,
        in_feedback_in_82 => i_acl_push_i1_notexit250284_push82_conv_generic_out_feedback_out_82,
        in_feedback_valid_in_82 => i_acl_push_i1_notexit250284_push82_conv_generic_out_feedback_valid_out_82,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out,
        out_feedback_stall_out_82 => i_acl_pop_i1_notexit250284_pop82_conv_generic_out_feedback_stall_out_82,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out_6(DELAY,507)
    redist10_i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out, xout => redist10_i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_keep_going219_or_conv_generic(LOGICAL,307)@7
    i_keep_going219_or_conv_generic_q <= redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q or redist10_i_acl_pop_i1_notexit250284_pop82_conv_generic_out_data_out_6_q;

    -- redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1(DELAY,511)
    redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pipeline_keep_going219_conv_generic_out_data_out, xout => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- c_i4_1gr(CONSTANT,225)
    c_i4_1gr_q <= "0001";

    -- leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x(BITSELECT,468)@7
    leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x_in <= redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1_q(2 downto 0);
    leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x_b <= leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x_in(2 downto 0);

    -- leftShiftStage0Idx1_uid470_i_next_cleanups227_conv_generic_conv_generic605_shift_x(BITJOIN,469)@7
    leftShiftStage0Idx1_uid470_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q <= leftShiftStage0Idx1Rng1_uid469_i_next_cleanups227_conv_generic_conv_generic605_shift_x_b & GND_q;

    -- i_or226_conv_generic(LOGICAL,317)@7
    i_or226_conv_generic_q <= i_unnamed_conv_generic602_q or i_xor225_conv_generic_q;

    -- i_cleanups_shl223_conv_generic_sel_x(BITSELECT,166)@7
    i_cleanups_shl223_conv_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_or226_conv_generic_q(0 downto 0)), 4));

    -- i_cleanups_shl223_conv_generic_vt_select_0(BITSELECT,262)@7
    i_cleanups_shl223_conv_generic_vt_select_0_b <= i_cleanups_shl223_conv_generic_sel_x_b(0 downto 0);

    -- i_cleanups_shl223_conv_generic_vt_join(BITJOIN,261)@7
    i_cleanups_shl223_conv_generic_vt_join_q <= i_cleanups_shl223_conv_generic_vt_const_3_q & i_cleanups_shl223_conv_generic_vt_select_0_b;

    -- i_next_cleanups227_conv_generic_conv_generic605_shift_narrow_x(BITSELECT,187)@7
    i_next_cleanups227_conv_generic_conv_generic605_shift_narrow_x_b <= i_cleanups_shl223_conv_generic_vt_join_q(1 downto 0);

    -- leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x(BITSELECT,470)@7
    leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x_in <= i_next_cleanups227_conv_generic_conv_generic605_shift_narrow_x_b(0 downto 0);
    leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x_b <= leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x_in(0 downto 0);

    -- leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x(MUX,471)@7
    leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_s <= leftShiftStageSel0Dto0_uid471_i_next_cleanups227_conv_generic_conv_generic605_shift_x_b;
    leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_combproc: PROCESS (leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_s, redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1_q, leftShiftStage0Idx1_uid470_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q <= redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1_q;
            WHEN "1" => leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q <= leftShiftStage0Idx1_uid470_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_acl_push_i4_cleanups222_push74_conv_generic(BLACKBOX,253)@7
    -- out out_feedback_out_74@20000000
    -- out out_feedback_valid_out_74@20000000
    thei_acl_push_i4_cleanups222_push74_conv_generic : i_acl_push_i4_cleanups222_push74_conv_generic606
    PORT MAP (
        in_data_in => leftShiftStage0_uid472_i_next_cleanups227_conv_generic_conv_generic605_shift_x_q,
        in_feedback_stall_in_74 => i_acl_pop_i4_cleanups222_pop74_conv_generic_out_feedback_stall_out_74,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_74 => i_acl_push_i4_cleanups222_push74_conv_generic_out_feedback_out_74,
        out_feedback_valid_out_74 => i_acl_push_i4_cleanups222_push74_conv_generic_out_feedback_valid_out_74,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i4_cleanups222_pop74_conv_generic(BLACKBOX,239)@6
    -- out out_feedback_stall_out_74@20000000
    thei_acl_pop_i4_cleanups222_pop74_conv_generic : i_acl_pop_i4_cleanups222_pop74_conv_generic485
    PORT MAP (
        in_data_in => c_i4_7gr_q,
        in_dir => redist17_sync_in_aunroll_x_in_c0_eni11_2_5_q,
        in_feedback_in_74 => i_acl_push_i4_cleanups222_push74_conv_generic_out_feedback_out_74,
        in_feedback_valid_in_74 => i_acl_push_i4_cleanups222_push74_conv_generic_out_feedback_valid_out_74,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out,
        out_feedback_stall_out_74 => i_acl_pop_i4_cleanups222_pop74_conv_generic_out_feedback_stall_out_74,
        clock => clock,
        resetn => resetn
    );

    -- redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1(DELAY,499)
    redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 4, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out, xout => redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_unnamed_conv_generic487(LOGICAL,378)@7
    i_unnamed_conv_generic487_q <= redist2_i_acl_pop_i4_cleanups222_pop74_conv_generic_out_data_out_1_q and c_i4_1gr_q;

    -- i_unnamed_conv_generic487_vt_select_0(BITSELECT,381)@7
    i_unnamed_conv_generic487_vt_select_0_b <= i_unnamed_conv_generic487_q(0 downto 0);

    -- i_unnamed_conv_generic487_vt_join(BITJOIN,380)@7
    i_unnamed_conv_generic487_vt_join_q <= i_cleanups_shl223_conv_generic_vt_const_3_q & i_unnamed_conv_generic487_vt_select_0_b;

    -- i_first_cleanup224_conv_generic(LOGICAL,285)@7
    i_first_cleanup224_conv_generic_q <= "1" WHEN i_unnamed_conv_generic487_vt_join_q /= c_i4_0gr_q ELSE "0";

    -- i_acl_push_i1_forked268280_push77_conv_generic(BLACKBOX,242)@6
    -- out out_feedback_out_77@20000000
    -- out out_feedback_valid_out_77@20000000
    thei_acl_push_i1_forked268280_push77_conv_generic : i_acl_push_i1_forked268280_push77_conv_generic493
    PORT MAP (
        in_data_in => redist11_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_5_q,
        in_feedback_stall_in_77 => i_acl_pop_i1_forked268280_pop77_conv_generic_out_feedback_stall_out_77,
        in_keep_going219 => i_acl_pipeline_keep_going219_conv_generic_out_data_out,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_feedback_out_77 => i_acl_push_i1_forked268280_push77_conv_generic_out_feedback_out_77,
        out_feedback_valid_out_77 => i_acl_push_i1_forked268280_push77_conv_generic_out_feedback_valid_out_77,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_forked268280_pop77_conv_generic(BLACKBOX,230)@1
    -- out out_feedback_stall_out_77@20000000
    thei_acl_pop_i1_forked268280_pop77_conv_generic : i_acl_pop_i1_forked268280_pop77_conv_generic481
    PORT MAP (
        in_data_in => in_c0_eni11_3,
        in_dir => in_c0_eni11_2,
        in_feedback_in_77 => i_acl_push_i1_forked268280_push77_conv_generic_out_feedback_out_77,
        in_feedback_valid_in_77 => i_acl_push_i1_forked268280_push77_conv_generic_out_feedback_valid_out_77,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out,
        out_feedback_stall_out_77 => i_acl_pop_i1_forked268280_pop77_conv_generic_out_feedback_stall_out_77,
        clock => clock,
        resetn => resetn
    );

    -- redist11_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_5(DELAY,508)
    redist11_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out, xout => redist11_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_5_q, clk => clock, aclr => resetn );

    -- redist12_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_6(DELAY,509)
    redist12_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_5_q, xout => redist12_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_forked267283_push80_conv_generic(BLACKBOX,241)@7
    -- out out_feedback_out_80@20000000
    -- out out_feedback_valid_out_80@20000000
    thei_acl_push_i1_forked267283_push80_conv_generic : i_acl_push_i1_forked267283_push80_conv_generic491
    PORT MAP (
        in_data_in => redist13_i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_80 => i_acl_pop_i1_forked267283_pop80_conv_generic_out_feedback_stall_out_80,
        in_keep_going219 => redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_6_q,
        out_feedback_out_80 => i_acl_push_i1_forked267283_push80_conv_generic_out_feedback_out_80,
        out_feedback_valid_out_80 => i_acl_push_i1_forked267283_push80_conv_generic_out_feedback_valid_out_80,
        clock => clock,
        resetn => resetn
    );

    -- redist15_sync_in_aunroll_x_in_c0_eni11_1_5(DELAY,512)
    redist15_sync_in_aunroll_x_in_c0_eni11_1_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni11_1, xout => redist15_sync_in_aunroll_x_in_c0_eni11_1_5_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i1_forked267283_pop80_conv_generic(BLACKBOX,229)@6
    -- out out_feedback_stall_out_80@20000000
    thei_acl_pop_i1_forked267283_pop80_conv_generic : i_acl_pop_i1_forked267283_pop80_conv_generic479
    PORT MAP (
        in_data_in => redist15_sync_in_aunroll_x_in_c0_eni11_1_5_q,
        in_dir => redist17_sync_in_aunroll_x_in_c0_eni11_2_5_q,
        in_feedback_in_80 => i_acl_push_i1_forked267283_push80_conv_generic_out_feedback_out_80,
        in_feedback_valid_in_80 => i_acl_push_i1_forked267283_push80_conv_generic_out_feedback_valid_out_80,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist21_sync_in_aunroll_x_in_i_valid_5_q,
        out_data_out => i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out,
        out_feedback_stall_out_80 => i_acl_pop_i1_forked267283_pop80_conv_generic_out_feedback_stall_out_80,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out_1(DELAY,510)
    redist13_i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out, xout => redist13_i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,194)@7
    out_c0_exi62_0 <= GND_q;
    out_c0_exi62_1 <= redist13_i_acl_pop_i1_forked267283_pop80_conv_generic_out_data_out_1_q;
    out_c0_exi62_2 <= redist12_i_acl_pop_i1_forked268280_pop77_conv_generic_out_data_out_6_q;
    out_c0_exi62_3 <= i_first_cleanup224_conv_generic_q;
    out_c0_exi62_4 <= redist14_i_acl_pipeline_keep_going219_conv_generic_out_data_out_1_q;
    out_c0_exi62_5 <= i_keep_going219_or_conv_generic_q;
    out_c0_exi62_6 <= redist9_i_acl_pop_i1_notexit254282_pop79_conv_generic_out_data_out_6_q;
    out_c0_exi62_7 <= redist1_i_unnamed_conv_generic528_q_1_q;
    out_c0_exi62_8 <= i_unnamed_conv_generic532_q;
    out_c0_exi62_9 <= i_first_cleanup224_xor_or_conv_generic_q;
    out_c0_exi62_10 <= i_arrayidx80_10_conv_generic_conv_generic575_trunc_sel_x_b;
    out_c0_exi62_11 <= i_cmp10414_rm_conv_generic_c;
    out_c0_exi62_12 <= i_first_cleanup224_xor231_or_conv_generic_q;
    out_c0_exi62_13 <= i_arrayidx80_1_conv_generic_conv_generic539_dupName_0_trunc_sel_x_b;
    out_c0_exi62_14 <= i_cmp74_1_rm_conv_generic_c;
    out_c0_exi62_15 <= i_first_cleanup224_xor232_or_conv_generic_q;
    out_c0_exi62_16 <= i_arrayidx80_2_conv_generic_conv_generic543_dupName_0_trunc_sel_x_b;
    out_c0_exi62_17 <= i_cmp74_2_rm_conv_generic_c;
    out_c0_exi62_18 <= i_first_cleanup224_xor233_or_conv_generic_q;
    out_c0_exi62_19 <= i_arrayidx80_3_conv_generic_conv_generic547_dupName_0_trunc_sel_x_b;
    out_c0_exi62_20 <= i_cmp74_3_rm_conv_generic_c;
    out_c0_exi62_21 <= i_first_cleanup224_xor234_or_conv_generic_q;
    out_c0_exi62_22 <= i_arrayidx80_4_conv_generic_conv_generic551_dupName_0_trunc_sel_x_b;
    out_c0_exi62_23 <= i_cmp74_4_rm_conv_generic_c;
    out_c0_exi62_24 <= i_first_cleanup224_xor235_or_conv_generic_q;
    out_c0_exi62_25 <= i_arrayidx80_5_conv_generic_conv_generic555_dupName_0_trunc_sel_x_b;
    out_c0_exi62_26 <= i_cmp74_5_rm_conv_generic_c;
    out_c0_exi62_27 <= i_first_cleanup224_xor236_or_conv_generic_q;
    out_c0_exi62_28 <= i_arrayidx80_6_conv_generic_conv_generic559_dupName_0_trunc_sel_x_b;
    out_c0_exi62_29 <= i_cmp74_6_rm_conv_generic_c;
    out_c0_exi62_30 <= i_first_cleanup224_xor237_or_conv_generic_q;
    out_c0_exi62_31 <= i_arrayidx80_7_conv_generic_conv_generic563_dupName_0_trunc_sel_x_b;
    out_c0_exi62_32 <= i_cmp74_7_rm_conv_generic_c;
    out_c0_exi62_33 <= i_first_cleanup224_xor238_or_conv_generic_q;
    out_c0_exi62_34 <= i_arrayidx80_8_conv_generic_conv_generic567_dupName_0_trunc_sel_x_b;
    out_c0_exi62_35 <= i_cmp74_8_rm_conv_generic_c;
    out_c0_exi62_36 <= i_first_cleanup224_xor239_or_conv_generic_q;
    out_c0_exi62_37 <= i_arrayidx80_9_conv_generic_conv_generic571_dupName_0_trunc_sel_x_b;
    out_c0_exi62_38 <= i_cmp74_9_rm_conv_generic_c;
    out_c0_exi62_39 <= i_first_cleanup224_xor240_or_conv_generic_q;
    out_c0_exi62_40 <= i_arrayidx80_10_conv_generic_conv_generic575_dupName_0_trunc_sel_x_b;
    out_c0_exi62_41 <= i_cmp74_10_rm_conv_generic_c;
    out_c0_exi62_42 <= i_first_cleanup224_xor241_or_conv_generic_q;
    out_c0_exi62_43 <= i_arrayidx80_11_conv_generic_conv_generic579_dupName_0_trunc_sel_x_b;
    out_c0_exi62_44 <= i_cmp74_11_rm_conv_generic_c;
    out_c0_exi62_45 <= i_first_cleanup224_xor242_or_conv_generic_q;
    out_c0_exi62_46 <= i_arrayidx80_12_conv_generic_conv_generic583_dupName_0_trunc_sel_x_b;
    out_c0_exi62_47 <= i_cmp74_12_rm_conv_generic_c;
    out_c0_exi62_48 <= i_first_cleanup224_xor243_or_conv_generic_q;
    out_c0_exi62_49 <= i_arrayidx80_13_conv_generic_conv_generic587_dupName_0_trunc_sel_x_b;
    out_c0_exi62_50 <= i_cmp74_13_rm_conv_generic_c;
    out_c0_exi62_51 <= i_first_cleanup224_xor244_or_conv_generic_q;
    out_c0_exi62_52 <= i_arrayidx80_14_conv_generic_conv_generic591_dupName_0_trunc_sel_x_b;
    out_c0_exi62_53 <= i_cmp74_14_rm_conv_generic_c;
    out_c0_exi62_54 <= i_first_cleanup224_xor245_or_conv_generic_q;
    out_c0_exi62_55 <= i_arrayidx80_15_conv_generic_conv_generic595_dupName_0_trunc_sel_x_b;
    out_c0_exi62_56 <= i_cmp74_15_rm_conv_generic_c;
    out_c0_exi62_57 <= i_first_cleanup224_xor246_or_conv_generic_q;
    out_c0_exi62_58 <= i_masked228_conv_generic_q;
    out_c0_exi62_59 <= redist8_i_acl_pop_i1_pop75_conv_generic_out_data_out_6_q;
    out_c0_exi62_60 <= redist7_i_acl_pop_i1_pop76_conv_generic_out_data_out_6_q;
    out_c0_exi62_61 <= redist6_i_acl_pop_i1_pop78_conv_generic_out_data_out_6_q;
    out_c0_exi62_62 <= redist5_i_acl_pop_i1_pop81_conv_generic_out_data_out_6_q;
    out_o_valid <= redist22_sync_in_aunroll_x_in_i_valid_6_q;

    -- ext_sig_sync_out(GPOUT,227)
    out_aclp_to_limiter_i_acl_pipeline_keep_going219_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going219_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going219_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going219_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,415)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going219_conv_generic_out_pipeline_valid_out;

END normal;
