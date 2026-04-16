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

-- VHDL created from conv_generic_B9_branch
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

entity conv_generic_B9_branch is
    port (
        in_c0_exe1380 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe2381 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe3382 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe4383 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe5384 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe6385 : in std_logic_vector(32 downto 0);  -- ufix33
        in_c0_exe7386 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe8387 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked267 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe1380 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe2381 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe3382 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe4383 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe5384 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe6385 : out std_logic_vector(32 downto 0);  -- ufix33
        out_c0_exe7386 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8387 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked267 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B9_branch;

architecture normal of conv_generic_B9_branch is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exe1380(GPOUT,14)
    out_c0_exe1380 <= in_c0_exe1380;

    -- out_c0_exe2381(GPOUT,15)
    out_c0_exe2381 <= in_c0_exe2381;

    -- out_c0_exe3382(GPOUT,16)
    out_c0_exe3382 <= in_c0_exe3382;

    -- out_c0_exe4383(GPOUT,17)
    out_c0_exe4383 <= in_c0_exe4383;

    -- out_c0_exe5384(GPOUT,18)
    out_c0_exe5384 <= in_c0_exe5384;

    -- out_c0_exe6385(GPOUT,19)
    out_c0_exe6385 <= in_c0_exe6385;

    -- out_c0_exe7386(GPOUT,20)
    out_c0_exe7386 <= in_c0_exe7386;

    -- out_c0_exe8387(GPOUT,21)
    out_c0_exe8387 <= in_c0_exe8387;

    -- out_c0_exe9(GPOUT,22)
    out_c0_exe9 <= in_c0_exe9;

    -- out_forked267(GPOUT,23)
    out_forked267 <= in_forked267;

    -- stall_out(LOGICAL,26)
    stall_out_q <= in_valid_in and in_stall_in_0;

    -- out_stall_out(GPOUT,24)
    out_stall_out <= stall_out_q;

    -- out_valid_out_0(GPOUT,25)
    out_valid_out_0 <= in_valid_in;

END normal;
