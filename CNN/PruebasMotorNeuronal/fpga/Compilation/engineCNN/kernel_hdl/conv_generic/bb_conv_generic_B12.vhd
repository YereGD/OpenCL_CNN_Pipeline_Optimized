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

-- VHDL created from bb_conv_generic_B12
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

entity bb_conv_generic_B12 is
    port (
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe115_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe597_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe609_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6111_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe74173_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe113_0 : in std_logic_vector(511 downto 0);  -- ufix512
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
        out_c0_exe115 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe597 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe609 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe74173 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe113 : out std_logic_vector(511 downto 0);  -- ufix512
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B12;

architecture normal of bb_conv_generic_B12 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_generic_B12_stall_region is
        port (
            in_c0_exe115 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe597 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe609 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6111 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74173 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe115 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe597 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe609 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74173 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B12_branch is
        port (
            in_c0_exe115 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe597 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe609 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6111 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74173 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe115 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe597 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe609 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74173 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B12_merge is
        port (
            in_c0_exe115_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe597_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe609_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6111_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74173_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113_0 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe115 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe597 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe609 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6111 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74173 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal bb_conv_generic_B12_stall_region_out_c0_exe115 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_stall_region_out_c0_exe597 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_stall_region_out_c0_exe609 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_stall_region_out_c0_exe6111 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_stall_region_out_c0_exe74173 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_stall_region_out_c1_exe113 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B12_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_c0_exe115 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_c0_exe597 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_c0_exe609 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_c0_exe74173 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_c1_exe113 : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B12_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_c0_exe115 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_c0_exe597 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_c0_exe609 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_c0_exe6111 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_c0_exe74173 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_c1_exe113 : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B12_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B12_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B12_merge(BLACKBOX,4)
    theconv_generic_B12_merge : conv_generic_B12_merge
    PORT MAP (
        in_c0_exe115_0 => in_c0_exe115_0,
        in_c0_exe597_0 => in_c0_exe597_0,
        in_c0_exe609_0 => in_c0_exe609_0,
        in_c0_exe6111_0 => in_c0_exe6111_0,
        in_c0_exe74173_0 => in_c0_exe74173_0,
        in_c1_exe113_0 => in_c1_exe113_0,
        in_stall_in => bb_conv_generic_B12_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exe115 => conv_generic_B12_merge_out_c0_exe115,
        out_c0_exe597 => conv_generic_B12_merge_out_c0_exe597,
        out_c0_exe609 => conv_generic_B12_merge_out_c0_exe609,
        out_c0_exe6111 => conv_generic_B12_merge_out_c0_exe6111,
        out_c0_exe74173 => conv_generic_B12_merge_out_c0_exe74173,
        out_c1_exe113 => conv_generic_B12_merge_out_c1_exe113,
        out_stall_out_0 => conv_generic_B12_merge_out_stall_out_0,
        out_valid_out => conv_generic_B12_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B12_stall_region(BLACKBOX,2)
    thebb_conv_generic_B12_stall_region : bb_conv_generic_B12_stall_region
    PORT MAP (
        in_c0_exe115 => conv_generic_B12_merge_out_c0_exe115,
        in_c0_exe597 => conv_generic_B12_merge_out_c0_exe597,
        in_c0_exe609 => conv_generic_B12_merge_out_c0_exe609,
        in_c0_exe6111 => conv_generic_B12_merge_out_c0_exe6111,
        in_c0_exe74173 => conv_generic_B12_merge_out_c0_exe74173,
        in_c1_exe113 => conv_generic_B12_merge_out_c1_exe113,
        in_stall_in => conv_generic_B12_branch_out_stall_out,
        in_valid_in => conv_generic_B12_merge_out_valid_out,
        out_c0_exe115 => bb_conv_generic_B12_stall_region_out_c0_exe115,
        out_c0_exe597 => bb_conv_generic_B12_stall_region_out_c0_exe597,
        out_c0_exe609 => bb_conv_generic_B12_stall_region_out_c0_exe609,
        out_c0_exe6111 => bb_conv_generic_B12_stall_region_out_c0_exe6111,
        out_c0_exe74173 => bb_conv_generic_B12_stall_region_out_c0_exe74173,
        out_c1_exe113 => bb_conv_generic_B12_stall_region_out_c1_exe113,
        out_stall_out => bb_conv_generic_B12_stall_region_out_stall_out,
        out_valid_out => bb_conv_generic_B12_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B12_branch(BLACKBOX,3)
    theconv_generic_B12_branch : conv_generic_B12_branch
    PORT MAP (
        in_c0_exe115 => bb_conv_generic_B12_stall_region_out_c0_exe115,
        in_c0_exe597 => bb_conv_generic_B12_stall_region_out_c0_exe597,
        in_c0_exe609 => bb_conv_generic_B12_stall_region_out_c0_exe609,
        in_c0_exe6111 => bb_conv_generic_B12_stall_region_out_c0_exe6111,
        in_c0_exe74173 => bb_conv_generic_B12_stall_region_out_c0_exe74173,
        in_c1_exe113 => bb_conv_generic_B12_stall_region_out_c1_exe113,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_generic_B12_stall_region_out_valid_out,
        out_c0_exe115 => conv_generic_B12_branch_out_c0_exe115,
        out_c0_exe597 => conv_generic_B12_branch_out_c0_exe597,
        out_c0_exe609 => conv_generic_B12_branch_out_c0_exe609,
        out_c0_exe74173 => conv_generic_B12_branch_out_c0_exe74173,
        out_c1_exe113 => conv_generic_B12_branch_out_c1_exe113,
        out_stall_out => conv_generic_B12_branch_out_stall_out,
        out_valid_out_0 => conv_generic_B12_branch_out_valid_out_0,
        out_valid_out_1 => conv_generic_B12_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe115(GPOUT,25)
    out_c0_exe115 <= conv_generic_B12_branch_out_c0_exe115;

    -- out_c0_exe597(GPOUT,26)
    out_c0_exe597 <= conv_generic_B12_branch_out_c0_exe597;

    -- out_c0_exe609(GPOUT,27)
    out_c0_exe609 <= conv_generic_B12_branch_out_c0_exe609;

    -- out_c0_exe74173(GPOUT,28)
    out_c0_exe74173 <= conv_generic_B12_branch_out_c0_exe74173;

    -- out_c1_exe113(GPOUT,29)
    out_c1_exe113 <= conv_generic_B12_branch_out_c1_exe113;

    -- out_stall_out_0(GPOUT,30)
    out_stall_out_0 <= conv_generic_B12_merge_out_stall_out_0;

    -- out_valid_out_0(GPOUT,31)
    out_valid_out_0 <= conv_generic_B12_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,32)
    out_valid_out_1 <= conv_generic_B12_branch_out_valid_out_1;

END normal;
