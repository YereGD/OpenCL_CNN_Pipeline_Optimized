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

-- VHDL created from mem_read_generic_B4_branch
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

entity mem_read_generic_B4_branch is
    port (
        in_c0_exe10 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe1128 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe12 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe13 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2129 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3130 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4131 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe5132 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe6133 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe7134 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe8135 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe10 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1128 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe13 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2129 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3130 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4131 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe5132 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe6133 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe7134 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8135 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_B4_branch;

architecture normal of mem_read_generic_B4_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe10(GPOUT,16)
    out_c0_exe10 <= in_c0_exe10;

    -- out_c0_exe11(GPOUT,17)
    out_c0_exe11 <= in_c0_exe11;

    -- out_c0_exe1128(GPOUT,18)
    out_c0_exe1128 <= in_c0_exe1128;

    -- out_c0_exe12(GPOUT,19)
    out_c0_exe12 <= in_c0_exe12;

    -- out_c0_exe13(GPOUT,20)
    out_c0_exe13 <= in_c0_exe13;

    -- out_c0_exe2129(GPOUT,21)
    out_c0_exe2129 <= in_c0_exe2129;

    -- out_c0_exe3130(GPOUT,22)
    out_c0_exe3130 <= in_c0_exe3130;

    -- out_c0_exe4131(GPOUT,23)
    out_c0_exe4131 <= in_c0_exe4131;

    -- out_c0_exe5132(GPOUT,24)
    out_c0_exe5132 <= in_c0_exe5132;

    -- out_c0_exe6133(GPOUT,25)
    out_c0_exe6133 <= in_c0_exe6133;

    -- out_c0_exe7134(GPOUT,26)
    out_c0_exe7134 <= in_c0_exe7134;

    -- out_c0_exe8135(GPOUT,27)
    out_c0_exe8135 <= in_c0_exe8135;

    -- stall_out(LOGICAL,30)
    stall_out_q <= in_valid_in and in_stall_in_0;

    -- out_stall_out(GPOUT,28)
    out_stall_out <= stall_out_q;

    -- out_valid_out_0(GPOUT,29)
    out_valid_out_0 <= in_valid_in;

END normal;
