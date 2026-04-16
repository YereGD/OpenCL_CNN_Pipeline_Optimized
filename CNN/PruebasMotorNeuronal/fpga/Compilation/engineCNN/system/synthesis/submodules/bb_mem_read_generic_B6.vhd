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

-- VHDL created from bb_mem_read_generic_B6
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

entity bb_mem_read_generic_B6 is
    port (
        in_c0_exit1631_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_4 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit1631_0_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit1631_0_10 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe71705_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe81718_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe917210_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        out_c0_exe71705 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe81718 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe917210 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_read_generic_B6;

architecture normal of bb_mem_read_generic_B6 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component mem_read_generic_B6_merge is
        port (
            in_c0_exit1631_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_4 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit1631_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_0_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe71705_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe81718_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe917210_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_4 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit1631_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit1631_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe71705 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe81718 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe917210 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B6_stall_region is
        port (
            in_c0_exit1631_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_4 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit1631_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit1631_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe71705 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe81718 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe917210 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe10173 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe71705 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe81718 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe917210 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B6_branch is
        port (
            in_c0_exe10173 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe71705 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe81718 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe917210 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe71705 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe81718 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe917210 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exe71705 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exe81718 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_c0_exe917210 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_merge_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_stall_region_out_c0_exe10173 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_stall_region_out_c0_exe71705 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_stall_region_out_c0_exe81718 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_stall_region_out_c0_exe917210 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_branch_out_c0_exe71705 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_branch_out_c0_exe81718 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_branch_out_c0_exe917210 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B6_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_read_generic_B6_merge_aunroll_x(BLACKBOX,27)
    themem_read_generic_B6_merge_aunroll_x : mem_read_generic_B6_merge
    PORT MAP (
        in_c0_exit1631_0_0 => in_c0_exit1631_0_0,
        in_c0_exit1631_0_1 => in_c0_exit1631_0_1,
        in_c0_exit1631_0_2 => in_c0_exit1631_0_2,
        in_c0_exit1631_0_3 => in_c0_exit1631_0_3,
        in_c0_exit1631_0_4 => in_c0_exit1631_0_4,
        in_c0_exit1631_0_5 => in_c0_exit1631_0_5,
        in_c0_exit1631_0_6 => in_c0_exit1631_0_6,
        in_c0_exit1631_0_7 => in_c0_exit1631_0_7,
        in_c0_exit1631_0_8 => in_c0_exit1631_0_8,
        in_c0_exit1631_0_9 => in_c0_exit1631_0_9,
        in_c0_exit1631_0_10 => in_c0_exit1631_0_10,
        in_c0_exe71705_0 => in_c0_exe71705_0,
        in_c0_exe81718_0 => in_c0_exe81718_0,
        in_c0_exe917210_0 => in_c0_exe917210_0,
        in_stall_in => bb_mem_read_generic_B6_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exit1631_0 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_0,
        out_c0_exit1631_1 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_1,
        out_c0_exit1631_2 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_2,
        out_c0_exit1631_3 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_3,
        out_c0_exit1631_4 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_4,
        out_c0_exit1631_5 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_5,
        out_c0_exit1631_6 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_6,
        out_c0_exit1631_7 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_7,
        out_c0_exit1631_8 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_8,
        out_c0_exit1631_9 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_9,
        out_c0_exit1631_10 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_10,
        out_c0_exe71705 => mem_read_generic_B6_merge_aunroll_x_out_c0_exe71705,
        out_c0_exe81718 => mem_read_generic_B6_merge_aunroll_x_out_c0_exe81718,
        out_c0_exe917210 => mem_read_generic_B6_merge_aunroll_x_out_c0_exe917210,
        out_stall_out_0 => mem_read_generic_B6_merge_aunroll_x_out_stall_out_0,
        out_valid_out => mem_read_generic_B6_merge_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B6_stall_region(BLACKBOX,28)
    thebb_mem_read_generic_B6_stall_region : bb_mem_read_generic_B6_stall_region
    PORT MAP (
        in_c0_exit1631_0 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_0,
        in_c0_exit1631_1 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_1,
        in_c0_exit1631_2 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_2,
        in_c0_exit1631_3 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_3,
        in_c0_exit1631_4 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_4,
        in_c0_exit1631_5 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_5,
        in_c0_exit1631_6 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_6,
        in_c0_exit1631_7 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_7,
        in_c0_exit1631_8 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_8,
        in_c0_exit1631_9 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_9,
        in_c0_exit1631_10 => mem_read_generic_B6_merge_aunroll_x_out_c0_exit1631_10,
        in_c0_exe71705 => mem_read_generic_B6_merge_aunroll_x_out_c0_exe71705,
        in_c0_exe81718 => mem_read_generic_B6_merge_aunroll_x_out_c0_exe81718,
        in_c0_exe917210 => mem_read_generic_B6_merge_aunroll_x_out_c0_exe917210,
        in_stall_in => mem_read_generic_B6_branch_out_stall_out,
        in_valid_in => mem_read_generic_B6_merge_aunroll_x_out_valid_out,
        out_c0_exe10173 => bb_mem_read_generic_B6_stall_region_out_c0_exe10173,
        out_c0_exe71705 => bb_mem_read_generic_B6_stall_region_out_c0_exe71705,
        out_c0_exe81718 => bb_mem_read_generic_B6_stall_region_out_c0_exe81718,
        out_c0_exe917210 => bb_mem_read_generic_B6_stall_region_out_c0_exe917210,
        out_stall_out => bb_mem_read_generic_B6_stall_region_out_stall_out,
        out_valid_out => bb_mem_read_generic_B6_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_read_generic_B6_branch(BLACKBOX,29)
    themem_read_generic_B6_branch : mem_read_generic_B6_branch
    PORT MAP (
        in_c0_exe10173 => bb_mem_read_generic_B6_stall_region_out_c0_exe10173,
        in_c0_exe71705 => bb_mem_read_generic_B6_stall_region_out_c0_exe71705,
        in_c0_exe81718 => bb_mem_read_generic_B6_stall_region_out_c0_exe81718,
        in_c0_exe917210 => bb_mem_read_generic_B6_stall_region_out_c0_exe917210,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_mem_read_generic_B6_stall_region_out_valid_out,
        out_c0_exe71705 => mem_read_generic_B6_branch_out_c0_exe71705,
        out_c0_exe81718 => mem_read_generic_B6_branch_out_c0_exe81718,
        out_c0_exe917210 => mem_read_generic_B6_branch_out_c0_exe917210,
        out_stall_out => mem_read_generic_B6_branch_out_stall_out,
        out_valid_out_0 => mem_read_generic_B6_branch_out_valid_out_0,
        out_valid_out_1 => mem_read_generic_B6_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe71705(GPOUT,30)
    out_c0_exe71705 <= mem_read_generic_B6_branch_out_c0_exe71705;

    -- out_c0_exe81718(GPOUT,31)
    out_c0_exe81718 <= mem_read_generic_B6_branch_out_c0_exe81718;

    -- out_c0_exe917210(GPOUT,32)
    out_c0_exe917210 <= mem_read_generic_B6_branch_out_c0_exe917210;

    -- out_stall_out_0(GPOUT,33)
    out_stall_out_0 <= mem_read_generic_B6_merge_aunroll_x_out_stall_out_0;

    -- out_valid_out_0(GPOUT,34)
    out_valid_out_0 <= mem_read_generic_B6_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,35)
    out_valid_out_1 <= mem_read_generic_B6_branch_out_valid_out_1;

END normal;
