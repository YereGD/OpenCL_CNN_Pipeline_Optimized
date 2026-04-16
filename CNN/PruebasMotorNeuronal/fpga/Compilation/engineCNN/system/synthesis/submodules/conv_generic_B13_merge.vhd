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

-- VHDL created from conv_generic_B13_merge
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

entity conv_generic_B13_merge is
    port (
        in_cmp10414_RM277_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_cmp10414_RM277_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked276_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked276_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_select316278_0 : in std_logic_vector(511 downto 0);  -- ufix512
        in_select316278_1 : in std_logic_vector(511 downto 0);  -- ufix512
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic66_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic66_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic67_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic67_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic68_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic68_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_cmp10414_RM277 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked276 : out std_logic_vector(0 downto 0);  -- ufix1
        out_select316278 : out std_logic_vector(511 downto 0);  -- ufix512
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic66 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic67 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic68 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B13_merge;

architecture normal of conv_generic_B13_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp10414_RM277_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp10414_RM277_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked276_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked276_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal select316278_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal select316278_mux_q : STD_LOGIC_VECTOR (511 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic66_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic66_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic67_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic67_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic68_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic68_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- cmp10414_RM277_mux(MUX,2)
    cmp10414_RM277_mux_s <= in_valid_in_0;
    cmp10414_RM277_mux_combproc: PROCESS (cmp10414_RM277_mux_s, in_cmp10414_RM277_1, in_cmp10414_RM277_0)
    BEGIN
        CASE (cmp10414_RM277_mux_s) IS
            WHEN "0" => cmp10414_RM277_mux_q <= in_cmp10414_RM277_1;
            WHEN "1" => cmp10414_RM277_mux_q <= in_cmp10414_RM277_0;
            WHEN OTHERS => cmp10414_RM277_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_cmp10414_RM277(GPOUT,19)
    out_cmp10414_RM277 <= cmp10414_RM277_mux_q;

    -- forked276_mux(MUX,3)
    forked276_mux_s <= in_valid_in_0;
    forked276_mux_combproc: PROCESS (forked276_mux_s, in_forked276_1, in_forked276_0)
    BEGIN
        CASE (forked276_mux_s) IS
            WHEN "0" => forked276_mux_q <= in_forked276_1;
            WHEN "1" => forked276_mux_q <= in_forked276_0;
            WHEN OTHERS => forked276_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked276(GPOUT,20)
    out_forked276 <= forked276_mux_q;

    -- select316278_mux(MUX,28)
    select316278_mux_s <= in_valid_in_0;
    select316278_mux_combproc: PROCESS (select316278_mux_s, in_select316278_1, in_select316278_0)
    BEGIN
        CASE (select316278_mux_s) IS
            WHEN "0" => select316278_mux_q <= in_select316278_1;
            WHEN "1" => select316278_mux_q <= in_select316278_0;
            WHEN OTHERS => select316278_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_select316278(GPOUT,21)
    out_select316278 <= select316278_mux_q;

    -- valid_or(LOGICAL,34)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,29)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,22)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,30)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,23)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- unnamed_conv_generic66_mux(MUX,31)
    unnamed_conv_generic66_mux_s <= in_valid_in_0;
    unnamed_conv_generic66_mux_combproc: PROCESS (unnamed_conv_generic66_mux_s, in_unnamed_conv_generic66_1, in_unnamed_conv_generic66_0)
    BEGIN
        CASE (unnamed_conv_generic66_mux_s) IS
            WHEN "0" => unnamed_conv_generic66_mux_q <= in_unnamed_conv_generic66_1;
            WHEN "1" => unnamed_conv_generic66_mux_q <= in_unnamed_conv_generic66_0;
            WHEN OTHERS => unnamed_conv_generic66_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic66(GPOUT,24)
    out_unnamed_conv_generic66 <= unnamed_conv_generic66_mux_q;

    -- unnamed_conv_generic67_mux(MUX,32)
    unnamed_conv_generic67_mux_s <= in_valid_in_0;
    unnamed_conv_generic67_mux_combproc: PROCESS (unnamed_conv_generic67_mux_s, in_unnamed_conv_generic67_1, in_unnamed_conv_generic67_0)
    BEGIN
        CASE (unnamed_conv_generic67_mux_s) IS
            WHEN "0" => unnamed_conv_generic67_mux_q <= in_unnamed_conv_generic67_1;
            WHEN "1" => unnamed_conv_generic67_mux_q <= in_unnamed_conv_generic67_0;
            WHEN OTHERS => unnamed_conv_generic67_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic67(GPOUT,25)
    out_unnamed_conv_generic67 <= unnamed_conv_generic67_mux_q;

    -- unnamed_conv_generic68_mux(MUX,33)
    unnamed_conv_generic68_mux_s <= in_valid_in_0;
    unnamed_conv_generic68_mux_combproc: PROCESS (unnamed_conv_generic68_mux_s, in_unnamed_conv_generic68_1, in_unnamed_conv_generic68_0)
    BEGIN
        CASE (unnamed_conv_generic68_mux_s) IS
            WHEN "0" => unnamed_conv_generic68_mux_q <= in_unnamed_conv_generic68_1;
            WHEN "1" => unnamed_conv_generic68_mux_q <= in_unnamed_conv_generic68_0;
            WHEN OTHERS => unnamed_conv_generic68_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic68(GPOUT,26)
    out_unnamed_conv_generic68 <= unnamed_conv_generic68_mux_q;

    -- out_valid_out(GPOUT,27)
    out_valid_out <= valid_or_q;

END normal;
