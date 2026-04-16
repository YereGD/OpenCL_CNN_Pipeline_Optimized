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

-- VHDL created from bb_conv_generic_B11_stall_region
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

entity bb_conv_generic_B11_stall_region is
    port (
        in_c0_exe116 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe598 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6010 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6112 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe74174 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_10 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_12 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_13 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_14 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_15 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_16 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_17 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_18 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_19 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_20 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_21 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_22 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_23 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_24 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_25 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_26 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_27 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_28 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_29 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_30 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_31 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_32 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_33 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_34 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_35 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_36 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_37 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_38 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_39 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_40 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_41 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_42 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_43 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_44 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_45 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_46 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_47 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_48 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_49 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_50 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_51 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_52 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_53 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_54 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_55 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_56 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_57 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_58 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_59 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_60 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_61 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_62 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114 : in std_logic_vector(511 downto 0);  -- ufix512
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe598 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe62 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(511 downto 0);  -- ufix512
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B11_stall_region;

architecture normal of bb_conv_generic_B11_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal bubble_join_stall_entry_aunroll_q : STD_LOGIC_VECTOR (517 downto 0);
    signal bubble_select_stall_entry_aunroll_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_aunroll_h : STD_LOGIC_VECTOR (511 downto 0);
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
    bubble_join_stall_entry_aunroll_q <= in_c1_exe114 & in_c0_exit4102_62 & in_c0_exe74174 & in_c0_exe6112 & in_c0_exe6010 & in_c0_exe598 & in_c0_exe116;

    -- bubble_select_stall_entry_aunroll(BITSELECT,12)
    bubble_select_stall_entry_aunroll_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(0 downto 0));
    bubble_select_stall_entry_aunroll_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(1 downto 1));
    bubble_select_stall_entry_aunroll_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(2 downto 2));
    bubble_select_stall_entry_aunroll_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(3 downto 3));
    bubble_select_stall_entry_aunroll_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(4 downto 4));
    bubble_select_stall_entry_aunroll_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(5 downto 5));
    bubble_select_stall_entry_aunroll_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_aunroll_q(517 downto 6));

    -- dupName_0_sync_out_x(GPOUT,3)@0
    out_c0_exe116 <= bubble_select_stall_entry_aunroll_b;
    out_c0_exe598 <= bubble_select_stall_entry_aunroll_c;
    out_c0_exe6010 <= bubble_select_stall_entry_aunroll_d;
    out_c0_exe6112 <= bubble_select_stall_entry_aunroll_e;
    out_c0_exe62 <= bubble_select_stall_entry_aunroll_g;
    out_c0_exe74174 <= bubble_select_stall_entry_aunroll_f;
    out_c1_exe114 <= bubble_select_stall_entry_aunroll_h;
    out_valid_out <= SE_stall_entry_aunroll_V0;

    -- sync_out(GPOUT,9)@0
    out_stall_out <= SE_stall_entry_aunroll_backStall;

END normal;
