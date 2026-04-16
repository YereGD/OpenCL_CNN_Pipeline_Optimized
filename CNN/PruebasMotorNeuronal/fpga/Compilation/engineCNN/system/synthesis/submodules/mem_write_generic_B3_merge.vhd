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

-- VHDL created from mem_write_generic_B3_merge
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

entity mem_write_generic_B3_merge is
    port (
        in_current_out_idx_14_pop1025_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_current_out_idx_14_pop1025_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_forked24_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked24_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic13_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic13_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic14_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic14_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_current_out_idx_14_pop1025 : out std_logic_vector(31 downto 0);  -- ufix32
        out_forked24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic13 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic14 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_write_generic_B3_merge;

architecture normal of mem_write_generic_B3_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal current_out_idx_14_pop1025_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal current_out_idx_14_pop1025_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal forked24_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked24_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_write_generic13_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_write_generic13_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_write_generic14_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_write_generic14_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- current_out_idx_14_pop1025_mux(MUX,2)
    current_out_idx_14_pop1025_mux_s <= in_valid_in_0;
    current_out_idx_14_pop1025_mux_combproc: PROCESS (current_out_idx_14_pop1025_mux_s, in_current_out_idx_14_pop1025_1, in_current_out_idx_14_pop1025_0)
    BEGIN
        CASE (current_out_idx_14_pop1025_mux_s) IS
            WHEN "0" => current_out_idx_14_pop1025_mux_q <= in_current_out_idx_14_pop1025_1;
            WHEN "1" => current_out_idx_14_pop1025_mux_q <= in_current_out_idx_14_pop1025_0;
            WHEN OTHERS => current_out_idx_14_pop1025_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_current_out_idx_14_pop1025(GPOUT,15)
    out_current_out_idx_14_pop1025 <= current_out_idx_14_pop1025_mux_q;

    -- forked24_mux(MUX,3)
    forked24_mux_s <= in_valid_in_0;
    forked24_mux_combproc: PROCESS (forked24_mux_s, in_forked24_1, in_forked24_0)
    BEGIN
        CASE (forked24_mux_s) IS
            WHEN "0" => forked24_mux_q <= in_forked24_1;
            WHEN "1" => forked24_mux_q <= in_forked24_0;
            WHEN OTHERS => forked24_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked24(GPOUT,16)
    out_forked24 <= forked24_mux_q;

    -- valid_or(LOGICAL,26)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,22)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,17)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,23)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,18)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- unnamed_mem_write_generic13_mux(MUX,24)
    unnamed_mem_write_generic13_mux_s <= in_valid_in_0;
    unnamed_mem_write_generic13_mux_combproc: PROCESS (unnamed_mem_write_generic13_mux_s, in_unnamed_mem_write_generic13_1, in_unnamed_mem_write_generic13_0)
    BEGIN
        CASE (unnamed_mem_write_generic13_mux_s) IS
            WHEN "0" => unnamed_mem_write_generic13_mux_q <= in_unnamed_mem_write_generic13_1;
            WHEN "1" => unnamed_mem_write_generic13_mux_q <= in_unnamed_mem_write_generic13_0;
            WHEN OTHERS => unnamed_mem_write_generic13_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_write_generic13(GPOUT,19)
    out_unnamed_mem_write_generic13 <= unnamed_mem_write_generic13_mux_q;

    -- unnamed_mem_write_generic14_mux(MUX,25)
    unnamed_mem_write_generic14_mux_s <= in_valid_in_0;
    unnamed_mem_write_generic14_mux_combproc: PROCESS (unnamed_mem_write_generic14_mux_s, in_unnamed_mem_write_generic14_1, in_unnamed_mem_write_generic14_0)
    BEGIN
        CASE (unnamed_mem_write_generic14_mux_s) IS
            WHEN "0" => unnamed_mem_write_generic14_mux_q <= in_unnamed_mem_write_generic14_1;
            WHEN "1" => unnamed_mem_write_generic14_mux_q <= in_unnamed_mem_write_generic14_0;
            WHEN OTHERS => unnamed_mem_write_generic14_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_write_generic14(GPOUT,20)
    out_unnamed_mem_write_generic14 <= unnamed_mem_write_generic14_mux_q;

    -- out_valid_out(GPOUT,21)
    out_valid_out <= valid_or_q;

END normal;
