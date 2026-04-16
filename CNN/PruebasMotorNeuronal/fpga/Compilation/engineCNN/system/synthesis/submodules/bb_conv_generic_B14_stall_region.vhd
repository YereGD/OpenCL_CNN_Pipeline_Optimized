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

-- VHDL created from bb_conv_generic_B14_stall_region
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

entity bb_conv_generic_B14_stall_region is
    port (
        in_c0_exe545817 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_1 : in std_logic_vector(7 downto 0);  -- ufix8
        in_c0_exit45315_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe545817 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6459 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B14_stall_region;

architecture normal of bb_conv_generic_B14_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal bubble_join_stall_entry_aunroll_q : STD_LOGIC_VECTOR (1 downto 0);
    signal bubble_select_stall_entry_aunroll_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_c : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_aunroll_V0 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- SE_stall_entry_aunroll(STALLENABLE,13)
    -- Valid signal propagation
    SE_stall_entry_aunroll_V0 <= SE_stall_entry_aunroll_wireValid;
    -- Backward Stall generation
    SE_stall_entry_aunroll_backStall <= in_stall_in or not (SE_stall_entry_aunroll_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_aunroll_wireValid <= in_valid_in;

    -- bubble_join_stall_entry_aunroll(BITJOIN,11)
    bubble_join_stall_entry_aunroll_q <= in_c0_exit45315_6 & in_c0_exe545817;

    -- bubble_select_stall_entry_aunroll(BITSELECT,12)
    bubble_select_stall_entry_aunroll_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(0 downto 0));
    bubble_select_stall_entry_aunroll_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(1 downto 1));

    -- dupName_0_sync_out_x(GPOUT,3)@0
    out_c0_exe545817 <= bubble_select_stall_entry_aunroll_b;
    out_c0_exe6459 <= bubble_select_stall_entry_aunroll_c;
    out_valid_out <= SE_stall_entry_aunroll_V0;

    -- sync_out(GPOUT,9)@0
    out_stall_out <= SE_stall_entry_aunroll_backStall;

END normal;
