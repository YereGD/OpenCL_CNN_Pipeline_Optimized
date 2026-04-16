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

-- VHDL created from bb_mem_read_generic_B5
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

entity bb_mem_read_generic_B5 is
    port (
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
        out_c0_exe7170 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe8171 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exe9172 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- ufix8
        out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_acl_77_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_acl_77_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked76_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked76_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_offset : in std_logic_vector(31 downto 0);  -- ufix32
        in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_mem_in : in std_logic_vector(63 downto 0);  -- ufix64
        in_mul3475_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul3475_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_or_cond73_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_or_cond73_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_phi_decision46_xor_RM79_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_phi_decision46_xor_RM79_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2466_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2466_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2770_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2770_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp278_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp278_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic10_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic10_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic6_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic6_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic7_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic7_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic8_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic8_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic9_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic9_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_mem_read_generic_B5;

architecture normal of bb_mem_read_generic_B5 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component mem_read_generic_B5_branch is
        port (
            in_c0_exit163_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_4 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit163_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit163_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe5168 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe7170 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe8171 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe9172 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_mem_read_generic_B5_stall_region is
        port (
            in_acl_77 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked76 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_mul3475 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_or_cond73 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_phi_decision46_xor_RM79 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sub2466 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2770 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp278 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5168 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7170 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8171 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe9172 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_read_generic_B5_merge is
        port (
            in_acl_77_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_acl_77_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked76_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked76_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_mul3475_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_mul3475_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_or_cond73_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_or_cond73_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_phi_decision46_xor_RM79_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_phi_decision46_xor_RM79_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_sub2466_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2466_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2770_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_sub2770_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp278_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tmp278_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic10_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic10_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_acl_77 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked76 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_mul3475 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_or_cond73 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_phi_decision46_xor_RM79 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_sub2466 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_sub2770 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_tmp278 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exe7170 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exe8171 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_c0_exe9172 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_4 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exit163_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exe5168 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exe7170 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exe8171 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_c0_exe9172 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_iowr_bl_ch_in_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_iowr_bl_ch_in_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_mem_read_generic_B5_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_acl_77 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_forked76 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_mul3475 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_out_or_cond73 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_phi_decision46_xor_RM79 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_sub2466 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_out_sub2770 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_out_tmp278 : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_B5_merge_out_unnamed_mem_read_generic10 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_unnamed_mem_read_generic6 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_unnamed_mem_read_generic7 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_unnamed_mem_read_generic8 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_unnamed_mem_read_generic9 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_B5_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- mem_read_generic_B5_merge(BLACKBOX,77)
    themem_read_generic_B5_merge : mem_read_generic_B5_merge
    PORT MAP (
        in_acl_77_0 => in_acl_77_0,
        in_acl_77_1 => in_acl_77_1,
        in_forked76_0 => in_forked76_0,
        in_forked76_1 => in_forked76_1,
        in_mul3475_0 => in_mul3475_0,
        in_mul3475_1 => in_mul3475_1,
        in_or_cond73_0 => in_or_cond73_0,
        in_or_cond73_1 => in_or_cond73_1,
        in_phi_decision46_xor_RM79_0 => in_phi_decision46_xor_RM79_0,
        in_phi_decision46_xor_RM79_1 => in_phi_decision46_xor_RM79_1,
        in_stall_in => bb_mem_read_generic_B5_stall_region_out_stall_out,
        in_sub2466_0 => in_sub2466_0,
        in_sub2466_1 => in_sub2466_1,
        in_sub2770_0 => in_sub2770_0,
        in_sub2770_1 => in_sub2770_1,
        in_tmp278_0 => in_tmp278_0,
        in_tmp278_1 => in_tmp278_1,
        in_unnamed_mem_read_generic10_0 => in_unnamed_mem_read_generic10_0,
        in_unnamed_mem_read_generic10_1 => in_unnamed_mem_read_generic10_1,
        in_unnamed_mem_read_generic6_0 => in_unnamed_mem_read_generic6_0,
        in_unnamed_mem_read_generic6_1 => in_unnamed_mem_read_generic6_1,
        in_unnamed_mem_read_generic7_0 => in_unnamed_mem_read_generic7_0,
        in_unnamed_mem_read_generic7_1 => in_unnamed_mem_read_generic7_1,
        in_unnamed_mem_read_generic8_0 => in_unnamed_mem_read_generic8_0,
        in_unnamed_mem_read_generic8_1 => in_unnamed_mem_read_generic8_1,
        in_unnamed_mem_read_generic9_0 => in_unnamed_mem_read_generic9_0,
        in_unnamed_mem_read_generic9_1 => in_unnamed_mem_read_generic9_1,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_acl_77 => mem_read_generic_B5_merge_out_acl_77,
        out_forked76 => mem_read_generic_B5_merge_out_forked76,
        out_mul3475 => mem_read_generic_B5_merge_out_mul3475,
        out_or_cond73 => mem_read_generic_B5_merge_out_or_cond73,
        out_phi_decision46_xor_RM79 => mem_read_generic_B5_merge_out_phi_decision46_xor_RM79,
        out_stall_out_0 => mem_read_generic_B5_merge_out_stall_out_0,
        out_stall_out_1 => mem_read_generic_B5_merge_out_stall_out_1,
        out_sub2466 => mem_read_generic_B5_merge_out_sub2466,
        out_sub2770 => mem_read_generic_B5_merge_out_sub2770,
        out_tmp278 => mem_read_generic_B5_merge_out_tmp278,
        out_unnamed_mem_read_generic10 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic10,
        out_unnamed_mem_read_generic6 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic6,
        out_unnamed_mem_read_generic7 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic7,
        out_unnamed_mem_read_generic8 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic8,
        out_unnamed_mem_read_generic9 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic9,
        out_valid_out => mem_read_generic_B5_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_mem_read_generic_B5_stall_region(BLACKBOX,32)
    thebb_mem_read_generic_B5_stall_region : bb_mem_read_generic_B5_stall_region
    PORT MAP (
        in_acl_77 => mem_read_generic_B5_merge_out_acl_77,
        in_flush => in_flush,
        in_forked76 => mem_read_generic_B5_merge_out_forked76,
        in_in_c => in_in_c,
        in_in_offset => in_in_offset,
        in_iowr_bl_ch_in_i_fifoready => in_iowr_bl_ch_in_i_fifoready,
        in_mem_in => in_mem_in,
        in_mul3475 => mem_read_generic_B5_merge_out_mul3475,
        in_or_cond73 => mem_read_generic_B5_merge_out_or_cond73,
        in_phi_decision46_xor_RM79 => mem_read_generic_B5_merge_out_phi_decision46_xor_RM79,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => mem_read_generic_B5_branch_aunroll_x_out_stall_out,
        in_sub2466 => mem_read_generic_B5_merge_out_sub2466,
        in_sub2770 => mem_read_generic_B5_merge_out_sub2770,
        in_tmp278 => mem_read_generic_B5_merge_out_tmp278,
        in_unnamed_mem_read_generic10 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic10,
        in_unnamed_mem_read_generic11_avm_readdata => in_unnamed_mem_read_generic11_avm_readdata,
        in_unnamed_mem_read_generic11_avm_readdatavalid => in_unnamed_mem_read_generic11_avm_readdatavalid,
        in_unnamed_mem_read_generic11_avm_waitrequest => in_unnamed_mem_read_generic11_avm_waitrequest,
        in_unnamed_mem_read_generic11_avm_writeack => in_unnamed_mem_read_generic11_avm_writeack,
        in_unnamed_mem_read_generic6 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic6,
        in_unnamed_mem_read_generic7 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic7,
        in_unnamed_mem_read_generic8 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic8,
        in_unnamed_mem_read_generic9 => mem_read_generic_B5_merge_out_unnamed_mem_read_generic9,
        in_valid_in => mem_read_generic_B5_merge_out_valid_out,
        in_x_zero => in_x_zero,
        out_c0_exit163_0 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_0,
        out_c0_exit163_1 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_1,
        out_c0_exit163_2 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_2,
        out_c0_exit163_3 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_3,
        out_c0_exit163_4 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_4,
        out_c0_exit163_5 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_5,
        out_c0_exit163_6 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_6,
        out_c0_exit163_7 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_7,
        out_c0_exit163_8 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_8,
        out_c0_exit163_9 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_9,
        out_c0_exit163_10 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_10,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out => bb_mem_read_generic_B5_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out => bb_mem_read_generic_B5_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out,
        out_c0_exe5168 => bb_mem_read_generic_B5_stall_region_out_c0_exe5168,
        out_c0_exe7170 => bb_mem_read_generic_B5_stall_region_out_c0_exe7170,
        out_c0_exe8171 => bb_mem_read_generic_B5_stall_region_out_c0_exe8171,
        out_c0_exe9172 => bb_mem_read_generic_B5_stall_region_out_c0_exe9172,
        out_iowr_bl_ch_in_o_fifodata => bb_mem_read_generic_B5_stall_region_out_iowr_bl_ch_in_o_fifodata,
        out_iowr_bl_ch_in_o_fifovalid => bb_mem_read_generic_B5_stall_region_out_iowr_bl_ch_in_o_fifovalid,
        out_pipeline_valid_out => bb_mem_read_generic_B5_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_mem_read_generic_B5_stall_region_out_stall_out,
        out_unnamed_mem_read_generic11_avm_address => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_address,
        out_unnamed_mem_read_generic11_avm_burstcount => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_burstcount,
        out_unnamed_mem_read_generic11_avm_byteenable => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_byteenable,
        out_unnamed_mem_read_generic11_avm_enable => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_enable,
        out_unnamed_mem_read_generic11_avm_read => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_read,
        out_unnamed_mem_read_generic11_avm_write => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_write,
        out_unnamed_mem_read_generic11_avm_writedata => bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_writedata,
        out_valid_out => bb_mem_read_generic_B5_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- mem_read_generic_B5_branch_aunroll_x(BLACKBOX,2)
    themem_read_generic_B5_branch_aunroll_x : mem_read_generic_B5_branch
    PORT MAP (
        in_c0_exit163_0 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_0,
        in_c0_exit163_1 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_1,
        in_c0_exit163_2 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_2,
        in_c0_exit163_3 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_3,
        in_c0_exit163_4 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_4,
        in_c0_exit163_5 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_5,
        in_c0_exit163_6 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_6,
        in_c0_exit163_7 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_7,
        in_c0_exit163_8 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_8,
        in_c0_exit163_9 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_9,
        in_c0_exit163_10 => bb_mem_read_generic_B5_stall_region_out_c0_exit163_10,
        in_c0_exe5168 => bb_mem_read_generic_B5_stall_region_out_c0_exe5168,
        in_c0_exe7170 => bb_mem_read_generic_B5_stall_region_out_c0_exe7170,
        in_c0_exe8171 => bb_mem_read_generic_B5_stall_region_out_c0_exe8171,
        in_c0_exe9172 => bb_mem_read_generic_B5_stall_region_out_c0_exe9172,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_mem_read_generic_B5_stall_region_out_valid_out,
        out_c0_exit163_0 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_0,
        out_c0_exit163_1 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_1,
        out_c0_exit163_2 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_2,
        out_c0_exit163_3 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_3,
        out_c0_exit163_4 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_4,
        out_c0_exit163_5 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_5,
        out_c0_exit163_6 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_6,
        out_c0_exit163_7 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_7,
        out_c0_exit163_8 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_8,
        out_c0_exit163_9 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_9,
        out_c0_exit163_10 => mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_10,
        out_c0_exe7170 => mem_read_generic_B5_branch_aunroll_x_out_c0_exe7170,
        out_c0_exe8171 => mem_read_generic_B5_branch_aunroll_x_out_c0_exe8171,
        out_c0_exe9172 => mem_read_generic_B5_branch_aunroll_x_out_c0_exe9172,
        out_stall_out => mem_read_generic_B5_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => mem_read_generic_B5_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => mem_read_generic_B5_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit163_0(GPOUT,3)
    out_c0_exit163_0 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_0;

    -- out_c0_exit163_1(GPOUT,4)
    out_c0_exit163_1 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_1;

    -- out_c0_exit163_2(GPOUT,5)
    out_c0_exit163_2 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_2;

    -- out_c0_exit163_3(GPOUT,6)
    out_c0_exit163_3 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_3;

    -- out_c0_exit163_4(GPOUT,7)
    out_c0_exit163_4 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_4;

    -- out_c0_exit163_5(GPOUT,8)
    out_c0_exit163_5 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_5;

    -- out_c0_exit163_6(GPOUT,9)
    out_c0_exit163_6 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_6;

    -- out_c0_exit163_7(GPOUT,10)
    out_c0_exit163_7 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_7;

    -- out_c0_exit163_8(GPOUT,11)
    out_c0_exit163_8 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_8;

    -- out_c0_exit163_9(GPOUT,12)
    out_c0_exit163_9 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_9;

    -- out_c0_exit163_10(GPOUT,13)
    out_c0_exit163_10 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exit163_10;

    -- out_c0_exe7170(GPOUT,14)
    out_c0_exe7170 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exe7170;

    -- out_c0_exe8171(GPOUT,15)
    out_c0_exe8171 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exe8171;

    -- out_c0_exe9172(GPOUT,16)
    out_c0_exe9172 <= mem_read_generic_B5_branch_aunroll_x_out_c0_exe9172;

    -- out_exiting_stall_out(GPOUT,17)
    out_exiting_stall_out <= bb_mem_read_generic_B5_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,18)
    out_exiting_valid_out <= bb_mem_read_generic_B5_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going_mem_read_generic_exiting_valid_out;

    -- out_iowr_bl_ch_in_o_fifodata(GPOUT,19)
    out_iowr_bl_ch_in_o_fifodata <= bb_mem_read_generic_B5_stall_region_out_iowr_bl_ch_in_o_fifodata;

    -- out_iowr_bl_ch_in_o_fifovalid(GPOUT,20)
    out_iowr_bl_ch_in_o_fifovalid <= bb_mem_read_generic_B5_stall_region_out_iowr_bl_ch_in_o_fifovalid;

    -- out_stall_out_0(GPOUT,21)
    out_stall_out_0 <= mem_read_generic_B5_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,22)
    out_stall_out_1 <= mem_read_generic_B5_merge_out_stall_out_1;

    -- out_unnamed_mem_read_generic11_avm_address(GPOUT,23)
    out_unnamed_mem_read_generic11_avm_address <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_address;

    -- out_unnamed_mem_read_generic11_avm_burstcount(GPOUT,24)
    out_unnamed_mem_read_generic11_avm_burstcount <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_burstcount;

    -- out_unnamed_mem_read_generic11_avm_byteenable(GPOUT,25)
    out_unnamed_mem_read_generic11_avm_byteenable <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_byteenable;

    -- out_unnamed_mem_read_generic11_avm_enable(GPOUT,26)
    out_unnamed_mem_read_generic11_avm_enable <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_enable;

    -- out_unnamed_mem_read_generic11_avm_read(GPOUT,27)
    out_unnamed_mem_read_generic11_avm_read <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_read;

    -- out_unnamed_mem_read_generic11_avm_write(GPOUT,28)
    out_unnamed_mem_read_generic11_avm_write <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_write;

    -- out_unnamed_mem_read_generic11_avm_writedata(GPOUT,29)
    out_unnamed_mem_read_generic11_avm_writedata <= bb_mem_read_generic_B5_stall_region_out_unnamed_mem_read_generic11_avm_writedata;

    -- out_valid_out_0(GPOUT,30)
    out_valid_out_0 <= mem_read_generic_B5_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,31)
    out_valid_out_1 <= mem_read_generic_B5_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,79)
    out_pipeline_valid_out <= bb_mem_read_generic_B5_stall_region_out_pipeline_valid_out;

END normal;
