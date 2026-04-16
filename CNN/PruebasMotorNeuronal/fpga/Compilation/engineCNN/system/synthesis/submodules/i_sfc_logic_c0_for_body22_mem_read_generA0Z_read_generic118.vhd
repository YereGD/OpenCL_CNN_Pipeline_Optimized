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

-- VHDL created from i_sfc_logic_c0_for_body22_mem_read_generic_c0_enter113_mem_read_generic118
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

entity i_sfc_logic_c0_for_body22_mem_read_generic_c0_enter113_mem_read_generic118 is
    port (
        in_c0_eni8_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_4 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_5 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni8_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni8_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi13_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi13_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_4 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi13_5 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi13_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_10 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi13_11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi13_13 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body22_mem_read_generic_c0_enter113_mem_read_generic118;

architecture normal of i_sfc_logic_c0_for_body22_mem_read_generic_c0_enter113_mem_read_generic118 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going47_mem_read_generic120 is
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


    component i_acl_pop_i1_or_cond72_pop27_mem_read_generic127 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_27 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop24_mem_read_generic178 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_24 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop26_mem_read_generic182 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_26 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop29_mem_read_generic186 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_29 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_kx_36_pop22_mem_read_generic122 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_22 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_22 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_22 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_mul3474_pop28_mem_read_generic132 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_28 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_28 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_28 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_sub2465_pop23_mem_read_generic174 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_23 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_sub2769_pop25_mem_read_generic124 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_25 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic158 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_21 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_stall_out_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond48_mem_read_generic172 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_or_cond72_push27_mem_read_generic164 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_27 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push24_mem_read_generic180 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_24 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push26_mem_read_generic184 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_26 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push29_mem_read_generic188 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_29 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_kx_36_push22_mem_read_generic168 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_22 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_22 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_22 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_mul3474_push28_mem_read_generic162 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_28 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_28 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_28 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_sub2465_push23_mem_read_generic176 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_23 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_sub2769_push25_mem_read_generic166 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_25 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_25 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_25 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic170 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_feedback_stall_in_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit49 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_out_21 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer30_mem_read_generic136 is
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


    component i_syncbuf_in_c_sync_buffer32_mem_read_generic151 is
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


    component i_syncbuf_in_c_sync_buffer_mem_read_generic134 is
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


    component i_syncbuf_pad_sync_buffer41_mem_read_generic138 is
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


    component i_syncbuf_stride_sync_buffer36_mem_read_generic141 is
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


    component i_syncbuf_w_sync_buffer24_mem_read_generic129 is
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


    component i_syncbuf_w_sync_buffer26_mem_read_generic146 is
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
    signal bgTrunc_i_add11_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add28_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add4_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal bgTrunc_i_inc43_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp2_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i3_1gr_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_cond10_rm_mem_read_generic_mem_read_generic148_shift_narrow_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_shr_rm_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_2gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i3_1gr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_mem_read_generic_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_feedback_stall_out_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop24_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop24_mem_read_generic_out_feedback_stall_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop26_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop26_mem_read_generic_out_feedback_stall_out_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop29_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop29_mem_read_generic_out_feedback_stall_out_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_feedback_stall_out_22 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_feedback_stall_out_28 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_feedback_stall_out_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_feedback_stall_out_25 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_feedback_stall_out_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond48_mem_read_generic_out_feedback_out_4 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond48_mem_read_generic_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_or_cond72_push27_mem_read_generic_out_feedback_out_27 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_or_cond72_push27_mem_read_generic_out_feedback_valid_out_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push24_mem_read_generic_out_feedback_out_24 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push24_mem_read_generic_out_feedback_valid_out_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push26_mem_read_generic_out_feedback_out_26 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push26_mem_read_generic_out_feedback_valid_out_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push29_mem_read_generic_out_feedback_out_29 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push29_mem_read_generic_out_feedback_valid_out_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_kx_36_push22_mem_read_generic_out_feedback_out_22 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_kx_36_push22_mem_read_generic_out_feedback_valid_out_22 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_mul3474_push28_mem_read_generic_out_feedback_out_28 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_mul3474_push28_mem_read_generic_out_feedback_valid_out_28 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sub2465_push23_mem_read_generic_out_feedback_out_23 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sub2465_push23_mem_read_generic_out_feedback_valid_out_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sub2769_push25_mem_read_generic_out_feedback_out_25 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sub2769_push25_mem_read_generic_out_feedback_valid_out_25 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic_out_feedback_out_21 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic_out_feedback_valid_out_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add11_rm_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add11_rm_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add28_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add4_rm_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp1316_rm_mem_read_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1316_rm_mem_read_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1316_rm_mem_read_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1316_rm_mem_read_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp1510_rm_mem_read_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1510_rm_mem_read_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1510_rm_mem_read_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp1510_rm_mem_read_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp33_mem_read_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp33_mem_read_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp33_mem_read_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp33_mem_read_generic_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp393_rm_mem_read_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp393_rm_mem_read_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp393_rm_mem_read_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp393_rm_mem_read_generic_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp_rm_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next_mem_read_generic_a : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next_mem_read_generic_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next_mem_read_generic_o : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next_mem_read_generic_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_inc43_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc43_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc43_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc43_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_rm_mem_read_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm_mem_read_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_notexit49_demorgan_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit49_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond1_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision46_xor_rm_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_shr_rm_mem_read_generic_vt_const_31_q : STD_LOGIC_VECTOR (30 downto 0);
    signal i_shr_rm_mem_read_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_shr_rm_mem_read_generic_vt_select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_rm_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer30_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer32_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_c_sync_buffer_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer41_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_stride_sync_buffer36_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer24_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer26_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_tmp_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_tmp_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_unnamed_mem_read_generic150_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_read_generic150_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_read_generic154_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_read_generic155_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid163_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid165_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid166_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xMSB_uid171_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0Idx1Rng1_uid173_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal rightShiftStage0Idx1_uid174_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid183_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_tmp2_mem_read_generic_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_tmp2_mem_read_generic_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tmp2_mem_read_generic_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_tmp2_mem_read_generic_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_tmp2_mem_read_generic_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_tmp2_mem_read_generic_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_tmp2_mem_read_generic_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_tmp2_mem_read_generic_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_tmp2_mem_read_generic_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_tmp2_mem_read_generic_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_tmp2_mem_read_generic_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_tmp2_mem_read_generic_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_tmp2_mem_read_generic_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_tmp2_mem_read_generic_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_tmp2_mem_read_generic_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_tmp2_mem_read_generic_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_tmp2_mem_read_generic_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_cmp32_mem_read_generic_cmp_sign_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp32_mem_read_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond42_mem_read_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_read_generic156_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_tmp2_mem_read_generic_im0_cma_reset : std_logic;
    type i_tmp2_mem_read_generic_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_tmp2_mem_read_generic_im0_cma_a0 : i_tmp2_mem_read_generic_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_tmp2_mem_read_generic_im0_cma_a0 : signal is true;
    signal i_tmp2_mem_read_generic_im0_cma_c0 : i_tmp2_mem_read_generic_im0_cma_a0type(0 to 0);
    attribute preserve of i_tmp2_mem_read_generic_im0_cma_c0 : signal is true;
    type i_tmp2_mem_read_generic_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_tmp2_mem_read_generic_im0_cma_p : i_tmp2_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im0_cma_u : i_tmp2_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im0_cma_w : i_tmp2_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im0_cma_x : i_tmp2_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im0_cma_y : i_tmp2_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im0_cma_s : i_tmp2_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_tmp2_mem_read_generic_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_tmp2_mem_read_generic_im0_cma_ena0 : std_logic;
    signal i_tmp2_mem_read_generic_im0_cma_ena1 : std_logic;
    signal i_tmp2_mem_read_generic_im10_cma_reset : std_logic;
    type i_tmp2_mem_read_generic_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_tmp2_mem_read_generic_im10_cma_a0 : i_tmp2_mem_read_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_tmp2_mem_read_generic_im10_cma_a0 : signal is true;
    signal i_tmp2_mem_read_generic_im10_cma_c0 : i_tmp2_mem_read_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_tmp2_mem_read_generic_im10_cma_c0 : signal is true;
    type i_tmp2_mem_read_generic_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_tmp2_mem_read_generic_im10_cma_p : i_tmp2_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im10_cma_u : i_tmp2_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im10_cma_w : i_tmp2_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im10_cma_x : i_tmp2_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im10_cma_y : i_tmp2_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im10_cma_s : i_tmp2_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_tmp2_mem_read_generic_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_tmp2_mem_read_generic_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_tmp2_mem_read_generic_im10_cma_ena0 : std_logic;
    signal i_tmp2_mem_read_generic_im10_cma_ena1 : std_logic;
    signal i_tmp2_mem_read_generic_ma3_cma_reset : std_logic;
    signal i_tmp2_mem_read_generic_ma3_cma_a0 : i_tmp2_mem_read_generic_im10_cma_a0type(0 to 1);
    attribute preserve of i_tmp2_mem_read_generic_ma3_cma_a0 : signal is true;
    type i_tmp2_mem_read_generic_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_tmp2_mem_read_generic_ma3_cma_c0 : i_tmp2_mem_read_generic_ma3_cma_c0type(0 to 1);
    attribute preserve of i_tmp2_mem_read_generic_ma3_cma_c0 : signal is true;
    type i_tmp2_mem_read_generic_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_tmp2_mem_read_generic_ma3_cma_l : i_tmp2_mem_read_generic_ma3_cma_ltype(0 to 1);
    type i_tmp2_mem_read_generic_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_tmp2_mem_read_generic_ma3_cma_p : i_tmp2_mem_read_generic_ma3_cma_ptype(0 to 1);
    type i_tmp2_mem_read_generic_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_tmp2_mem_read_generic_ma3_cma_u : i_tmp2_mem_read_generic_ma3_cma_utype(0 to 1);
    signal i_tmp2_mem_read_generic_ma3_cma_w : i_tmp2_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_tmp2_mem_read_generic_ma3_cma_x : i_tmp2_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_tmp2_mem_read_generic_ma3_cma_y : i_tmp2_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_tmp2_mem_read_generic_ma3_cma_s : i_tmp2_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_tmp2_mem_read_generic_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_tmp2_mem_read_generic_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_tmp2_mem_read_generic_ma3_cma_ena0 : std_logic;
    signal i_tmp2_mem_read_generic_ma3_cma_ena1 : std_logic;
    signal i_tmp2_mem_read_generic_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_tmp2_mem_read_generic_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_tmp2_mem_read_generic_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_tmp2_mem_read_generic_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_tmp2_mem_read_generic_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist3_i_unnamed_mem_read_generic150_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_shr_rm_mem_read_generic_vt_select_0_b_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_notexit49_mem_read_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_notexit49_mem_read_generic_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_notexit49_demorgan_mem_read_generic_q_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist14_i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist15_i_acl_pop_i1_pop29_mem_read_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_acl_pop_i1_pop26_mem_read_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_i_acl_pop_i1_pop24_mem_read_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_i_acl_mem_read_generic_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist22_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist23_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist24_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist25_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist26_sync_in_aunroll_x_in_i_valid_6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist30_bgTrunc_i_add4_rm_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist32_bgTrunc_i_add11_rm_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_reset0 : std_logic;
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_i : signal is true;
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp_b : STD_LOGIC_VECTOR (2 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_q : signal is true;
    signal redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_reset0 : std_logic;
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_aa : STD_LOGIC_VECTOR (2 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_ab : STD_LOGIC_VECTOR (2 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i : UNSIGNED (2 downto 0);
    attribute preserve of redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i : signal is true;
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_eq : std_logic;
    attribute preserve of redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_eq : signal is true;
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_wraddr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_last_q : STD_LOGIC_VECTOR (2 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_q : signal is true;
    signal redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_reset0 : std_logic;
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i : signal is true;
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_eq : std_logic;
    attribute preserve of redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_eq : signal is true;
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_q : signal is true;
    signal redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist22_sync_in_aunroll_x_in_i_valid_1(DELAY,247)
    redist22_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist22_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist23_sync_in_aunroll_x_in_i_valid_2(DELAY,248)
    redist23_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist22_sync_in_aunroll_x_in_i_valid_1_q, xout => redist23_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist24_sync_in_aunroll_x_in_i_valid_3(DELAY,249)
    redist24_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist23_sync_in_aunroll_x_in_i_valid_2_q, xout => redist24_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist25_sync_in_aunroll_x_in_i_valid_5(DELAY,250)
    redist25_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist24_sync_in_aunroll_x_in_i_valid_3_q, xout => redist25_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- redist26_sync_in_aunroll_x_in_i_valid_6(DELAY,251)
    redist26_sync_in_aunroll_x_in_i_valid_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist25_sync_in_aunroll_x_in_i_valid_5_q, xout => redist26_sync_in_aunroll_x_in_i_valid_6_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x(BITSELECT,181)@1
    leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_in <= i_syncbuf_pad_sync_buffer41_mem_read_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_b <= leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid183_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x(BITJOIN,182)@1
    leftShiftStage0Idx1_uid183_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q <= leftShiftStage0Idx1Rng1_uid182_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer41_mem_read_generic(BLACKBOX,132)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer41_mem_read_generic : i_syncbuf_pad_sync_buffer41_mem_read_generic138
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer41_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x(MUX,184)@1
    leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_s <= VCC_q;
    leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_combproc: PROCESS (leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_s, i_syncbuf_pad_sync_buffer41_mem_read_generic_out_buffer_out, leftShiftStage0Idx1_uid183_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q <= i_syncbuf_pad_sync_buffer41_mem_read_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q <= leftShiftStage0Idx1_uid183_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm_mem_read_generic_vt_select_31(BITSELECT,118)@1
    i_mul_rm_mem_read_generic_vt_select_31_b <= leftShiftStage0_uid185_i_mul_rm_mem_read_generic_mem_read_generic140_shift_x_q(31 downto 1);

    -- i_mul_rm_mem_read_generic_vt_join(BITJOIN,117)@1
    i_mul_rm_mem_read_generic_vt_join_q <= i_mul_rm_mem_read_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,77)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer30_mem_read_generic(BLACKBOX,129)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer30_mem_read_generic : i_syncbuf_h_sync_buffer30_mem_read_generic136
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer30_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm_mem_read_generic(ADD,106)@1
    i_add_rm_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer30_mem_read_generic_out_buffer_out);
    i_add_rm_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm_mem_read_generic_a) + UNSIGNED(i_add_rm_mem_read_generic_b));
    i_add_rm_mem_read_generic_q <= i_add_rm_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm_mem_read_generic_sel_x(BITSELECT,6)@1
    bgTrunc_i_add_rm_mem_read_generic_sel_x_b <= i_add_rm_mem_read_generic_q(31 downto 0);

    -- i_sub_rm_mem_read_generic(ADD,128)@1
    i_sub_rm_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add_rm_mem_read_generic_sel_x_b);
    i_sub_rm_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_mem_read_generic_vt_join_q);
    i_sub_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm_mem_read_generic_a) + UNSIGNED(i_sub_rm_mem_read_generic_b));
    i_sub_rm_mem_read_generic_q <= i_sub_rm_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm_mem_read_generic_sel_x(BITSELECT,10)@1
    bgTrunc_i_sub_rm_mem_read_generic_sel_x_b <= i_sub_rm_mem_read_generic_q(31 downto 0);

    -- i_syncbuf_w_sync_buffer26_mem_read_generic(BLACKBOX,135)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer26_mem_read_generic : i_syncbuf_w_sync_buffer26_mem_read_generic146
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer26_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm_mem_read_generic(ADD,104)@1
    i_add2_rm_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer26_mem_read_generic_out_buffer_out);
    i_add2_rm_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm_mem_read_generic_a) + UNSIGNED(i_add2_rm_mem_read_generic_b));
    i_add2_rm_mem_read_generic_q <= i_add2_rm_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm_mem_read_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_add2_rm_mem_read_generic_sel_x_b <= i_add2_rm_mem_read_generic_q(31 downto 0);

    -- i_sub3_rm_mem_read_generic(ADD,127)@1
    i_sub3_rm_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm_mem_read_generic_sel_x_b);
    i_sub3_rm_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm_mem_read_generic_vt_join_q);
    i_sub3_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm_mem_read_generic_a) + UNSIGNED(i_sub3_rm_mem_read_generic_b));
    i_sub3_rm_mem_read_generic_q <= i_sub3_rm_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm_mem_read_generic_sel_x(BITSELECT,9)@1
    bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b <= i_sub3_rm_mem_read_generic_q(31 downto 0);

    -- i_unnamed_mem_read_generic155(LOGICAL,140)@1
    i_unnamed_mem_read_generic155_q <= bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b or bgTrunc_i_sub_rm_mem_read_generic_sel_x_b;

    -- i_unnamed_mem_read_generic156_cmp_sign(LOGICAL,219)@1
    i_unnamed_mem_read_generic156_cmp_sign_q <= STD_LOGIC_VECTOR(i_unnamed_mem_read_generic155_q(31 downto 31));

    -- dupName_0_c_i3_1gr_x(CONSTANT,14)
    dupName_0_c_i3_1gr_x_q <= "111";

    -- i_fpgaindvars_iv_next_mem_read_generic(ADD,114)@1
    i_fpgaindvars_iv_next_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_data_out);
    i_fpgaindvars_iv_next_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i3_1gr_x_q);
    i_fpgaindvars_iv_next_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_mem_read_generic_a) + UNSIGNED(i_fpgaindvars_iv_next_mem_read_generic_b));
    i_fpgaindvars_iv_next_mem_read_generic_q <= i_fpgaindvars_iv_next_mem_read_generic_o(3 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_mem_read_generic_sel_x(BITSELECT,7)@1
    bgTrunc_i_fpgaindvars_iv_next_mem_read_generic_sel_x_b <= i_fpgaindvars_iv_next_mem_read_generic_q(2 downto 0);

    -- i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic(BLACKBOX,101)@1
    -- out out_feedback_out_21@20000000
    -- out out_feedback_valid_out_21@20000000
    thei_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic : i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic170
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_mem_read_generic_sel_x_b,
        in_feedback_stall_in_21 => i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_feedback_stall_out_21,
        in_notexit49 => i_notexit49_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_21 => i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic_out_feedback_out_21,
        out_feedback_valid_out_21 => i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic_out_feedback_valid_out_21,
        clock => clock,
        resetn => resetn
    );

    -- c_i3_1gr(CONSTANT,79)
    c_i3_1gr_q <= "001";

    -- i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic(BLACKBOX,91)@1
    -- out out_feedback_stall_out_21@20000000
    thei_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic : i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic158
    PORT MAP (
        in_data_in => c_i3_1gr_q,
        in_dir => in_c0_eni8_1,
        in_feedback_in_21 => i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic_out_feedback_out_21,
        in_feedback_valid_in_21 => i_acl_push_i3_fpgaindvars_iv_push21_mem_read_generic_out_feedback_valid_out_21,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_data_out,
        out_feedback_stall_out_21 => i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_feedback_stall_out_21,
        clock => clock,
        resetn => resetn
    );

    -- i_exitcond42_mem_read_generic_cmp_sign(LOGICAL,217)@1
    i_exitcond42_mem_read_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_acl_pop_i3_fpgaindvars_iv_pop21_mem_read_generic_out_data_out(2 downto 2));

    -- i_notexit49_demorgan_mem_read_generic(LOGICAL,119)@1
    i_notexit49_demorgan_mem_read_generic_q <= i_exitcond42_mem_read_generic_cmp_sign_q or i_unnamed_mem_read_generic156_cmp_sign_q;

    -- i_notexit49_mem_read_generic(LOGICAL,120)@1
    i_notexit49_mem_read_generic_q <= i_notexit49_demorgan_mem_read_generic_q xor VCC_q;

    -- i_acl_push_i1_push29_mem_read_generic(BLACKBOX,96)@1
    -- out out_feedback_out_29@20000000
    -- out out_feedback_valid_out_29@20000000
    thei_acl_push_i1_push29_mem_read_generic : i_acl_push_i1_push29_mem_read_generic188
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop29_mem_read_generic_out_data_out,
        in_feedback_stall_in_29 => i_acl_pop_i1_pop29_mem_read_generic_out_feedback_stall_out_29,
        in_notexit49 => i_notexit49_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_29 => i_acl_push_i1_push29_mem_read_generic_out_feedback_out_29,
        out_feedback_valid_out_29 => i_acl_push_i1_push29_mem_read_generic_out_feedback_valid_out_29,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop29_mem_read_generic(BLACKBOX,86)@1
    -- out out_feedback_stall_out_29@20000000
    thei_acl_pop_i1_pop29_mem_read_generic : i_acl_pop_i1_pop29_mem_read_generic186
    PORT MAP (
        in_data_in => in_c0_eni8_8,
        in_dir => in_c0_eni8_1,
        in_feedback_in_29 => i_acl_push_i1_push29_mem_read_generic_out_feedback_out_29,
        in_feedback_valid_in_29 => i_acl_push_i1_push29_mem_read_generic_out_feedback_valid_out_29,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop29_mem_read_generic_out_data_out,
        out_feedback_stall_out_29 => i_acl_pop_i1_pop29_mem_read_generic_out_feedback_stall_out_29,
        clock => clock,
        resetn => resetn
    );

    -- redist15_i_acl_pop_i1_pop29_mem_read_generic_out_data_out_6(DELAY,240)
    redist15_i_acl_pop_i1_pop29_mem_read_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop29_mem_read_generic_out_data_out, xout => redist15_i_acl_pop_i1_pop29_mem_read_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push26_mem_read_generic(BLACKBOX,95)@1
    -- out out_feedback_out_26@20000000
    -- out out_feedback_valid_out_26@20000000
    thei_acl_push_i1_push26_mem_read_generic : i_acl_push_i1_push26_mem_read_generic184
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop26_mem_read_generic_out_data_out,
        in_feedback_stall_in_26 => i_acl_pop_i1_pop26_mem_read_generic_out_feedback_stall_out_26,
        in_notexit49 => i_notexit49_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_26 => i_acl_push_i1_push26_mem_read_generic_out_feedback_out_26,
        out_feedback_valid_out_26 => i_acl_push_i1_push26_mem_read_generic_out_feedback_valid_out_26,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop26_mem_read_generic(BLACKBOX,85)@1
    -- out out_feedback_stall_out_26@20000000
    thei_acl_pop_i1_pop26_mem_read_generic : i_acl_pop_i1_pop26_mem_read_generic182
    PORT MAP (
        in_data_in => in_c0_eni8_7,
        in_dir => in_c0_eni8_1,
        in_feedback_in_26 => i_acl_push_i1_push26_mem_read_generic_out_feedback_out_26,
        in_feedback_valid_in_26 => i_acl_push_i1_push26_mem_read_generic_out_feedback_valid_out_26,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop26_mem_read_generic_out_data_out,
        out_feedback_stall_out_26 => i_acl_pop_i1_pop26_mem_read_generic_out_feedback_stall_out_26,
        clock => clock,
        resetn => resetn
    );

    -- redist16_i_acl_pop_i1_pop26_mem_read_generic_out_data_out_6(DELAY,241)
    redist16_i_acl_pop_i1_pop26_mem_read_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop26_mem_read_generic_out_data_out, xout => redist16_i_acl_pop_i1_pop26_mem_read_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push24_mem_read_generic(BLACKBOX,94)@1
    -- out out_feedback_out_24@20000000
    -- out out_feedback_valid_out_24@20000000
    thei_acl_push_i1_push24_mem_read_generic : i_acl_push_i1_push24_mem_read_generic180
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop24_mem_read_generic_out_data_out,
        in_feedback_stall_in_24 => i_acl_pop_i1_pop24_mem_read_generic_out_feedback_stall_out_24,
        in_notexit49 => i_notexit49_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_24 => i_acl_push_i1_push24_mem_read_generic_out_feedback_out_24,
        out_feedback_valid_out_24 => i_acl_push_i1_push24_mem_read_generic_out_feedback_valid_out_24,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop24_mem_read_generic(BLACKBOX,84)@1
    -- out out_feedback_stall_out_24@20000000
    thei_acl_pop_i1_pop24_mem_read_generic : i_acl_pop_i1_pop24_mem_read_generic178
    PORT MAP (
        in_data_in => in_c0_eni8_6,
        in_dir => in_c0_eni8_1,
        in_feedback_in_24 => i_acl_push_i1_push24_mem_read_generic_out_feedback_out_24,
        in_feedback_valid_in_24 => i_acl_push_i1_push24_mem_read_generic_out_feedback_valid_out_24,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop24_mem_read_generic_out_data_out,
        out_feedback_stall_out_24 => i_acl_pop_i1_pop24_mem_read_generic_out_feedback_stall_out_24,
        clock => clock,
        resetn => resetn
    );

    -- redist17_i_acl_pop_i1_pop24_mem_read_generic_out_data_out_6(DELAY,242)
    redist17_i_acl_pop_i1_pop24_mem_read_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop24_mem_read_generic_out_data_out, xout => redist17_i_acl_pop_i1_pop24_mem_read_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_notEnable(LOGICAL,274)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_nor(LOGICAL,275)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_nor_q <= not (redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_notEnable_q or redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_q);

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_last(CONSTANT,271)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_last_q <= "011";

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmp(LOGICAL,272)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmp_q <= "1" WHEN redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_last_q = redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_q ELSE "0";

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmpReg(REG,273)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmpReg_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena(REG,276)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_nor_q = "1") THEN
                redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_enaAnd(LOGICAL,277)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_enaAnd_q <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_sticky_ena_q and VCC_q;

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt(COUNTER,269)
    -- low=0, high=4, step=1, init=0
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i <= TO_UNSIGNED(0, 3);
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i = TO_UNSIGNED(3, 3)) THEN
                redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_eq <= '1';
            ELSE
                redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_eq <= '0';
            END IF;
            IF (redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_eq = '1') THEN
                redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i + 4;
            ELSE
                redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_i, 3)));

    -- i_acl_push_i32_sub2465_push23_mem_read_generic(BLACKBOX,99)@1
    -- out out_feedback_out_23@20000000
    -- out out_feedback_valid_out_23@20000000
    thei_acl_push_i32_sub2465_push23_mem_read_generic : i_acl_push_i32_sub2465_push23_mem_read_generic176
    PORT MAP (
        in_data_in => i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out,
        in_feedback_stall_in_23 => i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_feedback_stall_out_23,
        in_notexit49 => i_notexit49_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_23 => i_acl_push_i32_sub2465_push23_mem_read_generic_out_feedback_out_23,
        out_feedback_valid_out_23 => i_acl_push_i32_sub2465_push23_mem_read_generic_out_feedback_valid_out_23,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_sub2465_pop23_mem_read_generic(BLACKBOX,89)@1
    -- out out_feedback_stall_out_23@20000000
    thei_acl_pop_i32_sub2465_pop23_mem_read_generic : i_acl_pop_i32_sub2465_pop23_mem_read_generic174
    PORT MAP (
        in_data_in => in_c0_eni8_5,
        in_dir => in_c0_eni8_1,
        in_feedback_in_23 => i_acl_push_i32_sub2465_push23_mem_read_generic_out_feedback_out_23,
        in_feedback_valid_in_23 => i_acl_push_i32_sub2465_push23_mem_read_generic_out_feedback_valid_out_23,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out,
        out_feedback_stall_out_23 => i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_feedback_stall_out_23,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_wraddr(REG,270)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_wraddr_q <= "100";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_wraddr_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem(DUALMEM,268)
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_ia <= STD_LOGIC_VECTOR(i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out);
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_aa <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_wraddr_q;
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_ab <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_rdcnt_q;
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_reset0 <= not (resetn);
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 3,
        numwords_a => 5,
        width_b => 32,
        widthad_b => 3,
        numwords_b => 5,
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
        clocken1 => redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_reset0,
        clock1 => clock,
        address_a => redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_aa,
        data_a => redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_ab,
        q_b => redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_iq
    );
    redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_q <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_iq(31 downto 0);

    -- redist5_i_notexit49_mem_read_generic_q_1(DELAY,230)
    redist5_i_notexit49_mem_read_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit49_mem_read_generic_q, xout => redist5_i_notexit49_mem_read_generic_q_1_q, clk => clock, aclr => resetn );

    -- redist6_i_notexit49_mem_read_generic_q_6(DELAY,231)
    redist6_i_notexit49_mem_read_generic_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_notexit49_mem_read_generic_q_1_q, xout => redist6_i_notexit49_mem_read_generic_q_6_q, clk => clock, aclr => resetn );

    -- redist7_i_notexit49_demorgan_mem_read_generic_q_6(DELAY,232)
    redist7_i_notexit49_demorgan_mem_read_generic_q_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 6, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit49_demorgan_mem_read_generic_q, xout => redist7_i_notexit49_demorgan_mem_read_generic_q_6_q, clk => clock, aclr => resetn );

    -- i_phi_decision46_xor_rm_mem_read_generic(LOGICAL,122)@7
    i_phi_decision46_xor_rm_mem_read_generic_q <= i_unnamed_mem_read_generic154_q xor VCC_q;

    -- i_syncbuf_in_c_sync_buffer32_mem_read_generic(BLACKBOX,130)@0
    -- in in_i_dependence@6
    -- in in_valid_in@6
    -- out out_buffer_out@6
    -- out out_valid_out@6
    thei_syncbuf_in_c_sync_buffer32_mem_read_generic : i_syncbuf_in_c_sync_buffer32_mem_read_generic151
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist25_sync_in_aunroll_x_in_i_valid_5_q,
        out_buffer_out => i_syncbuf_in_c_sync_buffer32_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,74)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_cmp393_rm_mem_read_generic(COMPARE,111)@6 + 1
    i_cmp393_rm_mem_read_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp393_rm_mem_read_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_in_c_sync_buffer32_mem_read_generic_out_buffer_out(31)) & i_syncbuf_in_c_sync_buffer32_mem_read_generic_out_buffer_out));
    i_cmp393_rm_mem_read_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp393_rm_mem_read_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp393_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp393_rm_mem_read_generic_a) - SIGNED(i_cmp393_rm_mem_read_generic_b));
        END IF;
    END PROCESS;
    i_cmp393_rm_mem_read_generic_c(0) <= i_cmp393_rm_mem_read_generic_o(33);

    -- c_i32_1gr(CONSTANT,75)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- xMSB_uid163_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x(BITSELECT,162)@2
    xMSB_uid163_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b <= STD_LOGIC_VECTOR(redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid165_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x(BITSELECT,164)@2
    rightShiftStage0Idx1Rng1_uid165_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b <= redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid166_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x(BITJOIN,165)@2
    rightShiftStage0Idx1_uid166_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q <= xMSB_uid163_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b & rightShiftStage0Idx1Rng1_uid165_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b;

    -- redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1(DELAY,254)
    redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b, xout => redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_shr_rm_mem_read_generic_vt_const_31(CONSTANT,124)
    i_shr_rm_mem_read_generic_vt_const_31_q <= "0000000000000000000000000000000";

    -- c_i32_2gr(CONSTANT,76)
    c_i32_2gr_q <= "00000000000000000000000000000010";

    -- i_syncbuf_stride_sync_buffer36_mem_read_generic(BLACKBOX,133)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_stride_sync_buffer36_mem_read_generic : i_syncbuf_stride_sync_buffer36_mem_read_generic141
    PORT MAP (
        in_buffer_in => in_stride,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_stride_sync_buffer36_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp_rm_mem_read_generic(LOGICAL,112)@1
    i_cmp_rm_mem_read_generic_q <= "1" WHEN i_syncbuf_stride_sync_buffer36_mem_read_generic_out_buffer_out = c_i32_2gr_q ELSE "0";

    -- i_shr_rm_mem_read_generic_sel_x(BITSELECT,58)@1
    i_shr_rm_mem_read_generic_sel_x_b <= std_logic_vector(resize(unsigned(i_cmp_rm_mem_read_generic_q(0 downto 0)), 32));

    -- i_shr_rm_mem_read_generic_vt_select_0(BITSELECT,126)@1
    i_shr_rm_mem_read_generic_vt_select_0_b <= i_shr_rm_mem_read_generic_sel_x_b(0 downto 0);

    -- redist4_i_shr_rm_mem_read_generic_vt_select_0_b_1(DELAY,229)
    redist4_i_shr_rm_mem_read_generic_vt_select_0_b_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_shr_rm_mem_read_generic_vt_select_0_b, xout => redist4_i_shr_rm_mem_read_generic_vt_select_0_b_1_q, clk => clock, aclr => resetn );

    -- i_shr_rm_mem_read_generic_vt_join(BITJOIN,125)@2
    i_shr_rm_mem_read_generic_vt_join_q <= i_shr_rm_mem_read_generic_vt_const_31_q & redist4_i_shr_rm_mem_read_generic_vt_select_0_b_1_q;

    -- i_cond10_rm_mem_read_generic_mem_read_generic148_shift_narrow_x(BITSELECT,47)@2
    i_cond10_rm_mem_read_generic_mem_read_generic148_shift_narrow_x_b <= i_shr_rm_mem_read_generic_vt_join_q(4 downto 0);

    -- rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x(BITSELECT,166)@2
    rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_in <= i_cond10_rm_mem_read_generic_mem_read_generic148_shift_narrow_x_b(0 downto 0);
    rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b <= rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_in(0 downto 0);

    -- rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x(MUX,167)@2 + 1
    rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_s <= rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b;
    rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q <= redist29_bgTrunc_i_sub3_rm_mem_read_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q <= rightShiftStage0Idx1_uid166_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add11_rm_mem_read_generic(ADD,102)@3
    i_add11_rm_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid168_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_q);
    i_add11_rm_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add11_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add11_rm_mem_read_generic_a) + UNSIGNED(i_add11_rm_mem_read_generic_b));
    i_add11_rm_mem_read_generic_q <= i_add11_rm_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add11_rm_mem_read_generic_sel_x(BITSELECT,2)@3
    bgTrunc_i_add11_rm_mem_read_generic_sel_x_b <= i_add11_rm_mem_read_generic_q(31 downto 0);

    -- redist32_bgTrunc_i_add11_rm_mem_read_generic_sel_x_b_1(DELAY,257)
    redist32_bgTrunc_i_add11_rm_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add11_rm_mem_read_generic_sel_x_b, xout => redist32_bgTrunc_i_add11_rm_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp1510_rm_mem_read_generic(COMPARE,108)@4 + 1
    i_cmp1510_rm_mem_read_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp1510_rm_mem_read_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist32_bgTrunc_i_add11_rm_mem_read_generic_sel_x_b_1_q(31)) & redist32_bgTrunc_i_add11_rm_mem_read_generic_sel_x_b_1_q));
    i_cmp1510_rm_mem_read_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1510_rm_mem_read_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1510_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp1510_rm_mem_read_generic_a) - SIGNED(i_cmp1510_rm_mem_read_generic_b));
        END IF;
    END PROCESS;
    i_cmp1510_rm_mem_read_generic_c(0) <= i_cmp1510_rm_mem_read_generic_o(33);

    -- xMSB_uid171_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x(BITSELECT,170)@2
    xMSB_uid171_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_b <= STD_LOGIC_VECTOR(redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1_q(31 downto 31));

    -- rightShiftStage0Idx1Rng1_uid173_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x(BITSELECT,172)@2
    rightShiftStage0Idx1Rng1_uid173_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_b <= redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1_q(31 downto 1);

    -- rightShiftStage0Idx1_uid174_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x(BITJOIN,173)@2
    rightShiftStage0Idx1_uid174_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q <= xMSB_uid171_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_b & rightShiftStage0Idx1Rng1_uid173_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_b;

    -- redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1(DELAY,253)
    redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_sub_rm_mem_read_generic_sel_x_b, xout => redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x(MUX,175)@2 + 1
    rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_s <= rightShiftStageSel0Dto0_uid167_i_cond10_rm_mem_read_generic_mem_read_generic148_shift_x_b;
    rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            CASE (rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_s) IS
                WHEN "0" => rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q <= redist28_bgTrunc_i_sub_rm_mem_read_generic_sel_x_b_1_q;
                WHEN "1" => rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q <= rightShiftStage0Idx1_uid174_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q;
                WHEN OTHERS => rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q <= (others => '0');
            END CASE;
        END IF;
    END PROCESS;

    -- i_add4_rm_mem_read_generic(ADD,105)@3
    i_add4_rm_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & rightShiftStage0_uid176_i_cond_rm_mem_read_generic_mem_read_generic144_shift_x_q);
    i_add4_rm_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_add4_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add4_rm_mem_read_generic_a) + UNSIGNED(i_add4_rm_mem_read_generic_b));
    i_add4_rm_mem_read_generic_q <= i_add4_rm_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add4_rm_mem_read_generic_sel_x(BITSELECT,5)@3
    bgTrunc_i_add4_rm_mem_read_generic_sel_x_b <= i_add4_rm_mem_read_generic_q(31 downto 0);

    -- redist30_bgTrunc_i_add4_rm_mem_read_generic_sel_x_b_1(DELAY,255)
    redist30_bgTrunc_i_add4_rm_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add4_rm_mem_read_generic_sel_x_b, xout => redist30_bgTrunc_i_add4_rm_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_cmp1316_rm_mem_read_generic(COMPARE,107)@4 + 1
    i_cmp1316_rm_mem_read_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => c_i32_0gr_q(31)) & c_i32_0gr_q));
    i_cmp1316_rm_mem_read_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist30_bgTrunc_i_add4_rm_mem_read_generic_sel_x_b_1_q(31)) & redist30_bgTrunc_i_add4_rm_mem_read_generic_sel_x_b_1_q));
    i_cmp1316_rm_mem_read_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp1316_rm_mem_read_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp1316_rm_mem_read_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp1316_rm_mem_read_generic_a) - SIGNED(i_cmp1316_rm_mem_read_generic_b));
        END IF;
    END PROCESS;
    i_cmp1316_rm_mem_read_generic_c(0) <= i_cmp1316_rm_mem_read_generic_o(33);

    -- i_unnamed_mem_read_generic150(LOGICAL,138)@5 + 1
    i_unnamed_mem_read_generic150_qi <= i_cmp1316_rm_mem_read_generic_c and i_cmp1510_rm_mem_read_generic_c;
    i_unnamed_mem_read_generic150_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_read_generic150_qi, xout => i_unnamed_mem_read_generic150_q, clk => clock, aclr => resetn );

    -- redist3_i_unnamed_mem_read_generic150_q_2(DELAY,228)
    redist3_i_unnamed_mem_read_generic150_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_mem_read_generic150_q, xout => redist3_i_unnamed_mem_read_generic150_q_2_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_read_generic154(LOGICAL,139)@7
    i_unnamed_mem_read_generic154_q <= redist3_i_unnamed_mem_read_generic150_q_2_q and i_cmp393_rm_mem_read_generic_c;

    -- i_acl_push_i32_mul3474_push28_mem_read_generic(BLACKBOX,98)@2
    -- out out_feedback_out_28@20000000
    -- out out_feedback_valid_out_28@20000000
    thei_acl_push_i32_mul3474_push28_mem_read_generic : i_acl_push_i32_mul3474_push28_mem_read_generic162
    PORT MAP (
        in_data_in => redist11_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_28 => i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_feedback_stall_out_28,
        in_notexit49 => redist5_i_notexit49_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_28 => i_acl_push_i32_mul3474_push28_mem_read_generic_out_feedback_out_28,
        out_feedback_valid_out_28 => i_acl_push_i32_mul3474_push28_mem_read_generic_out_feedback_valid_out_28,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_mul3474_pop28_mem_read_generic(BLACKBOX,88)@1
    -- out out_feedback_stall_out_28@20000000
    thei_acl_pop_i32_mul3474_pop28_mem_read_generic : i_acl_pop_i32_mul3474_pop28_mem_read_generic132
    PORT MAP (
        in_data_in => in_c0_eni8_4,
        in_dir => in_c0_eni8_1,
        in_feedback_in_28 => i_acl_push_i32_mul3474_push28_mem_read_generic_out_feedback_out_28,
        in_feedback_valid_in_28 => i_acl_push_i32_mul3474_push28_mem_read_generic_out_feedback_valid_out_28,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out,
        out_feedback_stall_out_28 => i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_feedback_stall_out_28,
        clock => clock,
        resetn => resetn
    );

    -- redist11_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_1(DELAY,236)
    redist11_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out, xout => redist11_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist12_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_2(DELAY,237)
    redist12_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_1_q, xout => redist12_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_sub2769_push25_mem_read_generic(BLACKBOX,100)@2
    -- out out_feedback_out_25@20000000
    -- out out_feedback_valid_out_25@20000000
    thei_acl_push_i32_sub2769_push25_mem_read_generic : i_acl_push_i32_sub2769_push25_mem_read_generic166
    PORT MAP (
        in_data_in => redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_25 => i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_feedback_stall_out_25,
        in_notexit49 => redist5_i_notexit49_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_25 => i_acl_push_i32_sub2769_push25_mem_read_generic_out_feedback_out_25,
        out_feedback_valid_out_25 => i_acl_push_i32_sub2769_push25_mem_read_generic_out_feedback_valid_out_25,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_sub2769_pop25_mem_read_generic(BLACKBOX,90)@1
    -- out out_feedback_stall_out_25@20000000
    thei_acl_pop_i32_sub2769_pop25_mem_read_generic : i_acl_pop_i32_sub2769_pop25_mem_read_generic124
    PORT MAP (
        in_data_in => in_c0_eni8_2,
        in_dir => in_c0_eni8_1,
        in_feedback_in_25 => i_acl_push_i32_sub2769_push25_mem_read_generic_out_feedback_out_25,
        in_feedback_valid_in_25 => i_acl_push_i32_sub2769_push25_mem_read_generic_out_feedback_valid_out_25,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out,
        out_feedback_stall_out_25 => i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_feedback_stall_out_25,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1(DELAY,233)
    redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out, xout => redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_inc43_mem_read_generic(ADD,115)@2
    i_inc43_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist14_i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out_1_q);
    i_inc43_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc43_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc43_mem_read_generic_a) + UNSIGNED(i_inc43_mem_read_generic_b));
    i_inc43_mem_read_generic_q <= i_inc43_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_inc43_mem_read_generic_sel_x(BITSELECT,8)@2
    bgTrunc_i_inc43_mem_read_generic_sel_x_b <= i_inc43_mem_read_generic_q(31 downto 0);

    -- i_acl_push_i32_kx_36_push22_mem_read_generic(BLACKBOX,97)@2
    -- out out_feedback_out_22@20000000
    -- out out_feedback_valid_out_22@20000000
    thei_acl_push_i32_kx_36_push22_mem_read_generic : i_acl_push_i32_kx_36_push22_mem_read_generic168
    PORT MAP (
        in_data_in => bgTrunc_i_inc43_mem_read_generic_sel_x_b,
        in_feedback_stall_in_22 => i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_feedback_stall_out_22,
        in_notexit49 => redist5_i_notexit49_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_22 => i_acl_push_i32_kx_36_push22_mem_read_generic_out_feedback_out_22,
        out_feedback_valid_out_22 => i_acl_push_i32_kx_36_push22_mem_read_generic_out_feedback_valid_out_22,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_kx_36_pop22_mem_read_generic(BLACKBOX,87)@1
    -- out out_feedback_stall_out_22@20000000
    thei_acl_pop_i32_kx_36_pop22_mem_read_generic : i_acl_pop_i32_kx_36_pop22_mem_read_generic122
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni8_1,
        in_feedback_in_22 => i_acl_push_i32_kx_36_push22_mem_read_generic_out_feedback_out_22,
        in_feedback_valid_in_22 => i_acl_push_i32_kx_36_push22_mem_read_generic_out_feedback_valid_out_22,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out,
        out_feedback_stall_out_22 => i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_feedback_stall_out_22,
        clock => clock,
        resetn => resetn
    );

    -- redist14_i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out_1(DELAY,239)
    redist14_i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out, xout => redist14_i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_add28_mem_read_generic(ADD,103)@2
    i_add28_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist14_i_acl_pop_i32_kx_36_pop22_mem_read_generic_out_data_out_1_q);
    i_add28_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1_q);
    i_add28_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add28_mem_read_generic_a) + UNSIGNED(i_add28_mem_read_generic_b));
    i_add28_mem_read_generic_q <= i_add28_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add28_mem_read_generic_sel_x(BITSELECT,3)@2
    bgTrunc_i_add28_mem_read_generic_sel_x_b <= i_add28_mem_read_generic_q(31 downto 0);

    -- redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1(DELAY,256)
    redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add28_mem_read_generic_sel_x_b, xout => redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_tmp_mem_read_generic(ADD,137)@3
    i_tmp_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1_q);
    i_tmp_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & redist12_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_2_q);
    i_tmp_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_tmp_mem_read_generic_a) + UNSIGNED(i_tmp_mem_read_generic_b));
    i_tmp_mem_read_generic_q <= i_tmp_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_tmp_mem_read_generic_sel_x(BITSELECT,12)@3
    bgTrunc_i_tmp_mem_read_generic_sel_x_b <= i_tmp_mem_read_generic_q(31 downto 0);

    -- redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1(DELAY,252)
    redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_tmp_mem_read_generic_sel_x_b, xout => redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_tmp2_mem_read_generic_bs4(BITSELECT,202)@4
    i_tmp2_mem_read_generic_bs4_in <= STD_LOGIC_VECTOR(redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1_q(17 downto 0));
    i_tmp2_mem_read_generic_bs4_b <= STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_bs4_in(17 downto 0));

    -- i_tmp2_mem_read_generic_bjA5(BITJOIN,203)@4
    i_tmp2_mem_read_generic_bjA5_q <= GND_q & i_tmp2_mem_read_generic_bs4_b;

    -- i_syncbuf_in_c_sync_buffer_mem_read_generic(BLACKBOX,131)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_in_c_sync_buffer_mem_read_generic : i_syncbuf_in_c_sync_buffer_mem_read_generic134
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist24_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_in_c_sync_buffer_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_tmp2_mem_read_generic_bs2_merged_bit_select(BITSELECT,224)@4
    i_tmp2_mem_read_generic_bs2_merged_bit_select_b <= i_syncbuf_in_c_sync_buffer_mem_read_generic_out_buffer_out(17 downto 0);
    i_tmp2_mem_read_generic_bs2_merged_bit_select_c <= i_syncbuf_in_c_sync_buffer_mem_read_generic_out_buffer_out(31 downto 18);

    -- i_tmp2_mem_read_generic_bjB9(BITJOIN,207)@4
    i_tmp2_mem_read_generic_bjB9_q <= GND_q & i_tmp2_mem_read_generic_bs2_merged_bit_select_b;

    -- i_tmp2_mem_read_generic_bs7(BITSELECT,205)@4
    i_tmp2_mem_read_generic_bs7_b <= STD_LOGIC_VECTOR(redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1_q(31 downto 18));

    -- i_tmp2_mem_read_generic_ma3_cma(CHAINMULTADD,223)@4 + 2
    i_tmp2_mem_read_generic_ma3_cma_reset <= not (resetn);
    i_tmp2_mem_read_generic_ma3_cma_ena0 <= '1';
    i_tmp2_mem_read_generic_ma3_cma_ena1 <= i_tmp2_mem_read_generic_ma3_cma_ena0;
    i_tmp2_mem_read_generic_ma3_cma_l(0) <= SIGNED(RESIZE(i_tmp2_mem_read_generic_ma3_cma_a0(0),15));
    i_tmp2_mem_read_generic_ma3_cma_l(1) <= SIGNED(RESIZE(i_tmp2_mem_read_generic_ma3_cma_a0(1),15));
    i_tmp2_mem_read_generic_ma3_cma_p(0) <= i_tmp2_mem_read_generic_ma3_cma_l(0) * i_tmp2_mem_read_generic_ma3_cma_c0(0);
    i_tmp2_mem_read_generic_ma3_cma_p(1) <= i_tmp2_mem_read_generic_ma3_cma_l(1) * i_tmp2_mem_read_generic_ma3_cma_c0(1);
    i_tmp2_mem_read_generic_ma3_cma_u(0) <= RESIZE(i_tmp2_mem_read_generic_ma3_cma_p(0),35);
    i_tmp2_mem_read_generic_ma3_cma_u(1) <= RESIZE(i_tmp2_mem_read_generic_ma3_cma_p(1),35);
    i_tmp2_mem_read_generic_ma3_cma_w(0) <= i_tmp2_mem_read_generic_ma3_cma_u(0) + i_tmp2_mem_read_generic_ma3_cma_u(1);
    i_tmp2_mem_read_generic_ma3_cma_x(0) <= i_tmp2_mem_read_generic_ma3_cma_w(0);
    i_tmp2_mem_read_generic_ma3_cma_y(0) <= i_tmp2_mem_read_generic_ma3_cma_x(0);
    i_tmp2_mem_read_generic_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp2_mem_read_generic_ma3_cma_a0 <= (others => (others => '0'));
            i_tmp2_mem_read_generic_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_tmp2_mem_read_generic_ma3_cma_ena0 = '1') THEN
                i_tmp2_mem_read_generic_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_tmp2_mem_read_generic_bs7_b),14);
                i_tmp2_mem_read_generic_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_tmp2_mem_read_generic_bs2_merged_bit_select_c),14);
                i_tmp2_mem_read_generic_ma3_cma_c0(0) <= RESIZE(SIGNED(i_tmp2_mem_read_generic_bjB9_q),19);
                i_tmp2_mem_read_generic_ma3_cma_c0(1) <= RESIZE(SIGNED(i_tmp2_mem_read_generic_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_tmp2_mem_read_generic_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp2_mem_read_generic_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_tmp2_mem_read_generic_ma3_cma_ena1 = '1') THEN
                i_tmp2_mem_read_generic_ma3_cma_s(0) <= i_tmp2_mem_read_generic_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_tmp2_mem_read_generic_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_ma3_cma_s(0)(33 downto 0)), xout => i_tmp2_mem_read_generic_ma3_cma_qq, clk => clock, aclr => resetn );
    i_tmp2_mem_read_generic_ma3_cma_q <= STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_ma3_cma_qq(33 downto 0));

    -- redist0_i_tmp2_mem_read_generic_ma3_cma_q_1(DELAY,225)
    redist0_i_tmp2_mem_read_generic_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp2_mem_read_generic_ma3_cma_q, xout => redist0_i_tmp2_mem_read_generic_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_tmp2_mem_read_generic_align_14(BITSHIFT,212)@7
    i_tmp2_mem_read_generic_align_14_qint <= redist0_i_tmp2_mem_read_generic_ma3_cma_q_1_q & "000000000000000000";
    i_tmp2_mem_read_generic_align_14_q <= i_tmp2_mem_read_generic_align_14_qint(51 downto 0);

    -- i_tmp2_mem_read_generic_bs11(BITSELECT,209)@4
    i_tmp2_mem_read_generic_bs11_b <= redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1_q(31 downto 18);

    -- i_tmp2_mem_read_generic_im10_cma(CHAINMULTADD,222)@4 + 2
    i_tmp2_mem_read_generic_im10_cma_reset <= not (resetn);
    i_tmp2_mem_read_generic_im10_cma_ena0 <= '1';
    i_tmp2_mem_read_generic_im10_cma_ena1 <= i_tmp2_mem_read_generic_im10_cma_ena0;
    i_tmp2_mem_read_generic_im10_cma_p(0) <= i_tmp2_mem_read_generic_im10_cma_a0(0) * i_tmp2_mem_read_generic_im10_cma_c0(0);
    i_tmp2_mem_read_generic_im10_cma_u(0) <= RESIZE(i_tmp2_mem_read_generic_im10_cma_p(0),28);
    i_tmp2_mem_read_generic_im10_cma_w(0) <= i_tmp2_mem_read_generic_im10_cma_u(0);
    i_tmp2_mem_read_generic_im10_cma_x(0) <= i_tmp2_mem_read_generic_im10_cma_w(0);
    i_tmp2_mem_read_generic_im10_cma_y(0) <= i_tmp2_mem_read_generic_im10_cma_x(0);
    i_tmp2_mem_read_generic_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp2_mem_read_generic_im10_cma_a0 <= (others => (others => '0'));
            i_tmp2_mem_read_generic_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_tmp2_mem_read_generic_im10_cma_ena0 = '1') THEN
                i_tmp2_mem_read_generic_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_tmp2_mem_read_generic_bs11_b),14);
                i_tmp2_mem_read_generic_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_tmp2_mem_read_generic_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_tmp2_mem_read_generic_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp2_mem_read_generic_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_tmp2_mem_read_generic_im10_cma_ena1 = '1') THEN
                i_tmp2_mem_read_generic_im10_cma_s(0) <= i_tmp2_mem_read_generic_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_tmp2_mem_read_generic_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_im10_cma_s(0)(27 downto 0)), xout => i_tmp2_mem_read_generic_im10_cma_qq, clk => clock, aclr => resetn );
    i_tmp2_mem_read_generic_im10_cma_q <= STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_im10_cma_qq(27 downto 0));

    -- redist1_i_tmp2_mem_read_generic_im10_cma_q_1(DELAY,226)
    redist1_i_tmp2_mem_read_generic_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp2_mem_read_generic_im10_cma_q, xout => redist1_i_tmp2_mem_read_generic_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_tmp2_mem_read_generic_bs1(BITSELECT,199)@4
    i_tmp2_mem_read_generic_bs1_in <= redist27_bgTrunc_i_tmp_mem_read_generic_sel_x_b_1_q(17 downto 0);
    i_tmp2_mem_read_generic_bs1_b <= i_tmp2_mem_read_generic_bs1_in(17 downto 0);

    -- i_tmp2_mem_read_generic_im0_cma(CHAINMULTADD,221)@4 + 2
    i_tmp2_mem_read_generic_im0_cma_reset <= not (resetn);
    i_tmp2_mem_read_generic_im0_cma_ena0 <= '1';
    i_tmp2_mem_read_generic_im0_cma_ena1 <= i_tmp2_mem_read_generic_im0_cma_ena0;
    i_tmp2_mem_read_generic_im0_cma_p(0) <= i_tmp2_mem_read_generic_im0_cma_a0(0) * i_tmp2_mem_read_generic_im0_cma_c0(0);
    i_tmp2_mem_read_generic_im0_cma_u(0) <= RESIZE(i_tmp2_mem_read_generic_im0_cma_p(0),36);
    i_tmp2_mem_read_generic_im0_cma_w(0) <= i_tmp2_mem_read_generic_im0_cma_u(0);
    i_tmp2_mem_read_generic_im0_cma_x(0) <= i_tmp2_mem_read_generic_im0_cma_w(0);
    i_tmp2_mem_read_generic_im0_cma_y(0) <= i_tmp2_mem_read_generic_im0_cma_x(0);
    i_tmp2_mem_read_generic_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp2_mem_read_generic_im0_cma_a0 <= (others => (others => '0'));
            i_tmp2_mem_read_generic_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_tmp2_mem_read_generic_im0_cma_ena0 = '1') THEN
                i_tmp2_mem_read_generic_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_tmp2_mem_read_generic_bs1_b),18);
                i_tmp2_mem_read_generic_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_tmp2_mem_read_generic_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_tmp2_mem_read_generic_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_tmp2_mem_read_generic_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_tmp2_mem_read_generic_im0_cma_ena1 = '1') THEN
                i_tmp2_mem_read_generic_im0_cma_s(0) <= i_tmp2_mem_read_generic_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_tmp2_mem_read_generic_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_im0_cma_s(0)(35 downto 0)), xout => i_tmp2_mem_read_generic_im0_cma_qq, clk => clock, aclr => resetn );
    i_tmp2_mem_read_generic_im0_cma_q <= STD_LOGIC_VECTOR(i_tmp2_mem_read_generic_im0_cma_qq(35 downto 0));

    -- redist2_i_tmp2_mem_read_generic_im0_cma_q_1(DELAY,227)
    redist2_i_tmp2_mem_read_generic_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_tmp2_mem_read_generic_im0_cma_q, xout => redist2_i_tmp2_mem_read_generic_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_tmp2_mem_read_generic_join_13(BITJOIN,211)@7
    i_tmp2_mem_read_generic_join_13_q <= redist1_i_tmp2_mem_read_generic_im10_cma_q_1_q & redist2_i_tmp2_mem_read_generic_im0_cma_q_1_q;

    -- i_tmp2_mem_read_generic_result_add_0_0(ADD,214)@7
    i_tmp2_mem_read_generic_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_tmp2_mem_read_generic_join_13_q));
    i_tmp2_mem_read_generic_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_tmp2_mem_read_generic_align_14_q(51)) & i_tmp2_mem_read_generic_align_14_q));
    i_tmp2_mem_read_generic_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_tmp2_mem_read_generic_result_add_0_0_a) + SIGNED(i_tmp2_mem_read_generic_result_add_0_0_b));
    i_tmp2_mem_read_generic_result_add_0_0_q <= i_tmp2_mem_read_generic_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_tmp2_mem_read_generic_rnd_sel(BITSELECT,195)@7
    bgTrunc_i_tmp2_mem_read_generic_rnd_sel_in <= i_tmp2_mem_read_generic_result_add_0_0_q(63 downto 0);
    bgTrunc_i_tmp2_mem_read_generic_rnd_sel_b <= bgTrunc_i_tmp2_mem_read_generic_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_tmp2_mem_read_generic_sel_x(BITSELECT,11)@7
    bgTrunc_i_tmp2_mem_read_generic_sel_x_b <= bgTrunc_i_tmp2_mem_read_generic_rnd_sel_b(31 downto 0);

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_notEnable(LOGICAL,284)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_nor(LOGICAL,285)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_nor_q <= not (redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_notEnable_q or redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_q);

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_last(CONSTANT,281)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_last_q <= "01";

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmp(LOGICAL,282)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmp_q <= "1" WHEN redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_last_q = redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_q ELSE "0";

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmpReg(REG,283)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmpReg_q <= STD_LOGIC_VECTOR(redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena(REG,286)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_nor_q = "1") THEN
                redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_enaAnd(LOGICAL,287)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_enaAnd_q <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_sticky_ena_q and VCC_q;

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt(COUNTER,279)
    -- low=0, high=2, step=1, init=0
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_eq <= '1';
            ELSE
                redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_eq <= '0';
            END IF;
            IF (redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_eq = '1') THEN
                redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i + 2;
            ELSE
                redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_i, 2)));

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_wraddr(REG,280)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_wraddr_q <= STD_LOGIC_VECTOR(redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem(DUALMEM,278)
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_ia <= STD_LOGIC_VECTOR(redist12_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_2_q);
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_aa <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_wraddr_q;
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_ab <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_rdcnt_q;
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_reset0 <= not (resetn);
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
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
        clocken1 => redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_reset0,
        clock1 => clock,
        address_a => redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_aa,
        data_a => redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_ab,
        q_b => redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_iq
    );
    redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_q <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_iq(31 downto 0);

    -- i_syncbuf_w_sync_buffer24_mem_read_generic(BLACKBOX,134)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_w_sync_buffer24_mem_read_generic : i_syncbuf_w_sync_buffer24_mem_read_generic129
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist23_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_w_sync_buffer24_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp33_mem_read_generic(COMPARE,110)@3 + 1
    i_cmp33_mem_read_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1_q(31)) & redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1_q));
    i_cmp33_mem_read_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_w_sync_buffer24_mem_read_generic_out_buffer_out(31)) & i_syncbuf_w_sync_buffer24_mem_read_generic_out_buffer_out));
    i_cmp33_mem_read_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp33_mem_read_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp33_mem_read_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp33_mem_read_generic_a) - SIGNED(i_cmp33_mem_read_generic_b));
        END IF;
    END PROCESS;
    i_cmp33_mem_read_generic_n(0) <= not (i_cmp33_mem_read_generic_o(33));

    -- i_cmp32_mem_read_generic_cmp_sign(LOGICAL,215)@3 + 1
    i_cmp32_mem_read_generic_cmp_sign_qi <= STD_LOGIC_VECTOR(redist31_bgTrunc_i_add28_mem_read_generic_sel_x_b_1_q(31 downto 31));
    i_cmp32_mem_read_generic_cmp_sign_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp32_mem_read_generic_cmp_sign_qi, xout => i_cmp32_mem_read_generic_cmp_sign_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_or_cond72_push27_mem_read_generic(BLACKBOX,93)@2
    -- out out_feedback_out_27@20000000
    -- out out_feedback_valid_out_27@20000000
    thei_acl_push_i1_or_cond72_push27_mem_read_generic : i_acl_push_i1_or_cond72_push27_mem_read_generic164
    PORT MAP (
        in_data_in => redist18_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_27 => i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_feedback_stall_out_27,
        in_notexit49 => redist5_i_notexit49_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist22_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_27 => i_acl_push_i1_or_cond72_push27_mem_read_generic_out_feedback_out_27,
        out_feedback_valid_out_27 => i_acl_push_i1_or_cond72_push27_mem_read_generic_out_feedback_valid_out_27,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_or_cond72_pop27_mem_read_generic(BLACKBOX,83)@1
    -- out out_feedback_stall_out_27@20000000
    thei_acl_pop_i1_or_cond72_pop27_mem_read_generic : i_acl_pop_i1_or_cond72_pop27_mem_read_generic127
    PORT MAP (
        in_data_in => in_c0_eni8_3,
        in_dir => in_c0_eni8_1,
        in_feedback_in_27 => i_acl_push_i1_or_cond72_push27_mem_read_generic_out_feedback_out_27,
        in_feedback_valid_in_27 => i_acl_push_i1_or_cond72_push27_mem_read_generic_out_feedback_valid_out_27,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out,
        out_feedback_stall_out_27 => i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_feedback_stall_out_27,
        clock => clock,
        resetn => resetn
    );

    -- redist18_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_1(DELAY,243)
    redist18_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out, xout => redist18_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist19_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_3(DELAY,244)
    redist19_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_1_q, xout => redist19_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- i_or_cond1_mem_read_generic(LOGICAL,121)@4
    i_or_cond1_mem_read_generic_q <= redist19_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_3_q or i_cmp32_mem_read_generic_cmp_sign_q;

    -- i_acl_mem_read_generic(LOGICAL,81)@4 + 1
    i_acl_mem_read_generic_qi <= i_or_cond1_mem_read_generic_q or i_cmp33_mem_read_generic_n;
    i_acl_mem_read_generic_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_mem_read_generic_qi, xout => i_acl_mem_read_generic_q, clk => clock, aclr => resetn );

    -- redist21_i_acl_mem_read_generic_q_3(DELAY,246)
    redist21_i_acl_mem_read_generic_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_mem_read_generic_q, xout => redist21_i_acl_mem_read_generic_q_3_q, clk => clock, aclr => resetn );

    -- redist20_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_6(DELAY,245)
    redist20_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_6 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_3_q, xout => redist20_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_6_q, clk => clock, aclr => resetn );

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_notEnable(LOGICAL,264)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_nor(LOGICAL,265)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_nor_q <= not (redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_notEnable_q or redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_q);

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_last(CONSTANT,261)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_last_q <= "010";

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp(LOGICAL,262)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp_b <= STD_LOGIC_VECTOR("0" & redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_q);
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp_q <= "1" WHEN redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_last_q = redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp_b ELSE "0";

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmpReg(REG,263)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmpReg_q <= STD_LOGIC_VECTOR(redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmp_q);
        END IF;
    END PROCESS;

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena(REG,266)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_nor_q = "1") THEN
                redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_q <= STD_LOGIC_VECTOR(redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_enaAnd(LOGICAL,267)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_enaAnd_q <= redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_sticky_ena_q and VCC_q;

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt(COUNTER,259)
    -- low=0, high=3, step=1, init=0
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_i <= TO_UNSIGNED(0, 2);
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_i <= redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_i + 1;
        END IF;
    END PROCESS;
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_i, 2)));

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_wraddr(REG,260)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_wraddr_q <= "11";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_wraddr_q <= STD_LOGIC_VECTOR(redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem(DUALMEM,258)
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_ia <= STD_LOGIC_VECTOR(redist8_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_1_q);
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_aa <= redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_wraddr_q;
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_ab <= redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_rdcnt_q;
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_reset0 <= not (resetn);
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 4,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 4,
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
        clocken1 => redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_reset0,
        clock1 => clock,
        address_a => redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_aa,
        data_a => redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_ab,
        q_b => redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_iq
    );
    redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_q <= redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_iq(31 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,60)@7
    out_c0_exi13_0 <= GND_q;
    out_c0_exi13_1 <= redist9_i_acl_pop_i32_sub2769_pop25_mem_read_generic_out_data_out_6_mem_q;
    out_c0_exi13_2 <= redist20_i_acl_pop_i1_or_cond72_pop27_mem_read_generic_out_data_out_6_q;
    out_c0_exi13_3 <= redist21_i_acl_mem_read_generic_q_3_q;
    out_c0_exi13_4 <= redist13_i_acl_pop_i32_mul3474_pop28_mem_read_generic_out_data_out_6_mem_q;
    out_c0_exi13_5 <= bgTrunc_i_tmp2_mem_read_generic_sel_x_b;
    out_c0_exi13_6 <= i_unnamed_mem_read_generic154_q;
    out_c0_exi13_7 <= i_phi_decision46_xor_rm_mem_read_generic_q;
    out_c0_exi13_8 <= redist7_i_notexit49_demorgan_mem_read_generic_q_6_q;
    out_c0_exi13_9 <= redist6_i_notexit49_mem_read_generic_q_6_q;
    out_c0_exi13_10 <= redist10_i_acl_pop_i32_sub2465_pop23_mem_read_generic_out_data_out_6_mem_q;
    out_c0_exi13_11 <= redist17_i_acl_pop_i1_pop24_mem_read_generic_out_data_out_6_q;
    out_c0_exi13_12 <= redist16_i_acl_pop_i1_pop26_mem_read_generic_out_data_out_6_q;
    out_c0_exi13_13 <= redist15_i_acl_pop_i1_pop29_mem_read_generic_out_data_out_6_q;
    out_o_valid <= redist26_sync_in_aunroll_x_in_i_valid_6_q;

    -- i_acl_push_i1_notexitcond48_mem_read_generic(BLACKBOX,92)@1
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i1_notexitcond48_mem_read_generic : i_acl_push_i1_notexitcond48_mem_read_generic172
    PORT MAP (
        in_data_in => i_notexit49_mem_read_generic_q,
        in_feedback_stall_in_4 => i_acl_pipeline_keep_going47_mem_read_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_4 => i_acl_push_i1_notexitcond48_mem_read_generic_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i1_notexitcond48_mem_read_generic_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going47_mem_read_generic(BLACKBOX,82)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going47_mem_read_generic : i_acl_pipeline_keep_going47_mem_read_generic120
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond48_mem_read_generic_out_feedback_out_4,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond48_mem_read_generic_out_feedback_valid_out_4,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going47_mem_read_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going47_mem_read_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going47_mem_read_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going47_mem_read_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,80)
    out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_valid_out <= i_acl_pipeline_keep_going47_mem_read_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going47_mem_read_generic_exiting_stall_out <= i_acl_pipeline_keep_going47_mem_read_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,152)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going47_mem_read_generic_out_pipeline_valid_out;

END normal;
