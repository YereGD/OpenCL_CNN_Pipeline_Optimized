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

-- VHDL created from bb_mem_write_generic_B0
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

entity bb_mem_write_generic_B0 is
    port (
        in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- ufix8
        out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_out_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_t_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_intel_reserved_ffwd_7_0 : out std_logic_vector(32 downto 0);  -- ufix33
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_write_generic_B0;

architecture normal of bb_mem_write_generic_B0 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_write_generic_B0_stall_region is
        port (
            in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_t_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B0_branch is
        port (
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_B0_merge is
        port (
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_mem_write_generic_B0_stall_region_out_feedback_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B0_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B0_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B0_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B0_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_B0_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_write_generic_B0_merge(BLACKBOX,18)
    themem_write_generic_B0_merge : mem_write_generic_B0_merge
    PORT MAP (
        in_stall_in => bb_mem_write_generic_B0_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_stall_out_0 => mem_write_generic_B0_merge_out_stall_out_0,
        out_valid_out => mem_write_generic_B0_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_write_generic_B0_branch(BLACKBOX,17)
    themem_write_generic_B0_branch : mem_write_generic_B0_branch
    PORT MAP (
        in_stall_in_0 => in_stall_in_0,
        in_valid_in => bb_mem_write_generic_B0_stall_region_out_valid_out,
        out_stall_out => mem_write_generic_B0_branch_out_stall_out,
        out_valid_out_0 => mem_write_generic_B0_branch_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B0_stall_region(BLACKBOX,2)
    thebb_mem_write_generic_B0_stall_region : bb_mem_write_generic_B0_stall_region
    PORT MAP (
        in_feedback_in_0 => in_feedback_in_0,
        in_feedback_valid_in_0 => in_feedback_valid_in_0,
        in_h => in_h,
        in_out_c => in_out_c,
        in_out_offset => in_out_offset,
        in_pad => in_pad,
        in_stall_in => mem_write_generic_B0_branch_out_stall_out,
        in_stride => in_stride,
        in_t_offset => in_t_offset,
        in_valid_in => mem_write_generic_B0_merge_out_valid_out,
        in_w => in_w,
        out_feedback_stall_out_0 => bb_mem_write_generic_B0_stall_region_out_feedback_stall_out_0,
        out_intel_reserved_ffwd_0_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_1_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_2_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_2_0,
        out_intel_reserved_ffwd_3_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_3_0,
        out_intel_reserved_ffwd_4_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_6_0,
        out_intel_reserved_ffwd_7_0 => bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_7_0,
        out_stall_out => bb_mem_write_generic_B0_stall_region_out_stall_out,
        out_valid_out => bb_mem_write_generic_B0_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- feedback_stall_out_0_sync(GPOUT,4)
    out_feedback_stall_out_0 <= bb_mem_write_generic_B0_stall_region_out_feedback_stall_out_0;

    -- out_intel_reserved_ffwd_0_0(GPOUT,19)
    out_intel_reserved_ffwd_0_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_0_0;

    -- out_intel_reserved_ffwd_1_0(GPOUT,20)
    out_intel_reserved_ffwd_1_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_1_0;

    -- out_intel_reserved_ffwd_2_0(GPOUT,21)
    out_intel_reserved_ffwd_2_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_2_0;

    -- out_intel_reserved_ffwd_3_0(GPOUT,22)
    out_intel_reserved_ffwd_3_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_3_0;

    -- out_intel_reserved_ffwd_4_0(GPOUT,23)
    out_intel_reserved_ffwd_4_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_4_0;

    -- out_intel_reserved_ffwd_5_0(GPOUT,24)
    out_intel_reserved_ffwd_5_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_5_0;

    -- out_intel_reserved_ffwd_6_0(GPOUT,25)
    out_intel_reserved_ffwd_6_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_6_0;

    -- out_intel_reserved_ffwd_7_0(GPOUT,26)
    out_intel_reserved_ffwd_7_0 <= bb_mem_write_generic_B0_stall_region_out_intel_reserved_ffwd_7_0;

    -- out_stall_out_0(GPOUT,27)
    out_stall_out_0 <= mem_write_generic_B0_merge_out_stall_out_0;

    -- out_valid_out_0(GPOUT,28)
    out_valid_out_0 <= mem_write_generic_B0_branch_out_valid_out_0;

END normal;
