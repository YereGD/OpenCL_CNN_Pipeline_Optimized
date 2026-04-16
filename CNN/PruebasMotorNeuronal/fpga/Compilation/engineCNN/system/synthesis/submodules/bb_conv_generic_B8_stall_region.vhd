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

-- VHDL created from bb_conv_generic_B8_stall_region
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

entity bb_conv_generic_B8_stall_region is
    port (
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked268 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic40 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic41 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1356 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2357 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3358 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4359 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked268 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B8_stall_region;

architecture normal of bb_conv_generic_B8_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B8_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic is
        port (
            in_c0_eni3346_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni3346_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni3346_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni3346_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit355_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit355_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit355_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit355_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit355_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B8_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B8_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B8_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B8_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B8_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_conv_generic_B8_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal bubble_select_conv_generic_B8_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B8_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B8_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_q : STD_LOGIC_VECTOR (3 downto 0);
    signal bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (2 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B8_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_D0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,42)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv_generic_B8_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,35)
    bubble_join_stall_entry_q <= in_unnamed_conv_generic41 & in_unnamed_conv_generic40 & in_forked268;

    -- bubble_select_stall_entry(BITSELECT,36)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(2 downto 2));

    -- conv_generic_B8_merge_reg_aunroll_x(BLACKBOX,2)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv_generic_B8_merge_reg_aunroll_x : conv_generic_B8_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_b,
        in_data_in_1 => bubble_select_stall_entry_c,
        in_data_in_2 => bubble_select_stall_entry_d,
        in_stall_in => SE_out_conv_generic_B8_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv_generic_B8_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv_generic_B8_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv_generic_B8_merge_reg_aunroll_x_out_data_out_2,
        out_stall_out => conv_generic_B8_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv_generic_B8_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv_generic_B8_merge_reg_aunroll_x(STALLENABLE,39)
    SE_out_conv_generic_B8_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg0 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg1 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed0 <= (not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backStall) and SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid) or SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg0;
    SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed1 <= (not (i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_o_stall) and SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid) or SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg1;
    -- Consuming
    SE_out_conv_generic_B8_merge_reg_aunroll_x_StallValid <= SE_out_conv_generic_B8_merge_reg_aunroll_x_backStall and SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid;
    SE_out_conv_generic_B8_merge_reg_aunroll_x_toReg0 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_StallValid and SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed0;
    SE_out_conv_generic_B8_merge_reg_aunroll_x_toReg1 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_StallValid and SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_conv_generic_B8_merge_reg_aunroll_x_or0 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed0;
    SE_out_conv_generic_B8_merge_reg_aunroll_x_wireStall <= not (SE_out_conv_generic_B8_merge_reg_aunroll_x_consumed1 and SE_out_conv_generic_B8_merge_reg_aunroll_x_or0);
    SE_out_conv_generic_B8_merge_reg_aunroll_x_backStall <= SE_out_conv_generic_B8_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_conv_generic_B8_merge_reg_aunroll_x_V0 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid and not (SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg0);
    SE_out_conv_generic_B8_merge_reg_aunroll_x_V1 <= SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid and not (SE_out_conv_generic_B8_merge_reg_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_conv_generic_B8_merge_reg_aunroll_x_wireValid <= conv_generic_B8_merge_reg_aunroll_x_out_valid_out;

    -- SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0(STALLENABLE,44)
    -- Valid signal propagation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_V0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0;
    -- Stall signal propagation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_s_tv_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backStall and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0;
    -- Backward Enable generation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backEN <= not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_v_s_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backEN and SE_out_conv_generic_B8_merge_reg_aunroll_x_V0;
    -- Backward Stall generation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backStall <= not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_v_s_0);
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backEN = "0") THEN
                SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0 and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_s_tv_0;
            ELSE
                SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_R_v_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_conv_generic_B8_merge_reg_aunroll_x(BITJOIN,28)
    bubble_join_conv_generic_B8_merge_reg_aunroll_x_q <= conv_generic_B8_merge_reg_aunroll_x_out_data_out_2 & conv_generic_B8_merge_reg_aunroll_x_out_data_out_1 & conv_generic_B8_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv_generic_B8_merge_reg_aunroll_x(BITSELECT,29)
    bubble_select_conv_generic_B8_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B8_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_conv_generic_B8_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B8_merge_reg_aunroll_x_q(1 downto 1));
    bubble_select_conv_generic_B8_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B8_merge_reg_aunroll_x_q(2 downto 2));

    -- redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0(REG,24)
    redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_backEN = "1") THEN
                redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_q <= STD_LOGIC_VECTOR(bubble_select_conv_generic_B8_merge_reg_aunroll_x_b);
            END IF;
        END IF;
    END PROCESS;

    -- redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1(REG,25)
    redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backEN = "1") THEN
                redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_q <= STD_LOGIC_VECTOR(redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_q);
            END IF;
        END IF;
    END PROCESS;

    -- SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1(STALLENABLE,45)
    -- Valid signal propagation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_V0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0;
    -- Stall signal propagation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_s_tv_0 <= SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backStall and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0;
    -- Backward Enable generation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backEN <= not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_v_s_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backEN and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_0_V0;
    -- Backward Stall generation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backStall <= not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_v_s_0);
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_backEN = "0") THEN
                SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0 and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_s_tv_0;
            ELSE
                SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_R_v_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2(STALLREG,63)
    SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid <= (others => '0');
            SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backStall and (SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid or SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_i_valid);

            IF (SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_data0 <= STD_LOGIC_VECTOR(redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_q);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_i_valid <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_V0;
    -- Stall signal propagation
    SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backStall <= SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid or not (SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_i_valid);

    -- Valid
    SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_V <= SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid WHEN SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid = "1" ELSE SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_i_valid;

    SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_D0 <= SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_data0 WHEN SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_r_valid = "1" ELSE redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_1_q;

    -- SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2(STALLENABLE,46)
    -- Valid signal propagation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_V0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0;
    -- Stall signal propagation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_s_tv_0 <= SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_backStall and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0;
    -- Backward Enable generation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backEN <= not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_v_s_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backEN and SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_V;
    -- Backward Stall generation
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backStall <= not (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backEN);
    SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backEN = "0") THEN
                SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0 and SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_s_tv_0;
            ELSE
                SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_R_v_0 <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x(BLACKBOX,9)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit355_0@4
    -- out out_c0_exit355_1@4
    -- out out_c0_exit355_2@4
    -- out out_c0_exit355_3@4
    -- out out_c0_exit355_4@4
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@4
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x : i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic
    PORT MAP (
        in_c0_eni3346_0 => GND_q,
        in_c0_eni3346_1 => bubble_select_conv_generic_B8_merge_reg_aunroll_x_b,
        in_c0_eni3346_2 => bubble_select_conv_generic_B8_merge_reg_aunroll_x_c,
        in_c0_eni3346_3 => bubble_select_conv_generic_B8_merge_reg_aunroll_x_d,
        in_h => in_h,
        in_i_stall => SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_backStall,
        in_i_valid => SE_out_conv_generic_B8_merge_reg_aunroll_x_V1,
        in_pad => in_pad,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_w => in_w,
        out_c0_exit355_1 => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_1,
        out_c0_exit355_2 => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_2,
        out_c0_exit355_3 => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_3,
        out_c0_exit355_4 => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_4,
        out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x(STALLENABLE,41)
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_V0 <= SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_backStall <= in_stall_in or not (SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_and0 <= i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_o_valid;
    SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_wireValid <= SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_V0 and SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_and0;

    -- redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2(REG,26)
    redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_backEN = "1") THEN
                redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_q <= STD_LOGIC_VECTOR(SR_SE_redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x(BITJOIN,31)
    bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_q <= i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_4 & i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_3 & i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_2 & i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_c0_exit355_1;

    -- bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x(BITSELECT,32)
    bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_q(1 downto 1));
    bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_q(2 downto 2));
    bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_q(3 downto 3));

    -- dupName_0_sync_out_x(GPOUT,7)@4
    out_c0_exe1356 <= bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_b;
    out_c0_exe2357 <= bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_c;
    out_c0_exe3358 <= bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_d;
    out_c0_exe4359 <= bubble_select_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_e;
    out_forked268 <= redist0_conv_generic_B8_merge_reg_aunroll_x_out_data_out_0_3_2_q;
    out_valid_out <= SE_out_i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_V0;

    -- ext_sig_sync_out(GPOUT,13)
    out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out <= i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out <= i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going252_conv_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,17)
    out_pipeline_valid_out <= i_sfc_c0_for_cond61_preheader_conv_generic_c0_enter347_conv_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,22)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
