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

-- VHDL created from bb_conv_generic_B9_stall_region
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

entity bb_conv_generic_B9_stall_region is
    port (
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked267 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268279 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit254281 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic42 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic43 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic44 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1380 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2381 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3382 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4383 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5384 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe6385 : out std_logic_vector(32 downto 0);  -- ufix33
        out_c0_exe7386 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8387 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked267 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B9_stall_region;

architecture normal of bb_conv_generic_B9_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B9_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic is
        port (
            in_c0_eni6_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni6_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit379_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit379_6 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_c0_exit379_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit379_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B9_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_6 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_conv_generic_B9_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (5 downto 0);
    signal bubble_select_conv_generic_B9_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B9_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B9_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B9_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B9_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B9_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q : STD_LOGIC_VECTOR (71 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_g : STD_LOGIC_VECTOR (32 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (5 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B9_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,45)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv_generic_B9_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,35)
    bubble_join_stall_entry_q <= in_unnamed_conv_generic44 & in_unnamed_conv_generic43 & in_unnamed_conv_generic42 & in_notexit254281 & in_forked268279 & in_forked267;

    -- bubble_select_stall_entry(BITSELECT,36)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(2 downto 2));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(3 downto 3));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(4 downto 4));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(5 downto 5));

    -- conv_generic_B9_merge_reg_aunroll_x(BLACKBOX,2)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv_generic_B9_merge_reg_aunroll_x : conv_generic_B9_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_data_in_1 => bubble_select_stall_entry_e,
        in_data_in_2 => bubble_select_stall_entry_f,
        in_data_in_3 => bubble_select_stall_entry_c,
        in_data_in_4 => bubble_select_stall_entry_g,
        in_data_in_5 => bubble_select_stall_entry_d,
        in_stall_in => SE_out_conv_generic_B9_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv_generic_B9_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv_generic_B9_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv_generic_B9_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv_generic_B9_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv_generic_B9_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => conv_generic_B9_merge_reg_aunroll_x_out_data_out_5,
        out_stall_out => conv_generic_B9_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv_generic_B9_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv_generic_B9_merge_reg_aunroll_x(STALLENABLE,42)
    SE_out_conv_generic_B9_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg0 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg1 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed0 <= (not (i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_o_stall) and SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid) or SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg0;
    SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed1 <= (not (redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_out) and SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid) or SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg1;
    -- Consuming
    SE_out_conv_generic_B9_merge_reg_aunroll_x_StallValid <= SE_out_conv_generic_B9_merge_reg_aunroll_x_backStall and SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid;
    SE_out_conv_generic_B9_merge_reg_aunroll_x_toReg0 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_StallValid and SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed0;
    SE_out_conv_generic_B9_merge_reg_aunroll_x_toReg1 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_StallValid and SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_conv_generic_B9_merge_reg_aunroll_x_or0 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed0;
    SE_out_conv_generic_B9_merge_reg_aunroll_x_wireStall <= not (SE_out_conv_generic_B9_merge_reg_aunroll_x_consumed1 and SE_out_conv_generic_B9_merge_reg_aunroll_x_or0);
    SE_out_conv_generic_B9_merge_reg_aunroll_x_backStall <= SE_out_conv_generic_B9_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_conv_generic_B9_merge_reg_aunroll_x_V0 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid and not (SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg0);
    SE_out_conv_generic_B9_merge_reg_aunroll_x_V1 <= SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid and not (SE_out_conv_generic_B9_merge_reg_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_conv_generic_B9_merge_reg_aunroll_x_wireValid <= conv_generic_B9_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_conv_generic_B9_merge_reg_aunroll_x(BITJOIN,28)
    bubble_join_conv_generic_B9_merge_reg_aunroll_x_q <= conv_generic_B9_merge_reg_aunroll_x_out_data_out_5 & conv_generic_B9_merge_reg_aunroll_x_out_data_out_4 & conv_generic_B9_merge_reg_aunroll_x_out_data_out_3 & conv_generic_B9_merge_reg_aunroll_x_out_data_out_2 & conv_generic_B9_merge_reg_aunroll_x_out_data_out_1 & conv_generic_B9_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv_generic_B9_merge_reg_aunroll_x(BITSELECT,29)
    bubble_select_conv_generic_B9_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B9_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_conv_generic_B9_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B9_merge_reg_aunroll_x_q(1 downto 1));
    bubble_select_conv_generic_B9_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B9_merge_reg_aunroll_x_q(2 downto 2));
    bubble_select_conv_generic_B9_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B9_merge_reg_aunroll_x_q(3 downto 3));
    bubble_select_conv_generic_B9_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B9_merge_reg_aunroll_x_q(4 downto 4));
    bubble_select_conv_generic_B9_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B9_merge_reg_aunroll_x_q(5 downto 5));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x(BLACKBOX,11)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit379_0@10
    -- out out_c0_exit379_1@10
    -- out out_c0_exit379_2@10
    -- out out_c0_exit379_3@10
    -- out out_c0_exit379_4@10
    -- out out_c0_exit379_5@10
    -- out out_c0_exit379_6@10
    -- out out_c0_exit379_7@10
    -- out out_c0_exit379_8@10
    -- out out_c0_exit379_9@10
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@10
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x : i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic
    PORT MAP (
        in_c0_eni6_0 => GND_q,
        in_c0_eni6_1 => bubble_select_conv_generic_B9_merge_reg_aunroll_x_e,
        in_c0_eni6_2 => bubble_select_conv_generic_B9_merge_reg_aunroll_x_b,
        in_c0_eni6_3 => bubble_select_conv_generic_B9_merge_reg_aunroll_x_g,
        in_c0_eni6_4 => bubble_select_conv_generic_B9_merge_reg_aunroll_x_c,
        in_c0_eni6_5 => bubble_select_conv_generic_B9_merge_reg_aunroll_x_d,
        in_c0_eni6_6 => bubble_select_conv_generic_B9_merge_reg_aunroll_x_f,
        in_h => in_h,
        in_i_stall => SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_backStall,
        in_i_valid => SE_out_conv_generic_B9_merge_reg_aunroll_x_V0,
        in_in_c => in_in_c,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stride => in_stride,
        in_w => in_w,
        out_c0_exit379_1 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_1,
        out_c0_exit379_2 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_2,
        out_c0_exit379_3 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_3,
        out_c0_exit379_4 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_4,
        out_c0_exit379_5 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_5,
        out_c0_exit379_6 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_6,
        out_c0_exit379_7 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_7,
        out_c0_exit379_8 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_8,
        out_c0_exit379_9 => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_9,
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo(STALLFIFO,26)
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_in <= SE_out_conv_generic_B9_merge_reg_aunroll_x_V1;
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_in <= SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_backStall;
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_data_in <= bubble_select_conv_generic_B9_merge_reg_aunroll_x_b;
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_in_bitsignaltemp <= redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_in(0);
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_in_bitsignaltemp <= redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_in(0);
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_out(0) <= redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_out_bitsignaltemp;
    redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_out(0) <= redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_out_bitsignaltemp;
    theredist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 10,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_conv_generic_B9_merge_reg_aunroll_x_b,
        valid_out => redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_stall_out_bitsignaltemp,
        data_out => redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo(STALLENABLE,48)
    -- Valid signal propagation
    SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_V0 <= SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_backStall <= in_stall_in or not (SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_and0 <= redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_valid_out;
    SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_wireValid <= i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_o_valid and SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_and0;

    -- bubble_join_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo(BITJOIN,39)
    bubble_join_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_q <= redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_data_out;

    -- bubble_select_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo(BITSELECT,40)
    bubble_select_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_q(0 downto 0));

    -- bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x(BITJOIN,31)
    bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q <= i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_9 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_8 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_7 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_6 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_5 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_4 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_3 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_2 & i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_c0_exit379_1;

    -- bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x(BITSELECT,32)
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(1 downto 1));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(2 downto 2));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(3 downto 3));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(35 downto 4));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(68 downto 36));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(69 downto 69));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(70 downto 70));
    bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_q(71 downto 71));

    -- dupName_0_sync_out_x(GPOUT,7)@10
    out_c0_exe1380 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_b;
    out_c0_exe2381 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_c;
    out_c0_exe3382 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_d;
    out_c0_exe4383 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_e;
    out_c0_exe5384 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_f;
    out_c0_exe6385 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_g;
    out_c0_exe7386 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_h;
    out_c0_exe8387 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_i;
    out_c0_exe9 <= bubble_select_i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_j;
    out_forked267 <= bubble_select_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_b;
    out_valid_out <= SE_out_redist0_conv_generic_B9_merge_reg_aunroll_x_out_data_out_0_9_fifo_V0;

    -- ext_sig_sync_out(GPOUT,15)
    out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out <= i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out <= i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going248_conv_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,19)
    out_pipeline_valid_out <= i_sfc_c0_for_cond64_preheader_conv_generic_c0_enter365_conv_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,24)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
