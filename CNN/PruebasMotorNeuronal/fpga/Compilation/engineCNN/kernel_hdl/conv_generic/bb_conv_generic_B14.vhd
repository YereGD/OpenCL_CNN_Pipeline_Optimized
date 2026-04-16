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

-- VHDL created from bb_conv_generic_B14
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

entity bb_conv_generic_B14 is
    port (
        in_c0_exit45315_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_0_1 : in std_logic_vector(7 downto 0);  -- ufix8
        in_c0_exit45315_0_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_0_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_0_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_0_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit45315_0_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe545817_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exe545817 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B14;

architecture normal of bb_conv_generic_B14 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B14_merge is
        port (
            in_c0_exit45315_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_c0_exit45315_0_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe545817_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit45315_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit45315_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exit45315_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit45315_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit45315_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit45315_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit45315_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe545817 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B14_stall_region is
        port (
            in_c0_exit45315_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_c0_exit45315_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe545817 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe545817 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6459 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B14_branch is
        port (
            in_c0_exe545817 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6459 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe545817 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exit45315_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_c0_exe545817 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_merge_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_stall_region_out_c0_exe545817 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_stall_region_out_c0_exe6459 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_branch_out_c0_exe545817 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B14_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B14_merge_aunroll_x(BLACKBOX,2)
    theconv_generic_B14_merge_aunroll_x : conv_generic_B14_merge
    PORT MAP (
        in_c0_exit45315_0_0 => in_c0_exit45315_0_0,
        in_c0_exit45315_0_1 => in_c0_exit45315_0_1,
        in_c0_exit45315_0_2 => in_c0_exit45315_0_2,
        in_c0_exit45315_0_3 => in_c0_exit45315_0_3,
        in_c0_exit45315_0_4 => in_c0_exit45315_0_4,
        in_c0_exit45315_0_5 => in_c0_exit45315_0_5,
        in_c0_exit45315_0_6 => in_c0_exit45315_0_6,
        in_c0_exe545817_0 => in_c0_exe545817_0,
        in_stall_in => bb_conv_generic_B14_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exit45315_0 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_0,
        out_c0_exit45315_1 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_1,
        out_c0_exit45315_2 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_2,
        out_c0_exit45315_3 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_3,
        out_c0_exit45315_4 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_4,
        out_c0_exit45315_5 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_5,
        out_c0_exit45315_6 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_6,
        out_c0_exe545817 => conv_generic_B14_merge_aunroll_x_out_c0_exe545817,
        out_stall_out_0 => conv_generic_B14_merge_aunroll_x_out_stall_out_0,
        out_valid_out => conv_generic_B14_merge_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B14_stall_region(BLACKBOX,25)
    thebb_conv_generic_B14_stall_region : bb_conv_generic_B14_stall_region
    PORT MAP (
        in_c0_exit45315_0 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_0,
        in_c0_exit45315_1 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_1,
        in_c0_exit45315_2 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_2,
        in_c0_exit45315_3 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_3,
        in_c0_exit45315_4 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_4,
        in_c0_exit45315_5 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_5,
        in_c0_exit45315_6 => conv_generic_B14_merge_aunroll_x_out_c0_exit45315_6,
        in_c0_exe545817 => conv_generic_B14_merge_aunroll_x_out_c0_exe545817,
        in_stall_in => conv_generic_B14_branch_out_stall_out,
        in_valid_in => conv_generic_B14_merge_aunroll_x_out_valid_out,
        out_c0_exe545817 => bb_conv_generic_B14_stall_region_out_c0_exe545817,
        out_c0_exe6459 => bb_conv_generic_B14_stall_region_out_c0_exe6459,
        out_stall_out => bb_conv_generic_B14_stall_region_out_stall_out,
        out_valid_out => bb_conv_generic_B14_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B14_branch(BLACKBOX,26)
    theconv_generic_B14_branch : conv_generic_B14_branch
    PORT MAP (
        in_c0_exe545817 => bb_conv_generic_B14_stall_region_out_c0_exe545817,
        in_c0_exe6459 => bb_conv_generic_B14_stall_region_out_c0_exe6459,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_generic_B14_stall_region_out_valid_out,
        out_c0_exe545817 => conv_generic_B14_branch_out_c0_exe545817,
        out_stall_out => conv_generic_B14_branch_out_stall_out,
        out_valid_out_0 => conv_generic_B14_branch_out_valid_out_0,
        out_valid_out_1 => conv_generic_B14_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe545817(GPOUT,27)
    out_c0_exe545817 <= conv_generic_B14_branch_out_c0_exe545817;

    -- out_stall_out_0(GPOUT,28)
    out_stall_out_0 <= conv_generic_B14_merge_aunroll_x_out_stall_out_0;

    -- out_valid_out_0(GPOUT,29)
    out_valid_out_0 <= conv_generic_B14_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,30)
    out_valid_out_1 <= conv_generic_B14_branch_out_valid_out_1;

END normal;
