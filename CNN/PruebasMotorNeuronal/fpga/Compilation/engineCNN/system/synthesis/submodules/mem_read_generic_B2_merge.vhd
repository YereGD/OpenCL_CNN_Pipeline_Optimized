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

-- VHDL created from mem_read_generic_B2_merge
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

entity mem_read_generic_B2_merge is
    port (
        in_forked62_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked62_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_sub2463_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2463_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic0_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_forked62 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_sub2463 : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_read_generic0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_B2_merge;

architecture normal of mem_read_generic_B2_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked62_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked62_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2463_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2463_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal unnamed_mem_read_generic0_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic0_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- forked62_mux(MUX,2)
    forked62_mux_s <= in_valid_in_0;
    forked62_mux_combproc: PROCESS (forked62_mux_s, in_forked62_1, in_forked62_0)
    BEGIN
        CASE (forked62_mux_s) IS
            WHEN "0" => forked62_mux_q <= in_forked62_1;
            WHEN "1" => forked62_mux_q <= in_forked62_0;
            WHEN OTHERS => forked62_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked62(GPOUT,12)
    out_forked62 <= forked62_mux_q;

    -- valid_or(LOGICAL,22)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,18)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,13)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,19)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,14)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- sub2463_mux(MUX,20)
    sub2463_mux_s <= in_valid_in_0;
    sub2463_mux_combproc: PROCESS (sub2463_mux_s, in_sub2463_1, in_sub2463_0)
    BEGIN
        CASE (sub2463_mux_s) IS
            WHEN "0" => sub2463_mux_q <= in_sub2463_1;
            WHEN "1" => sub2463_mux_q <= in_sub2463_0;
            WHEN OTHERS => sub2463_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sub2463(GPOUT,15)
    out_sub2463 <= sub2463_mux_q;

    -- unnamed_mem_read_generic0_mux(MUX,21)
    unnamed_mem_read_generic0_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic0_mux_combproc: PROCESS (unnamed_mem_read_generic0_mux_s, in_unnamed_mem_read_generic0_1, in_unnamed_mem_read_generic0_0)
    BEGIN
        CASE (unnamed_mem_read_generic0_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic0_mux_q <= in_unnamed_mem_read_generic0_1;
            WHEN "1" => unnamed_mem_read_generic0_mux_q <= in_unnamed_mem_read_generic0_0;
            WHEN OTHERS => unnamed_mem_read_generic0_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic0(GPOUT,16)
    out_unnamed_mem_read_generic0 <= unnamed_mem_read_generic0_mux_q;

    -- out_valid_out(GPOUT,17)
    out_valid_out <= valid_or_q;

END normal;
