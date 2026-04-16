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

-- VHDL created from conv_generic_B10_merge
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

entity conv_generic_B10_merge is
    port (
        in_forked216_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked216_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked267283_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked267283_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268280_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked268280_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_fpgaindvars_iv_in_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_fpgaindvars_iv_in_1 : in std_logic_vector(32 downto 0);  -- ufix33
        in_notexit250284_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit250284_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit254282_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_notexit254282_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic45_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic45_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic46_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic46_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic47_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic47_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic48_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic48_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w_idx_44_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_idx_44_1 : in std_logic_vector(31 downto 0);  -- ufix32
        out_forked216 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked267283 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked268280 : out std_logic_vector(0 downto 0);  -- ufix1
        out_fpgaindvars_iv_in : out std_logic_vector(32 downto 0);  -- ufix33
        out_notexit250284 : out std_logic_vector(0 downto 0);  -- ufix1
        out_notexit254282 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic45 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic46 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic47 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic48 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_w_idx_44 : out std_logic_vector(31 downto 0);  -- ufix32
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B10_merge;

architecture normal of conv_generic_B10_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked216_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked216_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked267283_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked267283_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked268280_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked268280_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal fpgaindvars_iv_in_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal fpgaindvars_iv_in_mux_q : STD_LOGIC_VECTOR (32 downto 0);
    signal notexit250284_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal notexit250284_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal notexit254282_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal notexit254282_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic45_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic45_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic46_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic46_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic47_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic47_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic48_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_conv_generic48_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);
    signal w_idx_44_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal w_idx_44_mux_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- forked216_mux(MUX,2)
    forked216_mux_s <= in_valid_in_0;
    forked216_mux_combproc: PROCESS (forked216_mux_s, in_forked216_1, in_forked216_0)
    BEGIN
        CASE (forked216_mux_s) IS
            WHEN "0" => forked216_mux_q <= in_forked216_1;
            WHEN "1" => forked216_mux_q <= in_forked216_0;
            WHEN OTHERS => forked216_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked216(GPOUT,33)
    out_forked216 <= forked216_mux_q;

    -- forked267283_mux(MUX,3)
    forked267283_mux_s <= in_valid_in_0;
    forked267283_mux_combproc: PROCESS (forked267283_mux_s, in_forked267283_1, in_forked267283_0)
    BEGIN
        CASE (forked267283_mux_s) IS
            WHEN "0" => forked267283_mux_q <= in_forked267283_1;
            WHEN "1" => forked267283_mux_q <= in_forked267283_0;
            WHEN OTHERS => forked267283_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked267283(GPOUT,34)
    out_forked267283 <= forked267283_mux_q;

    -- forked268280_mux(MUX,4)
    forked268280_mux_s <= in_valid_in_0;
    forked268280_mux_combproc: PROCESS (forked268280_mux_s, in_forked268280_1, in_forked268280_0)
    BEGIN
        CASE (forked268280_mux_s) IS
            WHEN "0" => forked268280_mux_q <= in_forked268280_1;
            WHEN "1" => forked268280_mux_q <= in_forked268280_0;
            WHEN OTHERS => forked268280_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked268280(GPOUT,35)
    out_forked268280 <= forked268280_mux_q;

    -- fpgaindvars_iv_in_mux(MUX,5)
    fpgaindvars_iv_in_mux_s <= in_valid_in_0;
    fpgaindvars_iv_in_mux_combproc: PROCESS (fpgaindvars_iv_in_mux_s, in_fpgaindvars_iv_in_1, in_fpgaindvars_iv_in_0)
    BEGIN
        CASE (fpgaindvars_iv_in_mux_s) IS
            WHEN "0" => fpgaindvars_iv_in_mux_q <= in_fpgaindvars_iv_in_1;
            WHEN "1" => fpgaindvars_iv_in_mux_q <= in_fpgaindvars_iv_in_0;
            WHEN OTHERS => fpgaindvars_iv_in_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_fpgaindvars_iv_in(GPOUT,36)
    out_fpgaindvars_iv_in <= fpgaindvars_iv_in_mux_q;

    -- notexit250284_mux(MUX,31)
    notexit250284_mux_s <= in_valid_in_0;
    notexit250284_mux_combproc: PROCESS (notexit250284_mux_s, in_notexit250284_1, in_notexit250284_0)
    BEGIN
        CASE (notexit250284_mux_s) IS
            WHEN "0" => notexit250284_mux_q <= in_notexit250284_1;
            WHEN "1" => notexit250284_mux_q <= in_notexit250284_0;
            WHEN OTHERS => notexit250284_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_notexit250284(GPOUT,37)
    out_notexit250284 <= notexit250284_mux_q;

    -- notexit254282_mux(MUX,32)
    notexit254282_mux_s <= in_valid_in_0;
    notexit254282_mux_combproc: PROCESS (notexit254282_mux_s, in_notexit254282_1, in_notexit254282_0)
    BEGIN
        CASE (notexit254282_mux_s) IS
            WHEN "0" => notexit254282_mux_q <= in_notexit254282_1;
            WHEN "1" => notexit254282_mux_q <= in_notexit254282_0;
            WHEN OTHERS => notexit254282_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_notexit254282(GPOUT,38)
    out_notexit254282 <= notexit254282_mux_q;

    -- valid_or(LOGICAL,53)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,47)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,39)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,48)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,40)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- unnamed_conv_generic45_mux(MUX,49)
    unnamed_conv_generic45_mux_s <= in_valid_in_0;
    unnamed_conv_generic45_mux_combproc: PROCESS (unnamed_conv_generic45_mux_s, in_unnamed_conv_generic45_1, in_unnamed_conv_generic45_0)
    BEGIN
        CASE (unnamed_conv_generic45_mux_s) IS
            WHEN "0" => unnamed_conv_generic45_mux_q <= in_unnamed_conv_generic45_1;
            WHEN "1" => unnamed_conv_generic45_mux_q <= in_unnamed_conv_generic45_0;
            WHEN OTHERS => unnamed_conv_generic45_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic45(GPOUT,41)
    out_unnamed_conv_generic45 <= unnamed_conv_generic45_mux_q;

    -- unnamed_conv_generic46_mux(MUX,50)
    unnamed_conv_generic46_mux_s <= in_valid_in_0;
    unnamed_conv_generic46_mux_combproc: PROCESS (unnamed_conv_generic46_mux_s, in_unnamed_conv_generic46_1, in_unnamed_conv_generic46_0)
    BEGIN
        CASE (unnamed_conv_generic46_mux_s) IS
            WHEN "0" => unnamed_conv_generic46_mux_q <= in_unnamed_conv_generic46_1;
            WHEN "1" => unnamed_conv_generic46_mux_q <= in_unnamed_conv_generic46_0;
            WHEN OTHERS => unnamed_conv_generic46_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic46(GPOUT,42)
    out_unnamed_conv_generic46 <= unnamed_conv_generic46_mux_q;

    -- unnamed_conv_generic47_mux(MUX,51)
    unnamed_conv_generic47_mux_s <= in_valid_in_0;
    unnamed_conv_generic47_mux_combproc: PROCESS (unnamed_conv_generic47_mux_s, in_unnamed_conv_generic47_1, in_unnamed_conv_generic47_0)
    BEGIN
        CASE (unnamed_conv_generic47_mux_s) IS
            WHEN "0" => unnamed_conv_generic47_mux_q <= in_unnamed_conv_generic47_1;
            WHEN "1" => unnamed_conv_generic47_mux_q <= in_unnamed_conv_generic47_0;
            WHEN OTHERS => unnamed_conv_generic47_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic47(GPOUT,43)
    out_unnamed_conv_generic47 <= unnamed_conv_generic47_mux_q;

    -- unnamed_conv_generic48_mux(MUX,52)
    unnamed_conv_generic48_mux_s <= in_valid_in_0;
    unnamed_conv_generic48_mux_combproc: PROCESS (unnamed_conv_generic48_mux_s, in_unnamed_conv_generic48_1, in_unnamed_conv_generic48_0)
    BEGIN
        CASE (unnamed_conv_generic48_mux_s) IS
            WHEN "0" => unnamed_conv_generic48_mux_q <= in_unnamed_conv_generic48_1;
            WHEN "1" => unnamed_conv_generic48_mux_q <= in_unnamed_conv_generic48_0;
            WHEN OTHERS => unnamed_conv_generic48_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_conv_generic48(GPOUT,44)
    out_unnamed_conv_generic48 <= unnamed_conv_generic48_mux_q;

    -- out_valid_out(GPOUT,45)
    out_valid_out <= valid_or_q;

    -- w_idx_44_mux(MUX,54)
    w_idx_44_mux_s <= in_valid_in_0;
    w_idx_44_mux_combproc: PROCESS (w_idx_44_mux_s, in_w_idx_44_1, in_w_idx_44_0)
    BEGIN
        CASE (w_idx_44_mux_s) IS
            WHEN "0" => w_idx_44_mux_q <= in_w_idx_44_1;
            WHEN "1" => w_idx_44_mux_q <= in_w_idx_44_0;
            WHEN OTHERS => w_idx_44_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_w_idx_44(GPOUT,46)
    out_w_idx_44 <= w_idx_44_mux_q;

END normal;
