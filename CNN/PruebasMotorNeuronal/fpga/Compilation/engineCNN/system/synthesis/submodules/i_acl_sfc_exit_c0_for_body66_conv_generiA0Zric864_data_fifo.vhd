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

-- VHDL created from i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic864_data_fifo
-- VHDL created on Thu Apr 16 12:21:58 2026


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

entity i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic864_data_fifo is
    port (
        in_data_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_10 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_11 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_12 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_13 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_14 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_15 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_16 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_17 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_18 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_19 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_20 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_21 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_22 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_23 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_24 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_25 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_26 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_27 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_28 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_29 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_30 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_31 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_32 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_33 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_34 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_35 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_36 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_37 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_38 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_39 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_40 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_41 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_42 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_43 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_44 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_45 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_46 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_47 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_48 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_49 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_50 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_51 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_52 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_53 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_54 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_55 : in std_logic_vector(63 downto 0);  -- ufix64
        in_data_in_56 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_57 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_58 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_59 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_60 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_61 : in std_logic_vector(0 downto 0);  -- ufix1
        in_data_in_62 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_10 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_11 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_12 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_13 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_14 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_15 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_16 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_17 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_18 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_19 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_20 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_21 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_22 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_23 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_24 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_25 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_26 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_27 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_28 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_29 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_30 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_31 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_32 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_33 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_34 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_35 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_36 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_37 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_38 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_39 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_40 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_41 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_42 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_43 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_44 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_45 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_46 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_47 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_48 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_49 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_50 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_51 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_52 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_53 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_54 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_55 : out std_logic_vector(63 downto 0);  -- ufix64
        out_data_out_56 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_57 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_58 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_59 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_60 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_61 : out std_logic_vector(0 downto 0);  -- ufix1
        out_data_out_62 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic864_data_fifo;

architecture normal of i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic864_data_fifo is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_data_fifo is
        generic (
            DEPTH : INTEGER;
            ALLOW_FULL_WRITE : INTEGER := 1;
            DATA_WIDTH : INTEGER := 2176;
            IMPL : STRING := "ram"
        );
        port (
            data_in : in std_logic_vector(2175 downto 0);
            stall_in : in std_logic;
            valid_in : in std_logic;
            data_out : out std_logic_vector(2175 downto 0);
            stall_out : out std_logic;
            valid_out : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal dupName_0_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_i48_0gr_x_q : STD_LOGIC_VECTOR (47 downto 0);
    signal dupName_0_c_i7_0gr_x_q : STD_LOGIC_VECTOR (6 downto 0);
    signal dupName_0_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_0_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_1_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_1_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_1_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_2_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_2_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_2_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_3_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_3_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_3_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_4_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_4_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_5_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_5_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_6_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_6_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_7_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_7_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_8_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_8_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_9_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_9_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_9_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_9_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_9_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_10_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_10_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_10_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_10_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_10_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_11_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_11_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_11_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_11_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_11_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_12_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_12_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_12_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_12_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_12_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_13_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_13_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_13_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_13_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_13_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_14_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_14_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_14_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_15_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_15_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_15_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_15_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_16_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_16_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_16_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_16_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_17_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_17_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_17_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_17_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_18_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_18_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_18_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_18_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_19_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_19_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_19_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_19_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_20_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_20_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_20_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_20_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_21_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_21_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_21_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_21_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_22_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_22_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_22_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_22_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_23_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_23_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_23_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_23_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_24_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_24_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_24_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_24_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_25_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_25_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_25_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_25_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_26_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_26_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_26_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_26_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_27_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_27_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_27_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_27_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_28_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_28_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_28_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_28_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_29_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_29_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_29_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_29_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_30_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_30_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_30_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_30_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_31_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_31_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_31_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_31_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_32_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_32_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_32_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_32_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_33_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_33_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_33_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_33_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_34_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_34_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_34_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_34_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_35_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_35_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_35_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_35_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_36_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_36_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_36_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_36_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_37_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_37_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_37_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_37_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_38_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_38_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_38_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_38_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_39_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_39_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_39_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_39_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_40_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_40_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_40_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_40_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_41_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_41_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_41_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_41_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_42_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_42_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_42_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_42_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_43_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_43_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_43_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_43_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_44_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_44_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_44_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_44_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_45_adapt_scalar_trunc_x_in : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_45_adapt_scalar_trunc_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_45_element_extension_x_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_45_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_46_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_47_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_48_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_49_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_50_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_51_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_52_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_53_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_54_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_55_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_56_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_57_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_58_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_59_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_60_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_61_ip_dsdk_adapt_bitselect_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal adapt_scalar_trunc_in : STD_LOGIC_VECTOR (0 downto 0);
    signal adapt_scalar_trunc_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i8_0gr_q : STD_LOGIC_VECTOR (7 downto 0);
    signal dsdk_ip_adapt_bitjoin_q : STD_LOGIC_VECTOR (2175 downto 0);
    signal element_extension_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_in : STD_LOGIC_VECTOR (2175 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_in_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_in_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out : STD_LOGIC_VECTOR (2175 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_out_bitsignaltemp : std_logic;
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_out_bitsignaltemp : std_logic;
    signal ip_dsdk_adapt_bitselect_b : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- c_i8_0gr(CONSTANT,237)
    c_i8_0gr_q <= "00000000";

    -- dupName_0_c_i7_0gr_x(CONSTANT,6)
    dupName_0_c_i7_0gr_x_q <= "0000000";

    -- dupName_45_element_extension_x(BITJOIN,216)
    dupName_45_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_62;

    -- dupName_44_element_extension_x(BITJOIN,212)
    dupName_44_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_61;

    -- dupName_43_element_extension_x(BITJOIN,208)
    dupName_43_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_60;

    -- dupName_42_element_extension_x(BITJOIN,204)
    dupName_42_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_59;

    -- dupName_41_element_extension_x(BITJOIN,200)
    dupName_41_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_58;

    -- dupName_40_element_extension_x(BITJOIN,196)
    dupName_40_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_57;

    -- dupName_39_element_extension_x(BITJOIN,192)
    dupName_39_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_56;

    -- dupName_38_element_extension_x(BITJOIN,188)
    dupName_38_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_54;

    -- dupName_37_element_extension_x(BITJOIN,184)
    dupName_37_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_53;

    -- dupName_36_element_extension_x(BITJOIN,180)
    dupName_36_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_51;

    -- dupName_35_element_extension_x(BITJOIN,176)
    dupName_35_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_50;

    -- dupName_34_element_extension_x(BITJOIN,172)
    dupName_34_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_48;

    -- dupName_33_element_extension_x(BITJOIN,168)
    dupName_33_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_47;

    -- dupName_32_element_extension_x(BITJOIN,164)
    dupName_32_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_45;

    -- dupName_31_element_extension_x(BITJOIN,160)
    dupName_31_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_44;

    -- dupName_30_element_extension_x(BITJOIN,156)
    dupName_30_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_42;

    -- dupName_29_element_extension_x(BITJOIN,152)
    dupName_29_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_41;

    -- dupName_28_element_extension_x(BITJOIN,148)
    dupName_28_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_39;

    -- dupName_27_element_extension_x(BITJOIN,144)
    dupName_27_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_38;

    -- dupName_26_element_extension_x(BITJOIN,140)
    dupName_26_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_36;

    -- dupName_25_element_extension_x(BITJOIN,136)
    dupName_25_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_35;

    -- dupName_24_element_extension_x(BITJOIN,132)
    dupName_24_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_33;

    -- dupName_23_element_extension_x(BITJOIN,128)
    dupName_23_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_32;

    -- dupName_22_element_extension_x(BITJOIN,124)
    dupName_22_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_30;

    -- dupName_21_element_extension_x(BITJOIN,120)
    dupName_21_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_29;

    -- dupName_20_element_extension_x(BITJOIN,116)
    dupName_20_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_27;

    -- dupName_19_element_extension_x(BITJOIN,112)
    dupName_19_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_26;

    -- dupName_18_element_extension_x(BITJOIN,108)
    dupName_18_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_24;

    -- dupName_17_element_extension_x(BITJOIN,104)
    dupName_17_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_23;

    -- dupName_16_element_extension_x(BITJOIN,100)
    dupName_16_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_21;

    -- dupName_15_element_extension_x(BITJOIN,96)
    dupName_15_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_20;

    -- dupName_14_element_extension_x(BITJOIN,91)
    dupName_14_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_18;

    -- dupName_13_element_extension_x(BITJOIN,85)
    dupName_13_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_17;

    -- dupName_12_element_extension_x(BITJOIN,79)
    dupName_12_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_15;

    -- dupName_11_element_extension_x(BITJOIN,73)
    dupName_11_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_14;

    -- dupName_10_element_extension_x(BITJOIN,67)
    dupName_10_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_12;

    -- dupName_9_element_extension_x(BITJOIN,61)
    dupName_9_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_11;

    -- dupName_0_c_i48_0gr_x(CONSTANT,5)
    dupName_0_c_i48_0gr_x_q <= "000000000000000000000000000000000000000000000000";

    -- dupName_8_element_extension_x(BITJOIN,55)
    dupName_8_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_9;

    -- dupName_7_element_extension_x(BITJOIN,49)
    dupName_7_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_8;

    -- dupName_6_element_extension_x(BITJOIN,43)
    dupName_6_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_7;

    -- dupName_5_element_extension_x(BITJOIN,37)
    dupName_5_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_6;

    -- dupName_4_element_extension_x(BITJOIN,31)
    dupName_4_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_5;

    -- dupName_3_element_extension_x(BITJOIN,25)
    dupName_3_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_4;

    -- dupName_2_element_extension_x(BITJOIN,19)
    dupName_2_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_3;

    -- dupName_1_element_extension_x(BITJOIN,13)
    dupName_1_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_2;

    -- dupName_0_element_extension_x(BITJOIN,7)
    dupName_0_element_extension_x_q <= dupName_0_c_i7_0gr_x_q & in_data_in_1;

    -- element_extension(BITJOIN,239)
    element_extension_q <= dupName_0_c_i7_0gr_x_q & in_data_in_0;

    -- dsdk_ip_adapt_bitjoin(BITJOIN,238)
    dsdk_ip_adapt_bitjoin_q <= c_i8_0gr_q & dupName_45_element_extension_x_q & dupName_44_element_extension_x_q & dupName_43_element_extension_x_q & dupName_42_element_extension_x_q & dupName_41_element_extension_x_q & dupName_40_element_extension_x_q & dupName_39_element_extension_x_q & in_data_in_55 & dupName_0_c_i48_0gr_x_q & dupName_38_element_extension_x_q & dupName_37_element_extension_x_q & in_data_in_52 & dupName_0_c_i48_0gr_x_q & dupName_36_element_extension_x_q & dupName_35_element_extension_x_q & in_data_in_49 & dupName_0_c_i48_0gr_x_q & dupName_34_element_extension_x_q & dupName_33_element_extension_x_q & in_data_in_46 & dupName_0_c_i48_0gr_x_q & dupName_32_element_extension_x_q & dupName_31_element_extension_x_q & in_data_in_43 & dupName_0_c_i48_0gr_x_q & dupName_30_element_extension_x_q & dupName_29_element_extension_x_q & in_data_in_40 & dupName_0_c_i48_0gr_x_q & dupName_28_element_extension_x_q & dupName_27_element_extension_x_q & in_data_in_37 & dupName_0_c_i48_0gr_x_q & dupName_26_element_extension_x_q & dupName_25_element_extension_x_q & in_data_in_34 & dupName_0_c_i48_0gr_x_q & dupName_24_element_extension_x_q & dupName_23_element_extension_x_q & in_data_in_31 & dupName_0_c_i48_0gr_x_q & dupName_22_element_extension_x_q & dupName_21_element_extension_x_q & in_data_in_28 & dupName_0_c_i48_0gr_x_q & dupName_20_element_extension_x_q & dupName_19_element_extension_x_q & in_data_in_25 & dupName_0_c_i48_0gr_x_q & dupName_18_element_extension_x_q & dupName_17_element_extension_x_q & in_data_in_22 & dupName_0_c_i48_0gr_x_q & dupName_16_element_extension_x_q & dupName_15_element_extension_x_q & in_data_in_19 & dupName_0_c_i48_0gr_x_q & dupName_14_element_extension_x_q & dupName_13_element_extension_x_q & in_data_in_16 & dupName_0_c_i48_0gr_x_q & dupName_12_element_extension_x_q & dupName_11_element_extension_x_q & in_data_in_13 & dupName_0_c_i48_0gr_x_q & dupName_10_element_extension_x_q & dupName_9_element_extension_x_q & in_data_in_10 & dupName_0_c_i48_0gr_x_q & dupName_8_element_extension_x_q & dupName_7_element_extension_x_q & dupName_6_element_extension_x_q & dupName_5_element_extension_x_q & dupName_4_element_extension_x_q & dupName_3_element_extension_x_q & dupName_2_element_extension_x_q & dupName_1_element_extension_x_q & dupName_0_element_extension_x_q & element_extension_q;

    -- i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865(EXTIFACE,240)
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_in <= dsdk_ip_adapt_bitjoin_q;
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_in <= in_stall_in;
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_in <= in_valid_in;
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_in_bitsignaltemp <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_in(0);
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_in_bitsignaltemp <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_in(0);
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_out(0) <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_out_bitsignaltemp;
    i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_out(0) <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_out_bitsignaltemp;
    thei_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865 : acl_data_fifo
    GENERIC MAP (
        DEPTH => 16,
        ALLOW_FULL_WRITE => 1,
        DATA_WIDTH => 2176,
        IMPL => "ram"
    )
    PORT MAP (
        data_in => dsdk_ip_adapt_bitjoin_q,
        stall_in => i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_in_bitsignaltemp,
        valid_in => i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_in_bitsignaltemp,
        data_out => i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out,
        stall_out => i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_out_bitsignaltemp,
        valid_out => i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- dupName_61_ip_dsdk_adapt_bitselect_x(BITSELECT,233)
    dupName_61_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2160 downto 2160);

    -- dupName_45_adapt_scalar_trunc_x(ROUND,214)
    dupName_45_adapt_scalar_trunc_x_in <= dupName_61_ip_dsdk_adapt_bitselect_x_b;
    dupName_45_adapt_scalar_trunc_x_q <= dupName_45_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_60_ip_dsdk_adapt_bitselect_x(BITSELECT,232)
    dupName_60_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2152 downto 2152);

    -- dupName_44_adapt_scalar_trunc_x(ROUND,210)
    dupName_44_adapt_scalar_trunc_x_in <= dupName_60_ip_dsdk_adapt_bitselect_x_b;
    dupName_44_adapt_scalar_trunc_x_q <= dupName_44_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_59_ip_dsdk_adapt_bitselect_x(BITSELECT,231)
    dupName_59_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2144 downto 2144);

    -- dupName_43_adapt_scalar_trunc_x(ROUND,206)
    dupName_43_adapt_scalar_trunc_x_in <= dupName_59_ip_dsdk_adapt_bitselect_x_b;
    dupName_43_adapt_scalar_trunc_x_q <= dupName_43_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_58_ip_dsdk_adapt_bitselect_x(BITSELECT,230)
    dupName_58_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2136 downto 2136);

    -- dupName_42_adapt_scalar_trunc_x(ROUND,202)
    dupName_42_adapt_scalar_trunc_x_in <= dupName_58_ip_dsdk_adapt_bitselect_x_b;
    dupName_42_adapt_scalar_trunc_x_q <= dupName_42_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_57_ip_dsdk_adapt_bitselect_x(BITSELECT,229)
    dupName_57_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2128 downto 2128);

    -- dupName_41_adapt_scalar_trunc_x(ROUND,198)
    dupName_41_adapt_scalar_trunc_x_in <= dupName_57_ip_dsdk_adapt_bitselect_x_b;
    dupName_41_adapt_scalar_trunc_x_q <= dupName_41_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_56_ip_dsdk_adapt_bitselect_x(BITSELECT,228)
    dupName_56_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2120 downto 2120);

    -- dupName_40_adapt_scalar_trunc_x(ROUND,194)
    dupName_40_adapt_scalar_trunc_x_in <= dupName_56_ip_dsdk_adapt_bitselect_x_b;
    dupName_40_adapt_scalar_trunc_x_q <= dupName_40_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_55_ip_dsdk_adapt_bitselect_x(BITSELECT,227)
    dupName_55_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2112 downto 2112);

    -- dupName_39_adapt_scalar_trunc_x(ROUND,190)
    dupName_39_adapt_scalar_trunc_x_in <= dupName_55_ip_dsdk_adapt_bitselect_x_b;
    dupName_39_adapt_scalar_trunc_x_q <= dupName_39_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_54_ip_dsdk_adapt_bitselect_x(BITSELECT,226)
    dupName_54_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(2111 downto 2048);

    -- dupName_14_ip_dsdk_adapt_cast_x(BITSELECT,93)
    dupName_14_ip_dsdk_adapt_cast_x_b <= dupName_54_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_53_ip_dsdk_adapt_bitselect_x(BITSELECT,225)
    dupName_53_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1992 downto 1992);

    -- dupName_38_adapt_scalar_trunc_x(ROUND,186)
    dupName_38_adapt_scalar_trunc_x_in <= dupName_53_ip_dsdk_adapt_bitselect_x_b;
    dupName_38_adapt_scalar_trunc_x_q <= dupName_38_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_52_ip_dsdk_adapt_bitselect_x(BITSELECT,224)
    dupName_52_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1984 downto 1984);

    -- dupName_37_adapt_scalar_trunc_x(ROUND,182)
    dupName_37_adapt_scalar_trunc_x_in <= dupName_52_ip_dsdk_adapt_bitselect_x_b;
    dupName_37_adapt_scalar_trunc_x_q <= dupName_37_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_51_ip_dsdk_adapt_bitselect_x(BITSELECT,223)
    dupName_51_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1983 downto 1920);

    -- dupName_13_ip_dsdk_adapt_cast_x(BITSELECT,87)
    dupName_13_ip_dsdk_adapt_cast_x_b <= dupName_51_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_50_ip_dsdk_adapt_bitselect_x(BITSELECT,222)
    dupName_50_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1864 downto 1864);

    -- dupName_36_adapt_scalar_trunc_x(ROUND,178)
    dupName_36_adapt_scalar_trunc_x_in <= dupName_50_ip_dsdk_adapt_bitselect_x_b;
    dupName_36_adapt_scalar_trunc_x_q <= dupName_36_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_49_ip_dsdk_adapt_bitselect_x(BITSELECT,221)
    dupName_49_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1856 downto 1856);

    -- dupName_35_adapt_scalar_trunc_x(ROUND,174)
    dupName_35_adapt_scalar_trunc_x_in <= dupName_49_ip_dsdk_adapt_bitselect_x_b;
    dupName_35_adapt_scalar_trunc_x_q <= dupName_35_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_48_ip_dsdk_adapt_bitselect_x(BITSELECT,220)
    dupName_48_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1855 downto 1792);

    -- dupName_12_ip_dsdk_adapt_cast_x(BITSELECT,81)
    dupName_12_ip_dsdk_adapt_cast_x_b <= dupName_48_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_47_ip_dsdk_adapt_bitselect_x(BITSELECT,219)
    dupName_47_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1736 downto 1736);

    -- dupName_34_adapt_scalar_trunc_x(ROUND,170)
    dupName_34_adapt_scalar_trunc_x_in <= dupName_47_ip_dsdk_adapt_bitselect_x_b;
    dupName_34_adapt_scalar_trunc_x_q <= dupName_34_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_46_ip_dsdk_adapt_bitselect_x(BITSELECT,218)
    dupName_46_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1728 downto 1728);

    -- dupName_33_adapt_scalar_trunc_x(ROUND,166)
    dupName_33_adapt_scalar_trunc_x_in <= dupName_46_ip_dsdk_adapt_bitselect_x_b;
    dupName_33_adapt_scalar_trunc_x_q <= dupName_33_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_45_ip_dsdk_adapt_bitselect_x(BITSELECT,217)
    dupName_45_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1727 downto 1664);

    -- dupName_11_ip_dsdk_adapt_cast_x(BITSELECT,75)
    dupName_11_ip_dsdk_adapt_cast_x_b <= dupName_45_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_44_ip_dsdk_adapt_bitselect_x(BITSELECT,213)
    dupName_44_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1608 downto 1608);

    -- dupName_32_adapt_scalar_trunc_x(ROUND,162)
    dupName_32_adapt_scalar_trunc_x_in <= dupName_44_ip_dsdk_adapt_bitselect_x_b;
    dupName_32_adapt_scalar_trunc_x_q <= dupName_32_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_43_ip_dsdk_adapt_bitselect_x(BITSELECT,209)
    dupName_43_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1600 downto 1600);

    -- dupName_31_adapt_scalar_trunc_x(ROUND,158)
    dupName_31_adapt_scalar_trunc_x_in <= dupName_43_ip_dsdk_adapt_bitselect_x_b;
    dupName_31_adapt_scalar_trunc_x_q <= dupName_31_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_42_ip_dsdk_adapt_bitselect_x(BITSELECT,205)
    dupName_42_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1599 downto 1536);

    -- dupName_10_ip_dsdk_adapt_cast_x(BITSELECT,69)
    dupName_10_ip_dsdk_adapt_cast_x_b <= dupName_42_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_41_ip_dsdk_adapt_bitselect_x(BITSELECT,201)
    dupName_41_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1480 downto 1480);

    -- dupName_30_adapt_scalar_trunc_x(ROUND,154)
    dupName_30_adapt_scalar_trunc_x_in <= dupName_41_ip_dsdk_adapt_bitselect_x_b;
    dupName_30_adapt_scalar_trunc_x_q <= dupName_30_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_40_ip_dsdk_adapt_bitselect_x(BITSELECT,197)
    dupName_40_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1472 downto 1472);

    -- dupName_29_adapt_scalar_trunc_x(ROUND,150)
    dupName_29_adapt_scalar_trunc_x_in <= dupName_40_ip_dsdk_adapt_bitselect_x_b;
    dupName_29_adapt_scalar_trunc_x_q <= dupName_29_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_39_ip_dsdk_adapt_bitselect_x(BITSELECT,193)
    dupName_39_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1471 downto 1408);

    -- dupName_9_ip_dsdk_adapt_cast_x(BITSELECT,63)
    dupName_9_ip_dsdk_adapt_cast_x_b <= dupName_39_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_38_ip_dsdk_adapt_bitselect_x(BITSELECT,189)
    dupName_38_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1352 downto 1352);

    -- dupName_28_adapt_scalar_trunc_x(ROUND,146)
    dupName_28_adapt_scalar_trunc_x_in <= dupName_38_ip_dsdk_adapt_bitselect_x_b;
    dupName_28_adapt_scalar_trunc_x_q <= dupName_28_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_37_ip_dsdk_adapt_bitselect_x(BITSELECT,185)
    dupName_37_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1344 downto 1344);

    -- dupName_27_adapt_scalar_trunc_x(ROUND,142)
    dupName_27_adapt_scalar_trunc_x_in <= dupName_37_ip_dsdk_adapt_bitselect_x_b;
    dupName_27_adapt_scalar_trunc_x_q <= dupName_27_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_36_ip_dsdk_adapt_bitselect_x(BITSELECT,181)
    dupName_36_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1343 downto 1280);

    -- dupName_8_ip_dsdk_adapt_cast_x(BITSELECT,57)
    dupName_8_ip_dsdk_adapt_cast_x_b <= dupName_36_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_35_ip_dsdk_adapt_bitselect_x(BITSELECT,177)
    dupName_35_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1224 downto 1224);

    -- dupName_26_adapt_scalar_trunc_x(ROUND,138)
    dupName_26_adapt_scalar_trunc_x_in <= dupName_35_ip_dsdk_adapt_bitselect_x_b;
    dupName_26_adapt_scalar_trunc_x_q <= dupName_26_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_34_ip_dsdk_adapt_bitselect_x(BITSELECT,173)
    dupName_34_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1216 downto 1216);

    -- dupName_25_adapt_scalar_trunc_x(ROUND,134)
    dupName_25_adapt_scalar_trunc_x_in <= dupName_34_ip_dsdk_adapt_bitselect_x_b;
    dupName_25_adapt_scalar_trunc_x_q <= dupName_25_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_33_ip_dsdk_adapt_bitselect_x(BITSELECT,169)
    dupName_33_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1215 downto 1152);

    -- dupName_7_ip_dsdk_adapt_cast_x(BITSELECT,51)
    dupName_7_ip_dsdk_adapt_cast_x_b <= dupName_33_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_32_ip_dsdk_adapt_bitselect_x(BITSELECT,165)
    dupName_32_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1096 downto 1096);

    -- dupName_24_adapt_scalar_trunc_x(ROUND,130)
    dupName_24_adapt_scalar_trunc_x_in <= dupName_32_ip_dsdk_adapt_bitselect_x_b;
    dupName_24_adapt_scalar_trunc_x_q <= dupName_24_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_31_ip_dsdk_adapt_bitselect_x(BITSELECT,161)
    dupName_31_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1088 downto 1088);

    -- dupName_23_adapt_scalar_trunc_x(ROUND,126)
    dupName_23_adapt_scalar_trunc_x_in <= dupName_31_ip_dsdk_adapt_bitselect_x_b;
    dupName_23_adapt_scalar_trunc_x_q <= dupName_23_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_30_ip_dsdk_adapt_bitselect_x(BITSELECT,157)
    dupName_30_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(1087 downto 1024);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,45)
    dupName_6_ip_dsdk_adapt_cast_x_b <= dupName_30_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_29_ip_dsdk_adapt_bitselect_x(BITSELECT,153)
    dupName_29_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(968 downto 968);

    -- dupName_22_adapt_scalar_trunc_x(ROUND,122)
    dupName_22_adapt_scalar_trunc_x_in <= dupName_29_ip_dsdk_adapt_bitselect_x_b;
    dupName_22_adapt_scalar_trunc_x_q <= dupName_22_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_28_ip_dsdk_adapt_bitselect_x(BITSELECT,149)
    dupName_28_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(960 downto 960);

    -- dupName_21_adapt_scalar_trunc_x(ROUND,118)
    dupName_21_adapt_scalar_trunc_x_in <= dupName_28_ip_dsdk_adapt_bitselect_x_b;
    dupName_21_adapt_scalar_trunc_x_q <= dupName_21_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_27_ip_dsdk_adapt_bitselect_x(BITSELECT,145)
    dupName_27_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(959 downto 896);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,39)
    dupName_5_ip_dsdk_adapt_cast_x_b <= dupName_27_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_26_ip_dsdk_adapt_bitselect_x(BITSELECT,141)
    dupName_26_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(840 downto 840);

    -- dupName_20_adapt_scalar_trunc_x(ROUND,114)
    dupName_20_adapt_scalar_trunc_x_in <= dupName_26_ip_dsdk_adapt_bitselect_x_b;
    dupName_20_adapt_scalar_trunc_x_q <= dupName_20_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_25_ip_dsdk_adapt_bitselect_x(BITSELECT,137)
    dupName_25_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(832 downto 832);

    -- dupName_19_adapt_scalar_trunc_x(ROUND,110)
    dupName_19_adapt_scalar_trunc_x_in <= dupName_25_ip_dsdk_adapt_bitselect_x_b;
    dupName_19_adapt_scalar_trunc_x_q <= dupName_19_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_24_ip_dsdk_adapt_bitselect_x(BITSELECT,133)
    dupName_24_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(831 downto 768);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,33)
    dupName_4_ip_dsdk_adapt_cast_x_b <= dupName_24_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_23_ip_dsdk_adapt_bitselect_x(BITSELECT,129)
    dupName_23_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(712 downto 712);

    -- dupName_18_adapt_scalar_trunc_x(ROUND,106)
    dupName_18_adapt_scalar_trunc_x_in <= dupName_23_ip_dsdk_adapt_bitselect_x_b;
    dupName_18_adapt_scalar_trunc_x_q <= dupName_18_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_22_ip_dsdk_adapt_bitselect_x(BITSELECT,125)
    dupName_22_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(704 downto 704);

    -- dupName_17_adapt_scalar_trunc_x(ROUND,102)
    dupName_17_adapt_scalar_trunc_x_in <= dupName_22_ip_dsdk_adapt_bitselect_x_b;
    dupName_17_adapt_scalar_trunc_x_q <= dupName_17_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_21_ip_dsdk_adapt_bitselect_x(BITSELECT,121)
    dupName_21_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(703 downto 640);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,27)
    dupName_3_ip_dsdk_adapt_cast_x_b <= dupName_21_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_20_ip_dsdk_adapt_bitselect_x(BITSELECT,117)
    dupName_20_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(584 downto 584);

    -- dupName_16_adapt_scalar_trunc_x(ROUND,98)
    dupName_16_adapt_scalar_trunc_x_in <= dupName_20_ip_dsdk_adapt_bitselect_x_b;
    dupName_16_adapt_scalar_trunc_x_q <= dupName_16_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_19_ip_dsdk_adapt_bitselect_x(BITSELECT,113)
    dupName_19_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(576 downto 576);

    -- dupName_15_adapt_scalar_trunc_x(ROUND,94)
    dupName_15_adapt_scalar_trunc_x_in <= dupName_19_ip_dsdk_adapt_bitselect_x_b;
    dupName_15_adapt_scalar_trunc_x_q <= dupName_15_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_18_ip_dsdk_adapt_bitselect_x(BITSELECT,109)
    dupName_18_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(575 downto 512);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,21)
    dupName_2_ip_dsdk_adapt_cast_x_b <= dupName_18_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_17_ip_dsdk_adapt_bitselect_x(BITSELECT,105)
    dupName_17_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(456 downto 456);

    -- dupName_14_adapt_scalar_trunc_x(ROUND,88)
    dupName_14_adapt_scalar_trunc_x_in <= dupName_17_ip_dsdk_adapt_bitselect_x_b;
    dupName_14_adapt_scalar_trunc_x_q <= dupName_14_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_16_ip_dsdk_adapt_bitselect_x(BITSELECT,101)
    dupName_16_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(448 downto 448);

    -- dupName_13_adapt_scalar_trunc_x(ROUND,82)
    dupName_13_adapt_scalar_trunc_x_in <= dupName_16_ip_dsdk_adapt_bitselect_x_b;
    dupName_13_adapt_scalar_trunc_x_q <= dupName_13_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_15_ip_dsdk_adapt_bitselect_x(BITSELECT,97)
    dupName_15_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(447 downto 384);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,15)
    dupName_1_ip_dsdk_adapt_cast_x_b <= dupName_15_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_14_ip_dsdk_adapt_bitselect_x(BITSELECT,92)
    dupName_14_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(328 downto 328);

    -- dupName_12_adapt_scalar_trunc_x(ROUND,76)
    dupName_12_adapt_scalar_trunc_x_in <= dupName_14_ip_dsdk_adapt_bitselect_x_b;
    dupName_12_adapt_scalar_trunc_x_q <= dupName_12_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_13_ip_dsdk_adapt_bitselect_x(BITSELECT,86)
    dupName_13_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(320 downto 320);

    -- dupName_11_adapt_scalar_trunc_x(ROUND,70)
    dupName_11_adapt_scalar_trunc_x_in <= dupName_13_ip_dsdk_adapt_bitselect_x_b;
    dupName_11_adapt_scalar_trunc_x_q <= dupName_11_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_12_ip_dsdk_adapt_bitselect_x(BITSELECT,80)
    dupName_12_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(319 downto 256);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,9)
    dupName_0_ip_dsdk_adapt_cast_x_b <= dupName_12_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_11_ip_dsdk_adapt_bitselect_x(BITSELECT,74)
    dupName_11_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(200 downto 200);

    -- dupName_10_adapt_scalar_trunc_x(ROUND,64)
    dupName_10_adapt_scalar_trunc_x_in <= dupName_11_ip_dsdk_adapt_bitselect_x_b;
    dupName_10_adapt_scalar_trunc_x_q <= dupName_10_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_10_ip_dsdk_adapt_bitselect_x(BITSELECT,68)
    dupName_10_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(192 downto 192);

    -- dupName_9_adapt_scalar_trunc_x(ROUND,58)
    dupName_9_adapt_scalar_trunc_x_in <= dupName_10_ip_dsdk_adapt_bitselect_x_b;
    dupName_9_adapt_scalar_trunc_x_q <= dupName_9_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_9_ip_dsdk_adapt_bitselect_x(BITSELECT,62)
    dupName_9_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(191 downto 128);

    -- ip_dsdk_adapt_cast(BITSELECT,242)
    ip_dsdk_adapt_cast_b <= dupName_9_ip_dsdk_adapt_bitselect_x_b(63 downto 0);

    -- dupName_8_ip_dsdk_adapt_bitselect_x(BITSELECT,56)
    dupName_8_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(72 downto 72);

    -- dupName_8_adapt_scalar_trunc_x(ROUND,52)
    dupName_8_adapt_scalar_trunc_x_in <= dupName_8_ip_dsdk_adapt_bitselect_x_b;
    dupName_8_adapt_scalar_trunc_x_q <= dupName_8_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_7_ip_dsdk_adapt_bitselect_x(BITSELECT,50)
    dupName_7_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(64 downto 64);

    -- dupName_7_adapt_scalar_trunc_x(ROUND,46)
    dupName_7_adapt_scalar_trunc_x_in <= dupName_7_ip_dsdk_adapt_bitselect_x_b;
    dupName_7_adapt_scalar_trunc_x_q <= dupName_7_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_6_ip_dsdk_adapt_bitselect_x(BITSELECT,44)
    dupName_6_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(56 downto 56);

    -- dupName_6_adapt_scalar_trunc_x(ROUND,40)
    dupName_6_adapt_scalar_trunc_x_in <= dupName_6_ip_dsdk_adapt_bitselect_x_b;
    dupName_6_adapt_scalar_trunc_x_q <= dupName_6_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_5_ip_dsdk_adapt_bitselect_x(BITSELECT,38)
    dupName_5_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(48 downto 48);

    -- dupName_5_adapt_scalar_trunc_x(ROUND,34)
    dupName_5_adapt_scalar_trunc_x_in <= dupName_5_ip_dsdk_adapt_bitselect_x_b;
    dupName_5_adapt_scalar_trunc_x_q <= dupName_5_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_4_ip_dsdk_adapt_bitselect_x(BITSELECT,32)
    dupName_4_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(40 downto 40);

    -- dupName_4_adapt_scalar_trunc_x(ROUND,28)
    dupName_4_adapt_scalar_trunc_x_in <= dupName_4_ip_dsdk_adapt_bitselect_x_b;
    dupName_4_adapt_scalar_trunc_x_q <= dupName_4_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_3_ip_dsdk_adapt_bitselect_x(BITSELECT,26)
    dupName_3_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(32 downto 32);

    -- dupName_3_adapt_scalar_trunc_x(ROUND,22)
    dupName_3_adapt_scalar_trunc_x_in <= dupName_3_ip_dsdk_adapt_bitselect_x_b;
    dupName_3_adapt_scalar_trunc_x_q <= dupName_3_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_2_ip_dsdk_adapt_bitselect_x(BITSELECT,20)
    dupName_2_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(24 downto 24);

    -- dupName_2_adapt_scalar_trunc_x(ROUND,16)
    dupName_2_adapt_scalar_trunc_x_in <= dupName_2_ip_dsdk_adapt_bitselect_x_b;
    dupName_2_adapt_scalar_trunc_x_q <= dupName_2_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_1_ip_dsdk_adapt_bitselect_x(BITSELECT,14)
    dupName_1_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(16 downto 16);

    -- dupName_1_adapt_scalar_trunc_x(ROUND,10)
    dupName_1_adapt_scalar_trunc_x_in <= dupName_1_ip_dsdk_adapt_bitselect_x_b;
    dupName_1_adapt_scalar_trunc_x_q <= dupName_1_adapt_scalar_trunc_x_in(0 downto 0);

    -- dupName_0_ip_dsdk_adapt_bitselect_x(BITSELECT,8)
    dupName_0_ip_dsdk_adapt_bitselect_x_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(8 downto 8);

    -- dupName_0_adapt_scalar_trunc_x(ROUND,4)
    dupName_0_adapt_scalar_trunc_x_in <= dupName_0_ip_dsdk_adapt_bitselect_x_b;
    dupName_0_adapt_scalar_trunc_x_q <= dupName_0_adapt_scalar_trunc_x_in(0 downto 0);

    -- ip_dsdk_adapt_bitselect(BITSELECT,241)
    ip_dsdk_adapt_bitselect_b <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_data_out(0 downto 0);

    -- adapt_scalar_trunc(ROUND,234)
    adapt_scalar_trunc_in <= ip_dsdk_adapt_bitselect_b;
    adapt_scalar_trunc_q <= adapt_scalar_trunc_in(0 downto 0);

    -- dupName_0_sync_out_aunroll_x(GPOUT,3)@20000003
    out_data_out_0 <= adapt_scalar_trunc_q;
    out_data_out_1 <= dupName_0_adapt_scalar_trunc_x_q;
    out_data_out_2 <= dupName_1_adapt_scalar_trunc_x_q;
    out_data_out_3 <= dupName_2_adapt_scalar_trunc_x_q;
    out_data_out_4 <= dupName_3_adapt_scalar_trunc_x_q;
    out_data_out_5 <= dupName_4_adapt_scalar_trunc_x_q;
    out_data_out_6 <= dupName_5_adapt_scalar_trunc_x_q;
    out_data_out_7 <= dupName_6_adapt_scalar_trunc_x_q;
    out_data_out_8 <= dupName_7_adapt_scalar_trunc_x_q;
    out_data_out_9 <= dupName_8_adapt_scalar_trunc_x_q;
    out_data_out_10 <= ip_dsdk_adapt_cast_b;
    out_data_out_11 <= dupName_9_adapt_scalar_trunc_x_q;
    out_data_out_12 <= dupName_10_adapt_scalar_trunc_x_q;
    out_data_out_13 <= dupName_0_ip_dsdk_adapt_cast_x_b;
    out_data_out_14 <= dupName_11_adapt_scalar_trunc_x_q;
    out_data_out_15 <= dupName_12_adapt_scalar_trunc_x_q;
    out_data_out_16 <= dupName_1_ip_dsdk_adapt_cast_x_b;
    out_data_out_17 <= dupName_13_adapt_scalar_trunc_x_q;
    out_data_out_18 <= dupName_14_adapt_scalar_trunc_x_q;
    out_data_out_19 <= dupName_2_ip_dsdk_adapt_cast_x_b;
    out_data_out_20 <= dupName_15_adapt_scalar_trunc_x_q;
    out_data_out_21 <= dupName_16_adapt_scalar_trunc_x_q;
    out_data_out_22 <= dupName_3_ip_dsdk_adapt_cast_x_b;
    out_data_out_23 <= dupName_17_adapt_scalar_trunc_x_q;
    out_data_out_24 <= dupName_18_adapt_scalar_trunc_x_q;
    out_data_out_25 <= dupName_4_ip_dsdk_adapt_cast_x_b;
    out_data_out_26 <= dupName_19_adapt_scalar_trunc_x_q;
    out_data_out_27 <= dupName_20_adapt_scalar_trunc_x_q;
    out_data_out_28 <= dupName_5_ip_dsdk_adapt_cast_x_b;
    out_data_out_29 <= dupName_21_adapt_scalar_trunc_x_q;
    out_data_out_30 <= dupName_22_adapt_scalar_trunc_x_q;
    out_data_out_31 <= dupName_6_ip_dsdk_adapt_cast_x_b;
    out_data_out_32 <= dupName_23_adapt_scalar_trunc_x_q;
    out_data_out_33 <= dupName_24_adapt_scalar_trunc_x_q;
    out_data_out_34 <= dupName_7_ip_dsdk_adapt_cast_x_b;
    out_data_out_35 <= dupName_25_adapt_scalar_trunc_x_q;
    out_data_out_36 <= dupName_26_adapt_scalar_trunc_x_q;
    out_data_out_37 <= dupName_8_ip_dsdk_adapt_cast_x_b;
    out_data_out_38 <= dupName_27_adapt_scalar_trunc_x_q;
    out_data_out_39 <= dupName_28_adapt_scalar_trunc_x_q;
    out_data_out_40 <= dupName_9_ip_dsdk_adapt_cast_x_b;
    out_data_out_41 <= dupName_29_adapt_scalar_trunc_x_q;
    out_data_out_42 <= dupName_30_adapt_scalar_trunc_x_q;
    out_data_out_43 <= dupName_10_ip_dsdk_adapt_cast_x_b;
    out_data_out_44 <= dupName_31_adapt_scalar_trunc_x_q;
    out_data_out_45 <= dupName_32_adapt_scalar_trunc_x_q;
    out_data_out_46 <= dupName_11_ip_dsdk_adapt_cast_x_b;
    out_data_out_47 <= dupName_33_adapt_scalar_trunc_x_q;
    out_data_out_48 <= dupName_34_adapt_scalar_trunc_x_q;
    out_data_out_49 <= dupName_12_ip_dsdk_adapt_cast_x_b;
    out_data_out_50 <= dupName_35_adapt_scalar_trunc_x_q;
    out_data_out_51 <= dupName_36_adapt_scalar_trunc_x_q;
    out_data_out_52 <= dupName_13_ip_dsdk_adapt_cast_x_b;
    out_data_out_53 <= dupName_37_adapt_scalar_trunc_x_q;
    out_data_out_54 <= dupName_38_adapt_scalar_trunc_x_q;
    out_data_out_55 <= dupName_14_ip_dsdk_adapt_cast_x_b;
    out_data_out_56 <= dupName_39_adapt_scalar_trunc_x_q;
    out_data_out_57 <= dupName_40_adapt_scalar_trunc_x_q;
    out_data_out_58 <= dupName_41_adapt_scalar_trunc_x_q;
    out_data_out_59 <= dupName_42_adapt_scalar_trunc_x_q;
    out_data_out_60 <= dupName_43_adapt_scalar_trunc_x_q;
    out_data_out_61 <= dupName_44_adapt_scalar_trunc_x_q;
    out_data_out_62 <= dupName_45_adapt_scalar_trunc_x_q;
    out_valid_out <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_valid_out;

    -- sync_out(GPOUT,244)@20000000
    out_stall_out <= i_acl_sfc_exit_c0_for_body66_conv_generic_c0_exit410_conv_generic865_stall_out;

END normal;
