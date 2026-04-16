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

-- VHDL created from i_sfc_logic_c15_for_body_conv_generic_c15_enter_conv_generic50
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

entity i_sfc_logic_c15_for_body_conv_generic_c15_enter_conv_generic50 is
    port (
        in_c15_eni6_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c15_eni6_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c15_eni6_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c15_eni6_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c15_eni6_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c15_eni6_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c15_eni6_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic2_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c15_for_body_conv_generic_c15_enter_conv_generic50;

architecture normal of i_sfc_logic_c15_for_body_conv_generic_c15_enter_conv_generic50 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i32_local_bias_0_0_pop30_conv_generic54 is
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


    component i_acl_push_i32_local_bias_0_0_push30_conv_generic56 is
        port (
            in_c15_ene5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component i_ffwd_src_unnamed_conv_generic1_conv_generic58 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_feedback_stall_out_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_local_bias_0_0_push30_conv_generic_out_feedback_out_30 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_local_bias_0_0_push30_conv_generic_out_feedback_valid_out_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic1_conv_generic_out_intel_reserved_ffwd_10_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_local_bias_0_1_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_local_bias_0_1_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reduction_conv_generic_10_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reduction_conv_generic_10_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_conv_generic52_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_conv_generic52_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_sync_in_aunroll_x_in_c15_eni6_2_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_sync_in_aunroll_x_in_c15_eni6_3_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist2_sync_in_aunroll_x_in_c15_eni6_4_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_sync_in_aunroll_x_in_c15_eni6_5_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_sync_in_aunroll_x_in_c15_eni6_6_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist5_sync_in_aunroll_x_in_i_valid_1(DELAY,22)
    redist5_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist5_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist1_sync_in_aunroll_x_in_c15_eni6_3_1(DELAY,18)
    redist1_sync_in_aunroll_x_in_c15_eni6_3_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c15_eni6_3, xout => redist1_sync_in_aunroll_x_in_c15_eni6_3_1_q, clk => clock, aclr => resetn );

    -- c_i32_0gr(CONSTANT,7)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_unnamed_conv_generic52(LOGICAL,14)@125 + 1
    i_unnamed_conv_generic52_qi <= "1" WHEN in_c15_eni6_1 = c_i32_0gr_q ELSE "0";
    i_unnamed_conv_generic52_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic52_qi, xout => i_unnamed_conv_generic52_q, clk => clock, aclr => resetn );

    -- i_local_bias_0_1_conv_generic(MUX,12)@126
    i_local_bias_0_1_conv_generic_s <= i_unnamed_conv_generic52_q;
    i_local_bias_0_1_conv_generic_combproc: PROCESS (i_local_bias_0_1_conv_generic_s, i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_data_out, redist1_sync_in_aunroll_x_in_c15_eni6_3_1_q)
    BEGIN
        CASE (i_local_bias_0_1_conv_generic_s) IS
            WHEN "0" => i_local_bias_0_1_conv_generic_q <= i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_data_out;
            WHEN "1" => i_local_bias_0_1_conv_generic_q <= redist1_sync_in_aunroll_x_in_c15_eni6_3_1_q;
            WHEN OTHERS => i_local_bias_0_1_conv_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist3_sync_in_aunroll_x_in_c15_eni6_5_1(DELAY,20)
    redist3_sync_in_aunroll_x_in_c15_eni6_5_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c15_eni6_5, xout => redist3_sync_in_aunroll_x_in_c15_eni6_5_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_local_bias_0_0_push30_conv_generic(BLACKBOX,10)@126
    -- out out_feedback_out_30@20000000
    -- out out_feedback_valid_out_30@20000000
    thei_acl_push_i32_local_bias_0_0_push30_conv_generic : i_acl_push_i32_local_bias_0_0_push30_conv_generic56
    PORT MAP (
        in_c15_ene5 => redist3_sync_in_aunroll_x_in_c15_eni6_5_1_q,
        in_data_in => i_reduction_conv_generic_10_conv_generic_q,
        in_feedback_stall_in_30 => i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_feedback_stall_out_30,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_30 => i_acl_push_i32_local_bias_0_0_push30_conv_generic_out_feedback_out_30,
        out_feedback_valid_out_30 => i_acl_push_i32_local_bias_0_0_push30_conv_generic_out_feedback_valid_out_30,
        clock => clock,
        resetn => resetn
    );

    -- redist0_sync_in_aunroll_x_in_c15_eni6_2_1(DELAY,17)
    redist0_sync_in_aunroll_x_in_c15_eni6_2_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c15_eni6_2, xout => redist0_sync_in_aunroll_x_in_c15_eni6_2_1_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i32_local_bias_0_0_pop30_conv_generic(BLACKBOX,9)@126
    -- out out_feedback_stall_out_30@20000000
    thei_acl_pop_i32_local_bias_0_0_pop30_conv_generic : i_acl_pop_i32_local_bias_0_0_pop30_conv_generic54
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist0_sync_in_aunroll_x_in_c15_eni6_2_1_q,
        in_feedback_in_30 => i_acl_push_i32_local_bias_0_0_push30_conv_generic_out_feedback_out_30,
        in_feedback_valid_in_30 => i_acl_push_i32_local_bias_0_0_push30_conv_generic_out_feedback_valid_out_30,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_data_out => i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_data_out,
        out_feedback_stall_out_30 => i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_feedback_stall_out_30,
        clock => clock,
        resetn => resetn
    );

    -- redist2_sync_in_aunroll_x_in_c15_eni6_4_1(DELAY,19)
    redist2_sync_in_aunroll_x_in_c15_eni6_4_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c15_eni6_4, xout => redist2_sync_in_aunroll_x_in_c15_eni6_4_1_q, clk => clock, aclr => resetn );

    -- i_reduction_conv_generic_10_conv_generic(MUX,13)@126
    i_reduction_conv_generic_10_conv_generic_s <= redist2_sync_in_aunroll_x_in_c15_eni6_4_1_q;
    i_reduction_conv_generic_10_conv_generic_combproc: PROCESS (i_reduction_conv_generic_10_conv_generic_s, i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_data_out, i_local_bias_0_1_conv_generic_q)
    BEGIN
        CASE (i_reduction_conv_generic_10_conv_generic_s) IS
            WHEN "0" => i_reduction_conv_generic_10_conv_generic_q <= i_acl_pop_i32_local_bias_0_0_pop30_conv_generic_out_data_out;
            WHEN "1" => i_reduction_conv_generic_10_conv_generic_q <= i_local_bias_0_1_conv_generic_q;
            WHEN OTHERS => i_reduction_conv_generic_10_conv_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- redist4_sync_in_aunroll_x_in_c15_eni6_6_1(DELAY,21)
    redist4_sync_in_aunroll_x_in_c15_eni6_6_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c15_eni6_6, xout => redist4_sync_in_aunroll_x_in_c15_eni6_6_1_q, clk => clock, aclr => resetn );

    -- i_ffwd_src_unnamed_conv_generic1_conv_generic(BLACKBOX,11)@126
    -- out out_intel_reserved_ffwd_10_0@20000000
    thei_ffwd_src_unnamed_conv_generic1_conv_generic : i_ffwd_src_unnamed_conv_generic1_conv_generic58
    PORT MAP (
        in_enable_in => redist4_sync_in_aunroll_x_in_c15_eni6_6_1_q,
        in_src_data_in_10_0 => i_reduction_conv_generic_10_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => redist5_sync_in_aunroll_x_in_i_valid_1_q,
        out_intel_reserved_ffwd_10_0 => i_ffwd_src_unnamed_conv_generic1_conv_generic_out_intel_reserved_ffwd_10_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,5)@126
    out_intel_reserved_ffwd_10_0 <= i_ffwd_src_unnamed_conv_generic1_conv_generic_out_intel_reserved_ffwd_10_0;
    out_o_valid <= redist5_sync_in_aunroll_x_in_i_valid_1_q;
    out_unnamed_conv_generic2_0 <= GND_q;

END normal;
