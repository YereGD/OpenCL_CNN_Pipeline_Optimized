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

-- VHDL created from conv_generic_B10_branch
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

entity conv_generic_B10_branch is
    port (
        in_c0_exit410_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_10 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_12 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_13 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_14 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_15 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_16 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_17 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_18 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_19 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_20 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_21 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_22 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_23 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_24 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_25 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_26 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_27 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_28 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_29 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_30 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_31 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_32 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_33 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_34 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_35 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_36 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_37 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_38 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_39 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_40 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_41 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_42 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_43 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_44 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_45 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_46 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_47 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_48 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_49 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_50 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_51 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_52 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_53 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_54 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_55 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit410_56 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_57 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_58 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_59 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_60 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_61 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit410_62 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe58 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe59 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe60 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe61 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe7417 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe1 : in std_logic_vector(511 downto 0);  -- ufix512
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_10 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_13 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_14 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_15 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_16 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_17 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_18 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_20 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_21 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_22 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_23 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_25 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_26 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_27 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_28 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_29 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_30 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_31 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_32 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_34 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_35 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_36 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_37 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_38 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_40 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_41 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_43 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_44 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_45 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_46 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_47 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_48 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_49 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_50 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_51 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_52 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_53 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_54 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_55 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit410_56 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_57 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_58 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_59 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_60 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_61 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit410_62 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe59 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe60 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe61 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe7417 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe1 : out std_logic_vector(511 downto 0);  -- ufix512
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B10_branch;

architecture normal of conv_generic_B10_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_0_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_1_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_2_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_3_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_4_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_5_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_6_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_7_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_8_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_9_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_10_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_11_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_12_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_13_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_14_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_15_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_16_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_17_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_18_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_19_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_20_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_21_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_22_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_23_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_24_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_25_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_26_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_27_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_28_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_29_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_30_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_31_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_32_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_33_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_34_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_35_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_36_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_37_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_38_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_39_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_40_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_41_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_42_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_43_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_44_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_45_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_46_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_47_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_48_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_49_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_50_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_51_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_52_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_53_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_54_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_55_x_q : STD_LOGIC_VECTOR (63 downto 0);
    signal c0_exit410_reg_56_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_57_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_58_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_59_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_60_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_61_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exit410_reg_62_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe11_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe58_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe59_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe60_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe61_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe7417_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe1_reg_q : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B10_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B10_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_stall_in_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_valid_or_not_stall_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_0_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_1_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_0_and_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_out_1_and_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- not_stall_in_1(LOGICAL,220)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- c0_exe58_cmp(LOGICAL,211)
    c0_exe58_cmp_q <= not (in_c0_exe58);

    -- valid_out_1_and(LOGICAL,228)
    valid_out_1_and_q <= in_valid_in and c0_exe58_cmp_q;

    -- valid_1_reg(REG,226)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,222)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,224)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,219)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,227)
    valid_out_0_and_q <= in_valid_in and in_c0_exe58;

    -- valid_0_reg(REG,225)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,221)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,223)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv_generic_B10_branch_enable(LOGICAL,217)
    conv_generic_B10_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exit410_reg_0_x(REG,2)
    c0_exit410_reg_0_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_0_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_0_x_q <= in_c0_exit410_0;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_0(GPOUT,138)
    out_c0_exit410_0 <= c0_exit410_reg_0_x_q;

    -- c0_exit410_reg_1_x(REG,3)
    c0_exit410_reg_1_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_1_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_1_x_q <= in_c0_exit410_1;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_1(GPOUT,139)
    out_c0_exit410_1 <= c0_exit410_reg_1_x_q;

    -- c0_exit410_reg_2_x(REG,4)
    c0_exit410_reg_2_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_2_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_2_x_q <= in_c0_exit410_2;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_2(GPOUT,140)
    out_c0_exit410_2 <= c0_exit410_reg_2_x_q;

    -- c0_exit410_reg_3_x(REG,5)
    c0_exit410_reg_3_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_3_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_3_x_q <= in_c0_exit410_3;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_3(GPOUT,141)
    out_c0_exit410_3 <= c0_exit410_reg_3_x_q;

    -- c0_exit410_reg_4_x(REG,6)
    c0_exit410_reg_4_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_4_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_4_x_q <= in_c0_exit410_4;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_4(GPOUT,142)
    out_c0_exit410_4 <= c0_exit410_reg_4_x_q;

    -- c0_exit410_reg_5_x(REG,7)
    c0_exit410_reg_5_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_5_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_5_x_q <= in_c0_exit410_5;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_5(GPOUT,143)
    out_c0_exit410_5 <= c0_exit410_reg_5_x_q;

    -- c0_exit410_reg_6_x(REG,8)
    c0_exit410_reg_6_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_6_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_6_x_q <= in_c0_exit410_6;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_6(GPOUT,144)
    out_c0_exit410_6 <= c0_exit410_reg_6_x_q;

    -- c0_exit410_reg_7_x(REG,9)
    c0_exit410_reg_7_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_7_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_7_x_q <= in_c0_exit410_7;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_7(GPOUT,145)
    out_c0_exit410_7 <= c0_exit410_reg_7_x_q;

    -- c0_exit410_reg_8_x(REG,10)
    c0_exit410_reg_8_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_8_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_8_x_q <= in_c0_exit410_8;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_8(GPOUT,146)
    out_c0_exit410_8 <= c0_exit410_reg_8_x_q;

    -- c0_exit410_reg_9_x(REG,11)
    c0_exit410_reg_9_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_9_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_9_x_q <= in_c0_exit410_9;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_9(GPOUT,147)
    out_c0_exit410_9 <= c0_exit410_reg_9_x_q;

    -- c0_exit410_reg_10_x(REG,12)
    c0_exit410_reg_10_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_10_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_10_x_q <= in_c0_exit410_10;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_10(GPOUT,148)
    out_c0_exit410_10 <= c0_exit410_reg_10_x_q;

    -- c0_exit410_reg_11_x(REG,13)
    c0_exit410_reg_11_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_11_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_11_x_q <= in_c0_exit410_11;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_11(GPOUT,149)
    out_c0_exit410_11 <= c0_exit410_reg_11_x_q;

    -- c0_exit410_reg_12_x(REG,14)
    c0_exit410_reg_12_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_12_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_12_x_q <= in_c0_exit410_12;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_12(GPOUT,150)
    out_c0_exit410_12 <= c0_exit410_reg_12_x_q;

    -- c0_exit410_reg_13_x(REG,15)
    c0_exit410_reg_13_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_13_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_13_x_q <= in_c0_exit410_13;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_13(GPOUT,151)
    out_c0_exit410_13 <= c0_exit410_reg_13_x_q;

    -- c0_exit410_reg_14_x(REG,16)
    c0_exit410_reg_14_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_14_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_14_x_q <= in_c0_exit410_14;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_14(GPOUT,152)
    out_c0_exit410_14 <= c0_exit410_reg_14_x_q;

    -- c0_exit410_reg_15_x(REG,17)
    c0_exit410_reg_15_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_15_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_15_x_q <= in_c0_exit410_15;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_15(GPOUT,153)
    out_c0_exit410_15 <= c0_exit410_reg_15_x_q;

    -- c0_exit410_reg_16_x(REG,18)
    c0_exit410_reg_16_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_16_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_16_x_q <= in_c0_exit410_16;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_16(GPOUT,154)
    out_c0_exit410_16 <= c0_exit410_reg_16_x_q;

    -- c0_exit410_reg_17_x(REG,19)
    c0_exit410_reg_17_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_17_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_17_x_q <= in_c0_exit410_17;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_17(GPOUT,155)
    out_c0_exit410_17 <= c0_exit410_reg_17_x_q;

    -- c0_exit410_reg_18_x(REG,20)
    c0_exit410_reg_18_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_18_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_18_x_q <= in_c0_exit410_18;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_18(GPOUT,156)
    out_c0_exit410_18 <= c0_exit410_reg_18_x_q;

    -- c0_exit410_reg_19_x(REG,21)
    c0_exit410_reg_19_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_19_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_19_x_q <= in_c0_exit410_19;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_19(GPOUT,157)
    out_c0_exit410_19 <= c0_exit410_reg_19_x_q;

    -- c0_exit410_reg_20_x(REG,22)
    c0_exit410_reg_20_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_20_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_20_x_q <= in_c0_exit410_20;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_20(GPOUT,158)
    out_c0_exit410_20 <= c0_exit410_reg_20_x_q;

    -- c0_exit410_reg_21_x(REG,23)
    c0_exit410_reg_21_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_21_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_21_x_q <= in_c0_exit410_21;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_21(GPOUT,159)
    out_c0_exit410_21 <= c0_exit410_reg_21_x_q;

    -- c0_exit410_reg_22_x(REG,24)
    c0_exit410_reg_22_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_22_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_22_x_q <= in_c0_exit410_22;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_22(GPOUT,160)
    out_c0_exit410_22 <= c0_exit410_reg_22_x_q;

    -- c0_exit410_reg_23_x(REG,25)
    c0_exit410_reg_23_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_23_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_23_x_q <= in_c0_exit410_23;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_23(GPOUT,161)
    out_c0_exit410_23 <= c0_exit410_reg_23_x_q;

    -- c0_exit410_reg_24_x(REG,26)
    c0_exit410_reg_24_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_24_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_24_x_q <= in_c0_exit410_24;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_24(GPOUT,162)
    out_c0_exit410_24 <= c0_exit410_reg_24_x_q;

    -- c0_exit410_reg_25_x(REG,27)
    c0_exit410_reg_25_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_25_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_25_x_q <= in_c0_exit410_25;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_25(GPOUT,163)
    out_c0_exit410_25 <= c0_exit410_reg_25_x_q;

    -- c0_exit410_reg_26_x(REG,28)
    c0_exit410_reg_26_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_26_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_26_x_q <= in_c0_exit410_26;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_26(GPOUT,164)
    out_c0_exit410_26 <= c0_exit410_reg_26_x_q;

    -- c0_exit410_reg_27_x(REG,29)
    c0_exit410_reg_27_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_27_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_27_x_q <= in_c0_exit410_27;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_27(GPOUT,165)
    out_c0_exit410_27 <= c0_exit410_reg_27_x_q;

    -- c0_exit410_reg_28_x(REG,30)
    c0_exit410_reg_28_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_28_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_28_x_q <= in_c0_exit410_28;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_28(GPOUT,166)
    out_c0_exit410_28 <= c0_exit410_reg_28_x_q;

    -- c0_exit410_reg_29_x(REG,31)
    c0_exit410_reg_29_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_29_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_29_x_q <= in_c0_exit410_29;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_29(GPOUT,167)
    out_c0_exit410_29 <= c0_exit410_reg_29_x_q;

    -- c0_exit410_reg_30_x(REG,32)
    c0_exit410_reg_30_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_30_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_30_x_q <= in_c0_exit410_30;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_30(GPOUT,168)
    out_c0_exit410_30 <= c0_exit410_reg_30_x_q;

    -- c0_exit410_reg_31_x(REG,33)
    c0_exit410_reg_31_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_31_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_31_x_q <= in_c0_exit410_31;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_31(GPOUT,169)
    out_c0_exit410_31 <= c0_exit410_reg_31_x_q;

    -- c0_exit410_reg_32_x(REG,34)
    c0_exit410_reg_32_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_32_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_32_x_q <= in_c0_exit410_32;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_32(GPOUT,170)
    out_c0_exit410_32 <= c0_exit410_reg_32_x_q;

    -- c0_exit410_reg_33_x(REG,35)
    c0_exit410_reg_33_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_33_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_33_x_q <= in_c0_exit410_33;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_33(GPOUT,171)
    out_c0_exit410_33 <= c0_exit410_reg_33_x_q;

    -- c0_exit410_reg_34_x(REG,36)
    c0_exit410_reg_34_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_34_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_34_x_q <= in_c0_exit410_34;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_34(GPOUT,172)
    out_c0_exit410_34 <= c0_exit410_reg_34_x_q;

    -- c0_exit410_reg_35_x(REG,37)
    c0_exit410_reg_35_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_35_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_35_x_q <= in_c0_exit410_35;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_35(GPOUT,173)
    out_c0_exit410_35 <= c0_exit410_reg_35_x_q;

    -- c0_exit410_reg_36_x(REG,38)
    c0_exit410_reg_36_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_36_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_36_x_q <= in_c0_exit410_36;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_36(GPOUT,174)
    out_c0_exit410_36 <= c0_exit410_reg_36_x_q;

    -- c0_exit410_reg_37_x(REG,39)
    c0_exit410_reg_37_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_37_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_37_x_q <= in_c0_exit410_37;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_37(GPOUT,175)
    out_c0_exit410_37 <= c0_exit410_reg_37_x_q;

    -- c0_exit410_reg_38_x(REG,40)
    c0_exit410_reg_38_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_38_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_38_x_q <= in_c0_exit410_38;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_38(GPOUT,176)
    out_c0_exit410_38 <= c0_exit410_reg_38_x_q;

    -- c0_exit410_reg_39_x(REG,41)
    c0_exit410_reg_39_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_39_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_39_x_q <= in_c0_exit410_39;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_39(GPOUT,177)
    out_c0_exit410_39 <= c0_exit410_reg_39_x_q;

    -- c0_exit410_reg_40_x(REG,42)
    c0_exit410_reg_40_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_40_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_40_x_q <= in_c0_exit410_40;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_40(GPOUT,178)
    out_c0_exit410_40 <= c0_exit410_reg_40_x_q;

    -- c0_exit410_reg_41_x(REG,43)
    c0_exit410_reg_41_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_41_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_41_x_q <= in_c0_exit410_41;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_41(GPOUT,179)
    out_c0_exit410_41 <= c0_exit410_reg_41_x_q;

    -- c0_exit410_reg_42_x(REG,44)
    c0_exit410_reg_42_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_42_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_42_x_q <= in_c0_exit410_42;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_42(GPOUT,180)
    out_c0_exit410_42 <= c0_exit410_reg_42_x_q;

    -- c0_exit410_reg_43_x(REG,45)
    c0_exit410_reg_43_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_43_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_43_x_q <= in_c0_exit410_43;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_43(GPOUT,181)
    out_c0_exit410_43 <= c0_exit410_reg_43_x_q;

    -- c0_exit410_reg_44_x(REG,46)
    c0_exit410_reg_44_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_44_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_44_x_q <= in_c0_exit410_44;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_44(GPOUT,182)
    out_c0_exit410_44 <= c0_exit410_reg_44_x_q;

    -- c0_exit410_reg_45_x(REG,47)
    c0_exit410_reg_45_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_45_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_45_x_q <= in_c0_exit410_45;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_45(GPOUT,183)
    out_c0_exit410_45 <= c0_exit410_reg_45_x_q;

    -- c0_exit410_reg_46_x(REG,48)
    c0_exit410_reg_46_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_46_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_46_x_q <= in_c0_exit410_46;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_46(GPOUT,184)
    out_c0_exit410_46 <= c0_exit410_reg_46_x_q;

    -- c0_exit410_reg_47_x(REG,49)
    c0_exit410_reg_47_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_47_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_47_x_q <= in_c0_exit410_47;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_47(GPOUT,185)
    out_c0_exit410_47 <= c0_exit410_reg_47_x_q;

    -- c0_exit410_reg_48_x(REG,50)
    c0_exit410_reg_48_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_48_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_48_x_q <= in_c0_exit410_48;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_48(GPOUT,186)
    out_c0_exit410_48 <= c0_exit410_reg_48_x_q;

    -- c0_exit410_reg_49_x(REG,51)
    c0_exit410_reg_49_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_49_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_49_x_q <= in_c0_exit410_49;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_49(GPOUT,187)
    out_c0_exit410_49 <= c0_exit410_reg_49_x_q;

    -- c0_exit410_reg_50_x(REG,52)
    c0_exit410_reg_50_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_50_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_50_x_q <= in_c0_exit410_50;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_50(GPOUT,188)
    out_c0_exit410_50 <= c0_exit410_reg_50_x_q;

    -- c0_exit410_reg_51_x(REG,53)
    c0_exit410_reg_51_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_51_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_51_x_q <= in_c0_exit410_51;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_51(GPOUT,189)
    out_c0_exit410_51 <= c0_exit410_reg_51_x_q;

    -- c0_exit410_reg_52_x(REG,54)
    c0_exit410_reg_52_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_52_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_52_x_q <= in_c0_exit410_52;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_52(GPOUT,190)
    out_c0_exit410_52 <= c0_exit410_reg_52_x_q;

    -- c0_exit410_reg_53_x(REG,55)
    c0_exit410_reg_53_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_53_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_53_x_q <= in_c0_exit410_53;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_53(GPOUT,191)
    out_c0_exit410_53 <= c0_exit410_reg_53_x_q;

    -- c0_exit410_reg_54_x(REG,56)
    c0_exit410_reg_54_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_54_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_54_x_q <= in_c0_exit410_54;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_54(GPOUT,192)
    out_c0_exit410_54 <= c0_exit410_reg_54_x_q;

    -- c0_exit410_reg_55_x(REG,57)
    c0_exit410_reg_55_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_55_x_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_55_x_q <= in_c0_exit410_55;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_55(GPOUT,193)
    out_c0_exit410_55 <= c0_exit410_reg_55_x_q;

    -- c0_exit410_reg_56_x(REG,58)
    c0_exit410_reg_56_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_56_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_56_x_q <= in_c0_exit410_56;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_56(GPOUT,194)
    out_c0_exit410_56 <= c0_exit410_reg_56_x_q;

    -- c0_exit410_reg_57_x(REG,59)
    c0_exit410_reg_57_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_57_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_57_x_q <= in_c0_exit410_57;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_57(GPOUT,195)
    out_c0_exit410_57 <= c0_exit410_reg_57_x_q;

    -- c0_exit410_reg_58_x(REG,60)
    c0_exit410_reg_58_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_58_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_58_x_q <= in_c0_exit410_58;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_58(GPOUT,196)
    out_c0_exit410_58 <= c0_exit410_reg_58_x_q;

    -- c0_exit410_reg_59_x(REG,61)
    c0_exit410_reg_59_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_59_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_59_x_q <= in_c0_exit410_59;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_59(GPOUT,197)
    out_c0_exit410_59 <= c0_exit410_reg_59_x_q;

    -- c0_exit410_reg_60_x(REG,62)
    c0_exit410_reg_60_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_60_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_60_x_q <= in_c0_exit410_60;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_60(GPOUT,198)
    out_c0_exit410_60 <= c0_exit410_reg_60_x_q;

    -- c0_exit410_reg_61_x(REG,63)
    c0_exit410_reg_61_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_61_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_61_x_q <= in_c0_exit410_61;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_61(GPOUT,199)
    out_c0_exit410_61 <= c0_exit410_reg_61_x_q;

    -- c0_exit410_reg_62_x(REG,64)
    c0_exit410_reg_62_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exit410_reg_62_x_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exit410_reg_62_x_q <= in_c0_exit410_62;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exit410_62(GPOUT,200)
    out_c0_exit410_62 <= c0_exit410_reg_62_x_q;

    -- c0_exe11_reg(REG,210)
    c0_exe11_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe11_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exe11_reg_q <= in_c0_exe11;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe11(GPOUT,201)
    out_c0_exe11 <= c0_exe11_reg_q;

    -- c0_exe59_reg(REG,212)
    c0_exe59_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe59_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exe59_reg_q <= in_c0_exe59;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe59(GPOUT,202)
    out_c0_exe59 <= c0_exe59_reg_q;

    -- c0_exe60_reg(REG,213)
    c0_exe60_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe60_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exe60_reg_q <= in_c0_exe60;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe60(GPOUT,203)
    out_c0_exe60 <= c0_exe60_reg_q;

    -- c0_exe61_reg(REG,214)
    c0_exe61_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe61_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exe61_reg_q <= in_c0_exe61;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe61(GPOUT,204)
    out_c0_exe61 <= c0_exe61_reg_q;

    -- c0_exe7417_reg(REG,215)
    c0_exe7417_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe7417_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c0_exe7417_reg_q <= in_c0_exe7417;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe7417(GPOUT,205)
    out_c0_exe7417 <= c0_exe7417_reg_q;

    -- c1_exe1_reg(REG,216)
    c1_exe1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe1_reg_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B10_branch_enable_q = "1") THEN
                c1_exe1_reg_q <= in_c1_exe1;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe1(GPOUT,206)
    out_c1_exe1 <= c1_exe1_reg_q;

    -- conv_generic_B10_branch_enable_not(LOGICAL,218)
    conv_generic_B10_branch_enable_not_q <= not (conv_generic_B10_branch_enable_q);

    -- out_stall_out(GPOUT,207)
    out_stall_out <= conv_generic_B10_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,208)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,209)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
