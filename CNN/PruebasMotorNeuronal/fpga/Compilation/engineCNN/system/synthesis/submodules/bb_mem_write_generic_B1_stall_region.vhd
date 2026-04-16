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

-- VHDL created from bb_mem_write_generic_B1_stall_region
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

entity bb_mem_write_generic_B1_stall_region is
    port (
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_7_0 : in std_logic_vector(32 downto 0);  -- ufix33
        out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_write_generic_B1_stall_region;

architecture normal of bb_mem_write_generic_B1_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic is
        port (
            in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit27_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit27_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit27_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit27_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B1_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_c0_exit27_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_c0_exit27_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B1_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B1_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B1_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_q : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_mem_write_generic_B1_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_write_generic_B1_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_write_generic_B1_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_write_generic_B1_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_write_generic_B1_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,39)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= mem_write_generic_B1_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,32)
    bubble_join_stall_entry_q <= in_forked;

    -- bubble_select_stall_entry(BITSELECT,33)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));

    -- mem_write_generic_B1_merge_reg_aunroll_x(BLACKBOX,10)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    themem_write_generic_B1_merge_reg_aunroll_x : mem_write_generic_B1_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_stall_in => SE_out_mem_write_generic_B1_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => mem_write_generic_B1_merge_reg_aunroll_x_out_data_out_0,
        out_stall_out => mem_write_generic_B1_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => mem_write_generic_B1_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_mem_write_generic_B1_merge_reg_aunroll_x(STALLENABLE,38)
    -- Valid signal propagation
    SE_out_mem_write_generic_B1_merge_reg_aunroll_x_V0 <= SE_out_mem_write_generic_B1_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_mem_write_generic_B1_merge_reg_aunroll_x_backStall <= i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_o_stall or not (SE_out_mem_write_generic_B1_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_mem_write_generic_B1_merge_reg_aunroll_x_wireValid <= mem_write_generic_B1_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_mem_write_generic_B1_merge_reg_aunroll_x(BITJOIN,29)
    bubble_join_mem_write_generic_B1_merge_reg_aunroll_x_q <= mem_write_generic_B1_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_mem_write_generic_B1_merge_reg_aunroll_x(BITSELECT,30)
    bubble_select_mem_write_generic_B1_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_mem_write_generic_B1_merge_reg_aunroll_x_q(0 downto 0));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x(BLACKBOX,9)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit27_0@4
    -- out out_c0_exit27_1@4
    -- out out_c0_exit27_2@4
    -- out out_c0_exit27_3@4
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@4
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x : i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic
    PORT MAP (
        in_c0_eni1_0 => GND_q,
        in_c0_eni1_1 => bubble_select_mem_write_generic_B1_merge_reg_aunroll_x_b,
        in_i_stall => SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_backStall,
        in_i_valid => SE_out_mem_write_generic_B1_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_7_0 => in_intel_reserved_ffwd_7_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c0_exit27_1 => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_c0_exit27_1,
        out_c0_exit27_2 => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_c0_exit27_2,
        out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x(STALLENABLE,36)
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_V0 <= SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_wireValid <= i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_o_valid;

    -- bubble_join_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x(BITJOIN,25)
    bubble_join_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_q <= i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_c0_exit27_2 & i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_c0_exit27_1;

    -- bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x(BITSELECT,26)
    bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_q(31 downto 0));
    bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_q(32 downto 32));

    -- dupName_0_sync_out_x(GPOUT,6)@4
    out_c0_exe1 <= bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_b;
    out_c0_exe2 <= bubble_select_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_c;
    out_valid_out <= SE_out_i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_V0;

    -- ext_sig_sync_out(GPOUT,14)
    out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out <= i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out <= i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,18)
    out_pipeline_valid_out <= i_sfc_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,23)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
