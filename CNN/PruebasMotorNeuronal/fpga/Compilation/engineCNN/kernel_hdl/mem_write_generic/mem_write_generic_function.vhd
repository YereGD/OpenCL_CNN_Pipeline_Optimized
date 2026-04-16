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

-- VHDL created from mem_write_generic_function
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

entity mem_write_generic_function is
    port (
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_mem_out : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_out_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_t_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- ufix8
        in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_active_unnamed_mem_write_generic17 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_write_generic_function;

architecture normal of mem_write_generic_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_mem_write_generic_B1_sr_1 is
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


    component bb_mem_write_generic_B2_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B3 is
        port (
            in_current_out_idx_14_pop1025_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_current_out_idx_14_pop1025_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked24_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked24_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic13_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic13_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic14_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit49_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit49_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_lsu_unnamed_mem_write_generic17_o_active : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B3_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B4 is
        port (
            in_c0_exit491_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit491_0_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit491_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe53_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B4_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B5_sr_0 is
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


    component bb_mem_write_generic_B6_sr_0 is
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


    component bb_mem_write_generic_B0 is
        port (
            in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_out_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_t_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B1 is
        port (
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_mem_write_generic_B2 is
        port (
            in_current_out_idx_14_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_current_out_idx_14_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked14_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked14_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic11_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic11_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe135 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe337 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_mem_write_generic_B5 is
        port (
            in_c0_exe52_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_write_generic_B6 is
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


    component i_acl_pipeline_keep_going17_mem_write_generic_sr is
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


    component i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going21_mem_write_generic_sr is
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


    component i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going_mem_write_generic_sr is
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


    component i_acl_pipeline_keep_going_mem_write_generic_valid_fifo is
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


    component loop_limiter_mem_write_generic0 is
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


    component loop_limiter_mem_write_generic1 is
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
    signal bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_c0_exe5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_iord_bl_ch_out_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_lsu_unnamed_mem_write_generic17_o_active : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_mem_write_generic_B3_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_aunroll_x_out_c0_exe53 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B6_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B6_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_i2_0gr_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal dupName_0_c_i32_undef_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_out_feedback_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_mem_write_generic_B0_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_mem_write_generic_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_out_c0_exe1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B1_out_c0_exe2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_c0_exe135 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_c0_exe337 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_write_generic_B2_out_c0_exe4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B5_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B5_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B6_out_feedback_out_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_mem_write_generic_B6_out_feedback_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B6_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_write_generic_B6_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_mem_write_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_write_generic0_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_write_generic0_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_write_generic1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_mem_write_generic1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- dupName_0_c_i2_0gr_x(CONSTANT,13)
    dupName_0_c_i2_0gr_x_q <= "00";

    -- i_acl_pipeline_keep_going_mem_write_generic_valid_fifo(BLACKBOX,41)
    thei_acl_pipeline_keep_going_mem_write_generic_valid_fifo : i_acl_pipeline_keep_going_mem_write_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_write_generic_B3_aunroll_x_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going_mem_write_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going_mem_write_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going_mem_write_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B6(BLACKBOX,30)
    thebb_mem_write_generic_B6 : bb_mem_write_generic_B6
    PORT MAP (
        in_feedback_stall_in_0 => bb_mem_write_generic_B0_out_feedback_stall_out_0,
        in_stall_in_0 => in_stall_in,
        in_valid_in_0 => bb_mem_write_generic_B6_sr_0_aunroll_x_out_o_valid,
        out_feedback_out_0 => bb_mem_write_generic_B6_out_feedback_out_0,
        out_feedback_valid_out_0 => bb_mem_write_generic_B6_out_feedback_valid_out_0,
        out_stall_out_0 => bb_mem_write_generic_B6_out_stall_out_0,
        out_valid_out_0 => bb_mem_write_generic_B6_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B6_sr_0_aunroll_x(BLACKBOX,9)
    thebb_mem_write_generic_B6_sr_0_aunroll_x : bb_mem_write_generic_B6_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_mem_write_generic_B6_out_stall_out_0,
        in_i_valid => bb_mem_write_generic_B5_out_valid_out_0,
        out_o_stall => bb_mem_write_generic_B6_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_write_generic_B6_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B5(BLACKBOX,29)
    thebb_mem_write_generic_B5 : bb_mem_write_generic_B5
    PORT MAP (
        in_c0_exe52_0 => bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_data_0,
        in_mem_out => in_arg_mem_out,
        in_out_c => in_arg_out_c,
        in_stall_in_0 => bb_mem_write_generic_B6_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_valid,
        out_stall_out_0 => bb_mem_write_generic_B5_out_stall_out_0,
        out_valid_out_0 => bb_mem_write_generic_B5_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B5_sr_0_aunroll_x(BLACKBOX,8)
    thebb_mem_write_generic_B5_sr_0_aunroll_x : bb_mem_write_generic_B5_sr_0
    PORT MAP (
        in_i_data_0 => bb_mem_write_generic_B4_aunroll_x_out_c0_exe53,
        in_i_stall => bb_mem_write_generic_B5_out_stall_out_0,
        in_i_valid => bb_mem_write_generic_B4_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_data_0,
        out_o_stall => bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B4_aunroll_x(BLACKBOX,6)
    thebb_mem_write_generic_B4_aunroll_x : bb_mem_write_generic_B4
    PORT MAP (
        in_c0_exit491_0_0 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_0,
        in_c0_exit491_0_1 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_1,
        in_c0_exit491_0_2 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_2,
        in_c0_exit491_0_3 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_3,
        in_c0_exit491_0_4 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_4,
        in_c0_exit491_0_5 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_5,
        in_c0_exit491_0_6 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_6,
        in_c0_exe53_0 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_7,
        in_mem_out => in_arg_mem_out,
        in_out_c => in_arg_out_c,
        in_stall_in_0 => bb_mem_write_generic_B5_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_valid,
        out_c0_exe53 => bb_mem_write_generic_B4_aunroll_x_out_c0_exe53,
        out_stall_out_0 => bb_mem_write_generic_B4_aunroll_x_out_stall_out_0,
        out_valid_out_0 => bb_mem_write_generic_B4_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B4_sr_0_aunroll_x(BLACKBOX,7)
    thebb_mem_write_generic_B4_sr_0_aunroll_x : bb_mem_write_generic_B4_sr_0
    PORT MAP (
        in_i_data_0 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_0,
        in_i_data_1 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_1,
        in_i_data_2 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_2,
        in_i_data_3 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_3,
        in_i_data_4 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_4,
        in_i_data_5 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_5,
        in_i_data_6 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_6,
        in_i_data_7 => bb_mem_write_generic_B3_aunroll_x_out_c0_exe5,
        in_i_stall => bb_mem_write_generic_B4_aunroll_x_out_stall_out_0,
        in_i_valid => bb_mem_write_generic_B3_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_data_7,
        out_o_stall => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_mem_write_generic_sr(BLACKBOX,40)
    thei_acl_pipeline_keep_going_mem_write_generic_sr : i_acl_pipeline_keep_going_mem_write_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going_mem_write_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_write_generic_B3_aunroll_x_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going_mem_write_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going_mem_write_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo(BLACKBOX,39)
    thei_acl_pipeline_keep_going21_mem_write_generic_valid_fifo : i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_write_generic_B1_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going21_mem_write_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo(BLACKBOX,37)
    thei_acl_pipeline_keep_going17_mem_write_generic_valid_fifo : i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_mem_write_generic_B2_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going17_mem_write_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_mem_write_generic1(BLACKBOX,67)
    theloop_limiter_mem_write_generic1 : loop_limiter_mem_write_generic1
    PORT MAP (
        in_i_stall => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_mem_write_generic_B3_aunroll_x_out_exiting_stall_out,
        in_i_valid => bb_mem_write_generic_B2_out_valid_out_0,
        in_i_valid_exit => bb_mem_write_generic_B3_aunroll_x_out_exiting_valid_out,
        out_o_stall => loop_limiter_mem_write_generic1_out_o_stall,
        out_o_valid => loop_limiter_mem_write_generic1_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going17_mem_write_generic_sr(BLACKBOX,36)
    thei_acl_pipeline_keep_going17_mem_write_generic_sr : i_acl_pipeline_keep_going17_mem_write_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_write_generic_B2_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going17_mem_write_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going17_mem_write_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B2(BLACKBOX,28)
    thebb_mem_write_generic_B2 : bb_mem_write_generic_B2
    PORT MAP (
        in_current_out_idx_14_0 => dupName_0_c_i32_undef_x_q,
        in_current_out_idx_14_1 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_0,
        in_forked14_0 => GND_q,
        in_forked14_1 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_1,
        in_intel_reserved_ffwd_0_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_1_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_6_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_6_0,
        in_mem_out => in_arg_mem_out,
        in_out_c => in_arg_out_c,
        in_pipeline_stall_in => i_acl_pipeline_keep_going17_mem_write_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_mem_write_generic1_out_o_stall,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_mem_write_generic11_0 => GND_q,
        in_unnamed_mem_write_generic11_1 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_2,
        in_valid_in_0 => i_acl_pipeline_keep_going17_mem_write_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_valid,
        out_c0_exe135 => bb_mem_write_generic_B2_out_c0_exe135,
        out_c0_exe337 => bb_mem_write_generic_B2_out_c0_exe337,
        out_c0_exe4 => bb_mem_write_generic_B2_out_c0_exe4,
        out_exiting_stall_out => bb_mem_write_generic_B2_out_exiting_stall_out,
        out_exiting_valid_out => bb_mem_write_generic_B2_out_exiting_valid_out,
        out_pipeline_valid_out => bb_mem_write_generic_B2_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_write_generic_B2_out_stall_out_0,
        out_stall_out_1 => bb_mem_write_generic_B2_out_stall_out_1,
        out_valid_out_0 => bb_mem_write_generic_B2_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B2_sr_1_aunroll_x(BLACKBOX,3)
    thebb_mem_write_generic_B2_sr_1_aunroll_x : bb_mem_write_generic_B2_sr_1
    PORT MAP (
        in_i_data_0 => bb_mem_write_generic_B1_out_c0_exe1,
        in_i_data_1 => VCC_q,
        in_i_data_2 => bb_mem_write_generic_B1_out_c0_exe2,
        in_i_stall => bb_mem_write_generic_B2_out_stall_out_1,
        in_i_valid => loop_limiter_mem_write_generic0_out_o_valid,
        out_o_data_0 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_data_2,
        out_o_stall => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_mem_write_generic0(BLACKBOX,66)
    theloop_limiter_mem_write_generic0 : loop_limiter_mem_write_generic0
    PORT MAP (
        in_i_stall => bb_mem_write_generic_B2_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_mem_write_generic_B2_out_exiting_stall_out,
        in_i_valid => bb_mem_write_generic_B1_out_valid_out_0,
        in_i_valid_exit => bb_mem_write_generic_B2_out_exiting_valid_out,
        out_o_stall => loop_limiter_mem_write_generic0_out_o_stall,
        out_o_valid => loop_limiter_mem_write_generic0_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going21_mem_write_generic_sr(BLACKBOX,38)
    thei_acl_pipeline_keep_going21_mem_write_generic_sr : i_acl_pipeline_keep_going21_mem_write_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_mem_write_generic_B1_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going21_mem_write_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going21_mem_write_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B1(BLACKBOX,27)
    thebb_mem_write_generic_B1 : bb_mem_write_generic_B1
    PORT MAP (
        in_forked_0 => GND_q,
        in_forked_1 => bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_data_0,
        in_intel_reserved_ffwd_2_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_5_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_7_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_7_0,
        in_mem_out => in_arg_mem_out,
        in_out_c => in_arg_out_c,
        in_pipeline_stall_in => i_acl_pipeline_keep_going21_mem_write_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_mem_write_generic0_out_o_stall,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => i_acl_pipeline_keep_going21_mem_write_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_valid,
        out_c0_exe1 => bb_mem_write_generic_B1_out_c0_exe1,
        out_c0_exe2 => bb_mem_write_generic_B1_out_c0_exe2,
        out_pipeline_valid_out => bb_mem_write_generic_B1_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_write_generic_B1_out_stall_out_0,
        out_stall_out_1 => bb_mem_write_generic_B1_out_stall_out_1,
        out_valid_out_0 => bb_mem_write_generic_B1_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- bb_mem_write_generic_B1_sr_1_aunroll_x(BLACKBOX,2)
    thebb_mem_write_generic_B1_sr_1_aunroll_x : bb_mem_write_generic_B1_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_stall => bb_mem_write_generic_B1_out_stall_out_1,
        in_i_valid => bb_mem_write_generic_B0_out_valid_out_0,
        out_o_data_0 => bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_stall => bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_write_generic_B0(BLACKBOX,26)
    thebb_mem_write_generic_B0 : bb_mem_write_generic_B0
    PORT MAP (
        in_feedback_in_0 => bb_mem_write_generic_B6_out_feedback_out_0,
        in_feedback_valid_in_0 => bb_mem_write_generic_B6_out_feedback_valid_out_0,
        in_h => in_arg_h,
        in_mem_out => in_arg_mem_out,
        in_out_c => in_arg_out_c,
        in_out_offset => in_arg_out_offset,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_mem_write_generic_B1_sr_1_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_t_offset => in_arg_t_offset,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => in_valid_in,
        in_w => in_arg_w,
        out_feedback_stall_out_0 => bb_mem_write_generic_B0_out_feedback_stall_out_0,
        out_intel_reserved_ffwd_0_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_1_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_2_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_2_0,
        out_intel_reserved_ffwd_3_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_3_0,
        out_intel_reserved_ffwd_4_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_6_0,
        out_intel_reserved_ffwd_7_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_7_0,
        out_stall_out_0 => bb_mem_write_generic_B0_out_stall_out_0,
        out_valid_out_0 => bb_mem_write_generic_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_mem_write_generic_B3_sr_1_aunroll_x(BLACKBOX,5)
    thebb_mem_write_generic_B3_sr_1_aunroll_x : bb_mem_write_generic_B3_sr_1
    PORT MAP (
        in_i_data_0 => bb_mem_write_generic_B2_out_c0_exe4,
        in_i_data_1 => VCC_q,
        in_i_data_2 => bb_mem_write_generic_B2_out_c0_exe135,
        in_i_data_3 => bb_mem_write_generic_B2_out_c0_exe337,
        in_i_stall => bb_mem_write_generic_B3_aunroll_x_out_stall_out_1,
        in_i_valid => loop_limiter_mem_write_generic1_out_o_valid,
        out_o_data_0 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_3,
        out_o_stall => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- dupName_0_c_i32_undef_x(CONSTANT,14)
    dupName_0_c_i32_undef_x_q <= "00000000000000000000000000000000";

    -- bb_mem_write_generic_B3_aunroll_x(BLACKBOX,4)
    thebb_mem_write_generic_B3_aunroll_x : bb_mem_write_generic_B3
    PORT MAP (
        in_current_out_idx_14_pop1025_0 => dupName_0_c_i32_undef_x_q,
        in_current_out_idx_14_pop1025_1 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_3,
        in_flush => in_start,
        in_forked24_0 => GND_q,
        in_forked24_1 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_1,
        in_intel_reserved_ffwd_4_0 => bb_mem_write_generic_B0_out_intel_reserved_ffwd_4_0,
        in_iord_bl_ch_out_i_fifodata => in_iord_bl_ch_out_i_fifodata,
        in_iord_bl_ch_out_i_fifovalid => in_iord_bl_ch_out_i_fifovalid,
        in_mem_out => in_arg_mem_out,
        in_out_c => in_arg_out_c,
        in_pipeline_stall_in => i_acl_pipeline_keep_going_mem_write_generic_sr_out_o_stall,
        in_stall_in_0 => bb_mem_write_generic_B4_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_mem_write_generic13_0 => GND_q,
        in_unnamed_mem_write_generic13_1 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_0,
        in_unnamed_mem_write_generic14_0 => GND_q,
        in_unnamed_mem_write_generic14_1 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_data_2,
        in_unnamed_mem_write_generic17_avm_readdata => in_unnamed_mem_write_generic17_avm_readdata,
        in_unnamed_mem_write_generic17_avm_readdatavalid => in_unnamed_mem_write_generic17_avm_readdatavalid,
        in_unnamed_mem_write_generic17_avm_waitrequest => in_unnamed_mem_write_generic17_avm_waitrequest,
        in_unnamed_mem_write_generic17_avm_writeack => in_unnamed_mem_write_generic17_avm_writeack,
        in_valid_in_0 => i_acl_pipeline_keep_going_mem_write_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_mem_write_generic_B3_sr_1_aunroll_x_out_o_valid,
        out_c0_exit49_0 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_0,
        out_c0_exit49_1 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_1,
        out_c0_exit49_2 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_2,
        out_c0_exit49_3 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_3,
        out_c0_exit49_4 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_4,
        out_c0_exit49_5 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_5,
        out_c0_exit49_6 => bb_mem_write_generic_B3_aunroll_x_out_c0_exit49_6,
        out_c0_exe5 => bb_mem_write_generic_B3_aunroll_x_out_c0_exe5,
        out_exiting_stall_out => bb_mem_write_generic_B3_aunroll_x_out_exiting_stall_out,
        out_exiting_valid_out => bb_mem_write_generic_B3_aunroll_x_out_exiting_valid_out,
        out_iord_bl_ch_out_o_fifoready => bb_mem_write_generic_B3_aunroll_x_out_iord_bl_ch_out_o_fifoready,
        out_lsu_unnamed_mem_write_generic17_o_active => bb_mem_write_generic_B3_aunroll_x_out_lsu_unnamed_mem_write_generic17_o_active,
        out_pipeline_valid_out => bb_mem_write_generic_B3_aunroll_x_out_pipeline_valid_out,
        out_stall_out_0 => bb_mem_write_generic_B3_aunroll_x_out_stall_out_0,
        out_stall_out_1 => bb_mem_write_generic_B3_aunroll_x_out_stall_out_1,
        out_unnamed_mem_write_generic17_avm_address => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_address,
        out_unnamed_mem_write_generic17_avm_burstcount => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_burstcount,
        out_unnamed_mem_write_generic17_avm_byteenable => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_byteenable,
        out_unnamed_mem_write_generic17_avm_enable => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_enable,
        out_unnamed_mem_write_generic17_avm_read => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_read,
        out_unnamed_mem_write_generic17_avm_write => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_write,
        out_unnamed_mem_write_generic17_avm_writedata => bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_writedata,
        out_valid_out_0 => bb_mem_write_generic_B3_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_iord_bl_ch_out_o_fifoready(GPOUT,68)
    out_iord_bl_ch_out_o_fifoready <= bb_mem_write_generic_B3_aunroll_x_out_iord_bl_ch_out_o_fifoready;

    -- out_o_active_unnamed_mem_write_generic17(GPOUT,69)
    out_o_active_unnamed_mem_write_generic17 <= bb_mem_write_generic_B3_aunroll_x_out_lsu_unnamed_mem_write_generic17_o_active;

    -- out_stall_out(GPOUT,70)
    out_stall_out <= bb_mem_write_generic_B0_out_stall_out_0;

    -- out_unnamed_mem_write_generic17_avm_address(GPOUT,71)
    out_unnamed_mem_write_generic17_avm_address <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_address;

    -- out_unnamed_mem_write_generic17_avm_burstcount(GPOUT,72)
    out_unnamed_mem_write_generic17_avm_burstcount <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_burstcount;

    -- out_unnamed_mem_write_generic17_avm_byteenable(GPOUT,73)
    out_unnamed_mem_write_generic17_avm_byteenable <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_byteenable;

    -- out_unnamed_mem_write_generic17_avm_enable(GPOUT,74)
    out_unnamed_mem_write_generic17_avm_enable <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_enable;

    -- out_unnamed_mem_write_generic17_avm_read(GPOUT,75)
    out_unnamed_mem_write_generic17_avm_read <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_read;

    -- out_unnamed_mem_write_generic17_avm_write(GPOUT,76)
    out_unnamed_mem_write_generic17_avm_write <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_write;

    -- out_unnamed_mem_write_generic17_avm_writedata(GPOUT,77)
    out_unnamed_mem_write_generic17_avm_writedata <= bb_mem_write_generic_B3_aunroll_x_out_unnamed_mem_write_generic17_avm_writedata;

    -- out_valid_out(GPOUT,78)
    out_valid_out <= bb_mem_write_generic_B6_out_valid_out_0;

END normal;
