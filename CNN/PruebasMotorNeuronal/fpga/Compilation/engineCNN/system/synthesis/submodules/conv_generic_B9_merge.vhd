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

-- VHDL created from conv_generic_B9_merge
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

entity conv_generic_B9_merge is
    port (
        in_forked267_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked267_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268279_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268279_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit254281_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit254281_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic42_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic42_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic43_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic43_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic44_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic44_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_forked267 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked268279 : out std_logic_vector(0 downto 0);  -- ufix1
        out_notexit254281 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic43 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic44 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B9_merge;

architecture normal of conv_generic_B9_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked267_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked267_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked268279_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked268279_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal notexit254281_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal notexit254281_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic42_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic42_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic43_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic43_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic44_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic44_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- forked267_mux(MUX,2)
    forked267_mux_s <= in_valid_in_0;
    forked267_mux_combproc: PROCESS (forked267_mux_s, in_forked267_1, in_forked267_0)
    BEGIN
        CASE (forked267_mux_s) IS
            WHEN "0" => forked267_mux_q <= in_forked267_1;
            WHEN "1" => forked267_mux_q <= in_forked267_0;
            WHEN OTHERS => forked267_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked267(GPOUT,20)
    out_forked267 <= forked267_mux_q;

    -- forked268279_mux(MUX,3)
    forked268279_mux_s <= in_valid_in_0;
    forked268279_mux_combproc: PROCESS (forked268279_mux_s, in_forked268279_1, in_forked268279_0)
    BEGIN
        CASE (forked268279_mux_s) IS
            WHEN "0" => forked268279_mux_q <= in_forked268279_1;
            WHEN "1" => forked268279_mux_q <= in_forked268279_0;
            WHEN OTHERS => forked268279_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked268279(GPOUT,21)
    out_forked268279 <= forked268279_mux_q;

    -- notexit254281_mux(MUX,19)
    notexit254281_mux_s <= in_valid_in_0;
    notexit254281_mux_combproc: PROCESS (notexit254281_mux_s, in_notexit254281_1, in_notexit254281_0)
    BEGIN
        CASE (notexit254281_mux_s) IS
            WHEN "0" => notexit254281_mux_q <= in_notexit254281_1;
            WHEN "1" => notexit254281_mux_q <= in_notexit254281_0;
            WHEN OTHERS => notexit254281_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_notexit254281(GPOUT,22)
    out_notexit254281 <= notexit254281_mux_q;

    -- valid_or(LOGICAL,34)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,29)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,23)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,30)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,24)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- unnamed_conv_generic42_mux(MUX,31)
    unnamed_conv_generic42_mux_s <= in_valid_in_0;
    unnamed_conv_generic42_mux_combproc: PROCESS (unnamed_conv_generic42_mux_s, in_unnamed_conv_generic42_1, in_unnamed_conv_generic42_0)
    BEGIN
        CASE (unnamed_conv_generic42_mux_s) IS
            WHEN "0" => unnamed_conv_generic42_mux_q <= in_unnamed_conv_generic42_1;
            WHEN "1" => unnamed_conv_generic42_mux_q <= in_unnamed_conv_generic42_0;
            WHEN OTHERS => unnamed_conv_generic42_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic42(GPOUT,25)
    out_unnamed_conv_generic42 <= unnamed_conv_generic42_mux_q;

    -- unnamed_conv_generic43_mux(MUX,32)
    unnamed_conv_generic43_mux_s <= in_valid_in_0;
    unnamed_conv_generic43_mux_combproc: PROCESS (unnamed_conv_generic43_mux_s, in_unnamed_conv_generic43_1, in_unnamed_conv_generic43_0)
    BEGIN
        CASE (unnamed_conv_generic43_mux_s) IS
            WHEN "0" => unnamed_conv_generic43_mux_q <= in_unnamed_conv_generic43_1;
            WHEN "1" => unnamed_conv_generic43_mux_q <= in_unnamed_conv_generic43_0;
            WHEN OTHERS => unnamed_conv_generic43_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic43(GPOUT,26)
    out_unnamed_conv_generic43 <= unnamed_conv_generic43_mux_q;

    -- unnamed_conv_generic44_mux(MUX,33)
    unnamed_conv_generic44_mux_s <= in_valid_in_0;
    unnamed_conv_generic44_mux_combproc: PROCESS (unnamed_conv_generic44_mux_s, in_unnamed_conv_generic44_1, in_unnamed_conv_generic44_0)
    BEGIN
        CASE (unnamed_conv_generic44_mux_s) IS
            WHEN "0" => unnamed_conv_generic44_mux_q <= in_unnamed_conv_generic44_1;
            WHEN "1" => unnamed_conv_generic44_mux_q <= in_unnamed_conv_generic44_0;
            WHEN OTHERS => unnamed_conv_generic44_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic44(GPOUT,27)
    out_unnamed_conv_generic44 <= unnamed_conv_generic44_mux_q;

    -- out_valid_out(GPOUT,28)
    out_valid_out <= valid_or_q;

END normal;
