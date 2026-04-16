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

-- VHDL created from bb_mem_write_generic_B4
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

entity bb_mem_write_generic_B4 is
    port (
        in_c0_exit491_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit491_0_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit491_0_2 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit491_0_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit491_0_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit491_0_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit491_0_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe53_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe53 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_write_generic_B4;

architecture normal of bb_mem_write_generic_B4 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component mem_write_generic_B4_merge is
        port (
            in_c0_exit491_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit491_0_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe53_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit491_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit491_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit491_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit491_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit491_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit491_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit491_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B4_stall_region is
        port (
            in_c0_exit491_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit491_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B4_branch is
        port (
            in_c0_exe53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_c0_exe53 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_merge_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_stall_region_out_c0_exe53 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_stall_region_out_c0_exe6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_branch_out_c0_exe53 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B4_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_write_generic_B4_merge_aunroll_x(BLACKBOX,16)
    themem_write_generic_B4_merge_aunroll_x : mem_write_generic_B4_merge
    PORT MAP (
        in_c0_exit491_0_0 => in_c0_exit491_0_0,
        in_c0_exit491_0_1 => in_c0_exit491_0_1,
        in_c0_exit491_0_2 => in_c0_exit491_0_2,
        in_c0_exit491_0_3 => in_c0_exit491_0_3,
        in_c0_exit491_0_4 => in_c0_exit491_0_4,
        in_c0_exit491_0_5 => in_c0_exit491_0_5,
        in_c0_exit491_0_6 => in_c0_exit491_0_6,
        in_c0_exe53_0 => in_c0_exe53_0,
        in_stall_in => bb_mem_write_generic_B4_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exit491_0 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_0,
        out_c0_exit491_1 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_1,
        out_c0_exit491_2 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_2,
        out_c0_exit491_3 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_3,
        out_c0_exit491_4 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_4,
        out_c0_exit491_5 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_5,
        out_c0_exit491_6 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_6,
        out_c0_exe53 => mem_write_generic_B4_merge_aunroll_x_out_c0_exe53,
        out_stall_out_0 => mem_write_generic_B4_merge_aunroll_x_out_stall_out_0,
        out_valid_out => mem_write_generic_B4_merge_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B4_stall_region(BLACKBOX,17)
    thebb_mem_write_generic_B4_stall_region : bb_mem_write_generic_B4_stall_region
    PORT MAP (
        in_c0_exit491_0 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_0,
        in_c0_exit491_1 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_1,
        in_c0_exit491_2 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_2,
        in_c0_exit491_3 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_3,
        in_c0_exit491_4 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_4,
        in_c0_exit491_5 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_5,
        in_c0_exit491_6 => mem_write_generic_B4_merge_aunroll_x_out_c0_exit491_6,
        in_c0_exe53 => mem_write_generic_B4_merge_aunroll_x_out_c0_exe53,
        in_stall_in => mem_write_generic_B4_branch_out_stall_out,
        in_valid_in => mem_write_generic_B4_merge_aunroll_x_out_valid_out,
        out_c0_exe53 => bb_mem_write_generic_B4_stall_region_out_c0_exe53,
        out_c0_exe6 => bb_mem_write_generic_B4_stall_region_out_c0_exe6,
        out_stall_out => bb_mem_write_generic_B4_stall_region_out_stall_out,
        out_valid_out => bb_mem_write_generic_B4_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_write_generic_B4_branch(BLACKBOX,18)
    themem_write_generic_B4_branch : mem_write_generic_B4_branch
    PORT MAP (
        in_c0_exe53 => bb_mem_write_generic_B4_stall_region_out_c0_exe53,
        in_c0_exe6 => bb_mem_write_generic_B4_stall_region_out_c0_exe6,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_mem_write_generic_B4_stall_region_out_valid_out,
        out_c0_exe53 => mem_write_generic_B4_branch_out_c0_exe53,
        out_stall_out => mem_write_generic_B4_branch_out_stall_out,
        out_valid_out_0 => mem_write_generic_B4_branch_out_valid_out_0,
        out_valid_out_1 => mem_write_generic_B4_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe53(GPOUT,19)
    out_c0_exe53 <= mem_write_generic_B4_branch_out_c0_exe53;

    -- out_stall_out_0(GPOUT,20)
    out_stall_out_0 <= mem_write_generic_B4_merge_aunroll_x_out_stall_out_0;

    -- out_valid_out_0(GPOUT,21)
    out_valid_out_0 <= mem_write_generic_B4_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,22)
    out_valid_out_1 <= mem_write_generic_B4_branch_out_valid_out_1;

END normal;
