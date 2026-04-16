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

-- VHDL created from bb_conv_generic_B4_stall_region
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

entity bb_conv_generic_B4_stall_region is
    port (
        out_c0_exe4321 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit317_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_3 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit317_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv_generic37_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv_generic37_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic37_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_add25273 : in std_logic_vector(31 downto 0);  -- ufix32
        in_brmerge272 : in std_logic_vector(0 downto 0);  -- ufix1
        in_exitcond169274 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked : in std_logic_vector(0 downto 0);  -- ufix1
        in_oc18_033_pop40271 : in std_logic_vector(31 downto 0);  -- ufix32
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic38_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic38_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        in_weights : in std_logic_vector(63 downto 0);  -- ufix64
        in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B4_stall_region;

architecture normal of bb_conv_generic_B4_stall_region is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B4_merge_reg is
        port (
            in_data_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_data_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_data_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic is
        port (
            in_c0_eni5_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni5_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni5_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni5_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_eni5_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_eni5_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_load_unnamed_conv_generic37_conv_generic311 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_readdata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_store_unnamed_conv_generic38_conv_generic313 is
        port (
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_address : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_writedata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
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








    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_data_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_data_out_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_data_out_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_data_out_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_data_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_reg_aunroll_x_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_o_readdata : STD_LOGIC_VECTOR (7 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_data_in : STD_LOGIC_VECTOR (63 downto 0);
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_q : STD_LOGIC_VECTOR (63 downto 0);
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_in_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_in_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_data_in : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_out_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_out_bitsignaltemp : std_logic;
    signal redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_conv_generic_B4_merge_reg_aunroll_x_q : STD_LOGIC_VECTOR (66 downto 0);
    signal bubble_select_conv_generic_B4_merge_reg_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B4_merge_reg_aunroll_x_c : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_generic_B4_merge_reg_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_conv_generic_B4_merge_reg_aunroll_x_e : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_conv_generic_B4_merge_reg_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q : STD_LOGIC_VECTOR (132 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_c : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_e : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_f : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_g : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_h : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_i_load_unnamed_conv_generic37_conv_generic_q : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_select_i_load_unnamed_conv_generic37_conv_generic_b : STD_LOGIC_VECTOR (7 downto 0);
    signal bubble_join_stall_entry_q : STD_LOGIC_VECTOR (66 downto 0);
    signal bubble_select_stall_entry_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_select_stall_entry_c : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_d : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_e : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_stall_entry_f : STD_LOGIC_VECTOR (31 downto 0);
    signal bubble_join_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_select_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_b : STD_LOGIC_VECTOR (63 downto 0);
    signal bubble_join_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_join_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bubble_select_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_b : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B4_merge_reg_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B4_merge_reg_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_conv_generic_B4_merge_reg_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V7 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv_generic37_conv_generic_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv_generic37_conv_generic_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv_generic37_conv_generic_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv_generic37_conv_generic_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_i_load_unnamed_conv_generic37_conv_generic_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_stall_entry_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_StallValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_toReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_toReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_or0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_V1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_v_s_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_s_tv_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backEN : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_wireValid : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and1 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and2 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and3 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and4 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and5 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and6 : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_V0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_data0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_D0 : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_i_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_data0 : STD_LOGIC_VECTOR (63 downto 0);
    signal SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backStall : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_V : STD_LOGIC_VECTOR (0 downto 0);
    signal SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_D0 : STD_LOGIC_VECTOR (63 downto 0);

begin


    -- SE_stall_entry(STALLENABLE,94)
    -- Valid signal propagation
    SE_stall_entry_V0 <= SE_stall_entry_wireValid;
    -- Backward Stall generation
    SE_stall_entry_backStall <= conv_generic_B4_merge_reg_aunroll_x_out_stall_out or not (SE_stall_entry_wireValid);
    -- Computing multiple Valid(s)
    SE_stall_entry_wireValid <= in_valid_in;

    -- bubble_join_stall_entry(BITJOIN,62)
    bubble_join_stall_entry_q <= in_oc18_033_pop40271 & in_forked & in_exitcond169274 & in_brmerge272 & in_add25273;

    -- bubble_select_stall_entry(BITSELECT,63)
    bubble_select_stall_entry_b <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(31 downto 0));
    bubble_select_stall_entry_c <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(32 downto 32));
    bubble_select_stall_entry_d <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(33 downto 33));
    bubble_select_stall_entry_e <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(34 downto 34));
    bubble_select_stall_entry_f <= STD_LOGIC_VECTOR(bubble_join_stall_entry_q(66 downto 35));

    -- conv_generic_B4_merge_reg_aunroll_x(BLACKBOX,3)@0
    -- in in_stall_in@20000000
    -- out out_data_out_0@1
    -- out out_data_out_1@1
    -- out out_data_out_2@1
    -- out out_data_out_3@1
    -- out out_data_out_4@1
    -- out out_stall_out@20000000
    -- out out_valid_out@1
    theconv_generic_B4_merge_reg_aunroll_x : conv_generic_B4_merge_reg
    PORT MAP (
        in_data_in_0 => bubble_select_stall_entry_e,
        in_data_in_1 => bubble_select_stall_entry_f,
        in_data_in_2 => bubble_select_stall_entry_c,
        in_data_in_3 => bubble_select_stall_entry_b,
        in_data_in_4 => bubble_select_stall_entry_d,
        in_stall_in => SE_out_conv_generic_B4_merge_reg_aunroll_x_backStall,
        in_valid_in => SE_stall_entry_V0,
        out_data_out_0 => conv_generic_B4_merge_reg_aunroll_x_out_data_out_0,
        out_data_out_1 => conv_generic_B4_merge_reg_aunroll_x_out_data_out_1,
        out_data_out_2 => conv_generic_B4_merge_reg_aunroll_x_out_data_out_2,
        out_data_out_3 => conv_generic_B4_merge_reg_aunroll_x_out_data_out_3,
        out_data_out_4 => conv_generic_B4_merge_reg_aunroll_x_out_data_out_4,
        out_stall_out => conv_generic_B4_merge_reg_aunroll_x_out_stall_out,
        out_valid_out => conv_generic_B4_merge_reg_aunroll_x_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_conv_generic_B4_merge_reg_aunroll_x(STALLENABLE,87)
    -- Valid signal propagation
    SE_out_conv_generic_B4_merge_reg_aunroll_x_V0 <= SE_out_conv_generic_B4_merge_reg_aunroll_x_wireValid;
    -- Backward Stall generation
    SE_out_conv_generic_B4_merge_reg_aunroll_x_backStall <= i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_o_stall or not (SE_out_conv_generic_B4_merge_reg_aunroll_x_wireValid);
    -- Computing multiple Valid(s)
    SE_out_conv_generic_B4_merge_reg_aunroll_x_wireValid <= conv_generic_B4_merge_reg_aunroll_x_out_valid_out;

    -- bubble_join_conv_generic_B4_merge_reg_aunroll_x(BITJOIN,52)
    bubble_join_conv_generic_B4_merge_reg_aunroll_x_q <= conv_generic_B4_merge_reg_aunroll_x_out_data_out_4 & conv_generic_B4_merge_reg_aunroll_x_out_data_out_3 & conv_generic_B4_merge_reg_aunroll_x_out_data_out_2 & conv_generic_B4_merge_reg_aunroll_x_out_data_out_1 & conv_generic_B4_merge_reg_aunroll_x_out_data_out_0;

    -- bubble_select_conv_generic_B4_merge_reg_aunroll_x(BITSELECT,53)
    bubble_select_conv_generic_B4_merge_reg_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B4_merge_reg_aunroll_x_q(0 downto 0));
    bubble_select_conv_generic_B4_merge_reg_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B4_merge_reg_aunroll_x_q(32 downto 1));
    bubble_select_conv_generic_B4_merge_reg_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B4_merge_reg_aunroll_x_q(33 downto 33));
    bubble_select_conv_generic_B4_merge_reg_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B4_merge_reg_aunroll_x_q(65 downto 34));
    bubble_select_conv_generic_B4_merge_reg_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_conv_generic_B4_merge_reg_aunroll_x_q(66 downto 66));

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x(BLACKBOX,16)@1
    -- in in_i_stall@20000000
    -- out out_c0_exit317_0@8
    -- out out_c0_exit317_1@8
    -- out out_c0_exit317_2@8
    -- out out_c0_exit317_3@8
    -- out out_c0_exit317_4@8
    -- out out_c0_exit317_5@8
    -- out out_c0_exit317_6@8
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out@20000000
    -- out out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@8
    -- out out_pipeline_valid_out@20000000
    thei_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x : i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic
    PORT MAP (
        in_c0_eni5_0 => GND_q,
        in_c0_eni5_1 => bubble_select_conv_generic_B4_merge_reg_aunroll_x_c,
        in_c0_eni5_2 => bubble_select_conv_generic_B4_merge_reg_aunroll_x_b,
        in_c0_eni5_3 => bubble_select_conv_generic_B4_merge_reg_aunroll_x_e,
        in_c0_eni5_4 => bubble_select_conv_generic_B4_merge_reg_aunroll_x_d,
        in_c0_eni5_5 => bubble_select_conv_generic_B4_merge_reg_aunroll_x_f,
        in_i_stall => SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_backStall,
        in_i_valid => SE_out_conv_generic_B4_merge_reg_aunroll_x_V0,
        in_intel_reserved_ffwd_18_0 => in_intel_reserved_ffwd_18_0,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_weights => in_weights,
        out_c0_exit317_0 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0,
        out_c0_exit317_1 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1,
        out_c0_exit317_2 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2,
        out_c0_exit317_3 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3,
        out_c0_exit317_4 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4,
        out_c0_exit317_5 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5,
        out_c0_exit317_6 => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6,
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out,
        out_o_stall => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_o_stall,
        out_o_valid => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_o_valid,
        out_pipeline_valid_out => i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x(BITJOIN,55)
    bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q <= i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6 & i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5 & i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4 & i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3 & i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2 & i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1 & i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0;

    -- bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x(BITSELECT,56)
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_b <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(0 downto 0));
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_c <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(64 downto 1));
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_d <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(65 downto 65));
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_e <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(129 downto 66));
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_f <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(130 downto 130));
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_g <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(131 downto 131));
    bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_h <= STD_LOGIC_VECTOR(bubble_join_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_q(132 downto 132));

    -- bubble_join_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo(BITJOIN,72)
    bubble_join_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_q <= redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_data_out;

    -- bubble_select_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo(BITSELECT,73)
    bubble_select_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_q(0 downto 0));

    -- SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0(STALLREG,160)
    SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid <= (others => '0');
            SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid <= SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backStall and (SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid or SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_i_valid);

            IF (SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_i_valid <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backStall <= SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid or not (SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_i_valid);

    -- Valid
    SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_V <= SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid WHEN SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid = "1" ELSE SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_i_valid;

    SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_D0 <= SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_data0 WHEN SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_r_valid = "1" ELSE bubble_select_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_b;

    -- SE_out_i_load_unnamed_conv_generic37_conv_generic(STALLENABLE,91)
    -- Valid signal propagation
    SE_out_i_load_unnamed_conv_generic37_conv_generic_V0 <= SE_out_i_load_unnamed_conv_generic37_conv_generic_wireValid;
    -- Backward Stall generation
    SE_out_i_load_unnamed_conv_generic37_conv_generic_backStall <= i_store_unnamed_conv_generic38_conv_generic_out_o_stall or not (SE_out_i_load_unnamed_conv_generic37_conv_generic_wireValid);
    -- Computing multiple Valid(s)
    SE_out_i_load_unnamed_conv_generic37_conv_generic_and0 <= i_load_unnamed_conv_generic37_conv_generic_out_o_valid;
    SE_out_i_load_unnamed_conv_generic37_conv_generic_and1 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_V0 and SE_out_i_load_unnamed_conv_generic37_conv_generic_and0;
    SE_out_i_load_unnamed_conv_generic37_conv_generic_wireValid <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_V0 and SE_out_i_load_unnamed_conv_generic37_conv_generic_and1;

    -- SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo(STALLENABLE,101)
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg0 <= (others => '0');
            SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg0 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_toReg0;
            -- Succesor 1
            SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg1 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed0 <= (not (SE_out_i_load_unnamed_conv_generic37_conv_generic_backStall) and SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid) or SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg0;
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed1 <= (not (SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backStall) and SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid) or SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg1;
    -- Consuming
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_StallValid <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_backStall and SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid;
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_toReg0 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_StallValid and SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed0;
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_toReg1 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_StallValid and SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_or0 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed0;
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireStall <= not (SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_consumed1 and SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_or0);
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_backStall <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_V0 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid and not (SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg0);
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_V1 <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid and not (SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_wireValid <= redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_out;

    -- redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo(STALLFIFO,44)
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V3;
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_in <= SE_out_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_backStall;
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_d;
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_in_bitsignaltemp <= redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_in(0);
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_in_bitsignaltemp <= redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_in(0);
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_out(0) <= redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_out_bitsignaltemp;
    redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_out(0) <= redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_out_bitsignaltemp;
    theredist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_d,
        valid_out => redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_out_bitsignaltemp,
        data_out => redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- i_load_unnamed_conv_generic37_conv_generic(BLACKBOX,22)@8
    -- in in_i_stall@20000000
    -- out out_o_readdata@126
    -- out out_o_stall@20000000
    -- out out_o_valid@126
    -- out out_unnamed_conv_generic37_avm_address@20000000
    -- out out_unnamed_conv_generic37_avm_burstcount@20000000
    -- out out_unnamed_conv_generic37_avm_byteenable@20000000
    -- out out_unnamed_conv_generic37_avm_enable@20000000
    -- out out_unnamed_conv_generic37_avm_read@20000000
    -- out out_unnamed_conv_generic37_avm_write@20000000
    -- out out_unnamed_conv_generic37_avm_writedata@20000000
    thei_load_unnamed_conv_generic37_conv_generic : i_load_unnamed_conv_generic37_conv_generic311
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_c,
        in_i_predicate => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_d,
        in_i_stall => SE_out_i_load_unnamed_conv_generic37_conv_generic_backStall,
        in_i_valid => SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V0,
        in_unnamed_conv_generic37_avm_readdata => in_unnamed_conv_generic37_avm_readdata,
        in_unnamed_conv_generic37_avm_readdatavalid => in_unnamed_conv_generic37_avm_readdatavalid,
        in_unnamed_conv_generic37_avm_waitrequest => in_unnamed_conv_generic37_avm_waitrequest,
        in_unnamed_conv_generic37_avm_writeack => in_unnamed_conv_generic37_avm_writeack,
        out_o_readdata => i_load_unnamed_conv_generic37_conv_generic_out_o_readdata,
        out_o_stall => i_load_unnamed_conv_generic37_conv_generic_out_o_stall,
        out_o_valid => i_load_unnamed_conv_generic37_conv_generic_out_o_valid,
        out_unnamed_conv_generic37_avm_address => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_address,
        out_unnamed_conv_generic37_avm_burstcount => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_burstcount,
        out_unnamed_conv_generic37_avm_byteenable => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_byteenable,
        out_unnamed_conv_generic37_avm_enable => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_enable,
        out_unnamed_conv_generic37_avm_read => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_read,
        out_unnamed_conv_generic37_avm_write => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_write,
        out_unnamed_conv_generic37_avm_writedata => i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x(STALLENABLE,89)
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg0 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg1 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg2 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg3 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg4 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg5 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg6 <= (others => '0');
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg7 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg0 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg0;
            -- Succesor 1
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg1 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg1;
            -- Succesor 2
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg2 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg2;
            -- Succesor 3
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg3 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg3;
            -- Succesor 4
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg4 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg4;
            -- Succesor 5
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg5 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg5;
            -- Succesor 6
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg6 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg6;
            -- Succesor 7
            SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg7 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg7;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed0 <= (not (i_load_unnamed_conv_generic37_conv_generic_out_o_stall) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg0;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed1 <= (not (redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg1;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed2 <= (not (redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg2;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed3 <= (not (redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg3;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed4 <= (not (redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg4;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed5 <= (not (redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg5;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed6 <= (not (redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg6;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed7 <= (not (redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_out) and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid) or SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg7;
    -- Consuming
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_backStall and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg0 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg1 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed1;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg2 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed2;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg3 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed3;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg4 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed4;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg5 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed5;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg6 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed6;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_toReg7 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_StallValid and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed7;
    -- Backward Stall generation
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or0 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed0;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or1 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed1 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or0;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or2 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed2 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or1;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or3 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed3 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or2;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or4 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed4 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or3;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or5 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed5 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or4;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or6 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed6 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or5;
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireStall <= not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_consumed7 and SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_or6);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_backStall <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireStall;
    -- Valid signal propagation
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V0 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg0);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V1 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg1);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V2 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg2);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V3 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg3);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V4 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg4);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V5 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg5);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V6 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg6);
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V7 <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid and not (SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_fromReg7);
    -- Computing multiple Valid(s)
    SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_wireValid <= i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_o_valid;

    -- redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo(STALLFIFO,46)
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V4;
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_in <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_backStall;
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_e;
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_in_bitsignaltemp <= redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_in(0);
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_in_bitsignaltemp <= redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_in(0);
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_out(0) <= redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_out_bitsignaltemp;
    redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_out(0) <= redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_out_bitsignaltemp;
    theredist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 119,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_in_bitsignaltemp,
        stall_in => redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_e,
        valid_out => redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_out_bitsignaltemp,
        stall_out => redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_stall_out_bitsignaltemp,
        data_out => redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- bubble_join_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo(BITJOIN,75)
    bubble_join_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_q <= redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_data_out;

    -- bubble_select_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo(BITSELECT,76)
    bubble_select_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_q(63 downto 0));

    -- SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo(STALLENABLE,104)
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg0 <= (others => '0');
            SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg1 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Succesor 0
            SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg0 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_toReg0;
            -- Succesor 1
            SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg1 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_toReg1;
        END IF;
    END PROCESS;
    -- Input Stall processing
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed0 <= (not (SE_out_i_load_unnamed_conv_generic37_conv_generic_backStall) and SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid) or SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg0;
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed1 <= (not (SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backStall) and SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid) or SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg1;
    -- Consuming
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_StallValid <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_backStall and SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid;
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_toReg0 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_StallValid and SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed0;
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_toReg1 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_StallValid and SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed1;
    -- Backward Stall generation
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_or0 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed0;
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireStall <= not (SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_consumed1 and SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_or0);
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_backStall <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireStall;
    -- Valid signal propagation
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_V0 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid and not (SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg0);
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_V1 <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid and not (SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_fromReg1);
    -- Computing multiple Valid(s)
    SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_wireValid <= redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_valid_out;

    -- SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0(STALLREG,161)
    SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid <= (others => '0');
            SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_data0 <= (others => '-');
        ELSIF (clock'EVENT AND clock = '1') THEN
            -- Valid
            SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid <= SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backStall and (SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid or SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_i_valid);

            IF (SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid = "0") THEN
                -- Data(s)
                SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_data0 <= STD_LOGIC_VECTOR(bubble_select_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_b);
            END IF;

        END IF;
    END PROCESS;
    -- Computing multiple Valid(s)
    SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_i_valid <= SE_out_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_V1;
    -- Stall signal propagation
    SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backStall <= SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid or not (SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_i_valid);

    -- Valid
    SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_V <= SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid WHEN SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid = "1" ELSE SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_i_valid;

    SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_D0 <= SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_data0 WHEN SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_r_valid = "1" ELSE bubble_select_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_b;

    -- SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0(STALLENABLE,105)
    -- Valid signal propagation
    SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_V0 <= SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0;
    -- Stall signal propagation
    SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_s_tv_0 <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall and SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0;
    -- Backward Enable generation
    SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backEN <= not (SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_v_s_0 <= SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backEN and SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_V;
    -- Backward Stall generation
    SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backStall <= not (SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backEN);
    SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backEN = "0") THEN
                SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0 <= SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0 and SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_s_tv_0;
            ELSE
                SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_R_v_0 <= SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0(STALLENABLE,102)
    -- Valid signal propagation
    SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_V0 <= SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0;
    -- Stall signal propagation
    SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_s_tv_0 <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall and SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0;
    -- Backward Enable generation
    SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backEN <= not (SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_s_tv_0);
    -- Determine whether to write valid data into the first register stage
    SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_v_s_0 <= SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backEN and SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_V;
    -- Backward Stall generation
    SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backStall <= not (SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backEN);
    SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0 <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backEN = "0") THEN
                SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0 <= SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0 and SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_s_tv_0;
            ELSE
                SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_R_v_0 <= SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_v_s_0;
            END IF;

        END IF;
    END PROCESS;

    -- bubble_join_i_load_unnamed_conv_generic37_conv_generic(BITJOIN,58)
    bubble_join_i_load_unnamed_conv_generic37_conv_generic_q <= i_load_unnamed_conv_generic37_conv_generic_out_o_readdata;

    -- bubble_select_i_load_unnamed_conv_generic37_conv_generic(BITSELECT,59)
    bubble_select_i_load_unnamed_conv_generic37_conv_generic_b <= STD_LOGIC_VECTOR(bubble_join_i_load_unnamed_conv_generic37_conv_generic_q(7 downto 0));

    -- i_store_unnamed_conv_generic38_conv_generic(BLACKBOX,23)@126
    -- in in_i_stall@20000000
    -- out out_o_stall@20000000
    -- out out_o_valid@127
    -- out out_unnamed_conv_generic38_avm_address@20000000
    -- out out_unnamed_conv_generic38_avm_burstcount@20000000
    -- out out_unnamed_conv_generic38_avm_byteenable@20000000
    -- out out_unnamed_conv_generic38_avm_enable@20000000
    -- out out_unnamed_conv_generic38_avm_read@20000000
    -- out out_unnamed_conv_generic38_avm_write@20000000
    -- out out_unnamed_conv_generic38_avm_writedata@20000000
    thei_store_unnamed_conv_generic38_conv_generic : i_store_unnamed_conv_generic38_conv_generic313
    PORT MAP (
        in_flush => in_flush,
        in_i_address => bubble_select_redist4_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_118_fifo_b,
        in_i_predicate => bubble_select_redist2_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_118_fifo_b,
        in_i_stall => SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall,
        in_i_valid => SE_out_i_load_unnamed_conv_generic37_conv_generic_V0,
        in_i_writedata => bubble_select_i_load_unnamed_conv_generic37_conv_generic_b,
        in_unnamed_conv_generic38_avm_readdata => in_unnamed_conv_generic38_avm_readdata,
        in_unnamed_conv_generic38_avm_readdatavalid => in_unnamed_conv_generic38_avm_readdatavalid,
        in_unnamed_conv_generic38_avm_waitrequest => in_unnamed_conv_generic38_avm_waitrequest,
        in_unnamed_conv_generic38_avm_writeack => in_unnamed_conv_generic38_avm_writeack,
        out_o_stall => i_store_unnamed_conv_generic38_conv_generic_out_o_stall,
        out_o_valid => i_store_unnamed_conv_generic38_conv_generic_out_o_valid,
        out_unnamed_conv_generic38_avm_address => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_address,
        out_unnamed_conv_generic38_avm_burstcount => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_burstcount,
        out_unnamed_conv_generic38_avm_byteenable => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_byteenable,
        out_unnamed_conv_generic38_avm_enable => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_enable,
        out_unnamed_conv_generic38_avm_read => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_read,
        out_unnamed_conv_generic38_avm_write => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_write,
        out_unnamed_conv_generic38_avm_writedata => i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_writedata,
        clock => clock,
        resetn => resetn
    );

    -- redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo(STALLFIFO,42)
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V1;
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_in <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall;
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_b;
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_in_bitsignaltemp <= redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_in(0);
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_in_bitsignaltemp <= redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_in(0);
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_out(0) <= redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_out_bitsignaltemp;
    redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_out(0) <= redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_out_bitsignaltemp;
    theredist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 120,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_in_bitsignaltemp,
        stall_in => redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_b,
        valid_out => redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_out_bitsignaltemp,
        stall_out => redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_stall_out_bitsignaltemp,
        data_out => redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo(STALLFIFO,43)
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V2;
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_in <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall;
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_c;
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_in_bitsignaltemp <= redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_in(0);
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_in_bitsignaltemp <= redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_in(0);
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_out(0) <= redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_out_bitsignaltemp;
    redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_out(0) <= redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_out_bitsignaltemp;
    theredist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 120,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 64,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_in_bitsignaltemp,
        stall_in => redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_c,
        valid_out => redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_out_bitsignaltemp,
        stall_out => redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_stall_out_bitsignaltemp,
        data_out => redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo(STALLFIFO,48)
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V5;
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_in <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall;
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_f;
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_in_bitsignaltemp <= redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_in(0);
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_in_bitsignaltemp <= redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_in(0);
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_out(0) <= redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_out_bitsignaltemp;
    redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_out(0) <= redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_out_bitsignaltemp;
    theredist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 120,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_in_bitsignaltemp,
        stall_in => redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_f,
        valid_out => redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_out_bitsignaltemp,
        stall_out => redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_stall_out_bitsignaltemp,
        data_out => redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo(STALLFIFO,49)
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V6;
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_in <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall;
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_g;
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_in_bitsignaltemp <= redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_in(0);
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_in_bitsignaltemp <= redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_in(0);
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_out(0) <= redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_out_bitsignaltemp;
    redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_out(0) <= redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_out_bitsignaltemp;
    theredist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 120,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_in_bitsignaltemp,
        stall_in => redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_g,
        valid_out => redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_out_bitsignaltemp,
        stall_out => redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_stall_out_bitsignaltemp,
        data_out => redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo(STALLFIFO,50)
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_in <= SE_out_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_V7;
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_in <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall;
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_data_in <= bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_h;
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_in_bitsignaltemp <= redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_in(0);
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_in_bitsignaltemp <= redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_in(0);
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_out(0) <= redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_out_bitsignaltemp;
    redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_out(0) <= redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_out_bitsignaltemp;
    theredist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo : acl_data_fifo
    GENERIC MAP (
        DEPTH => 120,
        STRICT_DEPTH => 0,
        ALLOW_FULL_WRITE => 0,
        DATA_WIDTH => 1,
        IMPL => "ram"
    )
    PORT MAP (
        valid_in => redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_in_bitsignaltemp,
        stall_in => redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_in_bitsignaltemp,
        data_in => bubble_select_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_h,
        valid_out => redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_out_bitsignaltemp,
        stall_out => redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_stall_out_bitsignaltemp,
        data_out => redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_data_out,
        clock => clock,
        resetn => resetn
    );

    -- SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo(STALLENABLE,111)
    -- Valid signal propagation
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_V0 <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_wireValid;
    -- Backward Stall generation
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_backStall <= in_stall_in or not (SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_wireValid);
    -- Computing multiple Valid(s)
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and0 <= redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_valid_out;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and1 <= redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_valid_out and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and0;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and2 <= redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_valid_out and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and1;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and3 <= redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_valid_out and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and2;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and4 <= redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_valid_out and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and3;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and5 <= i_store_unnamed_conv_generic38_conv_generic_out_o_valid and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and4;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and6 <= SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_V0 and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and5;
    SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_wireValid <= SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_V0 and SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_and6;

    -- bubble_join_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo(BITJOIN,84)
    bubble_join_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_q <= redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_data_out;

    -- bubble_select_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo(BITSELECT,85)
    bubble_select_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_q(0 downto 0));

    -- bubble_join_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo(BITJOIN,81)
    bubble_join_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_q <= redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_data_out;

    -- bubble_select_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo(BITSELECT,82)
    bubble_select_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_q(0 downto 0));

    -- redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0(REG,47)
    redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_backEN = "1") THEN
                redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_q <= STD_LOGIC_VECTOR(SR_SE_redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0(REG,45)
    redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_backEN = "1") THEN
                redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_q <= STD_LOGIC_VECTOR(SR_SE_redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_D0);
            END IF;
        END IF;
    END PROCESS;

    -- bubble_join_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo(BITJOIN,69)
    bubble_join_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_q <= redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_data_out;

    -- bubble_select_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo(BITSELECT,70)
    bubble_select_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_q(63 downto 0));

    -- bubble_join_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo(BITJOIN,66)
    bubble_join_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_q <= redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_data_out;

    -- bubble_select_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo(BITSELECT,67)
    bubble_select_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_q(0 downto 0));

    -- bubble_join_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo(BITJOIN,78)
    bubble_join_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_q <= redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_data_out;

    -- bubble_select_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo(BITSELECT,79)
    bubble_select_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_b <= STD_LOGIC_VECTOR(bubble_join_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_q(0 downto 0));

    -- dupName_0_sync_out_aunroll_x(GPOUT,2)@127
    out_c0_exe4321 <= bubble_select_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_b;
    out_c0_exit317_0 <= bubble_select_redist0_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_0_119_fifo_b;
    out_c0_exit317_1 <= bubble_select_redist1_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_1_119_fifo_b;
    out_c0_exit317_2 <= redist3_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_2_119_0_q;
    out_c0_exit317_3 <= redist5_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_3_119_0_q;
    out_c0_exit317_4 <= bubble_select_redist6_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_4_119_fifo_b;
    out_c0_exit317_5 <= bubble_select_redist7_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_5_119_fifo_b;
    out_c0_exit317_6 <= bubble_select_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_b;
    out_valid_out <= SE_out_redist8_i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_c0_exit317_6_119_fifo_V0;

    -- dupName_0_ext_sig_sync_out_x(GPOUT,5)
    out_unnamed_conv_generic37_avm_address <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_address;
    out_unnamed_conv_generic37_avm_enable <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_enable;
    out_unnamed_conv_generic37_avm_read <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_read;
    out_unnamed_conv_generic37_avm_write <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_write;
    out_unnamed_conv_generic37_avm_writedata <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_writedata;
    out_unnamed_conv_generic37_avm_byteenable <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_byteenable;
    out_unnamed_conv_generic37_avm_burstcount <= i_load_unnamed_conv_generic37_conv_generic_out_unnamed_conv_generic37_avm_burstcount;

    -- dupName_1_ext_sig_sync_out_x(GPOUT,10)
    out_unnamed_conv_generic38_avm_address <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_address;
    out_unnamed_conv_generic38_avm_enable <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_enable;
    out_unnamed_conv_generic38_avm_read <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_read;
    out_unnamed_conv_generic38_avm_write <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_write;
    out_unnamed_conv_generic38_avm_writedata <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_writedata;
    out_unnamed_conv_generic38_avm_byteenable <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_byteenable;
    out_unnamed_conv_generic38_avm_burstcount <= i_store_unnamed_conv_generic38_conv_generic_out_unnamed_conv_generic38_avm_burstcount;

    -- ext_sig_sync_out(GPOUT,21)
    out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out <= i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out <= i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,27)
    out_pipeline_valid_out <= i_sfc_c0_for_body28_conv_generic_c0_enter309_conv_generic_aunroll_x_out_pipeline_valid_out;

    -- sync_out(GPOUT,32)@0
    out_stall_out <= SE_stall_entry_backStall;

END normal;
