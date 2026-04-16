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

-- VHDL created from mem_read_generic_function
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

entity mem_read_generic_function is
    port (
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- ufix8
        out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_function;

architecture normal of mem_read_generic_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_read_generic_B10_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B1_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B2_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B3_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B4_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B5 is
        port (
            in_acl_77_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_acl_77_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked76_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked76_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_mul3475_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul3475_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_or_cond73_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_or_cond73_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_phi_decision46_xor_RM79_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_phi_decision46_xor_RM79_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2466_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2466_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2770_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2770_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp278_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp278_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic10_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic10_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic6_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic6_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic7_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic7_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic8_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic8_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic9_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic9_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exit163_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_4 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit163_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit163_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7170 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8171 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe9172 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B5_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B6 is
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
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe71705 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe81718 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe917210 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B6_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B7_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B8_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B9_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B0 is
        port (
            in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B1 is
        port (
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B10 is
        port (
            in_feedback_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_0 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B2 is
        port (
            in_forked62_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked62_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2463_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2463_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe187 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe288 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B3 is
        port (
            in_forked67_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked67_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2464_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2464_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2768_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2768_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic1_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic1_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic2_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic2_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe1103 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2104 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3105 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4106 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B4 is
        port (
            in_forked71_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked71_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_mul3474_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul3474_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_or_cond72_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_or_cond72_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2465_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2465_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2769_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2769_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic3_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic3_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic4_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic5_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe1128 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe13 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2129 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3130 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4131 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe5132 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe6133 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7134 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B7 is
        port (
            in_c0_exe71704_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe81717_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe91729_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe71704 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe81717 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B8 is
        port (
            in_c0_exe71703_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe81716_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exe71703 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B9 is
        port (
            in_c0_exe71702_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going47_mem_read_generic_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going51_mem_read_generic_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going55_mem_read_generic_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going59_mem_read_generic_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_mem_read_generic_sr is
        port (
            in_i_data : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going_mem_read_generic_valid_fifo is
        port (
            in_data_in : in std_logic_vector(1 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(1 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_mem_read_generic0 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_mem_read_generic1 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_mem_read_generic2 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component loop_limiter_mem_read_generic3 is
        port (
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid_exit : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B10_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B10_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exe7170 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exe8171 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_c0_exe9172 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_iowr_bl_ch_in_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_iowr_bl_ch_in_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_mem_read_generic_B5_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_aunroll_x_out_c0_exe71705 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_aunroll_x_out_c0_exe81718 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_aunroll_x_out_c0_exe917210 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_i2_0gr_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal dupName_0_c_i32_undef_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B0_out_feedback_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B1_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B10_out_feedback_out_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_mem_read_generic_B10_out_feedback_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B10_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B10_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_c0_exe187 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B2_out_c0_exe288 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_c0_exe4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B2_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe1103 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe2104 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe3105 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe4106 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe7 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B3_out_c0_exe8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B3_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe10 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe1128 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe13 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe2129 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe3130 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe4131 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe5132 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe6133 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe7134 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_c0_exe8135 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B4_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_out_c0_exe71704 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_out_c0_exe81717 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B7_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_out_c0_exe71703 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B8_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B9_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B9_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going59_mem_read_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going59_mem_read_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_read_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic0_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic0_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic2_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic2_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic3_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_read_generic3_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- dupName_0_c_i2_0gr_x(CONSTANT,17)
    dupName_0_c_i2_0gr_x_q <= "00";

    -- i_acl_pipeline_keep_going_mem_read_generic_valid_fifo(BLACKBOX,83)
    thei_acl_pipeline_keep_going_mem_read_generic_valid_fifo : i_acl_pipeline_keep_going_mem_read_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_read_generic_B5_aunroll_x_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going_mem_read_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going_mem_read_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going_mem_read_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo(BLACKBOX,81)
    thei_acl_pipeline_keep_going59_mem_read_generic_valid_fifo : i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_read_generic_B1_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going59_mem_read_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo(BLACKBOX,79)
    thei_acl_pipeline_keep_going55_mem_read_generic_valid_fifo : i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_read_generic_B2_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going55_mem_read_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo(BLACKBOX,77)
    thei_acl_pipeline_keep_going51_mem_read_generic_valid_fifo : i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_read_generic_B3_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going51_mem_read_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo(BLACKBOX,75)
    thei_acl_pipeline_keep_going47_mem_read_generic_valid_fifo : i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_read_generic_B4_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going47_mem_read_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_mem_read_generic3(BLACKBOX,109)
    theloop_limiter_mem_read_generic3 : loop_limiter_mem_read_generic3
    PORT MAP (
        in_i_stall => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_mem_read_generic_B5_aunroll_x_out_exiting_stall_out,
        in_i_valid => bb_mem_read_generic_B4_out_valid_out_0,
        in_i_valid_exit => bb_mem_read_generic_B5_aunroll_x_out_exiting_valid_out,
        out_o_stall => loop_limiter_mem_read_generic3_out_o_stall,
        out_o_valid => loop_limiter_mem_read_generic3_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going47_mem_read_generic_sr(BLACKBOX,74)
    thei_acl_pipeline_keep_going47_mem_read_generic_sr : i_acl_pipeline_keep_going47_mem_read_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_read_generic_B4_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going47_mem_read_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going47_mem_read_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B4(BLACKBOX,65)
    thebb_mem_read_generic_B4 : bb_mem_read_generic_B4
    PORT MAP (
        in_forked71_0 => GND_q,
        in_forked71_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_4,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_mul3474_0 => dupName_0_c_i32_undef_x_q,
        in_mul3474_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_6,
        in_or_cond72_0 => GND_q,
        in_or_cond72_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_5,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going47_mem_read_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_mem_read_generic3_out_o_stall,
        in_stride => in_arg_stride,
        in_sub2465_0 => dupName_0_c_i32_undef_x_q,
        in_sub2465_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_0,
        in_sub2769_0 => dupName_0_c_i32_undef_x_q,
        in_sub2769_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_2,
        in_unnamed_mem_read_generic3_0 => GND_q,
        in_unnamed_mem_read_generic3_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_mem_read_generic4_0 => GND_q,
        in_unnamed_mem_read_generic4_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_3,
        in_unnamed_mem_read_generic5_0 => GND_q,
        in_unnamed_mem_read_generic5_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_7,
        in_valid_in_0 => i_acl_pipeline_keep_going47_mem_read_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe10 => bb_mem_read_generic_B4_out_c0_exe10,
        out_c0_exe11 => bb_mem_read_generic_B4_out_c0_exe11,
        out_c0_exe1128 => bb_mem_read_generic_B4_out_c0_exe1128,
        out_c0_exe12 => bb_mem_read_generic_B4_out_c0_exe12,
        out_c0_exe13 => bb_mem_read_generic_B4_out_c0_exe13,
        out_c0_exe2129 => bb_mem_read_generic_B4_out_c0_exe2129,
        out_c0_exe3130 => bb_mem_read_generic_B4_out_c0_exe3130,
        out_c0_exe4131 => bb_mem_read_generic_B4_out_c0_exe4131,
        out_c0_exe5132 => bb_mem_read_generic_B4_out_c0_exe5132,
        out_c0_exe6133 => bb_mem_read_generic_B4_out_c0_exe6133,
        out_c0_exe7134 => bb_mem_read_generic_B4_out_c0_exe7134,
        out_c0_exe8135 => bb_mem_read_generic_B4_out_c0_exe8135,
        out_exiting_stall_out => bb_mem_read_generic_B4_out_exiting_stall_out,
        out_exiting_valid_out => bb_mem_read_generic_B4_out_exiting_valid_out,
        out_pipeline_valid_out => bb_mem_read_generic_B4_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_read_generic_B4_out_stall_out_0,
        out_stall_out_1 => bb_mem_read_generic_B4_out_stall_out_1,
        out_valid_out_0 => bb_mem_read_generic_B4_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B4_sr_1_aunroll_x(BLACKBOX,6)
    thebb_mem_read_generic_B4_sr_1_aunroll_x : bb_mem_read_generic_B4_sr_1
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B3_out_c0_exe1103,
        in_i_data_1 => bb_mem_read_generic_B3_out_c0_exe6,
        in_i_data_2 => bb_mem_read_generic_B3_out_c0_exe7,
        in_i_data_3 => bb_mem_read_generic_B3_out_c0_exe8,
        in_i_data_4 => VCC_q,
        in_i_data_5 => bb_mem_read_generic_B3_out_c0_exe2104,
        in_i_data_6 => bb_mem_read_generic_B3_out_c0_exe3105,
        in_i_data_7 => bb_mem_read_generic_B3_out_c0_exe4106,
        in_i_stall => bb_mem_read_generic_B4_out_stall_out_1,
        in_i_valid => loop_limiter_mem_read_generic2_out_o_valid,
        out_o_data_0 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_data_7,
        out_o_stall => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_mem_read_generic2(BLACKBOX,108)
    theloop_limiter_mem_read_generic2 : loop_limiter_mem_read_generic2
    PORT MAP (
        in_i_stall => bb_mem_read_generic_B4_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_mem_read_generic_B4_out_exiting_stall_out,
        in_i_valid => bb_mem_read_generic_B3_out_valid_out_0,
        in_i_valid_exit => bb_mem_read_generic_B4_out_exiting_valid_out,
        out_o_stall => loop_limiter_mem_read_generic2_out_o_stall,
        out_o_valid => loop_limiter_mem_read_generic2_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going51_mem_read_generic_sr(BLACKBOX,76)
    thei_acl_pipeline_keep_going51_mem_read_generic_sr : i_acl_pipeline_keep_going51_mem_read_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_read_generic_B3_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going51_mem_read_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going51_mem_read_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B3(BLACKBOX,64)
    thebb_mem_read_generic_B3 : bb_mem_read_generic_B3
    PORT MAP (
        in_forked67_0 => GND_q,
        in_forked67_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_2,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going51_mem_read_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_mem_read_generic2_out_o_stall,
        in_stride => in_arg_stride,
        in_sub2464_0 => dupName_0_c_i32_undef_x_q,
        in_sub2464_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_0,
        in_sub2768_0 => dupName_0_c_i32_undef_x_q,
        in_sub2768_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_3,
        in_unnamed_mem_read_generic1_0 => GND_q,
        in_unnamed_mem_read_generic1_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_mem_read_generic2_0 => GND_q,
        in_unnamed_mem_read_generic2_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_4,
        in_valid_in_0 => i_acl_pipeline_keep_going51_mem_read_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe1103 => bb_mem_read_generic_B3_out_c0_exe1103,
        out_c0_exe2104 => bb_mem_read_generic_B3_out_c0_exe2104,
        out_c0_exe3105 => bb_mem_read_generic_B3_out_c0_exe3105,
        out_c0_exe4106 => bb_mem_read_generic_B3_out_c0_exe4106,
        out_c0_exe6 => bb_mem_read_generic_B3_out_c0_exe6,
        out_c0_exe7 => bb_mem_read_generic_B3_out_c0_exe7,
        out_c0_exe8 => bb_mem_read_generic_B3_out_c0_exe8,
        out_exiting_stall_out => bb_mem_read_generic_B3_out_exiting_stall_out,
        out_exiting_valid_out => bb_mem_read_generic_B3_out_exiting_valid_out,
        out_pipeline_valid_out => bb_mem_read_generic_B3_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_read_generic_B3_out_stall_out_0,
        out_stall_out_1 => bb_mem_read_generic_B3_out_stall_out_1,
        out_valid_out_0 => bb_mem_read_generic_B3_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B3_sr_1_aunroll_x(BLACKBOX,5)
    thebb_mem_read_generic_B3_sr_1_aunroll_x : bb_mem_read_generic_B3_sr_1
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B2_out_c0_exe4,
        in_i_data_1 => bb_mem_read_generic_B2_out_c0_exe5,
        in_i_data_2 => VCC_q,
        in_i_data_3 => bb_mem_read_generic_B2_out_c0_exe187,
        in_i_data_4 => bb_mem_read_generic_B2_out_c0_exe288,
        in_i_stall => bb_mem_read_generic_B3_out_stall_out_1,
        in_i_valid => loop_limiter_mem_read_generic1_out_o_valid,
        out_o_data_0 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_data_4,
        out_o_stall => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_mem_read_generic1(BLACKBOX,107)
    theloop_limiter_mem_read_generic1 : loop_limiter_mem_read_generic1
    PORT MAP (
        in_i_stall => bb_mem_read_generic_B3_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_mem_read_generic_B3_out_exiting_stall_out,
        in_i_valid => bb_mem_read_generic_B2_out_valid_out_0,
        in_i_valid_exit => bb_mem_read_generic_B3_out_exiting_valid_out,
        out_o_stall => loop_limiter_mem_read_generic1_out_o_stall,
        out_o_valid => loop_limiter_mem_read_generic1_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going55_mem_read_generic_sr(BLACKBOX,78)
    thei_acl_pipeline_keep_going55_mem_read_generic_sr : i_acl_pipeline_keep_going55_mem_read_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_read_generic_B2_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going55_mem_read_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going55_mem_read_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B2(BLACKBOX,63)
    thebb_mem_read_generic_B2 : bb_mem_read_generic_B2
    PORT MAP (
        in_forked62_0 => GND_q,
        in_forked62_1 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going55_mem_read_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_mem_read_generic1_out_o_stall,
        in_stride => in_arg_stride,
        in_sub2463_0 => dupName_0_c_i32_undef_x_q,
        in_sub2463_1 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_mem_read_generic0_0 => GND_q,
        in_unnamed_mem_read_generic0_1 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_2,
        in_valid_in_0 => i_acl_pipeline_keep_going55_mem_read_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe187 => bb_mem_read_generic_B2_out_c0_exe187,
        out_c0_exe288 => bb_mem_read_generic_B2_out_c0_exe288,
        out_c0_exe4 => bb_mem_read_generic_B2_out_c0_exe4,
        out_c0_exe5 => bb_mem_read_generic_B2_out_c0_exe5,
        out_exiting_stall_out => bb_mem_read_generic_B2_out_exiting_stall_out,
        out_exiting_valid_out => bb_mem_read_generic_B2_out_exiting_valid_out,
        out_pipeline_valid_out => bb_mem_read_generic_B2_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_read_generic_B2_out_stall_out_0,
        out_stall_out_1 => bb_mem_read_generic_B2_out_stall_out_1,
        out_valid_out_0 => bb_mem_read_generic_B2_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B2_sr_1_aunroll_x(BLACKBOX,4)
    thebb_mem_read_generic_B2_sr_1_aunroll_x : bb_mem_read_generic_B2_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_data_1 => bb_mem_read_generic_B1_out_c0_exe1,
        in_i_data_2 => bb_mem_read_generic_B1_out_c0_exe2,
        in_i_stall => bb_mem_read_generic_B2_out_stall_out_1,
        in_i_valid => loop_limiter_mem_read_generic0_out_o_valid,
        out_o_data_0 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_data_2,
        out_o_stall => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_mem_read_generic0(BLACKBOX,106)
    theloop_limiter_mem_read_generic0 : loop_limiter_mem_read_generic0
    PORT MAP (
        in_i_stall => bb_mem_read_generic_B2_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_mem_read_generic_B2_out_exiting_stall_out,
        in_i_valid => bb_mem_read_generic_B1_out_valid_out_0,
        in_i_valid_exit => bb_mem_read_generic_B2_out_exiting_valid_out,
        out_o_stall => loop_limiter_mem_read_generic0_out_o_stall,
        out_o_valid => loop_limiter_mem_read_generic0_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going59_mem_read_generic_sr(BLACKBOX,80)
    thei_acl_pipeline_keep_going59_mem_read_generic_sr : i_acl_pipeline_keep_going59_mem_read_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_read_generic_B1_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going59_mem_read_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going59_mem_read_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B1(BLACKBOX,61)
    thebb_mem_read_generic_B1 : bb_mem_read_generic_B1
    PORT MAP (
        in_forked_0 => GND_q,
        in_forked_1 => bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going59_mem_read_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_mem_read_generic0_out_o_stall,
        in_stride => in_arg_stride,
        in_valid_in_0 => i_acl_pipeline_keep_going59_mem_read_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe1 => bb_mem_read_generic_B1_out_c0_exe1,
        out_c0_exe2 => bb_mem_read_generic_B1_out_c0_exe2,
        out_pipeline_valid_out => bb_mem_read_generic_B1_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_read_generic_B1_out_stall_out_0,
        out_stall_out_1 => bb_mem_read_generic_B1_out_stall_out_1,
        out_valid_out_0 => bb_mem_read_generic_B1_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- bb_mem_read_generic_B1_sr_1_aunroll_x(BLACKBOX,3)
    thebb_mem_read_generic_B1_sr_1_aunroll_x : bb_mem_read_generic_B1_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_stall => bb_mem_read_generic_B1_out_stall_out_1,
        in_i_valid => bb_mem_read_generic_B0_out_valid_out_0,
        out_o_data_0 => bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_stall => bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B0(BLACKBOX,60)
    thebb_mem_read_generic_B0 : bb_mem_read_generic_B0
    PORT MAP (
        in_feedback_in_0 => bb_mem_read_generic_B10_out_feedback_out_0,
        in_feedback_valid_in_0 => bb_mem_read_generic_B10_out_feedback_valid_out_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_mem_read_generic_B1_sr_1_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_valid_in_0 => in_valid_in,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_feedback_stall_out_0 => bb_mem_read_generic_B0_out_feedback_stall_out_0,
        out_stall_out_0 => bb_mem_read_generic_B0_out_stall_out_0,
        out_valid_out_0 => bb_mem_read_generic_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B10(BLACKBOX,62)
    thebb_mem_read_generic_B10 : bb_mem_read_generic_B10
    PORT MAP (
        in_feedback_stall_in_0 => bb_mem_read_generic_B0_out_feedback_stall_out_0,
        in_stall_in_0 => in_stall_in,
        in_valid_in_0 => bb_mem_read_generic_B10_sr_0_aunroll_x_out_o_valid,
        out_feedback_out_0 => bb_mem_read_generic_B10_out_feedback_out_0,
        out_feedback_valid_out_0 => bb_mem_read_generic_B10_out_feedback_valid_out_0,
        out_stall_out_0 => bb_mem_read_generic_B10_out_stall_out_0,
        out_valid_out_0 => bb_mem_read_generic_B10_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B10_sr_0_aunroll_x(BLACKBOX,2)
    thebb_mem_read_generic_B10_sr_0_aunroll_x : bb_mem_read_generic_B10_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_mem_read_generic_B10_out_stall_out_0,
        in_i_valid => bb_mem_read_generic_B9_out_valid_out_0,
        out_o_stall => bb_mem_read_generic_B10_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B10_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B9(BLACKBOX,68)
    thebb_mem_read_generic_B9 : bb_mem_read_generic_B9
    PORT MAP (
        in_c0_exe71702_0 => bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_mem_read_generic_B10_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_valid_in_0 => bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_stall_out_0 => bb_mem_read_generic_B9_out_stall_out_0,
        out_valid_out_0 => bb_mem_read_generic_B9_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B9_sr_0_aunroll_x(BLACKBOX,13)
    thebb_mem_read_generic_B9_sr_0_aunroll_x : bb_mem_read_generic_B9_sr_0
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B8_out_c0_exe71703,
        in_i_stall => bb_mem_read_generic_B9_out_stall_out_0,
        in_i_valid => bb_mem_read_generic_B8_out_valid_out_0,
        out_o_data_0 => bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_data_0,
        out_o_stall => bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B8(BLACKBOX,67)
    thebb_mem_read_generic_B8 : bb_mem_read_generic_B8
    PORT MAP (
        in_c0_exe71703_0 => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe81716_0 => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_data_1,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_mem_read_generic_B9_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_valid_in_0 => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe71703 => bb_mem_read_generic_B8_out_c0_exe71703,
        out_stall_out_0 => bb_mem_read_generic_B8_out_stall_out_0,
        out_valid_out_0 => bb_mem_read_generic_B8_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B8_sr_0_aunroll_x(BLACKBOX,12)
    thebb_mem_read_generic_B8_sr_0_aunroll_x : bb_mem_read_generic_B8_sr_0
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B7_out_c0_exe71704,
        in_i_data_1 => bb_mem_read_generic_B7_out_c0_exe81717,
        in_i_stall => bb_mem_read_generic_B8_out_stall_out_0,
        in_i_valid => bb_mem_read_generic_B7_out_valid_out_0,
        out_o_data_0 => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_data_1,
        out_o_stall => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B7(BLACKBOX,66)
    thebb_mem_read_generic_B7 : bb_mem_read_generic_B7
    PORT MAP (
        in_c0_exe71704_0 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_0,
        in_c0_exe81717_0 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_1,
        in_c0_exe91729_0 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_2,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_mem_read_generic_B8_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_valid_in_0 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe71704 => bb_mem_read_generic_B7_out_c0_exe71704,
        out_c0_exe81717 => bb_mem_read_generic_B7_out_c0_exe81717,
        out_stall_out_0 => bb_mem_read_generic_B7_out_stall_out_0,
        out_valid_out_0 => bb_mem_read_generic_B7_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B7_sr_0_aunroll_x(BLACKBOX,11)
    thebb_mem_read_generic_B7_sr_0_aunroll_x : bb_mem_read_generic_B7_sr_0
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B6_aunroll_x_out_c0_exe71705,
        in_i_data_1 => bb_mem_read_generic_B6_aunroll_x_out_c0_exe81718,
        in_i_data_2 => bb_mem_read_generic_B6_aunroll_x_out_c0_exe917210,
        in_i_stall => bb_mem_read_generic_B7_out_stall_out_0,
        in_i_valid => bb_mem_read_generic_B6_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_data_2,
        out_o_stall => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B6_aunroll_x(BLACKBOX,9)
    thebb_mem_read_generic_B6_aunroll_x : bb_mem_read_generic_B6
    PORT MAP (
        in_c0_exit1631_0_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_0,
        in_c0_exit1631_0_1 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_1,
        in_c0_exit1631_0_2 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_2,
        in_c0_exit1631_0_3 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_3,
        in_c0_exit1631_0_4 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_4,
        in_c0_exit1631_0_5 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_5,
        in_c0_exit1631_0_6 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_6,
        in_c0_exit1631_0_7 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_7,
        in_c0_exit1631_0_8 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_8,
        in_c0_exit1631_0_9 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_9,
        in_c0_exit1631_0_10 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_10,
        in_c0_exe71705_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_11,
        in_c0_exe81718_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_12,
        in_c0_exe917210_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_13,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_mem_in => in_arg_mem_in,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_mem_read_generic_B7_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_valid_in_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exe71705 => bb_mem_read_generic_B6_aunroll_x_out_c0_exe71705,
        out_c0_exe81718 => bb_mem_read_generic_B6_aunroll_x_out_c0_exe81718,
        out_c0_exe917210 => bb_mem_read_generic_B6_aunroll_x_out_c0_exe917210,
        out_stall_out_0 => bb_mem_read_generic_B6_aunroll_x_out_stall_out_0,
        out_valid_out_0 => bb_mem_read_generic_B6_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B6_sr_0_aunroll_x(BLACKBOX,10)
    thebb_mem_read_generic_B6_sr_0_aunroll_x : bb_mem_read_generic_B6_sr_0
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_0,
        in_i_data_1 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_1,
        in_i_data_2 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_2,
        in_i_data_3 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_3,
        in_i_data_4 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_4,
        in_i_data_5 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_5,
        in_i_data_6 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_6,
        in_i_data_7 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_7,
        in_i_data_8 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_8,
        in_i_data_9 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_9,
        in_i_data_10 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_10,
        in_i_data_11 => bb_mem_read_generic_B5_aunroll_x_out_c0_exe7170,
        in_i_data_12 => bb_mem_read_generic_B5_aunroll_x_out_c0_exe8171,
        in_i_data_13 => bb_mem_read_generic_B5_aunroll_x_out_c0_exe9172,
        in_i_stall => bb_mem_read_generic_B6_aunroll_x_out_stall_out_0,
        in_i_valid => bb_mem_read_generic_B5_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_data_13,
        out_o_stall => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_mem_read_generic_sr(BLACKBOX,82)
    thei_acl_pipeline_keep_going_mem_read_generic_sr : i_acl_pipeline_keep_going_mem_read_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going_mem_read_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_read_generic_B5_aunroll_x_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going_mem_read_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going_mem_read_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_c_i32_undef_x(CONSTANT,18)
    dupName_0_c_i32_undef_x_q <= "00000000000000000000000000000000";

    -- bb_mem_read_generic_B5_sr_1_aunroll_x(BLACKBOX,8)
    thebb_mem_read_generic_B5_sr_1_aunroll_x : bb_mem_read_generic_B5_sr_1
    PORT MAP (
        in_i_data_0 => bb_mem_read_generic_B4_out_c0_exe10,
        in_i_data_1 => bb_mem_read_generic_B4_out_c0_exe11,
        in_i_data_2 => bb_mem_read_generic_B4_out_c0_exe1128,
        in_i_data_3 => bb_mem_read_generic_B4_out_c0_exe12,
        in_i_data_4 => bb_mem_read_generic_B4_out_c0_exe2129,
        in_i_data_5 => bb_mem_read_generic_B4_out_c0_exe4131,
        in_i_data_6 => bb_mem_read_generic_B4_out_c0_exe13,
        in_i_data_7 => VCC_q,
        in_i_data_8 => bb_mem_read_generic_B4_out_c0_exe3130,
        in_i_data_9 => bb_mem_read_generic_B4_out_c0_exe5132,
        in_i_data_10 => bb_mem_read_generic_B4_out_c0_exe6133,
        in_i_data_11 => bb_mem_read_generic_B4_out_c0_exe7134,
        in_i_data_12 => bb_mem_read_generic_B4_out_c0_exe8135,
        in_i_stall => bb_mem_read_generic_B5_aunroll_x_out_stall_out_1,
        in_i_valid => loop_limiter_mem_read_generic3_out_o_valid,
        out_o_data_0 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_12,
        out_o_stall => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_mem_read_generic_B5_aunroll_x(BLACKBOX,7)
    thebb_mem_read_generic_B5_aunroll_x : bb_mem_read_generic_B5
    PORT MAP (
        in_acl_77_0 => GND_q,
        in_acl_77_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_8,
        in_flush => in_start,
        in_forked76_0 => GND_q,
        in_forked76_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_7,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_in_offset => in_arg_in_offset,
        in_iowr_bl_ch_in_i_fifoready => in_iowr_bl_ch_in_i_fifoready,
        in_mem_in => in_arg_mem_in,
        in_mul3475_0 => dupName_0_c_i32_undef_x_q,
        in_mul3475_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_5,
        in_or_cond73_0 => GND_q,
        in_or_cond73_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_4,
        in_pad => in_arg_pad,
        in_phi_decision46_xor_RM79_0 => GND_q,
        in_phi_decision46_xor_RM79_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_11,
        in_pipeline_stall_in => i_acl_pipeline_keep_going_mem_read_generic_sr_out_o_stall,
        in_stall_in_0 => bb_mem_read_generic_B6_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_sub2466_0 => dupName_0_c_i32_undef_x_q,
        in_sub2466_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_0,
        in_sub2770_0 => dupName_0_c_i32_undef_x_q,
        in_sub2770_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_2,
        in_tmp278_0 => dupName_0_c_i32_undef_x_q,
        in_tmp278_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_9,
        in_unnamed_mem_read_generic10_0 => GND_q,
        in_unnamed_mem_read_generic10_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_12,
        in_unnamed_mem_read_generic11_avm_readdata => in_unnamed_mem_read_generic11_avm_readdata,
        in_unnamed_mem_read_generic11_avm_readdatavalid => in_unnamed_mem_read_generic11_avm_readdatavalid,
        in_unnamed_mem_read_generic11_avm_waitrequest => in_unnamed_mem_read_generic11_avm_waitrequest,
        in_unnamed_mem_read_generic11_avm_writeack => in_unnamed_mem_read_generic11_avm_writeack,
        in_unnamed_mem_read_generic6_0 => GND_q,
        in_unnamed_mem_read_generic6_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_mem_read_generic7_0 => GND_q,
        in_unnamed_mem_read_generic7_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_3,
        in_unnamed_mem_read_generic8_0 => GND_q,
        in_unnamed_mem_read_generic8_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_6,
        in_unnamed_mem_read_generic9_0 => GND_q,
        in_unnamed_mem_read_generic9_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_data_10,
        in_valid_in_0 => i_acl_pipeline_keep_going_mem_read_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_read_generic_B5_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_x_zero => in_arg_x_zero,
        out_c0_exit163_0 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_0,
        out_c0_exit163_1 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_1,
        out_c0_exit163_2 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_2,
        out_c0_exit163_3 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_3,
        out_c0_exit163_4 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_4,
        out_c0_exit163_5 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_5,
        out_c0_exit163_6 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_6,
        out_c0_exit163_7 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_7,
        out_c0_exit163_8 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_8,
        out_c0_exit163_9 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_9,
        out_c0_exit163_10 => bb_mem_read_generic_B5_aunroll_x_out_c0_exit163_10,
        out_c0_exe7170 => bb_mem_read_generic_B5_aunroll_x_out_c0_exe7170,
        out_c0_exe8171 => bb_mem_read_generic_B5_aunroll_x_out_c0_exe8171,
        out_c0_exe9172 => bb_mem_read_generic_B5_aunroll_x_out_c0_exe9172,
        out_exiting_stall_out => bb_mem_read_generic_B5_aunroll_x_out_exiting_stall_out,
        out_exiting_valid_out => bb_mem_read_generic_B5_aunroll_x_out_exiting_valid_out,
        out_iowr_bl_ch_in_o_fifodata => bb_mem_read_generic_B5_aunroll_x_out_iowr_bl_ch_in_o_fifodata,
        out_iowr_bl_ch_in_o_fifovalid => bb_mem_read_generic_B5_aunroll_x_out_iowr_bl_ch_in_o_fifovalid,
        out_pipeline_valid_out => bb_mem_read_generic_B5_aunroll_x_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_read_generic_B5_aunroll_x_out_stall_out_0,
        out_stall_out_1 => bb_mem_read_generic_B5_aunroll_x_out_stall_out_1,
        out_unnamed_mem_read_generic11_avm_address => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_address,
        out_unnamed_mem_read_generic11_avm_burstcount => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_burstcount,
        out_unnamed_mem_read_generic11_avm_byteenable => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_byteenable,
        out_unnamed_mem_read_generic11_avm_enable => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_enable,
        out_unnamed_mem_read_generic11_avm_read => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_read,
        out_unnamed_mem_read_generic11_avm_write => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_write,
        out_unnamed_mem_read_generic11_avm_writedata => bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_writedata,
        out_valid_out_0 => bb_mem_read_generic_B5_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_iowr_bl_ch_in_o_fifodata(GPOUT,110)
    out_iowr_bl_ch_in_o_fifodata <= bb_mem_read_generic_B5_aunroll_x_out_iowr_bl_ch_in_o_fifodata;

    -- out_iowr_bl_ch_in_o_fifovalid(GPOUT,111)
    out_iowr_bl_ch_in_o_fifovalid <= bb_mem_read_generic_B5_aunroll_x_out_iowr_bl_ch_in_o_fifovalid;

    -- out_stall_out(GPOUT,112)
    out_stall_out <= bb_mem_read_generic_B0_out_stall_out_0;

    -- out_unnamed_mem_read_generic11_avm_address(GPOUT,113)
    out_unnamed_mem_read_generic11_avm_address <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_address;

    -- out_unnamed_mem_read_generic11_avm_burstcount(GPOUT,114)
    out_unnamed_mem_read_generic11_avm_burstcount <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_burstcount;

    -- out_unnamed_mem_read_generic11_avm_byteenable(GPOUT,115)
    out_unnamed_mem_read_generic11_avm_byteenable <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_byteenable;

    -- out_unnamed_mem_read_generic11_avm_enable(GPOUT,116)
    out_unnamed_mem_read_generic11_avm_enable <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_enable;

    -- out_unnamed_mem_read_generic11_avm_read(GPOUT,117)
    out_unnamed_mem_read_generic11_avm_read <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_read;

    -- out_unnamed_mem_read_generic11_avm_write(GPOUT,118)
    out_unnamed_mem_read_generic11_avm_write <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_write;

    -- out_unnamed_mem_read_generic11_avm_writedata(GPOUT,119)
    out_unnamed_mem_read_generic11_avm_writedata <= bb_mem_read_generic_B5_aunroll_x_out_unnamed_mem_read_generic11_avm_writedata;

    -- out_valid_out(GPOUT,120)
    out_valid_out <= bb_mem_read_generic_B10_out_valid_out_0;

END normal;
