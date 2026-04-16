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

-- VHDL created from i_sfc_logic_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic193
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

entity i_sfc_logic_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic193 is
    port (
        in_c0_eni13_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_4 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni13_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_6 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni13_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_8 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni13_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_10 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_11 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni13_12 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni13_13 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi10162_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_4 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi10162_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi10162_10 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic193;

architecture normal of i_sfc_logic_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic193 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going_mem_read_generic195 is
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


    component i_acl_pop_i1_acl_77_pop38_mem_read_generic197 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_38 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic199 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_41 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_41 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_41 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop32_mem_read_generic228 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_32 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop34_mem_read_generic232 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_34 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_34 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_34 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop37_mem_read_generic236 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_37 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_37 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop40_mem_read_generic214 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_40 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_40 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_40 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop42_mem_read_generic240 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_42 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_c_44_pop30_mem_read_generic203 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_30 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_tmp278_pop39_mem_read_generic205 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_39 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_acl_77_push38_mem_read_generic222 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_38 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond_mem_read_generic226 is
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


    component i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic216 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_41 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_41 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_41 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push32_mem_read_generic230 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_32 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push34_mem_read_generic234 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_34 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_34 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_34 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push37_mem_read_generic238 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_37 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_37 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_37 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push40_mem_read_generic218 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_40 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_40 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_40 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push42_mem_read_generic242 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_42 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_c_44_push30_mem_read_generic224 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_30 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_tmp278_push39_mem_read_generic220 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_39 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_in_c_sync_buffer31_mem_read_generic210 is
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


    component i_syncbuf_in_offset_sync_buffer_mem_read_generic201 is
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


    component i_syncbuf_mem_in_sync_buffer_mem_read_generic207 is
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


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add37_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add41_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_inc_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx_mem_read_generic_mem_read_generic209_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx_mem_read_generic_mem_read_generic209_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_mem_read_generic_mem_read_generic209_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_mem_read_generic_mem_read_generic209_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx_mem_read_generic_mem_read_generic209_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_idxprom_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_feedback_stall_out_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_feedback_stall_out_41 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop32_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop32_mem_read_generic_out_feedback_stall_out_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop34_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop34_mem_read_generic_out_feedback_stall_out_34 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop37_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop37_mem_read_generic_out_feedback_stall_out_37 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop40_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop40_mem_read_generic_out_feedback_stall_out_40 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop42_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop42_mem_read_generic_out_feedback_stall_out_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_c_44_pop30_mem_read_generic_out_feedback_stall_out_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_feedback_stall_out_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_acl_77_push38_mem_read_generic_out_feedback_out_38 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_acl_77_push38_mem_read_generic_out_feedback_valid_out_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond_mem_read_generic_out_feedback_out_2 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond_mem_read_generic_out_feedback_valid_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic_out_feedback_out_41 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic_out_feedback_valid_out_41 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push32_mem_read_generic_out_feedback_out_32 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push32_mem_read_generic_out_feedback_valid_out_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push34_mem_read_generic_out_feedback_out_34 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push34_mem_read_generic_out_feedback_valid_out_34 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push37_mem_read_generic_out_feedback_out_37 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push37_mem_read_generic_out_feedback_valid_out_37 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push40_mem_read_generic_out_feedback_out_40 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push40_mem_read_generic_out_feedback_valid_out_40 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push42_mem_read_generic_out_feedback_out_42 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push42_mem_read_generic_out_feedback_valid_out_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_c_44_push30_mem_read_generic_out_feedback_out_30 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_c_44_push30_mem_read_generic_out_feedback_valid_out_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_tmp278_push39_mem_read_generic_out_feedback_out_39 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_tmp278_push39_mem_read_generic_out_feedback_valid_out_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add37_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add37_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add41_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add41_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add41_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add41_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_exitcond_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond_not_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_inc_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_notexit_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_phi_decision46_xor_or_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_in_c_sync_buffer31_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_in_offset_sync_buffer_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_mem_in_sync_buffer_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_mem_read_generic213_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_notexit_mem_read_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_notexit_mem_read_generic_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_exitcond_mem_read_generic_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist4_i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_bgTrunc_i_add41_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist20_bgTrunc_i_add37_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist17_sync_in_aunroll_x_in_i_valid_1(DELAY,102)
    redist17_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist17_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist18_sync_in_aunroll_x_in_i_valid_3(DELAY,103)
    redist18_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_1_q, xout => redist18_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- i_syncbuf_in_c_sync_buffer31_mem_read_generic(BLACKBOX,72)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_in_c_sync_buffer31_mem_read_generic : i_syncbuf_in_c_sync_buffer31_mem_read_generic210
    PORT MAP (
        in_buffer_in => in_in_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_in_c_sync_buffer31_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,41)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_acl_push_i32_c_44_push30_mem_read_generic(BLACKBOX,61)@1
    -- out out_feedback_out_30@20000000
    -- out out_feedback_valid_out_30@20000000
    thei_acl_push_i32_c_44_push30_mem_read_generic : i_acl_push_i32_c_44_push30_mem_read_generic224
    PORT MAP (
        in_data_in => bgTrunc_i_inc_mem_read_generic_sel_x_b,
        in_feedback_stall_in_30 => i_acl_pop_i32_c_44_pop30_mem_read_generic_out_feedback_stall_out_30,
        in_notexit => i_notexit_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_30 => i_acl_push_i32_c_44_push30_mem_read_generic_out_feedback_out_30,
        out_feedback_valid_out_30 => i_acl_push_i32_c_44_push30_mem_read_generic_out_feedback_valid_out_30,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,40)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_c_44_pop30_mem_read_generic(BLACKBOX,51)@1
    -- out out_feedback_stall_out_30@20000000
    thei_acl_pop_i32_c_44_pop30_mem_read_generic : i_acl_pop_i32_c_44_pop30_mem_read_generic203
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni13_2,
        in_feedback_in_30 => i_acl_push_i32_c_44_push30_mem_read_generic_out_feedback_out_30,
        in_feedback_valid_in_30 => i_acl_push_i32_c_44_push30_mem_read_generic_out_feedback_valid_out_30,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out,
        out_feedback_stall_out_30 => i_acl_pop_i32_c_44_pop30_mem_read_generic_out_feedback_stall_out_30,
        clock => clock,
        resetn => resetn
    );

    -- i_inc_mem_read_generic(ADD,69)@1
    i_inc_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out);
    i_inc_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc_mem_read_generic_a) + UNSIGNED(i_inc_mem_read_generic_b));
    i_inc_mem_read_generic_q <= i_inc_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_inc_mem_read_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_inc_mem_read_generic_sel_x_b <= i_inc_mem_read_generic_q(31 downto 0);

    -- i_exitcond_mem_read_generic(LOGICAL,65)@1
    i_exitcond_mem_read_generic_q <= "1" WHEN bgTrunc_i_inc_mem_read_generic_sel_x_b = i_syncbuf_in_c_sync_buffer31_mem_read_generic_out_buffer_out ELSE "0";

    -- i_exitcond_not_mem_read_generic(LOGICAL,66)@1
    i_exitcond_not_mem_read_generic_q <= i_exitcond_mem_read_generic_q xor VCC_q;

    -- i_acl_push_i1_push40_mem_read_generic(BLACKBOX,59)@1
    -- out out_feedback_out_40@20000000
    -- out out_feedback_valid_out_40@20000000
    thei_acl_push_i1_push40_mem_read_generic : i_acl_push_i1_push40_mem_read_generic218
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop40_mem_read_generic_out_data_out,
        in_feedback_stall_in_40 => i_acl_pop_i1_pop40_mem_read_generic_out_feedback_stall_out_40,
        in_notexit => i_notexit_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_40 => i_acl_push_i1_push40_mem_read_generic_out_feedback_out_40,
        out_feedback_valid_out_40 => i_acl_push_i1_push40_mem_read_generic_out_feedback_valid_out_40,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop40_mem_read_generic(BLACKBOX,49)@1
    -- out out_feedback_stall_out_40@20000000
    thei_acl_pop_i1_pop40_mem_read_generic : i_acl_pop_i1_pop40_mem_read_generic214
    PORT MAP (
        in_data_in => in_c0_eni13_5,
        in_dir => in_c0_eni13_2,
        in_feedback_in_40 => i_acl_push_i1_push40_mem_read_generic_out_feedback_out_40,
        in_feedback_valid_in_40 => i_acl_push_i1_push40_mem_read_generic_out_feedback_valid_out_40,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop40_mem_read_generic_out_data_out,
        out_feedback_stall_out_40 => i_acl_pop_i1_pop40_mem_read_generic_out_feedback_stall_out_40,
        clock => clock,
        resetn => resetn
    );

    -- i_notexit_mem_read_generic(LOGICAL,70)@1
    i_notexit_mem_read_generic_q <= i_acl_pop_i1_pop40_mem_read_generic_out_data_out and i_exitcond_not_mem_read_generic_q;

    -- redist0_i_notexit_mem_read_generic_q_1(DELAY,85)
    redist0_i_notexit_mem_read_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit_mem_read_generic_q, xout => redist0_i_notexit_mem_read_generic_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push42_mem_read_generic(BLACKBOX,60)@2
    -- out out_feedback_out_42@20000000
    -- out out_feedback_valid_out_42@20000000
    thei_acl_push_i1_push42_mem_read_generic : i_acl_push_i1_push42_mem_read_generic242
    PORT MAP (
        in_data_in => redist5_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_42 => i_acl_pop_i1_pop42_mem_read_generic_out_feedback_stall_out_42,
        in_notexit => redist0_i_notexit_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_42 => i_acl_push_i1_push42_mem_read_generic_out_feedback_out_42,
        out_feedback_valid_out_42 => i_acl_push_i1_push42_mem_read_generic_out_feedback_valid_out_42,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop42_mem_read_generic(BLACKBOX,50)@1
    -- out out_feedback_stall_out_42@20000000
    thei_acl_pop_i1_pop42_mem_read_generic : i_acl_pop_i1_pop42_mem_read_generic240
    PORT MAP (
        in_data_in => in_c0_eni13_13,
        in_dir => in_c0_eni13_2,
        in_feedback_in_42 => i_acl_push_i1_push42_mem_read_generic_out_feedback_out_42,
        in_feedback_valid_in_42 => i_acl_push_i1_push42_mem_read_generic_out_feedback_valid_out_42,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop42_mem_read_generic_out_data_out,
        out_feedback_stall_out_42 => i_acl_pop_i1_pop42_mem_read_generic_out_feedback_stall_out_42,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_1(DELAY,90)
    redist5_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop42_mem_read_generic_out_data_out, xout => redist5_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist6_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_3(DELAY,91)
    redist6_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_1_q, xout => redist6_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push37_mem_read_generic(BLACKBOX,58)@2
    -- out out_feedback_out_37@20000000
    -- out out_feedback_valid_out_37@20000000
    thei_acl_push_i1_push37_mem_read_generic : i_acl_push_i1_push37_mem_read_generic238
    PORT MAP (
        in_data_in => redist7_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_37 => i_acl_pop_i1_pop37_mem_read_generic_out_feedback_stall_out_37,
        in_notexit => redist0_i_notexit_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_37 => i_acl_push_i1_push37_mem_read_generic_out_feedback_out_37,
        out_feedback_valid_out_37 => i_acl_push_i1_push37_mem_read_generic_out_feedback_valid_out_37,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop37_mem_read_generic(BLACKBOX,48)@1
    -- out out_feedback_stall_out_37@20000000
    thei_acl_pop_i1_pop37_mem_read_generic : i_acl_pop_i1_pop37_mem_read_generic236
    PORT MAP (
        in_data_in => in_c0_eni13_12,
        in_dir => in_c0_eni13_2,
        in_feedback_in_37 => i_acl_push_i1_push37_mem_read_generic_out_feedback_out_37,
        in_feedback_valid_in_37 => i_acl_push_i1_push37_mem_read_generic_out_feedback_valid_out_37,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop37_mem_read_generic_out_data_out,
        out_feedback_stall_out_37 => i_acl_pop_i1_pop37_mem_read_generic_out_feedback_stall_out_37,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_1(DELAY,92)
    redist7_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop37_mem_read_generic_out_data_out, xout => redist7_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist8_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_3(DELAY,93)
    redist8_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_1_q, xout => redist8_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push34_mem_read_generic(BLACKBOX,57)@2
    -- out out_feedback_out_34@20000000
    -- out out_feedback_valid_out_34@20000000
    thei_acl_push_i1_push34_mem_read_generic : i_acl_push_i1_push34_mem_read_generic234
    PORT MAP (
        in_data_in => redist9_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_34 => i_acl_pop_i1_pop34_mem_read_generic_out_feedback_stall_out_34,
        in_notexit => redist0_i_notexit_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_34 => i_acl_push_i1_push34_mem_read_generic_out_feedback_out_34,
        out_feedback_valid_out_34 => i_acl_push_i1_push34_mem_read_generic_out_feedback_valid_out_34,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop34_mem_read_generic(BLACKBOX,47)@1
    -- out out_feedback_stall_out_34@20000000
    thei_acl_pop_i1_pop34_mem_read_generic : i_acl_pop_i1_pop34_mem_read_generic232
    PORT MAP (
        in_data_in => in_c0_eni13_9,
        in_dir => in_c0_eni13_2,
        in_feedback_in_34 => i_acl_push_i1_push34_mem_read_generic_out_feedback_out_34,
        in_feedback_valid_in_34 => i_acl_push_i1_push34_mem_read_generic_out_feedback_valid_out_34,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop34_mem_read_generic_out_data_out,
        out_feedback_stall_out_34 => i_acl_pop_i1_pop34_mem_read_generic_out_feedback_stall_out_34,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_1(DELAY,94)
    redist9_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop34_mem_read_generic_out_data_out, xout => redist9_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist10_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_3(DELAY,95)
    redist10_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist9_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_1_q, xout => redist10_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push32_mem_read_generic(BLACKBOX,56)@2
    -- out out_feedback_out_32@20000000
    -- out out_feedback_valid_out_32@20000000
    thei_acl_push_i1_push32_mem_read_generic : i_acl_push_i1_push32_mem_read_generic230
    PORT MAP (
        in_data_in => redist11_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_32 => i_acl_pop_i1_pop32_mem_read_generic_out_feedback_stall_out_32,
        in_notexit => redist0_i_notexit_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_32 => i_acl_push_i1_push32_mem_read_generic_out_feedback_out_32,
        out_feedback_valid_out_32 => i_acl_push_i1_push32_mem_read_generic_out_feedback_valid_out_32,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop32_mem_read_generic(BLACKBOX,46)@1
    -- out out_feedback_stall_out_32@20000000
    thei_acl_pop_i1_pop32_mem_read_generic : i_acl_pop_i1_pop32_mem_read_generic228
    PORT MAP (
        in_data_in => in_c0_eni13_7,
        in_dir => in_c0_eni13_2,
        in_feedback_in_32 => i_acl_push_i1_push32_mem_read_generic_out_feedback_out_32,
        in_feedback_valid_in_32 => i_acl_push_i1_push32_mem_read_generic_out_feedback_valid_out_32,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop32_mem_read_generic_out_data_out,
        out_feedback_stall_out_32 => i_acl_pop_i1_pop32_mem_read_generic_out_feedback_stall_out_32,
        clock => clock,
        resetn => resetn
    );

    -- redist11_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_1(DELAY,96)
    redist11_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop32_mem_read_generic_out_data_out, xout => redist11_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist12_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_3(DELAY,97)
    redist12_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist11_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_1_q, xout => redist12_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- redist1_i_notexit_mem_read_generic_q_3(DELAY,86)
    redist1_i_notexit_mem_read_generic_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist0_i_notexit_mem_read_generic_q_1_q, xout => redist1_i_notexit_mem_read_generic_q_3_q, clk => clock, aclr => resetn );

    -- redist2_i_exitcond_mem_read_generic_q_3(DELAY,87)
    redist2_i_exitcond_mem_read_generic_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond_mem_read_generic_q, xout => redist2_i_exitcond_mem_read_generic_q_3_q, clk => clock, aclr => resetn );

    -- i_unnamed_mem_read_generic213(LOGICAL,75)@4
    i_unnamed_mem_read_generic213_q <= redist2_i_exitcond_mem_read_generic_q_3_q or redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3_q;

    -- i_acl_push_i32_tmp278_push39_mem_read_generic(BLACKBOX,62)@1
    -- out out_feedback_out_39@20000000
    -- out out_feedback_valid_out_39@20000000
    thei_acl_push_i32_tmp278_push39_mem_read_generic : i_acl_push_i32_tmp278_push39_mem_read_generic220
    PORT MAP (
        in_data_in => i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out,
        in_feedback_stall_in_39 => i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_feedback_stall_out_39,
        in_notexit => i_notexit_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_39 => i_acl_push_i32_tmp278_push39_mem_read_generic_out_feedback_out_39,
        out_feedback_valid_out_39 => i_acl_push_i32_tmp278_push39_mem_read_generic_out_feedback_valid_out_39,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_tmp278_pop39_mem_read_generic(BLACKBOX,52)@1
    -- out out_feedback_stall_out_39@20000000
    thei_acl_pop_i32_tmp278_pop39_mem_read_generic : i_acl_pop_i32_tmp278_pop39_mem_read_generic205
    PORT MAP (
        in_data_in => in_c0_eni13_4,
        in_dir => in_c0_eni13_2,
        in_feedback_in_39 => i_acl_push_i32_tmp278_push39_mem_read_generic_out_feedback_out_39,
        in_feedback_valid_in_39 => i_acl_push_i32_tmp278_push39_mem_read_generic_out_feedback_valid_out_39,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out,
        out_feedback_stall_out_39 => i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_feedback_stall_out_39,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out_2(DELAY,88)
    redist3_i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out, xout => redist3_i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_syncbuf_in_offset_sync_buffer_mem_read_generic(BLACKBOX,73)@0
    -- in in_i_dependence@2
    -- in in_valid_in@2
    -- out out_buffer_out@2
    -- out out_valid_out@2
    thei_syncbuf_in_offset_sync_buffer_mem_read_generic : i_syncbuf_in_offset_sync_buffer_mem_read_generic201
    PORT MAP (
        in_buffer_in => in_in_offset,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_buffer_out => i_syncbuf_in_offset_sync_buffer_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out_1(DELAY,89)
    redist4_i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out, xout => redist4_i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_add37_mem_read_generic(ADD,63)@2
    i_add37_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist4_i_acl_pop_i32_c_44_pop30_mem_read_generic_out_data_out_1_q);
    i_add37_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_in_offset_sync_buffer_mem_read_generic_out_buffer_out);
    i_add37_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add37_mem_read_generic_a) + UNSIGNED(i_add37_mem_read_generic_b));
    i_add37_mem_read_generic_q <= i_add37_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add37_mem_read_generic_sel_x(BITSELECT,2)@2
    bgTrunc_i_add37_mem_read_generic_sel_x_b <= i_add37_mem_read_generic_q(31 downto 0);

    -- redist20_bgTrunc_i_add37_mem_read_generic_sel_x_b_1(DELAY,105)
    redist20_bgTrunc_i_add37_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add37_mem_read_generic_sel_x_b, xout => redist20_bgTrunc_i_add37_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add41_mem_read_generic(ADD,64)@3
    i_add41_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist20_bgTrunc_i_add37_mem_read_generic_sel_x_b_1_q);
    i_add41_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & redist3_i_acl_pop_i32_tmp278_pop39_mem_read_generic_out_data_out_2_q);
    i_add41_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add41_mem_read_generic_a) + UNSIGNED(i_add41_mem_read_generic_b));
    i_add41_mem_read_generic_q <= i_add41_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add41_mem_read_generic_sel_x(BITSELECT,3)@3
    bgTrunc_i_add41_mem_read_generic_sel_x_b <= i_add41_mem_read_generic_q(31 downto 0);

    -- redist19_bgTrunc_i_add41_mem_read_generic_sel_x_b_1(DELAY,104)
    redist19_bgTrunc_i_add41_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add41_mem_read_generic_sel_x_b, xout => redist19_bgTrunc_i_add41_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom_mem_read_generic_sel_x(BITSELECT,32)@4
    i_idxprom_mem_read_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist19_bgTrunc_i_add41_mem_read_generic_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_syncbuf_mem_in_sync_buffer_mem_read_generic(BLACKBOX,74)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_mem_in_sync_buffer_mem_read_generic : i_syncbuf_mem_in_sync_buffer_mem_read_generic207
    PORT MAP (
        in_buffer_in => in_mem_in,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_mem_in_sync_buffer_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx_mem_read_generic_mem_read_generic209_add_x(ADD,30)@4
    i_arrayidx_mem_read_generic_mem_read_generic209_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_mem_in_sync_buffer_mem_read_generic_out_buffer_out);
    i_arrayidx_mem_read_generic_mem_read_generic209_add_x_b <= STD_LOGIC_VECTOR("0" & i_idxprom_mem_read_generic_sel_x_b);
    i_arrayidx_mem_read_generic_mem_read_generic209_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx_mem_read_generic_mem_read_generic209_add_x_a) + UNSIGNED(i_arrayidx_mem_read_generic_mem_read_generic209_add_x_b));
    i_arrayidx_mem_read_generic_mem_read_generic209_add_x_q <= i_arrayidx_mem_read_generic_mem_read_generic209_add_x_o(64 downto 0);

    -- i_arrayidx_mem_read_generic_mem_read_generic209_trunc_sel_x(BITSELECT,29)@4
    i_arrayidx_mem_read_generic_mem_read_generic209_trunc_sel_x_b <= i_arrayidx_mem_read_generic_mem_read_generic209_add_x_q(63 downto 0);

    -- i_phi_decision46_xor_or_mem_read_generic(LOGICAL,71)@4
    i_phi_decision46_xor_or_mem_read_generic_q <= redist16_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_3_q or redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3_q;

    -- i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic(BLACKBOX,55)@2
    -- out out_feedback_out_41@20000000
    -- out out_feedback_valid_out_41@20000000
    thei_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic : i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic216
    PORT MAP (
        in_data_in => redist13_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_41 => i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_feedback_stall_out_41,
        in_notexit => redist0_i_notexit_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_41 => i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic_out_feedback_out_41,
        out_feedback_valid_out_41 => i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic_out_feedback_valid_out_41,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic(BLACKBOX,45)@1
    -- out out_feedback_stall_out_41@20000000
    thei_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic : i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic199
    PORT MAP (
        in_data_in => in_c0_eni13_3,
        in_dir => in_c0_eni13_2,
        in_feedback_in_41 => i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic_out_feedback_out_41,
        in_feedback_valid_in_41 => i_acl_push_i1_phi_decision46_xor_rm79_push41_mem_read_generic_out_feedback_valid_out_41,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out,
        out_feedback_stall_out_41 => i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_feedback_stall_out_41,
        clock => clock,
        resetn => resetn
    );

    -- redist13_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_1(DELAY,98)
    redist13_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out, xout => redist13_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3(DELAY,99)
    redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist13_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_1_q, xout => redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_acl_77_push38_mem_read_generic(BLACKBOX,53)@2
    -- out out_feedback_out_38@20000000
    -- out out_feedback_valid_out_38@20000000
    thei_acl_push_i1_acl_77_push38_mem_read_generic : i_acl_push_i1_acl_77_push38_mem_read_generic222
    PORT MAP (
        in_data_in => redist15_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_38 => i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_feedback_stall_out_38,
        in_notexit => redist0_i_notexit_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_38 => i_acl_push_i1_acl_77_push38_mem_read_generic_out_feedback_out_38,
        out_feedback_valid_out_38 => i_acl_push_i1_acl_77_push38_mem_read_generic_out_feedback_valid_out_38,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_acl_77_pop38_mem_read_generic(BLACKBOX,44)@1
    -- out out_feedback_stall_out_38@20000000
    thei_acl_pop_i1_acl_77_pop38_mem_read_generic : i_acl_pop_i1_acl_77_pop38_mem_read_generic197
    PORT MAP (
        in_data_in => in_c0_eni13_1,
        in_dir => in_c0_eni13_2,
        in_feedback_in_38 => i_acl_push_i1_acl_77_push38_mem_read_generic_out_feedback_out_38,
        in_feedback_valid_in_38 => i_acl_push_i1_acl_77_push38_mem_read_generic_out_feedback_valid_out_38,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out,
        out_feedback_stall_out_38 => i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_feedback_stall_out_38,
        clock => clock,
        resetn => resetn
    );

    -- redist15_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_1(DELAY,100)
    redist15_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out, xout => redist15_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist16_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_3(DELAY,101)
    redist16_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist15_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_1_q, xout => redist16_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,34)@4
    out_c0_exi10162_0 <= GND_q;
    out_c0_exi10162_1 <= redist16_i_acl_pop_i1_acl_77_pop38_mem_read_generic_out_data_out_3_q;
    out_c0_exi10162_2 <= redist14_i_acl_pop_i1_phi_decision46_xor_rm79_pop41_mem_read_generic_out_data_out_3_q;
    out_c0_exi10162_3 <= i_phi_decision46_xor_or_mem_read_generic_q;
    out_c0_exi10162_4 <= i_arrayidx_mem_read_generic_mem_read_generic209_trunc_sel_x_b;
    out_c0_exi10162_5 <= i_unnamed_mem_read_generic213_q;
    out_c0_exi10162_6 <= redist1_i_notexit_mem_read_generic_q_3_q;
    out_c0_exi10162_7 <= redist12_i_acl_pop_i1_pop32_mem_read_generic_out_data_out_3_q;
    out_c0_exi10162_8 <= redist10_i_acl_pop_i1_pop34_mem_read_generic_out_data_out_3_q;
    out_c0_exi10162_9 <= redist8_i_acl_pop_i1_pop37_mem_read_generic_out_data_out_3_q;
    out_c0_exi10162_10 <= redist6_i_acl_pop_i1_pop42_mem_read_generic_out_data_out_3_q;
    out_o_valid <= redist18_sync_in_aunroll_x_in_i_valid_3_q;

    -- i_acl_push_i1_notexitcond_mem_read_generic(BLACKBOX,54)@1
    -- out out_feedback_out_2@20000000
    -- out out_feedback_valid_out_2@20000000
    thei_acl_push_i1_notexitcond_mem_read_generic : i_acl_push_i1_notexitcond_mem_read_generic226
    PORT MAP (
        in_data_in => i_notexit_mem_read_generic_q,
        in_feedback_stall_in_2 => i_acl_pipeline_keep_going_mem_read_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_2 => i_acl_push_i1_notexitcond_mem_read_generic_out_feedback_out_2,
        out_feedback_valid_out_2 => i_acl_push_i1_notexitcond_mem_read_generic_out_feedback_valid_out_2,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_mem_read_generic(BLACKBOX,43)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going_mem_read_generic : i_acl_pipeline_keep_going_mem_read_generic195
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond_mem_read_generic_out_feedback_out_2,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond_mem_read_generic_out_feedback_valid_out_2,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going_mem_read_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going_mem_read_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going_mem_read_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going_mem_read_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,42)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out <= i_acl_pipeline_keep_going_mem_read_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out <= i_acl_pipeline_keep_going_mem_read_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,79)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going_mem_read_generic_out_pipeline_valid_out;

END normal;
