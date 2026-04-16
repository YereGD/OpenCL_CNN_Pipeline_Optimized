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

-- VHDL created from conv_generic_B11_merge
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

entity conv_generic_B11_merge is
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
        in_c0_exe116_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe598_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6010_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe6112_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_exe74174_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c1_exe114_0 : in std_logic_vector(511 downto 0);  -- ufix512
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_10 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_13 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_14 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_15 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_16 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_17 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_18 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_20 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_21 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_22 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_23 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_25 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_26 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_27 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_28 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_29 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_30 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_31 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_32 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_34 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_35 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_36 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_37 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_38 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_40 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_41 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_43 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_44 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_45 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_46 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_47 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_48 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_49 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_50 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_51 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_52 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_53 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_54 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_55 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit4102_56 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_57 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_58 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_59 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_60 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_61 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit4102_62 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe116 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe598 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c1_exe114 : out std_logic_vector(511 downto 0);  -- ufix512
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B11_merge;

architecture normal of conv_generic_B11_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- out_c0_exit4102_0(GPOUT,73)
    out_c0_exit4102_0 <= in_c0_exit4102_0_0;

    -- out_c0_exit4102_1(GPOUT,74)
    out_c0_exit4102_1 <= in_c0_exit4102_0_1;

    -- out_c0_exit4102_2(GPOUT,75)
    out_c0_exit4102_2 <= in_c0_exit4102_0_2;

    -- out_c0_exit4102_3(GPOUT,76)
    out_c0_exit4102_3 <= in_c0_exit4102_0_3;

    -- out_c0_exit4102_4(GPOUT,77)
    out_c0_exit4102_4 <= in_c0_exit4102_0_4;

    -- out_c0_exit4102_5(GPOUT,78)
    out_c0_exit4102_5 <= in_c0_exit4102_0_5;

    -- out_c0_exit4102_6(GPOUT,79)
    out_c0_exit4102_6 <= in_c0_exit4102_0_6;

    -- out_c0_exit4102_7(GPOUT,80)
    out_c0_exit4102_7 <= in_c0_exit4102_0_7;

    -- out_c0_exit4102_8(GPOUT,81)
    out_c0_exit4102_8 <= in_c0_exit4102_0_8;

    -- out_c0_exit4102_9(GPOUT,82)
    out_c0_exit4102_9 <= in_c0_exit4102_0_9;

    -- out_c0_exit4102_10(GPOUT,83)
    out_c0_exit4102_10 <= in_c0_exit4102_0_10;

    -- out_c0_exit4102_11(GPOUT,84)
    out_c0_exit4102_11 <= in_c0_exit4102_0_11;

    -- out_c0_exit4102_12(GPOUT,85)
    out_c0_exit4102_12 <= in_c0_exit4102_0_12;

    -- out_c0_exit4102_13(GPOUT,86)
    out_c0_exit4102_13 <= in_c0_exit4102_0_13;

    -- out_c0_exit4102_14(GPOUT,87)
    out_c0_exit4102_14 <= in_c0_exit4102_0_14;

    -- out_c0_exit4102_15(GPOUT,88)
    out_c0_exit4102_15 <= in_c0_exit4102_0_15;

    -- out_c0_exit4102_16(GPOUT,89)
    out_c0_exit4102_16 <= in_c0_exit4102_0_16;

    -- out_c0_exit4102_17(GPOUT,90)
    out_c0_exit4102_17 <= in_c0_exit4102_0_17;

    -- out_c0_exit4102_18(GPOUT,91)
    out_c0_exit4102_18 <= in_c0_exit4102_0_18;

    -- out_c0_exit4102_19(GPOUT,92)
    out_c0_exit4102_19 <= in_c0_exit4102_0_19;

    -- out_c0_exit4102_20(GPOUT,93)
    out_c0_exit4102_20 <= in_c0_exit4102_0_20;

    -- out_c0_exit4102_21(GPOUT,94)
    out_c0_exit4102_21 <= in_c0_exit4102_0_21;

    -- out_c0_exit4102_22(GPOUT,95)
    out_c0_exit4102_22 <= in_c0_exit4102_0_22;

    -- out_c0_exit4102_23(GPOUT,96)
    out_c0_exit4102_23 <= in_c0_exit4102_0_23;

    -- out_c0_exit4102_24(GPOUT,97)
    out_c0_exit4102_24 <= in_c0_exit4102_0_24;

    -- out_c0_exit4102_25(GPOUT,98)
    out_c0_exit4102_25 <= in_c0_exit4102_0_25;

    -- out_c0_exit4102_26(GPOUT,99)
    out_c0_exit4102_26 <= in_c0_exit4102_0_26;

    -- out_c0_exit4102_27(GPOUT,100)
    out_c0_exit4102_27 <= in_c0_exit4102_0_27;

    -- out_c0_exit4102_28(GPOUT,101)
    out_c0_exit4102_28 <= in_c0_exit4102_0_28;

    -- out_c0_exit4102_29(GPOUT,102)
    out_c0_exit4102_29 <= in_c0_exit4102_0_29;

    -- out_c0_exit4102_30(GPOUT,103)
    out_c0_exit4102_30 <= in_c0_exit4102_0_30;

    -- out_c0_exit4102_31(GPOUT,104)
    out_c0_exit4102_31 <= in_c0_exit4102_0_31;

    -- out_c0_exit4102_32(GPOUT,105)
    out_c0_exit4102_32 <= in_c0_exit4102_0_32;

    -- out_c0_exit4102_33(GPOUT,106)
    out_c0_exit4102_33 <= in_c0_exit4102_0_33;

    -- out_c0_exit4102_34(GPOUT,107)
    out_c0_exit4102_34 <= in_c0_exit4102_0_34;

    -- out_c0_exit4102_35(GPOUT,108)
    out_c0_exit4102_35 <= in_c0_exit4102_0_35;

    -- out_c0_exit4102_36(GPOUT,109)
    out_c0_exit4102_36 <= in_c0_exit4102_0_36;

    -- out_c0_exit4102_37(GPOUT,110)
    out_c0_exit4102_37 <= in_c0_exit4102_0_37;

    -- out_c0_exit4102_38(GPOUT,111)
    out_c0_exit4102_38 <= in_c0_exit4102_0_38;

    -- out_c0_exit4102_39(GPOUT,112)
    out_c0_exit4102_39 <= in_c0_exit4102_0_39;

    -- out_c0_exit4102_40(GPOUT,113)
    out_c0_exit4102_40 <= in_c0_exit4102_0_40;

    -- out_c0_exit4102_41(GPOUT,114)
    out_c0_exit4102_41 <= in_c0_exit4102_0_41;

    -- out_c0_exit4102_42(GPOUT,115)
    out_c0_exit4102_42 <= in_c0_exit4102_0_42;

    -- out_c0_exit4102_43(GPOUT,116)
    out_c0_exit4102_43 <= in_c0_exit4102_0_43;

    -- out_c0_exit4102_44(GPOUT,117)
    out_c0_exit4102_44 <= in_c0_exit4102_0_44;

    -- out_c0_exit4102_45(GPOUT,118)
    out_c0_exit4102_45 <= in_c0_exit4102_0_45;

    -- out_c0_exit4102_46(GPOUT,119)
    out_c0_exit4102_46 <= in_c0_exit4102_0_46;

    -- out_c0_exit4102_47(GPOUT,120)
    out_c0_exit4102_47 <= in_c0_exit4102_0_47;

    -- out_c0_exit4102_48(GPOUT,121)
    out_c0_exit4102_48 <= in_c0_exit4102_0_48;

    -- out_c0_exit4102_49(GPOUT,122)
    out_c0_exit4102_49 <= in_c0_exit4102_0_49;

    -- out_c0_exit4102_50(GPOUT,123)
    out_c0_exit4102_50 <= in_c0_exit4102_0_50;

    -- out_c0_exit4102_51(GPOUT,124)
    out_c0_exit4102_51 <= in_c0_exit4102_0_51;

    -- out_c0_exit4102_52(GPOUT,125)
    out_c0_exit4102_52 <= in_c0_exit4102_0_52;

    -- out_c0_exit4102_53(GPOUT,126)
    out_c0_exit4102_53 <= in_c0_exit4102_0_53;

    -- out_c0_exit4102_54(GPOUT,127)
    out_c0_exit4102_54 <= in_c0_exit4102_0_54;

    -- out_c0_exit4102_55(GPOUT,128)
    out_c0_exit4102_55 <= in_c0_exit4102_0_55;

    -- out_c0_exit4102_56(GPOUT,129)
    out_c0_exit4102_56 <= in_c0_exit4102_0_56;

    -- out_c0_exit4102_57(GPOUT,130)
    out_c0_exit4102_57 <= in_c0_exit4102_0_57;

    -- out_c0_exit4102_58(GPOUT,131)
    out_c0_exit4102_58 <= in_c0_exit4102_0_58;

    -- out_c0_exit4102_59(GPOUT,132)
    out_c0_exit4102_59 <= in_c0_exit4102_0_59;

    -- out_c0_exit4102_60(GPOUT,133)
    out_c0_exit4102_60 <= in_c0_exit4102_0_60;

    -- out_c0_exit4102_61(GPOUT,134)
    out_c0_exit4102_61 <= in_c0_exit4102_0_61;

    -- out_c0_exit4102_62(GPOUT,135)
    out_c0_exit4102_62 <= in_c0_exit4102_0_62;

    -- out_c0_exe116(GPOUT,136)
    out_c0_exe116 <= in_c0_exe116_0;

    -- out_c0_exe598(GPOUT,137)
    out_c0_exe598 <= in_c0_exe598_0;

    -- out_c0_exe6010(GPOUT,138)
    out_c0_exe6010 <= in_c0_exe6010_0;

    -- out_c0_exe6112(GPOUT,139)
    out_c0_exe6112 <= in_c0_exe6112_0;

    -- out_c0_exe74174(GPOUT,140)
    out_c0_exe74174 <= in_c0_exe74174_0;

    -- out_c1_exe114(GPOUT,141)
    out_c1_exe114 <= in_c1_exe114_0;

    -- stall_out(LOGICAL,144)
    stall_out_q <= in_valid_in_0 and in_stall_in;

    -- out_stall_out_0(GPOUT,142)
    out_stall_out_0 <= stall_out_q;

    -- out_valid_out(GPOUT,143)
    out_valid_out <= in_valid_in_0;

END normal;
