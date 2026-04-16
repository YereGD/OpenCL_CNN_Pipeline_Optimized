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

-- VHDL created from mem_read_generic_B4_merge
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

entity mem_read_generic_B4_merge is
    port (
        in_forked71_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked71_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_mul3474_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul3474_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_or_cond72_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_or_cond72_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_sub2465_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2465_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2769_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2769_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic3_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic4_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic4_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic5_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_forked71 : out std_logic_vector(0 downto 0);  -- ufix1
        out_mul3474 : out std_logic_vector(31 downto 0);  -- ufix32
        out_or_cond72 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_sub2465 : out std_logic_vector(31 downto 0);  -- ufix32
        out_sub2769 : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_read_generic3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_B4_merge;

architecture normal of mem_read_generic_B4_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked71_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked71_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mul3474_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal mul3474_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal or_cond72_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond72_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2465_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2465_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal sub2769_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2769_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal unnamed_mem_read_generic3_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic3_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic4_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic4_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic5_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic5_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- forked71_mux(MUX,2)
    forked71_mux_s <= in_valid_in_0;
    forked71_mux_combproc: PROCESS (forked71_mux_s, in_forked71_1, in_forked71_0)
    BEGIN
        CASE (forked71_mux_s) IS
            WHEN "0" => forked71_mux_q <= in_forked71_1;
            WHEN "1" => forked71_mux_q <= in_forked71_0;
            WHEN OTHERS => forked71_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked71(GPOUT,24)
    out_forked71 <= forked71_mux_q;

    -- mul3474_mux(MUX,22)
    mul3474_mux_s <= in_valid_in_0;
    mul3474_mux_combproc: PROCESS (mul3474_mux_s, in_mul3474_1, in_mul3474_0)
    BEGIN
        CASE (mul3474_mux_s) IS
            WHEN "0" => mul3474_mux_q <= in_mul3474_1;
            WHEN "1" => mul3474_mux_q <= in_mul3474_0;
            WHEN OTHERS => mul3474_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_mul3474(GPOUT,25)
    out_mul3474 <= mul3474_mux_q;

    -- or_cond72_mux(MUX,23)
    or_cond72_mux_s <= in_valid_in_0;
    or_cond72_mux_combproc: PROCESS (or_cond72_mux_s, in_or_cond72_1, in_or_cond72_0)
    BEGIN
        CASE (or_cond72_mux_s) IS
            WHEN "0" => or_cond72_mux_q <= in_or_cond72_1;
            WHEN "1" => or_cond72_mux_q <= in_or_cond72_0;
            WHEN OTHERS => or_cond72_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_or_cond72(GPOUT,26)
    out_or_cond72 <= or_cond72_mux_q;

    -- valid_or(LOGICAL,42)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,35)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,27)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,36)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,28)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- sub2465_mux(MUX,37)
    sub2465_mux_s <= in_valid_in_0;
    sub2465_mux_combproc: PROCESS (sub2465_mux_s, in_sub2465_1, in_sub2465_0)
    BEGIN
        CASE (sub2465_mux_s) IS
            WHEN "0" => sub2465_mux_q <= in_sub2465_1;
            WHEN "1" => sub2465_mux_q <= in_sub2465_0;
            WHEN OTHERS => sub2465_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sub2465(GPOUT,29)
    out_sub2465 <= sub2465_mux_q;

    -- sub2769_mux(MUX,38)
    sub2769_mux_s <= in_valid_in_0;
    sub2769_mux_combproc: PROCESS (sub2769_mux_s, in_sub2769_1, in_sub2769_0)
    BEGIN
        CASE (sub2769_mux_s) IS
            WHEN "0" => sub2769_mux_q <= in_sub2769_1;
            WHEN "1" => sub2769_mux_q <= in_sub2769_0;
            WHEN OTHERS => sub2769_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sub2769(GPOUT,30)
    out_sub2769 <= sub2769_mux_q;

    -- unnamed_mem_read_generic3_mux(MUX,39)
    unnamed_mem_read_generic3_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic3_mux_combproc: PROCESS (unnamed_mem_read_generic3_mux_s, in_unnamed_mem_read_generic3_1, in_unnamed_mem_read_generic3_0)
    BEGIN
        CASE (unnamed_mem_read_generic3_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic3_mux_q <= in_unnamed_mem_read_generic3_1;
            WHEN "1" => unnamed_mem_read_generic3_mux_q <= in_unnamed_mem_read_generic3_0;
            WHEN OTHERS => unnamed_mem_read_generic3_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic3(GPOUT,31)
    out_unnamed_mem_read_generic3 <= unnamed_mem_read_generic3_mux_q;

    -- unnamed_mem_read_generic4_mux(MUX,40)
    unnamed_mem_read_generic4_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic4_mux_combproc: PROCESS (unnamed_mem_read_generic4_mux_s, in_unnamed_mem_read_generic4_1, in_unnamed_mem_read_generic4_0)
    BEGIN
        CASE (unnamed_mem_read_generic4_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic4_mux_q <= in_unnamed_mem_read_generic4_1;
            WHEN "1" => unnamed_mem_read_generic4_mux_q <= in_unnamed_mem_read_generic4_0;
            WHEN OTHERS => unnamed_mem_read_generic4_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic4(GPOUT,32)
    out_unnamed_mem_read_generic4 <= unnamed_mem_read_generic4_mux_q;

    -- unnamed_mem_read_generic5_mux(MUX,41)
    unnamed_mem_read_generic5_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic5_mux_combproc: PROCESS (unnamed_mem_read_generic5_mux_s, in_unnamed_mem_read_generic5_1, in_unnamed_mem_read_generic5_0)
    BEGIN
        CASE (unnamed_mem_read_generic5_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic5_mux_q <= in_unnamed_mem_read_generic5_1;
            WHEN "1" => unnamed_mem_read_generic5_mux_q <= in_unnamed_mem_read_generic5_0;
            WHEN OTHERS => unnamed_mem_read_generic5_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic5(GPOUT,33)
    out_unnamed_mem_read_generic5 <= unnamed_mem_read_generic5_mux_q;

    -- out_valid_out(GPOUT,34)
    out_valid_out <= valid_or_q;

END normal;
