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

-- VHDL created from bb_conv_generic_B11
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

entity bb_conv_generic_B11 is
    port (
        in_c0_exit4102_0_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_10 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_12 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_13 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_14 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_15 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_16 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_17 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_18 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_19 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_20 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_21 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_22 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_23 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_24 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_25 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_26 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_27 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_28 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_29 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_30 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_31 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_32 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_33 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_34 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_35 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_36 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_37 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_38 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_39 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_40 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_41 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_42 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_43 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_44 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_45 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_46 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_47 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_48 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_49 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_50 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_51 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_52 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_53 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_54 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_55 : in std_logic_vector(63 downto 0);  -- ufix64
        in_c0_exit4102_0_56 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_57 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_58 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_59 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_60 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_61 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exit4102_0_62 : in std_logic_vector(0 downto 0);  -- ufix1
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_exe116_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe598_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6010_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6112_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe74174_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114_0 : in std_logic_vector(511 downto 0);  -- ufix512
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
        out_c0_exe116 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe598 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(511 downto 0);  -- ufix512
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B11;

architecture normal of bb_conv_generic_B11 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B11_merge is
        port (
            in_c0_exit4102_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_10 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_13 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_16 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_19 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_22 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_25 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_28 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_31 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_34 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_35 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_36 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_37 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_40 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_41 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_43 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_44 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_45 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_46 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_47 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_48 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_49 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_50 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_51 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_52 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_54 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_55 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_0_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_0_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe116_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe598_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6010_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6112_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74174_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114_0 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_10 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_13 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_16 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_22 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_25 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_28 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_31 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_34 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_35 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_36 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_37 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_40 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_41 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_43 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_44 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_45 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_46 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_47 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_48 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_49 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_50 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_51 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_52 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_54 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_55 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit4102_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit4102_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe598 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B11_stall_region is
        port (
            in_c0_exit4102_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_10 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_13 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_16 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_19 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_22 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_25 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_28 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_31 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_34 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_35 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_36 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_37 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_40 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_41 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_43 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_44 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_45 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_46 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_47 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_48 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_49 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_50 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_51 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_52 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_54 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_55 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit4102_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit4102_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe116 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe598 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6010 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6112 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74174 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe598 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B11_branch is
        port (
            in_c0_exe116 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe598 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6010 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6112 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74174 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe116 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe598 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_10 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_13 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_16 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_19 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_22 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_25 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_28 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_31 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_33 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_34 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_35 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_36 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_37 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_40 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_41 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_43 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_44 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_45 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_46 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_47 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_48 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_49 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_51 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_52 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_53 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_54 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_55 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exit4102_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exe116 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exe598 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exe6010 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exe6112 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c0_exe74174 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_c1_exe114 : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_merge_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c0_exe116 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c0_exe598 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c0_exe6010 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c0_exe6112 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c0_exe62 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c0_exe74174 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_c1_exe114 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B11_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_c0_exe116 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_c0_exe598 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_c0_exe6010 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_c0_exe6112 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_c0_exe74174 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_c1_exe114 : STD_LOGIC_VECTOR (511 downto 0);
    signal conv_generic_B11_branch_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B11_branch_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B11_merge_aunroll_x(BLACKBOX,2)
    theconv_generic_B11_merge_aunroll_x : conv_generic_B11_merge
    PORT MAP (
        in_c0_exit4102_0_0 => in_c0_exit4102_0_0,
        in_c0_exit4102_0_1 => in_c0_exit4102_0_1,
        in_c0_exit4102_0_2 => in_c0_exit4102_0_2,
        in_c0_exit4102_0_3 => in_c0_exit4102_0_3,
        in_c0_exit4102_0_4 => in_c0_exit4102_0_4,
        in_c0_exit4102_0_5 => in_c0_exit4102_0_5,
        in_c0_exit4102_0_6 => in_c0_exit4102_0_6,
        in_c0_exit4102_0_7 => in_c0_exit4102_0_7,
        in_c0_exit4102_0_8 => in_c0_exit4102_0_8,
        in_c0_exit4102_0_9 => in_c0_exit4102_0_9,
        in_c0_exit4102_0_10 => in_c0_exit4102_0_10,
        in_c0_exit4102_0_11 => in_c0_exit4102_0_11,
        in_c0_exit4102_0_12 => in_c0_exit4102_0_12,
        in_c0_exit4102_0_13 => in_c0_exit4102_0_13,
        in_c0_exit4102_0_14 => in_c0_exit4102_0_14,
        in_c0_exit4102_0_15 => in_c0_exit4102_0_15,
        in_c0_exit4102_0_16 => in_c0_exit4102_0_16,
        in_c0_exit4102_0_17 => in_c0_exit4102_0_17,
        in_c0_exit4102_0_18 => in_c0_exit4102_0_18,
        in_c0_exit4102_0_19 => in_c0_exit4102_0_19,
        in_c0_exit4102_0_20 => in_c0_exit4102_0_20,
        in_c0_exit4102_0_21 => in_c0_exit4102_0_21,
        in_c0_exit4102_0_22 => in_c0_exit4102_0_22,
        in_c0_exit4102_0_23 => in_c0_exit4102_0_23,
        in_c0_exit4102_0_24 => in_c0_exit4102_0_24,
        in_c0_exit4102_0_25 => in_c0_exit4102_0_25,
        in_c0_exit4102_0_26 => in_c0_exit4102_0_26,
        in_c0_exit4102_0_27 => in_c0_exit4102_0_27,
        in_c0_exit4102_0_28 => in_c0_exit4102_0_28,
        in_c0_exit4102_0_29 => in_c0_exit4102_0_29,
        in_c0_exit4102_0_30 => in_c0_exit4102_0_30,
        in_c0_exit4102_0_31 => in_c0_exit4102_0_31,
        in_c0_exit4102_0_32 => in_c0_exit4102_0_32,
        in_c0_exit4102_0_33 => in_c0_exit4102_0_33,
        in_c0_exit4102_0_34 => in_c0_exit4102_0_34,
        in_c0_exit4102_0_35 => in_c0_exit4102_0_35,
        in_c0_exit4102_0_36 => in_c0_exit4102_0_36,
        in_c0_exit4102_0_37 => in_c0_exit4102_0_37,
        in_c0_exit4102_0_38 => in_c0_exit4102_0_38,
        in_c0_exit4102_0_39 => in_c0_exit4102_0_39,
        in_c0_exit4102_0_40 => in_c0_exit4102_0_40,
        in_c0_exit4102_0_41 => in_c0_exit4102_0_41,
        in_c0_exit4102_0_42 => in_c0_exit4102_0_42,
        in_c0_exit4102_0_43 => in_c0_exit4102_0_43,
        in_c0_exit4102_0_44 => in_c0_exit4102_0_44,
        in_c0_exit4102_0_45 => in_c0_exit4102_0_45,
        in_c0_exit4102_0_46 => in_c0_exit4102_0_46,
        in_c0_exit4102_0_47 => in_c0_exit4102_0_47,
        in_c0_exit4102_0_48 => in_c0_exit4102_0_48,
        in_c0_exit4102_0_49 => in_c0_exit4102_0_49,
        in_c0_exit4102_0_50 => in_c0_exit4102_0_50,
        in_c0_exit4102_0_51 => in_c0_exit4102_0_51,
        in_c0_exit4102_0_52 => in_c0_exit4102_0_52,
        in_c0_exit4102_0_53 => in_c0_exit4102_0_53,
        in_c0_exit4102_0_54 => in_c0_exit4102_0_54,
        in_c0_exit4102_0_55 => in_c0_exit4102_0_55,
        in_c0_exit4102_0_56 => in_c0_exit4102_0_56,
        in_c0_exit4102_0_57 => in_c0_exit4102_0_57,
        in_c0_exit4102_0_58 => in_c0_exit4102_0_58,
        in_c0_exit4102_0_59 => in_c0_exit4102_0_59,
        in_c0_exit4102_0_60 => in_c0_exit4102_0_60,
        in_c0_exit4102_0_61 => in_c0_exit4102_0_61,
        in_c0_exit4102_0_62 => in_c0_exit4102_0_62,
        in_c0_exe116_0 => in_c0_exe116_0,
        in_c0_exe598_0 => in_c0_exe598_0,
        in_c0_exe6010_0 => in_c0_exe6010_0,
        in_c0_exe6112_0 => in_c0_exe6112_0,
        in_c0_exe74174_0 => in_c0_exe74174_0,
        in_c1_exe114_0 => in_c1_exe114_0,
        in_stall_in => bb_conv_generic_B11_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        out_c0_exit4102_0 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_0,
        out_c0_exit4102_1 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_1,
        out_c0_exit4102_2 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_2,
        out_c0_exit4102_3 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_3,
        out_c0_exit4102_4 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_4,
        out_c0_exit4102_5 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_5,
        out_c0_exit4102_6 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_6,
        out_c0_exit4102_7 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_7,
        out_c0_exit4102_8 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_8,
        out_c0_exit4102_9 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_9,
        out_c0_exit4102_10 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_10,
        out_c0_exit4102_11 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_11,
        out_c0_exit4102_12 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_12,
        out_c0_exit4102_13 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_13,
        out_c0_exit4102_14 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_14,
        out_c0_exit4102_15 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_15,
        out_c0_exit4102_16 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_16,
        out_c0_exit4102_17 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_17,
        out_c0_exit4102_18 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_18,
        out_c0_exit4102_19 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_19,
        out_c0_exit4102_20 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_20,
        out_c0_exit4102_21 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_21,
        out_c0_exit4102_22 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_22,
        out_c0_exit4102_23 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_23,
        out_c0_exit4102_24 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_24,
        out_c0_exit4102_25 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_25,
        out_c0_exit4102_26 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_26,
        out_c0_exit4102_27 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_27,
        out_c0_exit4102_28 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_28,
        out_c0_exit4102_29 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_29,
        out_c0_exit4102_30 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_30,
        out_c0_exit4102_31 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_31,
        out_c0_exit4102_32 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_32,
        out_c0_exit4102_33 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_33,
        out_c0_exit4102_34 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_34,
        out_c0_exit4102_35 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_35,
        out_c0_exit4102_36 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_36,
        out_c0_exit4102_37 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_37,
        out_c0_exit4102_38 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_38,
        out_c0_exit4102_39 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_39,
        out_c0_exit4102_40 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_40,
        out_c0_exit4102_41 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_41,
        out_c0_exit4102_42 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_42,
        out_c0_exit4102_43 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_43,
        out_c0_exit4102_44 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_44,
        out_c0_exit4102_45 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_45,
        out_c0_exit4102_46 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_46,
        out_c0_exit4102_47 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_47,
        out_c0_exit4102_48 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_48,
        out_c0_exit4102_49 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_49,
        out_c0_exit4102_50 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_50,
        out_c0_exit4102_51 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_51,
        out_c0_exit4102_52 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_52,
        out_c0_exit4102_53 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_53,
        out_c0_exit4102_54 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_54,
        out_c0_exit4102_55 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_55,
        out_c0_exit4102_56 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_56,
        out_c0_exit4102_57 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_57,
        out_c0_exit4102_58 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_58,
        out_c0_exit4102_59 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_59,
        out_c0_exit4102_60 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_60,
        out_c0_exit4102_61 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_61,
        out_c0_exit4102_62 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_62,
        out_c0_exe116 => conv_generic_B11_merge_aunroll_x_out_c0_exe116,
        out_c0_exe598 => conv_generic_B11_merge_aunroll_x_out_c0_exe598,
        out_c0_exe6010 => conv_generic_B11_merge_aunroll_x_out_c0_exe6010,
        out_c0_exe6112 => conv_generic_B11_merge_aunroll_x_out_c0_exe6112,
        out_c0_exe74174 => conv_generic_B11_merge_aunroll_x_out_c0_exe74174,
        out_c1_exe114 => conv_generic_B11_merge_aunroll_x_out_c1_exe114,
        out_stall_out_0 => conv_generic_B11_merge_aunroll_x_out_stall_out_0,
        out_valid_out => conv_generic_B11_merge_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B11_stall_region(BLACKBOX,86)
    thebb_conv_generic_B11_stall_region : bb_conv_generic_B11_stall_region
    PORT MAP (
        in_c0_exit4102_0 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_0,
        in_c0_exit4102_1 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_1,
        in_c0_exit4102_2 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_2,
        in_c0_exit4102_3 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_3,
        in_c0_exit4102_4 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_4,
        in_c0_exit4102_5 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_5,
        in_c0_exit4102_6 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_6,
        in_c0_exit4102_7 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_7,
        in_c0_exit4102_8 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_8,
        in_c0_exit4102_9 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_9,
        in_c0_exit4102_10 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_10,
        in_c0_exit4102_11 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_11,
        in_c0_exit4102_12 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_12,
        in_c0_exit4102_13 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_13,
        in_c0_exit4102_14 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_14,
        in_c0_exit4102_15 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_15,
        in_c0_exit4102_16 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_16,
        in_c0_exit4102_17 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_17,
        in_c0_exit4102_18 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_18,
        in_c0_exit4102_19 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_19,
        in_c0_exit4102_20 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_20,
        in_c0_exit4102_21 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_21,
        in_c0_exit4102_22 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_22,
        in_c0_exit4102_23 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_23,
        in_c0_exit4102_24 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_24,
        in_c0_exit4102_25 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_25,
        in_c0_exit4102_26 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_26,
        in_c0_exit4102_27 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_27,
        in_c0_exit4102_28 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_28,
        in_c0_exit4102_29 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_29,
        in_c0_exit4102_30 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_30,
        in_c0_exit4102_31 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_31,
        in_c0_exit4102_32 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_32,
        in_c0_exit4102_33 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_33,
        in_c0_exit4102_34 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_34,
        in_c0_exit4102_35 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_35,
        in_c0_exit4102_36 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_36,
        in_c0_exit4102_37 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_37,
        in_c0_exit4102_38 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_38,
        in_c0_exit4102_39 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_39,
        in_c0_exit4102_40 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_40,
        in_c0_exit4102_41 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_41,
        in_c0_exit4102_42 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_42,
        in_c0_exit4102_43 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_43,
        in_c0_exit4102_44 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_44,
        in_c0_exit4102_45 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_45,
        in_c0_exit4102_46 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_46,
        in_c0_exit4102_47 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_47,
        in_c0_exit4102_48 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_48,
        in_c0_exit4102_49 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_49,
        in_c0_exit4102_50 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_50,
        in_c0_exit4102_51 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_51,
        in_c0_exit4102_52 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_52,
        in_c0_exit4102_53 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_53,
        in_c0_exit4102_54 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_54,
        in_c0_exit4102_55 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_55,
        in_c0_exit4102_56 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_56,
        in_c0_exit4102_57 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_57,
        in_c0_exit4102_58 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_58,
        in_c0_exit4102_59 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_59,
        in_c0_exit4102_60 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_60,
        in_c0_exit4102_61 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_61,
        in_c0_exit4102_62 => conv_generic_B11_merge_aunroll_x_out_c0_exit4102_62,
        in_c0_exe116 => conv_generic_B11_merge_aunroll_x_out_c0_exe116,
        in_c0_exe598 => conv_generic_B11_merge_aunroll_x_out_c0_exe598,
        in_c0_exe6010 => conv_generic_B11_merge_aunroll_x_out_c0_exe6010,
        in_c0_exe6112 => conv_generic_B11_merge_aunroll_x_out_c0_exe6112,
        in_c0_exe74174 => conv_generic_B11_merge_aunroll_x_out_c0_exe74174,
        in_c1_exe114 => conv_generic_B11_merge_aunroll_x_out_c1_exe114,
        in_stall_in => conv_generic_B11_branch_out_stall_out,
        in_valid_in => conv_generic_B11_merge_aunroll_x_out_valid_out,
        out_c0_exe116 => bb_conv_generic_B11_stall_region_out_c0_exe116,
        out_c0_exe598 => bb_conv_generic_B11_stall_region_out_c0_exe598,
        out_c0_exe6010 => bb_conv_generic_B11_stall_region_out_c0_exe6010,
        out_c0_exe6112 => bb_conv_generic_B11_stall_region_out_c0_exe6112,
        out_c0_exe62 => bb_conv_generic_B11_stall_region_out_c0_exe62,
        out_c0_exe74174 => bb_conv_generic_B11_stall_region_out_c0_exe74174,
        out_c1_exe114 => bb_conv_generic_B11_stall_region_out_c1_exe114,
        out_stall_out => bb_conv_generic_B11_stall_region_out_stall_out,
        out_valid_out => bb_conv_generic_B11_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B11_branch(BLACKBOX,87)
    theconv_generic_B11_branch : conv_generic_B11_branch
    PORT MAP (
        in_c0_exe116 => bb_conv_generic_B11_stall_region_out_c0_exe116,
        in_c0_exe598 => bb_conv_generic_B11_stall_region_out_c0_exe598,
        in_c0_exe6010 => bb_conv_generic_B11_stall_region_out_c0_exe6010,
        in_c0_exe6112 => bb_conv_generic_B11_stall_region_out_c0_exe6112,
        in_c0_exe62 => bb_conv_generic_B11_stall_region_out_c0_exe62,
        in_c0_exe74174 => bb_conv_generic_B11_stall_region_out_c0_exe74174,
        in_c1_exe114 => bb_conv_generic_B11_stall_region_out_c1_exe114,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_generic_B11_stall_region_out_valid_out,
        out_c0_exe116 => conv_generic_B11_branch_out_c0_exe116,
        out_c0_exe598 => conv_generic_B11_branch_out_c0_exe598,
        out_c0_exe6010 => conv_generic_B11_branch_out_c0_exe6010,
        out_c0_exe6112 => conv_generic_B11_branch_out_c0_exe6112,
        out_c0_exe74174 => conv_generic_B11_branch_out_c0_exe74174,
        out_c1_exe114 => conv_generic_B11_branch_out_c1_exe114,
        out_stall_out => conv_generic_B11_branch_out_stall_out,
        out_valid_out_0 => conv_generic_B11_branch_out_valid_out_0,
        out_valid_out_1 => conv_generic_B11_branch_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exe116(GPOUT,88)
    out_c0_exe116 <= conv_generic_B11_branch_out_c0_exe116;

    -- out_c0_exe598(GPOUT,89)
    out_c0_exe598 <= conv_generic_B11_branch_out_c0_exe598;

    -- out_c0_exe6010(GPOUT,90)
    out_c0_exe6010 <= conv_generic_B11_branch_out_c0_exe6010;

    -- out_c0_exe6112(GPOUT,91)
    out_c0_exe6112 <= conv_generic_B11_branch_out_c0_exe6112;

    -- out_c0_exe74174(GPOUT,92)
    out_c0_exe74174 <= conv_generic_B11_branch_out_c0_exe74174;

    -- out_c1_exe114(GPOUT,93)
    out_c1_exe114 <= conv_generic_B11_branch_out_c1_exe114;

    -- out_stall_out_0(GPOUT,94)
    out_stall_out_0 <= conv_generic_B11_merge_aunroll_x_out_stall_out_0;

    -- out_valid_out_0(GPOUT,95)
    out_valid_out_0 <= conv_generic_B11_branch_out_valid_out_0;

    -- out_valid_out_1(GPOUT,96)
    out_valid_out_1 <= conv_generic_B11_branch_out_valid_out_1;

END normal;
