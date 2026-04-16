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

-- VHDL created from bb_mem_read_generic_B5_stall_region
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

entity bb_mem_read_generic_B5_stall_region is
    port (
        out_c0_exe5168 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe7170 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8171 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe9172 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_4 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit163_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit163_10 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_acl_77 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked76 : in std_logic_vector(0 downto 0);  -- ufix1
        in_mul3475 : in std_logic_vector(31 downto 0);  -- ufix32
        in_or_cond73 : in std_logic_vector(0 downto 0);  -- ufix1
        in_phi_decision46_xor_RM79 : in std_logic_vector(0 downto 0);  -- ufix1
        in_sub2466 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2770 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp278 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic10 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic6 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic7 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic8 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic9 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- ufix8
        out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_read_generic_B5_stall_region;

architecture normal of bb_mem_read_generic_B5_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic is
        port (
            in_c0_eni13_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_4 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni13_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_6 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni13_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni13_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_11 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni13_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni13_13 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B5_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_5 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_9 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_5 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_9 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic247 is
        port (
            in_c0_exe2165 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_ack : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_mem_read_generic11_mem_read_generic245 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_x_zero_sync_buffer_mem_read_generic191 is
        port (
            in_buffer_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component acl_data_fifo is
        generic (
            DEPTH : INTEGER := 0;
            DATA_WIDTH : INTEGER := 32;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0;
            IMPL : STRING := "ram"
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            data_in : in std_logic_vector(DATA_WIDTH - 1 downto 0);
            valid_out : out std_logic;
            stall_out : out std_logic;
            data_out : out std_logic_vector(DATA_WIDTH - 1 downto 0);
            full : out std_logic;
            almost_full : out std_logic
        );
    end component;












    component acl_valid_fifo_counter is
        generic (
            DEPTH : INTEGER := 0;
            ASYNC_RESET : INTEGER := 1;
            STRICT_DEPTH : INTEGER := 0;
            ALLOW_FULL_WRITE : INTEGER := 0
        );
        port (
            clock : in std_logic;
            resetn : in std_logic;
            valid_in : in std_logic;
            stall_in : in std_logic;
            valid_out : out std_logic;
            stall_out : out std_logic;
            full : out std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_5 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_9 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_25_mem_read_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_25_mem_read_generic_q : STD_LOGIC_VECTOR (7 downto 0);
    signal i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_iowr_bl_ch_in_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_iowr_bl_ch_in_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (7 downto 0);
    signal i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q : STD_LOGIC_VECTOR (73 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_f : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_k : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_l : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (136 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_i : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_k : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_l : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_m : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_n : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_load_unnamed_mem_read_generic11_mem_read_generic_q : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_select_i_load_unnamed_mem_read_generic11_mem_read_generic_b : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_join_i_syncbuf_x_zero_sync_buffer_mem_read_generic_q : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_select_i_syncbuf_x_zero_sync_buffer_mem_read_generic_b : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (136 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_g : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_h : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_i : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_j : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_k : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_l : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_m : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_n : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V11 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_mem_read_generic_B5_merge_reg_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and8 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and9 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and10 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp : std_logic;
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp : std_logic;
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp : std_logic;
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp : std_logic;

begin


    -- redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo(STALLFIFO,51)
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V2;
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_in <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_backStall;
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_c;
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_in_bitsignaltemp <= redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_in(0);
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_in_bitsignaltemp <= redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_in(0);
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_out(0) <= redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_out_bitsignaltemp;
    redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_out(0) <= redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_out_bitsignaltemp;
    theredist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_c,
        valid_out => redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_out_bitsignaltemp,
        data_out => redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1(STALLENABLE,156)
    -- Valid signal propagation
    SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_V0 <= SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_wireValid;
    -- Backward Stall generation
    SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_backStall <= i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_stall_out or not (SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_wireValid);
    -- Computing multiple Valid(s)
    SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_wireValid <= bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_out;

    -- bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,217)
    bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_in <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_V0;
    bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_in <= SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_backStall;
    bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp <= bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_in(0);
    bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp <= bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_in(0);
    bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_out(0) <= bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_out(0) <= bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    thebubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg : acl_valid_fifo_counter
    GENERIC MAP (
        DEPTH => 125,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        ASYNC_RESET => 1
    )
    PORT MAP (
        valid_in => bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp,
        stall_in => bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp,
        valid_out => bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp,
        stall_out => bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- SE_stall_entry(STALLENABLE,123)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= mem_read_generic_B5_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,76)
    bubble_join_stall_entry_q <= in_unnamed_mem_read_generic9 & in_unnamed_mem_read_generic8 & in_unnamed_mem_read_generic7 & in_unnamed_mem_read_generic6 & in_unnamed_mem_read_generic10 & in_tmp278 & in_sub2770 & in_sub2466 & in_phi_decision46_xor_RM79 & in_or_cond73 & in_mul3475 & in_forked76 & in_acl_77;

    -- bubble_select_stall_entry(BITSELECT,77)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(0 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(1 downto 1));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(33 downto 2));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(34 downto 34));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(35 downto 35));
    bubble_select_stall_entry_g <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(67 downto 36));
    bubble_select_stall_entry_h <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(99 downto 68));
    bubble_select_stall_entry_i <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(131 downto 100));
    bubble_select_stall_entry_j <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(132 downto 132));
    bubble_select_stall_entry_k <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(133 downto 133));
    bubble_select_stall_entry_l <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(134 downto 134));
    bubble_select_stall_entry_m <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(135 downto 135));
    bubble_select_stall_entry_n <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(136 downto 136));

    -- mem_read_generic_B5_merge_reg_aunroll_x(BLACKBOX,20)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_data_out_5@1
    -- out out_data_out_6@1
    -- out out_data_out_7@1
    -- out out_data_out_8@1
    -- out out_data_out_9@1
    -- out out_data_out_10@1
    -- out out_data_out_11@1
    -- out out_data_out_12@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    themem_read_generic_B5_merge_reg_aunroll_x : mem_read_generic_B5_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_g,
        in_data_in_1 => bubble_select_stall_entry_k,
        in_data_in_2 => bubble_select_stall_entry_h,
        in_data_in_3 => bubble_select_stall_entry_l,
        in_data_in_4 => bubble_select_stall_entry_e,
        in_data_in_5 => bubble_select_stall_entry_d,
        in_data_in_6 => bubble_select_stall_entry_m,
        in_data_in_7 => bubble_select_stall_entry_c,
        in_data_in_8 => bubble_select_stall_entry_b,
        in_data_in_9 => bubble_select_stall_entry_i,
        in_data_in_10 => bubble_select_stall_entry_n,
        in_data_in_11 => bubble_select_stall_entry_f,
        in_data_in_12 => bubble_select_stall_entry_j,
        in_stall_in => SE_out_mem_read_generic_B5_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_4,
        out_data_out_5 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_5,
        out_data_out_6 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_6,
        out_data_out_7 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_7,
        out_data_out_8 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_8,
        out_data_out_9 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_9,
        out_data_out_10 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_10,
        out_data_out_11 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_11,
        out_data_out_12 => mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_12,
        out_stall_out => mem_read_generic_B5_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => mem_read_generic_B5_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_mem_read_generic_B5_merge_reg_aunroll_x(STALLENABLE,115)
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg0 <= (others => '0');
            SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed0 <= (not (bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_reg_stall_out) and SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid) or SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg0;
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed1 <= (not (i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_o_stall) and SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid) or SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg1;
    -- Consuming
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_StallValid <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_backStall and SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid;
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_toReg0 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_StallValid and SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed0;
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_toReg1 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_StallValid and SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed1;
    -- Backward Stall generation
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_or0 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed0;
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireStall <= not (SE_out_mem_read_generic_B5_merge_reg_aunroll_x_consumed1 and SE_out_mem_read_generic_B5_merge_reg_aunroll_x_or0);
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_backStall <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_V0 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid and not (SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg0);
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_V1 <= SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid and not (SE_out_mem_read_generic_B5_merge_reg_aunroll_x_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_mem_read_generic_B5_merge_reg_aunroll_x_wireValid <= mem_read_generic_B5_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_mem_read_generic_B5_merge_reg_aunroll_x(BITJOIN,65)
    bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q <= mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_12 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_11 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_10 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_9 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_8 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_7 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_6 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_5 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_4 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_3 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_2 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_1 & mem_read_generic_B5_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_mem_read_generic_B5_merge_reg_aunroll_x(BITSELECT,66)
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(31 downto 0));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(32 downto 32));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(64 downto 33));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(65 downto 65));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(66 downto 66));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(98 downto 67));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(99 downto 99));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(100 downto 100));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(101 downto 101));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_k <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(133 downto 102));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_l <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(134 downto 134));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_m <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(135 downto 135));
    bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_n <= STD_LOGIC_VECTOR(bubble_join_mem_read_generic_B5_merge_reg_aunroll_x_q(136 downto 136));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x(BLACKBOX,19)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit163_0@7
    -- out out_c0_exit163_1@7
    -- out out_c0_exit163_2@7
    -- out out_c0_exit163_3@7
    -- out out_c0_exit163_4@7
    -- out out_c0_exit163_5@7
    -- out out_c0_exit163_6@7
    -- out out_c0_exit163_7@7
    -- out out_c0_exit163_8@7
    -- out out_c0_exit163_9@7
    -- out out_c0_exit163_10@7
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@7
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x : i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic
    PORT MAP (
        in_c0_eni13_0 => GND_q,
        in_c0_eni13_1 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_j,
        in_c0_eni13_2 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_i,
        in_c0_eni13_3 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_m,
        in_c0_eni13_4 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_k,
        in_c0_eni13_5 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_l,
        in_c0_eni13_6 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_b,
        in_c0_eni13_7 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_c,
        in_c0_eni13_8 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_d,
        in_c0_eni13_9 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_e,
        in_c0_eni13_10 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_f,
        in_c0_eni13_11 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_g,
        in_c0_eni13_12 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_h,
        in_c0_eni13_13 => bubble_select_mem_read_generic_B5_merge_reg_aunroll_x_n,
        in_i_stall => SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_backStall,
        in_i_valid => SE_out_mem_read_generic_B5_merge_reg_aunroll_x_V1,
        in_in_c => in_in_c,
        in_in_offset => in_in_offset,
        in_mem_in => in_mem_in,
        in_pipeline_stall_in => in_pipeline_stall_in,
        out_c0_exit163_0 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0,
        out_c0_exit163_1 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1,
        out_c0_exit163_2 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2,
        out_c0_exit163_3 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3,
        out_c0_exit163_4 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4,
        out_c0_exit163_5 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5,
        out_c0_exit163_6 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6,
        out_c0_exit163_7 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7,
        out_c0_exit163_8 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8,
        out_c0_exit163_9 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9,
        out_c0_exit163_10 => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x(STALLENABLE,113)
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg3 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg4 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg5 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg6 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg7 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg8 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg9 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg10 <= (others => '0');
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg11 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg2 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg3 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg4 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg5 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg6 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg7 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg7;
            -- Succesor 8
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg8 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg8;
            -- Succesor 9
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg9 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg9;
            -- Succesor 10
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg10 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg10;
            -- Succesor 11
            SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg11 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg11;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed0 <= (not (i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_stall) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed1 <= (not (redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg1;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed2 <= (not (redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg2;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed3 <= (not (redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg3;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed4 <= (not (redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg4;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed5 <= (not (redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg5;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed6 <= (not (redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg6;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed7 <= (not (redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg7;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed8 <= (not (redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg8;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed9 <= (not (redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg9;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed10 <= (not (redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg10;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed11 <= (not (redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg11;
    -- Consuming
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_backStall and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed1;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg2 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed2;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg3 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed3;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg4 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed4;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg5 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed5;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg6 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed6;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg7 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed7;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg8 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed8;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg9 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed9;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg10 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed10;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_toReg11 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed11;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or0 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or1 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or0;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or2 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed2 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or1;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or3 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed3 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or2;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or4 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed4 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or3;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or5 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed5 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or4;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or6 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed6 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or5;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or7 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed7 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or6;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or8 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed8 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or7;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or9 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed9 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or8;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or10 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed10 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or9;
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_consumed11 and SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_or10);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_backStall <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V1 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg1);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V2 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg2);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V3 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg3);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V4 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg4);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V5 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg5);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V6 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg6);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V7 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg7);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V8 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg8);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V9 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg9);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V10 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg10);
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V11 <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_fromReg11);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_wireValid <= i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_o_valid;

    -- bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x(BITJOIN,62)
    bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q <= i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1 & i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0;

    -- bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x(BITSELECT,63)
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(1 downto 1));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(2 downto 2));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(3 downto 3));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(67 downto 4));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(68 downto 68));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(69 downto 69));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_i <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(70 downto 70));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_j <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(71 downto 71));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_k <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(72 downto 72));
    bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_l <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_q(73 downto 73));

    -- i_load_unnamed_mem_read_generic11_mem_read_generic(BLACKBOX,28)@7
    -- in in_i_stall@20000000
    -- out out_o_readdata@125
    -- out out_o_stall@20000000
    -- out out_o_valid@125
    -- out out_unnamed_mem_read_generic11_avm_address@20000000
    -- out out_unnamed_mem_read_generic11_avm_burstcount@20000000
    -- out out_unnamed_mem_read_generic11_avm_byteenable@20000000
    -- out out_unnamed_mem_read_generic11_avm_enable@20000000
    -- out out_unnamed_mem_read_generic11_avm_read@20000000
    -- out out_unnamed_mem_read_generic11_avm_write@20000000
    -- out out_unnamed_mem_read_generic11_avm_writedata@20000000
    thei_load_unnamed_mem_read_generic11_mem_read_generic : i_load_unnamed_mem_read_generic11_mem_read_generic245
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_f,
        in_i_predicate => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_e,
        in_i_stall => SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V0,
        in_unnamed_mem_read_generic11_avm_readdata => in_unnamed_mem_read_generic11_avm_readdata,
        in_unnamed_mem_read_generic11_avm_readdatavalid => in_unnamed_mem_read_generic11_avm_readdatavalid,
        in_unnamed_mem_read_generic11_avm_waitrequest => in_unnamed_mem_read_generic11_avm_waitrequest,
        in_unnamed_mem_read_generic11_avm_writeack => in_unnamed_mem_read_generic11_avm_writeack,
        out_o_readdata => i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_readdata,
        out_o_stall => i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_stall,
        out_o_valid => i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_valid,
        out_unnamed_mem_read_generic11_avm_address => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_address,
        out_unnamed_mem_read_generic11_avm_burstcount => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_burstcount,
        out_unnamed_mem_read_generic11_avm_byteenable => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_byteenable,
        out_unnamed_mem_read_generic11_avm_enable => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_enable,
        out_unnamed_mem_read_generic11_avm_read => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_read,
        out_unnamed_mem_read_generic11_avm_write => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_write,
        out_unnamed_mem_read_generic11_avm_writedata => i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_x_zero_sync_buffer_mem_read_generic(BLACKBOX,29)@125
    -- in in_stall_in@20000000
    -- out out_stall_out@20000000
    thei_syncbuf_x_zero_sync_buffer_mem_read_generic : i_syncbuf_x_zero_sync_buffer_mem_read_generic191
    PORT MAP (
        in_buffer_in => in_x_zero,
        in_i_dependence => GND_q,
        in_stall_in => SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_backStall,
        in_valid_in => SE_out_bubble_out_mem_read_generic_B5_merge_reg_aunroll_x_1_V0,
        out_buffer_out => i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_buffer_out,
        out_stall_out => i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_stall_out,
        out_valid_out => i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic(STALLENABLE,122)
    -- Valid signal propagation
    SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_V0 <= SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_backStall <= i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_o_stall or not (SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and0 <= i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_valid_out;
    SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and1 <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_valid and SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and0;
    SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and2 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_V0 and SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and1;
    SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_wireValid <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_V0 and SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_and2;

    -- redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo(STALLFIFO,52)
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V3;
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_in <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_backStall;
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_d;
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_in_bitsignaltemp <= redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_in(0);
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_in_bitsignaltemp <= redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_in(0);
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_out(0) <= redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_out_bitsignaltemp;
    redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_out(0) <= redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_out_bitsignaltemp;
    theredist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_d,
        valid_out => redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_stall_out_bitsignaltemp,
        data_out => redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo(STALLENABLE,130)
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg0 <= (others => '0');
            SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg0 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_toReg0;
            -- Succesor 1
            SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg1 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed0 <= (not (SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_backStall) and SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid) or SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg0;
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed1 <= (not (SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall) and SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid) or SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg1;
    -- Consuming
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_StallValid <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_backStall and SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid;
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_toReg0 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_StallValid and SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed0;
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_toReg1 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_StallValid and SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_or0 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed0;
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireStall <= not (SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_consumed1 and SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_or0);
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_backStall <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_V0 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid and not (SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg0);
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_V1 <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid and not (SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_wireValid <= redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_valid_out;

    -- SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo(STALLENABLE,128)
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg0 <= (others => '0');
            SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg0 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_toReg0;
            -- Succesor 1
            SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg1 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed0 <= (not (SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_backStall) and SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid) or SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg0;
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed1 <= (not (SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall) and SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid) or SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg1;
    -- Consuming
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_StallValid <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_backStall and SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid;
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_toReg0 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_StallValid and SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed0;
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_toReg1 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_StallValid and SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_or0 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed0;
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireStall <= not (SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_consumed1 and SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_or0);
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_backStall <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_V0 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid and not (SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg0);
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_V1 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid and not (SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_wireValid <= redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_valid_out;

    -- bubble_join_i_syncbuf_x_zero_sync_buffer_mem_read_generic(BITJOIN,73)
    bubble_join_i_syncbuf_x_zero_sync_buffer_mem_read_generic_q <= i_syncbuf_x_zero_sync_buffer_mem_read_generic_out_buffer_out;

    -- bubble_select_i_syncbuf_x_zero_sync_buffer_mem_read_generic(BITSELECT,74)
    bubble_select_i_syncbuf_x_zero_sync_buffer_mem_read_generic_b <= STD_LOGIC_VECTOR(bubble_join_i_syncbuf_x_zero_sync_buffer_mem_read_generic_q(7 downto 0));

    -- bubble_join_i_load_unnamed_mem_read_generic11_mem_read_generic(BITJOIN,70)
    bubble_join_i_load_unnamed_mem_read_generic11_mem_read_generic_q <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_o_readdata;

    -- bubble_select_i_load_unnamed_mem_read_generic11_mem_read_generic(BITSELECT,71)
    bubble_select_i_load_unnamed_mem_read_generic11_mem_read_generic_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_mem_read_generic11_mem_read_generic_q(7 downto 0));

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_acl_25_mem_read_generic(MUX,26)@125
    i_acl_25_mem_read_generic_s <= bubble_select_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_b;
    i_acl_25_mem_read_generic_combproc: PROCESS (i_acl_25_mem_read_generic_s, bubble_select_i_load_unnamed_mem_read_generic11_mem_read_generic_b, bubble_select_i_syncbuf_x_zero_sync_buffer_mem_read_generic_b)
    BEGIN
        CASE (i_acl_25_mem_read_generic_s) IS
            WHEN "0" => i_acl_25_mem_read_generic_q <= bubble_select_i_load_unnamed_mem_read_generic11_mem_read_generic_b;
            WHEN "1" => i_acl_25_mem_read_generic_q <= bubble_select_i_syncbuf_x_zero_sync_buffer_mem_read_generic_b;
            WHEN OTHERS => i_acl_25_mem_read_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic(BLACKBOX,27)@125
    -- in in_i_stall@20000000
    -- out out_iowr_bl_ch_in_o_fifodata@20000000
    -- out out_iowr_bl_ch_in_o_fifovalid@20000000
    -- out out_o_stall@20000000
    thei_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic : i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic247
    PORT MAP (
        in_c0_exe2165 => bubble_select_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_b,
        in_i_data => i_acl_25_mem_read_generic_q,
        in_i_stall => SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall,
        in_i_valid => SE_out_i_syncbuf_x_zero_sync_buffer_mem_read_generic_V0,
        in_iowr_bl_ch_in_i_fifoready => in_iowr_bl_ch_in_i_fifoready,
        out_iowr_bl_ch_in_o_fifodata => i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_iowr_bl_ch_in_o_fifodata,
        out_iowr_bl_ch_in_o_fifovalid => i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_iowr_bl_ch_in_o_fifovalid,
        out_o_stall => i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_o_stall,
        out_o_valid => i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo(STALLFIFO,50)
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V1;
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_b;
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_in_bitsignaltemp <= redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_in(0);
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_in_bitsignaltemp <= redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_in(0);
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_out(0) <= redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_out_bitsignaltemp;
    redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_out(0) <= redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_out_bitsignaltemp;
    theredist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_b,
        valid_out => redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_stall_out_bitsignaltemp,
        data_out => redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo(STALLFIFO,53)
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V4;
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_e;
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_in_bitsignaltemp <= redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_in(0);
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_in_bitsignaltemp <= redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_in(0);
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_out(0) <= redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_out_bitsignaltemp;
    redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_out(0) <= redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_out_bitsignaltemp;
    theredist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_e,
        valid_out => redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_stall_out_bitsignaltemp,
        data_out => redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo(STALLFIFO,54)
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V5;
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_f;
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_in_bitsignaltemp <= redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_in(0);
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_in_bitsignaltemp <= redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_in(0);
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_out(0) <= redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_out_bitsignaltemp;
    redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_out(0) <= redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_out_bitsignaltemp;
    theredist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_f,
        valid_out => redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_stall_out_bitsignaltemp,
        data_out => redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo(STALLFIFO,55)
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V6;
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_g;
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_in_bitsignaltemp <= redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_in(0);
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_in_bitsignaltemp <= redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_in(0);
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_out(0) <= redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_out_bitsignaltemp;
    redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_out(0) <= redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_out_bitsignaltemp;
    theredist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_g,
        valid_out => redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_stall_out_bitsignaltemp,
        data_out => redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo(STALLFIFO,56)
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V7;
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_h;
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_in_bitsignaltemp <= redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_in(0);
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_in_bitsignaltemp <= redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_in(0);
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_out(0) <= redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_out_bitsignaltemp;
    redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_out(0) <= redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_out_bitsignaltemp;
    theredist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_h,
        valid_out => redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_stall_out_bitsignaltemp,
        data_out => redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo(STALLFIFO,57)
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V8;
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_i;
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_in_bitsignaltemp <= redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_in(0);
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_in_bitsignaltemp <= redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_in(0);
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_out(0) <= redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_out_bitsignaltemp;
    redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_out(0) <= redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_out_bitsignaltemp;
    theredist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_i,
        valid_out => redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_stall_out_bitsignaltemp,
        data_out => redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo(STALLFIFO,58)
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V9;
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_j;
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_in_bitsignaltemp <= redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_in(0);
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_in_bitsignaltemp <= redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_in(0);
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_out(0) <= redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_out_bitsignaltemp;
    redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_out(0) <= redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_out_bitsignaltemp;
    theredist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_j,
        valid_out => redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_stall_out_bitsignaltemp,
        data_out => redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo(STALLFIFO,59)
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V10;
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_k;
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_in_bitsignaltemp <= redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_in(0);
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_in_bitsignaltemp <= redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_in(0);
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_out(0) <= redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_out_bitsignaltemp;
    redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_out(0) <= redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_out_bitsignaltemp;
    theredist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_k,
        valid_out => redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_stall_out_bitsignaltemp,
        data_out => redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo(STALLFIFO,60)
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_V11;
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_in <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall;
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_l;
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_in_bitsignaltemp <= redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_in(0);
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_in_bitsignaltemp <= redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_in(0);
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_out(0) <= redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_out_bitsignaltemp;
    redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_out(0) <= redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_out_bitsignaltemp;
    theredist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_l,
        valid_out => redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_stall_out_bitsignaltemp,
        data_out => redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo(STALLENABLE,146)
    -- Valid signal propagation
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_V0 <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_backStall <= in_stall_in or not (SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and0 <= redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_valid_out;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and1 <= redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and0;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and2 <= redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and1;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and3 <= redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and2;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and4 <= redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and3;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and5 <= redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and4;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and6 <= redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and5;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and7 <= redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and6;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and8 <= redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_valid_out and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and7;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and9 <= i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_o_valid and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and8;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and10 <= SE_out_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_V1 and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and9;
    SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_wireValid <= SE_out_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_V1 and SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_and10;

    -- bubble_join_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo(BITJOIN,110)
    bubble_join_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_q <= redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_data_out;

    -- bubble_select_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo(BITSELECT,111)
    bubble_select_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_q(0 downto 0));

    -- bubble_join_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo(BITJOIN,98)
    bubble_join_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_q <= redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_data_out;

    -- bubble_select_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo(BITSELECT,99)
    bubble_select_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_q(0 downto 0));

    -- bubble_join_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo(BITJOIN,92)
    bubble_join_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_q <= redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_data_out;

    -- bubble_select_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo(BITSELECT,93)
    bubble_select_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_q(63 downto 0));

    -- bubble_join_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo(BITJOIN,89)
    bubble_join_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_q <= redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_data_out;

    -- bubble_select_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo(BITSELECT,90)
    bubble_select_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_q(0 downto 0));

    -- bubble_join_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo(BITJOIN,86)
    bubble_join_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_q <= redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_data_out;

    -- bubble_select_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo(BITSELECT,87)
    bubble_select_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_q(0 downto 0));

    -- bubble_join_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo(BITJOIN,83)
    bubble_join_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_q <= redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_data_out;

    -- bubble_select_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo(BITSELECT,84)
    bubble_select_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_q(0 downto 0));

    -- bubble_join_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo(BITJOIN,80)
    bubble_join_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_q <= redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_data_out;

    -- bubble_select_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo(BITSELECT,81)
    bubble_select_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_q(0 downto 0));

    -- bubble_join_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo(BITJOIN,107)
    bubble_join_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_q <= redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_data_out;

    -- bubble_select_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo(BITSELECT,108)
    bubble_select_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_q(0 downto 0));

    -- bubble_join_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo(BITJOIN,104)
    bubble_join_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_q <= redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_data_out;

    -- bubble_select_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo(BITSELECT,105)
    bubble_select_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_q(0 downto 0));

    -- bubble_join_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo(BITJOIN,101)
    bubble_join_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_q <= redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_data_out;

    -- bubble_select_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo(BITSELECT,102)
    bubble_select_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_q(0 downto 0));

    -- bubble_join_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo(BITJOIN,95)
    bubble_join_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_q <= redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_data_out;

    -- bubble_select_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo(BITSELECT,96)
    bubble_select_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_q(0 downto 0));

    -- dupName_0_sync_out_aunroll_x(GPOUT,2)@125
    out_c0_exe5168 <= bubble_select_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_b;
    out_c0_exe7170 <= bubble_select_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_b;
    out_c0_exe8171 <= bubble_select_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_b;
    out_c0_exe9172 <= bubble_select_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_b;
    out_c0_exit163_0 <= bubble_select_redist0_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_0_118_fifo_b;
    out_c0_exit163_1 <= bubble_select_redist1_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_1_118_fifo_b;
    out_c0_exit163_2 <= bubble_select_redist2_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_2_118_fifo_b;
    out_c0_exit163_3 <= bubble_select_redist3_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_3_118_fifo_b;
    out_c0_exit163_4 <= bubble_select_redist4_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_4_118_fifo_b;
    out_c0_exit163_5 <= bubble_select_redist5_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_5_118_fifo_b;
    out_c0_exit163_6 <= bubble_select_redist6_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_6_118_fifo_b;
    out_c0_exit163_7 <= bubble_select_redist7_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_7_118_fifo_b;
    out_c0_exit163_8 <= bubble_select_redist8_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_8_118_fifo_b;
    out_c0_exit163_9 <= bubble_select_redist9_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_9_118_fifo_b;
    out_c0_exit163_10 <= bubble_select_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_b;
    out_valid_out <= SE_out_redist10_i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_c0_exit163_10_118_fifo_V0;

    -- dupName_0_ext_sig_sync_out_x(GPOUT,4)
    out_unnamed_mem_read_generic11_avm_address <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_address;
    out_unnamed_mem_read_generic11_avm_enable <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_enable;
    out_unnamed_mem_read_generic11_avm_read <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_read;
    out_unnamed_mem_read_generic11_avm_write <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_write;
    out_unnamed_mem_read_generic11_avm_writedata <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_writedata;
    out_unnamed_mem_read_generic11_avm_byteenable <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_byteenable;
    out_unnamed_mem_read_generic11_avm_burstcount <= i_load_unnamed_mem_read_generic11_mem_read_generic_out_unnamed_mem_read_generic11_avm_burstcount;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,9)
    out_iowr_bl_ch_in_o_fifodata <= i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_iowr_bl_ch_in_o_fifodata;
    out_iowr_bl_ch_in_o_fifovalid <= i_iowr_bl_ch_in_unnamed_mem_read_generic12_mem_read_generic_out_iowr_bl_ch_in_o_fifovalid;

    -- ext_sig_sync_out(GPOUT,25)
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out <= i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out <= i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,33)
    out_pipeline_valid_out <= i_sfc_c0_for_body40_mem_read_generic_c0_enter144_mem_read_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,38)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
