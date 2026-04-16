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

-- VHDL created from conv_generic_B12_branch
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

entity conv_generic_B12_branch is
    port (
        in_c0_exe115 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe597 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe609 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6111 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe74173 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113 : in std_logic_vector(511 downto 0);  -- ufix512
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe115 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe597 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe609 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe74173 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe113 : out std_logic_vector(511 downto 0);  -- ufix512
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B12_branch;

architecture normal of conv_generic_B12_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe115_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe597_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe609_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe6111_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c0_exe74173_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c1_exe113_reg_q : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B12_branch_enable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_enable_not_q : STD_LOGIC_VECTOR (0 downto 0);
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

    -- not_stall_in_1(LOGICAL,20)
    not_stall_in_1_q <= not (in_stall_in_1);

    -- c0_exe6111_cmp(LOGICAL,5)
    c0_exe6111_cmp_q <= not (in_c0_exe6111);

    -- valid_out_1_and(LOGICAL,36)
    valid_out_1_and_q <= in_valid_in and c0_exe6111_cmp_q;

    -- valid_1_reg(REG,34)
    valid_1_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_1_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                valid_1_reg_q <= valid_out_1_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_1(LOGICAL,22)
    not_valid_1_q <= not (valid_1_reg_q);

    -- not_valid_or_not_stall_1(LOGICAL,24)
    not_valid_or_not_stall_1_q <= not_valid_1_q or not_stall_in_1_q;

    -- not_stall_in_0(LOGICAL,19)
    not_stall_in_0_q <= not (in_stall_in_0);

    -- valid_out_0_and(LOGICAL,35)
    valid_out_0_and_q <= in_valid_in and in_c0_exe6111;

    -- valid_0_reg(REG,33)
    valid_0_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_0_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                valid_0_reg_q <= valid_out_0_and_q;
            END IF;
        END IF;
    END PROCESS;

    -- not_valid_0(LOGICAL,21)
    not_valid_0_q <= not (valid_0_reg_q);

    -- not_valid_or_not_stall_0(LOGICAL,23)
    not_valid_or_not_stall_0_q <= not_valid_0_q or not_stall_in_0_q;

    -- conv_generic_B12_branch_enable(LOGICAL,8)
    conv_generic_B12_branch_enable_q <= not_valid_or_not_stall_0_q and not_valid_or_not_stall_1_q;

    -- c0_exe115_reg(REG,2)
    c0_exe115_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe115_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                c0_exe115_reg_q <= in_c0_exe115;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe115(GPOUT,25)
    out_c0_exe115 <= c0_exe115_reg_q;

    -- c0_exe597_reg(REG,3)
    c0_exe597_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe597_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                c0_exe597_reg_q <= in_c0_exe597;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe597(GPOUT,26)
    out_c0_exe597 <= c0_exe597_reg_q;

    -- c0_exe609_reg(REG,4)
    c0_exe609_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe609_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                c0_exe609_reg_q <= in_c0_exe609;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe609(GPOUT,27)
    out_c0_exe609 <= c0_exe609_reg_q;

    -- c0_exe74173_reg(REG,6)
    c0_exe74173_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c0_exe74173_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                c0_exe74173_reg_q <= in_c0_exe74173;
            END IF;
        END IF;
    END PROCESS;

    -- out_c0_exe74173(GPOUT,28)
    out_c0_exe74173 <= c0_exe74173_reg_q;

    -- c1_exe113_reg(REG,7)
    c1_exe113_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            c1_exe113_reg_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (conv_generic_B12_branch_enable_q = "1") THEN
                c1_exe113_reg_q <= in_c1_exe113;
            END IF;
        END IF;
    END PROCESS;

    -- out_c1_exe113(GPOUT,29)
    out_c1_exe113 <= c1_exe113_reg_q;

    -- conv_generic_B12_branch_enable_not(LOGICAL,9)
    conv_generic_B12_branch_enable_not_q <= not (conv_generic_B12_branch_enable_q);

    -- out_stall_out(GPOUT,30)
    out_stall_out <= conv_generic_B12_branch_enable_not_q;

    -- out_valid_out_0(GPOUT,31)
    out_valid_out_0 <= valid_0_reg_q;

    -- out_valid_out_1(GPOUT,32)
    out_valid_out_1 <= valid_1_reg_q;

END normal;
