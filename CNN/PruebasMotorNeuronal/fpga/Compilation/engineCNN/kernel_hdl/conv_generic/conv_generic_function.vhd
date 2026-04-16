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

-- VHDL created from conv_generic_function
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

entity conv_generic_function is
    port (
        in_arg_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_b_off : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_bias : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_w_off : in std_logic_vector(31 downto 0);  -- ufix32
        in_arg_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_arg_weights : in std_logic_vector(63 downto 0);  -- ufix64
        in_arg_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_arg_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        in_iord_bl_ch_in_i_fifodata : in std_logic_vector(7 downto 0);  -- ufix8
        in_iord_bl_ch_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_start : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic0_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv_generic0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic0_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic50_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic50_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic50_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic50_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic51_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic51_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic51_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic51_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic52_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic52_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic52_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic52_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic53_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic53_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic53_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic53_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic54_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic54_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic54_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic54_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic55_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic55_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic55_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic55_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic56_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic56_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic56_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic56_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic57_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic57_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic57_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic57_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic58_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic58_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic58_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic58_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic59_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic59_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic59_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic59_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic60_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic60_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic60_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic60_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic61_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic61_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic61_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic61_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic62_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic62_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic62_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic62_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic63_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic63_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic63_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic63_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic64_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic64_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic64_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic64_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic65_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic65_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic65_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic65_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_iord_bl_ch_in_o_fifoready : out std_logic_vector(0 downto 0);  -- ufix1
        out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- ufix8
        out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv_generic0_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv_generic0_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic0_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic0_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv_generic37_avm_address : out std_logic_vector(29 downto 0);  -- ufix30
        out_unnamed_conv_generic37_avm_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        out_unnamed_conv_generic37_avm_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic37_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic37_avm_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        out_unnamed_conv_generic38_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic38_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic38_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic50_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic50_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic50_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic50_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic50_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic50_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic50_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic51_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic51_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic51_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic51_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic51_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic51_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic51_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic52_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic52_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic52_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic52_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic52_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic52_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic52_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic53_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic53_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic53_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic53_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic53_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic53_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic53_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic54_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic54_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic54_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic54_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic54_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic54_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic54_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic55_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic55_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic55_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic55_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic55_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic55_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic55_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic56_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic56_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic56_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic56_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic56_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic56_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic56_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic57_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic57_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic57_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic57_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic57_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic57_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic57_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic58_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic58_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic58_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic58_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic58_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic58_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic58_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic59_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic59_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic59_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic59_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic59_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic59_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic59_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic60_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic60_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic60_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic60_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic60_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic60_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic60_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic61_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic61_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic61_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic61_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic61_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic61_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic61_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic62_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic62_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic62_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic62_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic62_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic62_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic62_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic63_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic63_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic63_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic63_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic63_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic63_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic63_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic64_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic64_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic64_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic64_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic64_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic64_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic64_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_unnamed_conv_generic65_avm_address : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_conv_generic65_avm_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic65_avm_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic65_avm_enable : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic65_avm_read : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic65_avm_write : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic65_avm_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_function;

architecture normal of conv_generic_function is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component bb_conv_generic_B10 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked216_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked216_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked267283_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked267283_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268280_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268280_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_fpgaindvars_iv_in_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_fpgaindvars_iv_in_1 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_ch_in_i_fifodata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iord_bl_ch_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250284_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit250284_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254282_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254282_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic45_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic45_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic46_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic46_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic47_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic47_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic48_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic48_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic50_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic50_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic50_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic50_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic51_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic51_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic51_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic51_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic52_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic52_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic52_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic52_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic53_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic53_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic53_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic53_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic54_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic54_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic54_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic54_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic55_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic55_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic55_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic55_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic56_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic56_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic56_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic56_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic57_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic57_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic57_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic57_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic58_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic58_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic58_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic58_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic59_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic59_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic59_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic59_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic60_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic60_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic60_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic60_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic61_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic61_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic61_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic61_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic62_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic62_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic62_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic62_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic63_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic63_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic63_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic63_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic64_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic64_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic64_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic64_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic65_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic65_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic65_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic65_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_idx_44_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_idx_44_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit410_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_10 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_13 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_16 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_22 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_25 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_28 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_31 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_34 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_35 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_36 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_37 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_40 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_41 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_43 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_44 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_45 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_46 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_47 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_48 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_49 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_50 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_51 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_52 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_54 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_55 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit410_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit410_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe7417 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe1 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_ch_in_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic50_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic51_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic52_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic53_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic54_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic55_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic56_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic57_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic58_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic59_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic60_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic61_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic62_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic63_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic64_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic65_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B10_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B11 is
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
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe116_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe598_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6010_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6112_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74174_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe114_0 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe116 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe598 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6010 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe6112 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74174 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe114 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B11_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_10 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_12 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_13 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_14 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_16 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_19 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_21 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_22 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_24 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_25 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_26 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_27 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_28 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_29 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_30 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_31 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_32 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_33 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_34 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_35 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_36 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_37 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_38 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_40 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_41 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_43 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_44 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_45 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_46 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_47 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_48 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_49 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_50 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_51 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_52 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_54 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_55 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_56 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_57 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_58 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_59 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_60 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_61 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_62 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_63 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_64 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_65 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_66 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_67 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_68 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_10 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_12 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_13 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_14 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_16 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_19 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_21 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_22 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_23 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_24 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_25 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_26 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_27 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_28 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_29 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_30 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_31 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_32 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_33 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_34 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_35 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_36 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_37 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_38 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_40 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_41 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_43 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_44 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_45 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_46 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_47 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_48 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_49 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_50 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_51 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_52 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_53 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_54 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_55 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_56 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_57 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_58 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_59 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_60 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_61 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_62 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_63 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_64 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_65 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_66 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_67 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_68 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B12_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B13 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_cmp10414_RM277_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_cmp10414_RM277_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked276_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked276_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_10_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_11_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_12_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_13_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_14_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_15_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_4_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_8_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_9_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_select316278_0 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_select316278_1 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic66_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic66_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic67_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic67_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic68_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic68_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit453_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_c0_exit453_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit453_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5458 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B13_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B14 is
        port (
            in_c0_exit45315_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_c0_exit45315_0_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit45315_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe545817_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe545817 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B14_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_conv_generic_B15_sr_0 is
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


    component bb_conv_generic_B16_sr_0 is
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


    component bb_conv_generic_B1_sr_1 is
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


    component bb_conv_generic_B2_sr_0 is
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


    component bb_conv_generic_B3_sr_1 is
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


    component bb_conv_generic_B4 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add25273_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add25273_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_brmerge272_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_brmerge272_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exitcond169274_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exitcond169274_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_oc18_033_pop40271_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_oc18_033_pop40271_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exit317_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic37_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_address : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_burstcount : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_byteenable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic38_avm_writedata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B4_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B5 is
        port (
            in_c0_exit3171_0_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit3171_0_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit3171_0_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit3171_0_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit3171_0_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit3171_0_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit3171_0_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B5_sr_0 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B6_sr_1 is
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


    component bb_conv_generic_B7_sr_1 is
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


    component bb_conv_generic_B8_sr_1 is
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


    component bb_conv_generic_B9_sr_1 is
        port (
            in_i_data_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_3 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_data_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_stall : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_i_valid : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_3 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_data_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_stall : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_valid : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B0 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_bias : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_in_0 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B1 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_b_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_bias : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked192_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked192_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_10_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_11_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_12_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_13_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_14_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_15_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_4_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_6_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_7_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_8_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_9_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B12 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe115_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe597_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe609_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe6111_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe74173_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c1_exe113_0 : in std_logic_vector(511 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe115 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe597 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe609 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe74173 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c1_exe113 : out std_logic_vector(511 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B15 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_c0_exe545816_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B16 is
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


    component bb_conv_generic_B2 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_16_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_17_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_18_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B3 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked269_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked269_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_16_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_17_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1303 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe2304 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3305 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe4306 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_conv_generic_B6 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked270_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked270_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1330 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_conv_generic_B7 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked275_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked275_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic39_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic39_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1341 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3343 : out std_logic_vector(0 downto 0);  -- Fixed Point
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


    component bb_conv_generic_B8 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked268_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic40_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic40_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic41_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic41_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1356 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2357 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3358 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4359 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked268 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B9 is
        port (
            in_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_forked267_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked267_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268279_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked268279_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_notexit254281_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit254281_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_unnamed_conv_generic42_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic42_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic43_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic43_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic44_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic44_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe1380 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe2381 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe3382 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe4383 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe5384 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_c0_exe6385 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_c0_exe7386 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe8387 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exe9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked267 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pipeline_keep_going209_conv_generic_sr is
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


    component i_acl_pipeline_keep_going209_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going213_conv_generic_sr is
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


    component i_acl_pipeline_keep_going213_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going219_conv_generic_sr is
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


    component i_acl_pipeline_keep_going219_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going248_conv_generic_sr is
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


    component i_acl_pipeline_keep_going248_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going252_conv_generic_sr is
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


    component i_acl_pipeline_keep_going252_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going256_conv_generic_sr is
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


    component i_acl_pipeline_keep_going256_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going260_conv_generic_sr is
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


    component i_acl_pipeline_keep_going260_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going264_conv_generic_sr is
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


    component i_acl_pipeline_keep_going264_conv_generic_valid_fifo is
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


    component i_acl_pipeline_keep_going_conv_generic_sr is
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


    component i_acl_pipeline_keep_going_conv_generic_valid_fifo is
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


    component loop_limiter_conv_generic0 is
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


    component loop_limiter_conv_generic1 is
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


    component loop_limiter_conv_generic2 is
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


    component loop_limiter_conv_generic3 is
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


    component loop_limiter_conv_generic4 is
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


    component loop_limiter_conv_generic5 is
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
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_10 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_13 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_16 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_19 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_22 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_25 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_28 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_31 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_33 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_34 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_35 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_36 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_37 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_40 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_41 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_43 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_44 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_45 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_46 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_47 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_48 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_49 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_51 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_52 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_53 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_54 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_55 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exit410_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exe11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exe59 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exe60 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exe61 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c0_exe7417 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_c1_exe1 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_iord_bl_ch_in_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B10_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B10_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_c0_exe116 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_c0_exe598 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_c0_exe6010 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_c0_exe6112 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_c0_exe74174 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_c1_exe114 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_10 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_12 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_13 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_14 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_16 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_19 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_21 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_22 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_23 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_24 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_25 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_26 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_27 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_28 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_29 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_30 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_31 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_32 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_33 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_34 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_35 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_36 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_37 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_40 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_41 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_43 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_44 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_45 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_46 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_47 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_48 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_49 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_50 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_51 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_52 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_53 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_54 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_55 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_56 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_57 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_58 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_59 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_60 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_61 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_62 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_63 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_64 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_65 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_66 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_67 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_68 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B11_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exit453_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_c0_exe5458 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_iowr_bl_ch_out_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_iowr_bl_ch_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B13_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_aunroll_x_out_c0_exe545817 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B14_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B15_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B15_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B15_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B16_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B16_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B2_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B2_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_c0_exit317_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B4_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_aunroll_x_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B5_sr_0_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_sr_1_aunroll_x_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_c_i2_0gr_x_q : STD_LOGIC_VECTOR (1 downto 0);
    signal dupName_0_c_i32_undef_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B0_out_feedback_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B0_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B0_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_10_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_11_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_12_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_13_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_14_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_15_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_4_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_6_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_7_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_8_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_intel_reserved_ffwd_9_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B1_out_unnamed_conv_generic0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_generic_B1_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_out_c0_exe115 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_out_c0_exe597 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_out_c0_exe609 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_out_c0_exe74173 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_out_c1_exe113 : STD_LOGIC_VECTOR (511 downto 0);
    signal bb_conv_generic_B12_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B12_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B15_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B15_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B16_out_feedback_out_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B16_out_feedback_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B16_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B16_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B2_out_intel_reserved_ffwd_16_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B2_out_intel_reserved_ffwd_17_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B2_out_intel_reserved_ffwd_18_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_conv_generic_B2_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B2_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_out_c0_exe1303 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B3_out_c0_exe2304 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_out_c0_exe3305 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B3_out_c0_exe4306 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B3_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_out_c0_exe1330 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B6_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_c0_exe1341 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_c0_exe3343 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B7_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_c0_exe1356 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_c0_exe2357 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_c0_exe3358 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_c0_exe4359 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_forked268 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B8_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe1380 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe2381 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe3382 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe4383 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe5384 : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B9_out_c0_exe6385 : STD_LOGIC_VECTOR (32 downto 0);
    signal bb_conv_generic_B9_out_c0_exe7386 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe8387 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_c0_exe9 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_forked267 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B9_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i512_undef_q : STD_LOGIC_VECTOR (511 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going219_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going248_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going252_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going256_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going260_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going264_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going264_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going264_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going264_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_sr_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_sr_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_valid_fifo_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going_conv_generic_valid_fifo_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic0_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic0_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic1_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic1_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic2_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic2_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic3_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic3_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic4_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic4_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic5_out_o_stall : STD_LOGIC_VECTOR (0 downto 0);
    signal loop_limiter_conv_generic5_out_o_valid : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- dupName_0_c_i32_undef_x(CONSTANT,28)
    dupName_0_c_i32_undef_x_q <= "00000000000000000000000000000000";

    -- dupName_0_c_i2_0gr_x(CONSTANT,27)
    dupName_0_c_i2_0gr_x_q <= "00";

    -- i_acl_pipeline_keep_going219_conv_generic_valid_fifo(BLACKBOX,114)
    thei_acl_pipeline_keep_going219_conv_generic_valid_fifo : i_acl_pipeline_keep_going219_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B10_aunroll_x_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going219_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going219_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going219_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going256_conv_generic_valid_fifo(BLACKBOX,120)
    thei_acl_pipeline_keep_going256_conv_generic_valid_fifo : i_acl_pipeline_keep_going256_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B13_aunroll_x_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going256_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going256_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going256_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- bb_conv_generic_B1_sr_1_aunroll_x(BLACKBOX,13)
    thebb_conv_generic_B1_sr_1_aunroll_x : bb_conv_generic_B1_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_stall => bb_conv_generic_B1_out_stall_out_1,
        in_i_valid => bb_conv_generic_B0_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B1_sr_1_aunroll_x_out_o_data_0,
        out_o_stall => bb_conv_generic_B1_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B1_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B0(BLACKBOX,91)
    thebb_conv_generic_B0 : bb_conv_generic_B0
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_b_off => in_arg_b_off,
        in_bias => in_arg_bias,
        in_feedback_in_0 => bb_conv_generic_B16_out_feedback_out_0,
        in_feedback_valid_in_0 => bb_conv_generic_B16_out_feedback_valid_out_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv_generic_B1_sr_1_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => in_valid_in,
        in_w => in_arg_w,
        in_w_off => in_arg_w_off,
        in_w_zero => in_arg_w_zero,
        in_weights => in_arg_weights,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_feedback_stall_out_0 => bb_conv_generic_B0_out_feedback_stall_out_0,
        out_stall_out_0 => bb_conv_generic_B0_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B0_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B16(BLACKBOX,95)
    thebb_conv_generic_B16 : bb_conv_generic_B16
    PORT MAP (
        in_feedback_stall_in_0 => bb_conv_generic_B0_out_feedback_stall_out_0,
        in_stall_in_0 => in_stall_in,
        in_valid_in_0 => bb_conv_generic_B16_sr_0_aunroll_x_out_o_valid,
        out_feedback_out_0 => bb_conv_generic_B16_out_feedback_out_0,
        out_feedback_valid_out_0 => bb_conv_generic_B16_out_feedback_valid_out_0,
        out_stall_out_0 => bb_conv_generic_B16_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B16_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B16_sr_0_aunroll_x(BLACKBOX,12)
    thebb_conv_generic_B16_sr_0_aunroll_x : bb_conv_generic_B16_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_conv_generic_B16_out_stall_out_0,
        in_i_valid => bb_conv_generic_B15_out_valid_out_0,
        out_o_stall => bb_conv_generic_B16_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B16_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B15(BLACKBOX,94)
    thebb_conv_generic_B15 : bb_conv_generic_B15
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_c0_exe545816_0 => bb_conv_generic_B15_sr_0_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv_generic_B16_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_conv_generic_B15_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_stall_out_0 => bb_conv_generic_B15_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B15_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B15_sr_0_aunroll_x(BLACKBOX,11)
    thebb_conv_generic_B15_sr_0_aunroll_x : bb_conv_generic_B15_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B14_aunroll_x_out_c0_exe545817,
        in_i_stall => bb_conv_generic_B15_out_stall_out_0,
        in_i_valid => bb_conv_generic_B14_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B15_sr_0_aunroll_x_out_o_data_0,
        out_o_stall => bb_conv_generic_B15_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B15_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B14_aunroll_x(BLACKBOX,9)
    thebb_conv_generic_B14_aunroll_x : bb_conv_generic_B14
    PORT MAP (
        in_c0_exit45315_0_0 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_0,
        in_c0_exit45315_0_1 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_1,
        in_c0_exit45315_0_2 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_2,
        in_c0_exit45315_0_3 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_3,
        in_c0_exit45315_0_4 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_4,
        in_c0_exit45315_0_5 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_5,
        in_c0_exit45315_0_6 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_6,
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_c0_exe545817_0 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_7,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv_generic_B15_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe545817 => bb_conv_generic_B14_aunroll_x_out_c0_exe545817,
        out_stall_out_0 => bb_conv_generic_B14_aunroll_x_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B14_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B14_sr_0_aunroll_x(BLACKBOX,10)
    thebb_conv_generic_B14_sr_0_aunroll_x : bb_conv_generic_B14_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_0,
        in_i_data_1 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_1,
        in_i_data_2 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_2,
        in_i_data_3 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_3,
        in_i_data_4 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_4,
        in_i_data_5 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_5,
        in_i_data_6 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_6,
        in_i_data_7 => bb_conv_generic_B13_aunroll_x_out_c0_exe5458,
        in_i_stall => bb_conv_generic_B14_aunroll_x_out_stall_out_0,
        in_i_valid => bb_conv_generic_B13_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_data_7,
        out_o_stall => bb_conv_generic_B14_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B14_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- c_i512_undef(CONSTANT,108)
    c_i512_undef_q <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";

    -- i_acl_pipeline_keep_going256_conv_generic_sr(BLACKBOX,119)
    thei_acl_pipeline_keep_going256_conv_generic_sr : i_acl_pipeline_keep_going256_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going256_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B13_aunroll_x_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going256_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going256_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_conv_generic_valid_fifo(BLACKBOX,126)
    thei_acl_pipeline_keep_going_conv_generic_valid_fifo : i_acl_pipeline_keep_going_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B1_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going213_conv_generic_valid_fifo(BLACKBOX,112)
    thei_acl_pipeline_keep_going213_conv_generic_valid_fifo : i_acl_pipeline_keep_going213_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B3_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going213_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going213_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going213_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going209_conv_generic_valid_fifo(BLACKBOX,110)
    thei_acl_pipeline_keep_going209_conv_generic_valid_fifo : i_acl_pipeline_keep_going209_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B4_aunroll_x_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going209_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going209_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going209_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going264_conv_generic_valid_fifo(BLACKBOX,124)
    thei_acl_pipeline_keep_going264_conv_generic_valid_fifo : i_acl_pipeline_keep_going264_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B6_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going264_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going264_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going264_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going260_conv_generic_valid_fifo(BLACKBOX,122)
    thei_acl_pipeline_keep_going260_conv_generic_valid_fifo : i_acl_pipeline_keep_going260_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B7_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going260_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going260_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going260_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going252_conv_generic_valid_fifo(BLACKBOX,118)
    thei_acl_pipeline_keep_going252_conv_generic_valid_fifo : i_acl_pipeline_keep_going252_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B8_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going252_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going252_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going252_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going248_conv_generic_valid_fifo(BLACKBOX,116)
    thei_acl_pipeline_keep_going248_conv_generic_valid_fifo : i_acl_pipeline_keep_going248_conv_generic_valid_fifo
    PORT MAP (
        in_data_in => dupName_0_c_i2_0gr_x_q,
        in_stall_in => bb_conv_generic_B9_out_stall_out_0,
        in_valid_in => i_acl_pipeline_keep_going248_conv_generic_sr_out_o_valid,
        out_stall_out => i_acl_pipeline_keep_going248_conv_generic_valid_fifo_out_stall_out,
        out_valid_out => i_acl_pipeline_keep_going248_conv_generic_valid_fifo_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv_generic5(BLACKBOX,235)
    theloop_limiter_conv_generic5 : loop_limiter_conv_generic5
    PORT MAP (
        in_i_stall => bb_conv_generic_B10_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_generic_B10_aunroll_x_out_exiting_stall_out,
        in_i_valid => bb_conv_generic_B9_out_valid_out_0,
        in_i_valid_exit => bb_conv_generic_B10_aunroll_x_out_exiting_valid_out,
        out_o_stall => loop_limiter_conv_generic5_out_o_stall,
        out_o_valid => loop_limiter_conv_generic5_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going248_conv_generic_sr(BLACKBOX,115)
    thei_acl_pipeline_keep_going248_conv_generic_sr : i_acl_pipeline_keep_going248_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going248_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B9_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going248_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going248_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B9(BLACKBOX,101)
    thebb_conv_generic_B9 : bb_conv_generic_B9
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_forked267_0 => GND_q,
        in_forked267_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_0,
        in_forked268279_0 => GND_q,
        in_forked268279_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_3,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_notexit254281_0 => GND_q,
        in_notexit254281_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_5,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going248_conv_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_conv_generic5_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic42_0 => GND_q,
        in_unnamed_conv_generic42_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_conv_generic43_0 => GND_q,
        in_unnamed_conv_generic43_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_2,
        in_unnamed_conv_generic44_0 => GND_q,
        in_unnamed_conv_generic44_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_4,
        in_valid_in_0 => i_acl_pipeline_keep_going248_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe1380 => bb_conv_generic_B9_out_c0_exe1380,
        out_c0_exe2381 => bb_conv_generic_B9_out_c0_exe2381,
        out_c0_exe3382 => bb_conv_generic_B9_out_c0_exe3382,
        out_c0_exe4383 => bb_conv_generic_B9_out_c0_exe4383,
        out_c0_exe5384 => bb_conv_generic_B9_out_c0_exe5384,
        out_c0_exe6385 => bb_conv_generic_B9_out_c0_exe6385,
        out_c0_exe7386 => bb_conv_generic_B9_out_c0_exe7386,
        out_c0_exe8387 => bb_conv_generic_B9_out_c0_exe8387,
        out_c0_exe9 => bb_conv_generic_B9_out_c0_exe9,
        out_exiting_stall_out => bb_conv_generic_B9_out_exiting_stall_out,
        out_exiting_valid_out => bb_conv_generic_B9_out_exiting_valid_out,
        out_forked267 => bb_conv_generic_B9_out_forked267,
        out_pipeline_valid_out => bb_conv_generic_B9_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B9_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B9_out_stall_out_1,
        out_valid_out_0 => bb_conv_generic_B9_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B9_sr_1_aunroll_x(BLACKBOX,23)
    thebb_conv_generic_B9_sr_1_aunroll_x : bb_conv_generic_B9_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_data_1 => bb_conv_generic_B8_out_c0_exe3358,
        in_i_data_2 => bb_conv_generic_B8_out_c0_exe4359,
        in_i_data_3 => bb_conv_generic_B8_out_forked268,
        in_i_data_4 => bb_conv_generic_B8_out_c0_exe1356,
        in_i_data_5 => bb_conv_generic_B8_out_c0_exe2357,
        in_i_stall => bb_conv_generic_B9_out_stall_out_1,
        in_i_valid => loop_limiter_conv_generic4_out_o_valid,
        out_o_data_0 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B9_sr_1_aunroll_x_out_o_data_5,
        out_o_stall => bb_conv_generic_B9_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B9_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv_generic4(BLACKBOX,234)
    theloop_limiter_conv_generic4 : loop_limiter_conv_generic4
    PORT MAP (
        in_i_stall => bb_conv_generic_B9_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_generic_B9_out_exiting_stall_out,
        in_i_valid => bb_conv_generic_B8_out_valid_out_0,
        in_i_valid_exit => bb_conv_generic_B9_out_exiting_valid_out,
        out_o_stall => loop_limiter_conv_generic4_out_o_stall,
        out_o_valid => loop_limiter_conv_generic4_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going252_conv_generic_sr(BLACKBOX,117)
    thei_acl_pipeline_keep_going252_conv_generic_sr : i_acl_pipeline_keep_going252_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going252_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B8_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going252_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going252_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B8(BLACKBOX,100)
    thebb_conv_generic_B8 : bb_conv_generic_B8
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_forked268_0 => GND_q,
        in_forked268_1 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going252_conv_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_conv_generic4_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic40_0 => GND_q,
        in_unnamed_conv_generic40_1 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_1,
        in_unnamed_conv_generic41_0 => GND_q,
        in_unnamed_conv_generic41_1 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_2,
        in_valid_in_0 => i_acl_pipeline_keep_going252_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe1356 => bb_conv_generic_B8_out_c0_exe1356,
        out_c0_exe2357 => bb_conv_generic_B8_out_c0_exe2357,
        out_c0_exe3358 => bb_conv_generic_B8_out_c0_exe3358,
        out_c0_exe4359 => bb_conv_generic_B8_out_c0_exe4359,
        out_exiting_stall_out => bb_conv_generic_B8_out_exiting_stall_out,
        out_exiting_valid_out => bb_conv_generic_B8_out_exiting_valid_out,
        out_forked268 => bb_conv_generic_B8_out_forked268,
        out_pipeline_valid_out => bb_conv_generic_B8_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B8_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B8_out_stall_out_1,
        out_valid_out_0 => bb_conv_generic_B8_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B8_sr_1_aunroll_x(BLACKBOX,22)
    thebb_conv_generic_B8_sr_1_aunroll_x : bb_conv_generic_B8_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_data_1 => bb_conv_generic_B7_out_c0_exe3343,
        in_i_data_2 => bb_conv_generic_B7_out_c0_exe1341,
        in_i_stall => bb_conv_generic_B8_out_stall_out_1,
        in_i_valid => loop_limiter_conv_generic3_out_o_valid,
        out_o_data_0 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B8_sr_1_aunroll_x_out_o_data_2,
        out_o_stall => bb_conv_generic_B8_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B8_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv_generic3(BLACKBOX,233)
    theloop_limiter_conv_generic3 : loop_limiter_conv_generic3
    PORT MAP (
        in_i_stall => bb_conv_generic_B8_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_generic_B8_out_exiting_stall_out,
        in_i_valid => bb_conv_generic_B7_out_valid_out_0,
        in_i_valid_exit => bb_conv_generic_B8_out_exiting_valid_out,
        out_o_stall => loop_limiter_conv_generic3_out_o_stall,
        out_o_valid => loop_limiter_conv_generic3_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going260_conv_generic_sr(BLACKBOX,121)
    thei_acl_pipeline_keep_going260_conv_generic_sr : i_acl_pipeline_keep_going260_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going260_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B7_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going260_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going260_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B7(BLACKBOX,99)
    thebb_conv_generic_B7 : bb_conv_generic_B7
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_forked275_0 => GND_q,
        in_forked275_1 => bb_conv_generic_B7_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going260_conv_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_conv_generic3_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic39_0 => GND_q,
        in_unnamed_conv_generic39_1 => bb_conv_generic_B7_sr_1_aunroll_x_out_o_data_1,
        in_valid_in_0 => i_acl_pipeline_keep_going260_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B7_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe1341 => bb_conv_generic_B7_out_c0_exe1341,
        out_c0_exe3343 => bb_conv_generic_B7_out_c0_exe3343,
        out_exiting_stall_out => bb_conv_generic_B7_out_exiting_stall_out,
        out_exiting_valid_out => bb_conv_generic_B7_out_exiting_valid_out,
        out_pipeline_valid_out => bb_conv_generic_B7_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B7_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B7_out_stall_out_1,
        out_valid_out_0 => bb_conv_generic_B7_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B7_sr_1_aunroll_x(BLACKBOX,21)
    thebb_conv_generic_B7_sr_1_aunroll_x : bb_conv_generic_B7_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_data_1 => bb_conv_generic_B6_out_c0_exe1330,
        in_i_stall => bb_conv_generic_B7_out_stall_out_1,
        in_i_valid => loop_limiter_conv_generic1_out_o_valid,
        out_o_data_0 => bb_conv_generic_B7_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B7_sr_1_aunroll_x_out_o_data_1,
        out_o_stall => bb_conv_generic_B7_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B7_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv_generic1(BLACKBOX,231)
    theloop_limiter_conv_generic1 : loop_limiter_conv_generic1
    PORT MAP (
        in_i_stall => bb_conv_generic_B7_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_generic_B7_out_exiting_stall_out,
        in_i_valid => bb_conv_generic_B6_out_valid_out_0,
        in_i_valid_exit => bb_conv_generic_B7_out_exiting_valid_out,
        out_o_stall => loop_limiter_conv_generic1_out_o_stall,
        out_o_valid => loop_limiter_conv_generic1_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going264_conv_generic_sr(BLACKBOX,123)
    thei_acl_pipeline_keep_going264_conv_generic_sr : i_acl_pipeline_keep_going264_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going264_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B6_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going264_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going264_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B6(BLACKBOX,98)
    thebb_conv_generic_B6 : bb_conv_generic_B6
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_forked270_0 => GND_q,
        in_forked270_1 => bb_conv_generic_B6_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going264_conv_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_conv_generic1_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => i_acl_pipeline_keep_going264_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B6_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe1330 => bb_conv_generic_B6_out_c0_exe1330,
        out_pipeline_valid_out => bb_conv_generic_B6_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B6_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B6_out_stall_out_1,
        out_valid_out_0 => bb_conv_generic_B6_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B6_sr_1_aunroll_x(BLACKBOX,20)
    thebb_conv_generic_B6_sr_1_aunroll_x : bb_conv_generic_B6_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_stall => bb_conv_generic_B6_out_stall_out_1,
        in_i_valid => bb_conv_generic_B5_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B6_sr_1_aunroll_x_out_o_data_0,
        out_o_stall => bb_conv_generic_B6_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B6_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B5_aunroll_x(BLACKBOX,18)
    thebb_conv_generic_B5_aunroll_x : bb_conv_generic_B5
    PORT MAP (
        in_c0_exit3171_0_0 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_0,
        in_c0_exit3171_0_1 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_1,
        in_c0_exit3171_0_2 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_2,
        in_c0_exit3171_0_3 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_3,
        in_c0_exit3171_0_4 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_4,
        in_c0_exit3171_0_5 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_5,
        in_c0_exit3171_0_6 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_6,
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv_generic_B6_sr_1_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_off => in_arg_w_off,
        in_w_zero => in_arg_w_zero,
        in_weights => in_arg_weights,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_stall_out_0 => bb_conv_generic_B5_aunroll_x_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B5_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B5_sr_0_aunroll_x(BLACKBOX,19)
    thebb_conv_generic_B5_sr_0_aunroll_x : bb_conv_generic_B5_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_0,
        in_i_data_1 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_1,
        in_i_data_2 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_2,
        in_i_data_3 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_3,
        in_i_data_4 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_4,
        in_i_data_5 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_5,
        in_i_data_6 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_6,
        in_i_stall => bb_conv_generic_B5_aunroll_x_out_stall_out_0,
        in_i_valid => bb_conv_generic_B4_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_data_6,
        out_o_stall => bb_conv_generic_B5_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B5_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going209_conv_generic_sr(BLACKBOX,109)
    thei_acl_pipeline_keep_going209_conv_generic_sr : i_acl_pipeline_keep_going209_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going209_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B4_aunroll_x_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going209_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going209_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B4_aunroll_x(BLACKBOX,16)
    thebb_conv_generic_B4_aunroll_x : bb_conv_generic_B4
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_add25273_0 => dupName_0_c_i32_undef_x_q,
        in_add25273_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_3,
        in_brmerge272_0 => GND_q,
        in_brmerge272_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_2,
        in_exitcond169274_0 => GND_q,
        in_exitcond169274_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_4,
        in_flush => in_start,
        in_forked_0 => GND_q,
        in_forked_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_intel_reserved_ffwd_18_0 => bb_conv_generic_B2_out_intel_reserved_ffwd_18_0,
        in_oc18_033_pop40271_0 => dupName_0_c_i32_undef_x_q,
        in_oc18_033_pop40271_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_1,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going209_conv_generic_sr_out_o_stall,
        in_stall_in_0 => bb_conv_generic_B5_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic37_avm_readdata => in_unnamed_conv_generic37_avm_readdata,
        in_unnamed_conv_generic37_avm_readdatavalid => in_unnamed_conv_generic37_avm_readdatavalid,
        in_unnamed_conv_generic37_avm_waitrequest => in_unnamed_conv_generic37_avm_waitrequest,
        in_unnamed_conv_generic37_avm_writeack => in_unnamed_conv_generic37_avm_writeack,
        in_unnamed_conv_generic38_avm_readdata => in_unnamed_conv_generic38_avm_readdata,
        in_unnamed_conv_generic38_avm_readdatavalid => in_unnamed_conv_generic38_avm_readdatavalid,
        in_unnamed_conv_generic38_avm_waitrequest => in_unnamed_conv_generic38_avm_waitrequest,
        in_unnamed_conv_generic38_avm_writeack => in_unnamed_conv_generic38_avm_writeack,
        in_valid_in_0 => i_acl_pipeline_keep_going209_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_off => in_arg_w_off,
        in_w_zero => in_arg_w_zero,
        in_weights => in_arg_weights,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exit317_0 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_0,
        out_c0_exit317_1 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_1,
        out_c0_exit317_2 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_2,
        out_c0_exit317_3 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_3,
        out_c0_exit317_4 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_4,
        out_c0_exit317_5 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_5,
        out_c0_exit317_6 => bb_conv_generic_B4_aunroll_x_out_c0_exit317_6,
        out_exiting_stall_out => bb_conv_generic_B4_aunroll_x_out_exiting_stall_out,
        out_exiting_valid_out => bb_conv_generic_B4_aunroll_x_out_exiting_valid_out,
        out_pipeline_valid_out => bb_conv_generic_B4_aunroll_x_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B4_aunroll_x_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B4_aunroll_x_out_stall_out_1,
        out_unnamed_conv_generic37_avm_address => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_address,
        out_unnamed_conv_generic37_avm_burstcount => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_burstcount,
        out_unnamed_conv_generic37_avm_byteenable => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_byteenable,
        out_unnamed_conv_generic37_avm_enable => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_enable,
        out_unnamed_conv_generic37_avm_read => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_read,
        out_unnamed_conv_generic37_avm_write => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_write,
        out_unnamed_conv_generic37_avm_writedata => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_writedata,
        out_unnamed_conv_generic38_avm_address => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_address,
        out_unnamed_conv_generic38_avm_burstcount => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_burstcount,
        out_unnamed_conv_generic38_avm_byteenable => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_byteenable,
        out_unnamed_conv_generic38_avm_enable => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_enable,
        out_unnamed_conv_generic38_avm_read => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_read,
        out_unnamed_conv_generic38_avm_write => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_write,
        out_unnamed_conv_generic38_avm_writedata => bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_writedata,
        out_valid_out_0 => bb_conv_generic_B4_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B4_sr_1_aunroll_x(BLACKBOX,17)
    thebb_conv_generic_B4_sr_1_aunroll_x : bb_conv_generic_B4_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_data_1 => bb_conv_generic_B3_out_c0_exe1303,
        in_i_data_2 => bb_conv_generic_B3_out_c0_exe2304,
        in_i_data_3 => bb_conv_generic_B3_out_c0_exe3305,
        in_i_data_4 => bb_conv_generic_B3_out_c0_exe4306,
        in_i_stall => bb_conv_generic_B4_aunroll_x_out_stall_out_1,
        in_i_valid => loop_limiter_conv_generic0_out_o_valid,
        out_o_data_0 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B4_sr_1_aunroll_x_out_o_data_4,
        out_o_stall => bb_conv_generic_B4_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B4_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv_generic0(BLACKBOX,230)
    theloop_limiter_conv_generic0 : loop_limiter_conv_generic0
    PORT MAP (
        in_i_stall => bb_conv_generic_B4_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_generic_B4_aunroll_x_out_exiting_stall_out,
        in_i_valid => bb_conv_generic_B3_out_valid_out_0,
        in_i_valid_exit => bb_conv_generic_B4_aunroll_x_out_exiting_valid_out,
        out_o_stall => loop_limiter_conv_generic0_out_o_stall,
        out_o_valid => loop_limiter_conv_generic0_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going213_conv_generic_sr(BLACKBOX,111)
    thei_acl_pipeline_keep_going213_conv_generic_sr : i_acl_pipeline_keep_going213_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going213_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B3_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going213_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going213_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B3(BLACKBOX,97)
    thebb_conv_generic_B3 : bb_conv_generic_B3
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_forked269_0 => GND_q,
        in_forked269_1 => bb_conv_generic_B3_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_intel_reserved_ffwd_16_0 => bb_conv_generic_B2_out_intel_reserved_ffwd_16_0,
        in_intel_reserved_ffwd_17_0 => bb_conv_generic_B2_out_intel_reserved_ffwd_17_0,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going213_conv_generic_sr_out_o_stall,
        in_stall_in_0 => loop_limiter_conv_generic0_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => i_acl_pipeline_keep_going213_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B3_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_off => in_arg_w_off,
        in_w_zero => in_arg_w_zero,
        in_weights => in_arg_weights,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe1303 => bb_conv_generic_B3_out_c0_exe1303,
        out_c0_exe2304 => bb_conv_generic_B3_out_c0_exe2304,
        out_c0_exe3305 => bb_conv_generic_B3_out_c0_exe3305,
        out_c0_exe4306 => bb_conv_generic_B3_out_c0_exe4306,
        out_pipeline_valid_out => bb_conv_generic_B3_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B3_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B3_out_stall_out_1,
        out_valid_out_0 => bb_conv_generic_B3_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B3_sr_1_aunroll_x(BLACKBOX,15)
    thebb_conv_generic_B3_sr_1_aunroll_x : bb_conv_generic_B3_sr_1
    PORT MAP (
        in_i_data_0 => VCC_q,
        in_i_stall => bb_conv_generic_B3_out_stall_out_1,
        in_i_valid => bb_conv_generic_B2_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B3_sr_1_aunroll_x_out_o_data_0,
        out_o_stall => bb_conv_generic_B3_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B3_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B2(BLACKBOX,96)
    thebb_conv_generic_B2 : bb_conv_generic_B2
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv_generic_B3_sr_1_aunroll_x_out_o_stall,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_conv_generic_B2_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_off => in_arg_w_off,
        in_w_zero => in_arg_w_zero,
        in_weights => in_arg_weights,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_intel_reserved_ffwd_16_0 => bb_conv_generic_B2_out_intel_reserved_ffwd_16_0,
        out_intel_reserved_ffwd_17_0 => bb_conv_generic_B2_out_intel_reserved_ffwd_17_0,
        out_intel_reserved_ffwd_18_0 => bb_conv_generic_B2_out_intel_reserved_ffwd_18_0,
        out_stall_out_0 => bb_conv_generic_B2_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B2_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B2_sr_0_aunroll_x(BLACKBOX,14)
    thebb_conv_generic_B2_sr_0_aunroll_x : bb_conv_generic_B2_sr_0
    PORT MAP (
        in_i_data_0 => GND_q,
        in_i_stall => bb_conv_generic_B2_out_stall_out_0,
        in_i_valid => bb_conv_generic_B1_out_valid_out_0,
        out_o_stall => bb_conv_generic_B2_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B2_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going_conv_generic_sr(BLACKBOX,125)
    thei_acl_pipeline_keep_going_conv_generic_sr : i_acl_pipeline_keep_going_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B1_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B1(BLACKBOX,92)
    thebb_conv_generic_B1 : bb_conv_generic_B1
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_b_off => in_arg_b_off,
        in_bias => in_arg_bias,
        in_flush => in_start,
        in_forked192_0 => GND_q,
        in_forked192_1 => bb_conv_generic_B1_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going_conv_generic_sr_out_o_stall,
        in_stall_in_0 => bb_conv_generic_B2_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic0_avm_readdata => in_unnamed_conv_generic0_avm_readdata,
        in_unnamed_conv_generic0_avm_readdatavalid => in_unnamed_conv_generic0_avm_readdatavalid,
        in_unnamed_conv_generic0_avm_waitrequest => in_unnamed_conv_generic0_avm_waitrequest,
        in_unnamed_conv_generic0_avm_writeack => in_unnamed_conv_generic0_avm_writeack,
        in_valid_in_0 => i_acl_pipeline_keep_going_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B1_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_off => in_arg_w_off,
        in_w_zero => in_arg_w_zero,
        in_weights => in_arg_weights,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_intel_reserved_ffwd_0_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_0_0,
        out_intel_reserved_ffwd_10_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_10_0,
        out_intel_reserved_ffwd_11_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_11_0,
        out_intel_reserved_ffwd_12_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_12_0,
        out_intel_reserved_ffwd_13_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_13_0,
        out_intel_reserved_ffwd_14_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_14_0,
        out_intel_reserved_ffwd_15_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_15_0,
        out_intel_reserved_ffwd_1_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_1_0,
        out_intel_reserved_ffwd_2_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_2_0,
        out_intel_reserved_ffwd_3_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_3_0,
        out_intel_reserved_ffwd_4_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_4_0,
        out_intel_reserved_ffwd_5_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_5_0,
        out_intel_reserved_ffwd_6_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_6_0,
        out_intel_reserved_ffwd_7_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_7_0,
        out_intel_reserved_ffwd_8_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_8_0,
        out_intel_reserved_ffwd_9_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_9_0,
        out_pipeline_valid_out => bb_conv_generic_B1_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B1_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B1_out_stall_out_1,
        out_unnamed_conv_generic0_avm_address => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_address,
        out_unnamed_conv_generic0_avm_burstcount => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_burstcount,
        out_unnamed_conv_generic0_avm_byteenable => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_byteenable,
        out_unnamed_conv_generic0_avm_enable => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_enable,
        out_unnamed_conv_generic0_avm_read => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_read,
        out_unnamed_conv_generic0_avm_write => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_write,
        out_unnamed_conv_generic0_avm_writedata => bb_conv_generic_B1_out_unnamed_conv_generic0_avm_writedata,
        out_valid_out_0 => bb_conv_generic_B1_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B13_aunroll_x(BLACKBOX,7)
    thebb_conv_generic_B13_aunroll_x : bb_conv_generic_B13
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_cmp10414_RM277_0 => GND_q,
        in_cmp10414_RM277_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_4,
        in_forked276_0 => GND_q,
        in_forked276_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_1,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_intel_reserved_ffwd_0_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_0_0,
        in_intel_reserved_ffwd_10_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_10_0,
        in_intel_reserved_ffwd_11_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_11_0,
        in_intel_reserved_ffwd_12_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_12_0,
        in_intel_reserved_ffwd_13_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_13_0,
        in_intel_reserved_ffwd_14_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_14_0,
        in_intel_reserved_ffwd_15_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_15_0,
        in_intel_reserved_ffwd_1_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_1_0,
        in_intel_reserved_ffwd_2_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_2_0,
        in_intel_reserved_ffwd_3_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_3_0,
        in_intel_reserved_ffwd_4_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_4_0,
        in_intel_reserved_ffwd_5_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_5_0,
        in_intel_reserved_ffwd_6_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_6_0,
        in_intel_reserved_ffwd_7_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_7_0,
        in_intel_reserved_ffwd_8_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_8_0,
        in_intel_reserved_ffwd_9_0 => bb_conv_generic_B1_out_intel_reserved_ffwd_9_0,
        in_iowr_bl_ch_out_i_fifoready => in_iowr_bl_ch_out_i_fifoready,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going256_conv_generic_sr_out_o_stall,
        in_select316278_0 => c_i512_undef_q,
        in_select316278_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_5,
        in_stall_in_0 => bb_conv_generic_B14_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic66_0 => GND_q,
        in_unnamed_conv_generic66_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_0,
        in_unnamed_conv_generic67_0 => GND_q,
        in_unnamed_conv_generic67_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_2,
        in_unnamed_conv_generic68_0 => GND_q,
        in_unnamed_conv_generic68_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_3,
        in_valid_in_0 => i_acl_pipeline_keep_going256_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exit453_0 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_0,
        out_c0_exit453_1 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_1,
        out_c0_exit453_2 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_2,
        out_c0_exit453_3 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_3,
        out_c0_exit453_4 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_4,
        out_c0_exit453_5 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_5,
        out_c0_exit453_6 => bb_conv_generic_B13_aunroll_x_out_c0_exit453_6,
        out_c0_exe5458 => bb_conv_generic_B13_aunroll_x_out_c0_exe5458,
        out_exiting_stall_out => bb_conv_generic_B13_aunroll_x_out_exiting_stall_out,
        out_exiting_valid_out => bb_conv_generic_B13_aunroll_x_out_exiting_valid_out,
        out_iowr_bl_ch_out_o_fifodata => bb_conv_generic_B13_aunroll_x_out_iowr_bl_ch_out_o_fifodata,
        out_iowr_bl_ch_out_o_fifovalid => bb_conv_generic_B13_aunroll_x_out_iowr_bl_ch_out_o_fifovalid,
        out_pipeline_valid_out => bb_conv_generic_B13_aunroll_x_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B13_aunroll_x_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B13_aunroll_x_out_stall_out_1,
        out_valid_out_0 => bb_conv_generic_B13_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B13_sr_1_aunroll_x(BLACKBOX,8)
    thebb_conv_generic_B13_sr_1_aunroll_x : bb_conv_generic_B13_sr_1
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B12_out_c0_exe597,
        in_i_data_1 => VCC_q,
        in_i_data_2 => bb_conv_generic_B12_out_c0_exe609,
        in_i_data_3 => bb_conv_generic_B12_out_c0_exe74173,
        in_i_data_4 => bb_conv_generic_B12_out_c0_exe115,
        in_i_data_5 => bb_conv_generic_B12_out_c1_exe113,
        in_i_stall => bb_conv_generic_B13_aunroll_x_out_stall_out_1,
        in_i_valid => loop_limiter_conv_generic2_out_o_valid,
        out_o_data_0 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B13_sr_1_aunroll_x_out_o_data_5,
        out_o_stall => bb_conv_generic_B13_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B13_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- loop_limiter_conv_generic2(BLACKBOX,232)
    theloop_limiter_conv_generic2 : loop_limiter_conv_generic2
    PORT MAP (
        in_i_stall => bb_conv_generic_B13_sr_1_aunroll_x_out_o_stall,
        in_i_stall_exit => bb_conv_generic_B13_aunroll_x_out_exiting_stall_out,
        in_i_valid => bb_conv_generic_B12_out_valid_out_0,
        in_i_valid_exit => bb_conv_generic_B13_aunroll_x_out_exiting_valid_out,
        out_o_stall => loop_limiter_conv_generic2_out_o_stall,
        out_o_valid => loop_limiter_conv_generic2_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B12(BLACKBOX,93)
    thebb_conv_generic_B12 : bb_conv_generic_B12
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_c0_exe115_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_1,
        in_c0_exe597_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_2,
        in_c0_exe609_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_3,
        in_c0_exe6111_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_4,
        in_c0_exe74173_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_0,
        in_c1_exe113_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_5,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => loop_limiter_conv_generic2_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe115 => bb_conv_generic_B12_out_c0_exe115,
        out_c0_exe597 => bb_conv_generic_B12_out_c0_exe597,
        out_c0_exe609 => bb_conv_generic_B12_out_c0_exe609,
        out_c0_exe74173 => bb_conv_generic_B12_out_c0_exe74173,
        out_c1_exe113 => bb_conv_generic_B12_out_c1_exe113,
        out_stall_out_0 => bb_conv_generic_B12_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B12_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B12_sr_0_aunroll_x(BLACKBOX,6)
    thebb_conv_generic_B12_sr_0_aunroll_x : bb_conv_generic_B12_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B11_aunroll_x_out_c0_exe74174,
        in_i_data_1 => bb_conv_generic_B11_aunroll_x_out_c0_exe116,
        in_i_data_2 => bb_conv_generic_B11_aunroll_x_out_c0_exe598,
        in_i_data_3 => bb_conv_generic_B11_aunroll_x_out_c0_exe6010,
        in_i_data_4 => bb_conv_generic_B11_aunroll_x_out_c0_exe6112,
        in_i_data_5 => bb_conv_generic_B11_aunroll_x_out_c1_exe114,
        in_i_stall => bb_conv_generic_B12_out_stall_out_0,
        in_i_valid => bb_conv_generic_B11_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_data_5,
        out_o_stall => bb_conv_generic_B12_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B12_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B11_aunroll_x(BLACKBOX,4)
    thebb_conv_generic_B11_aunroll_x : bb_conv_generic_B11
    PORT MAP (
        in_c0_exit4102_0_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_0,
        in_c0_exit4102_0_1 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_1,
        in_c0_exit4102_0_2 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_2,
        in_c0_exit4102_0_3 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_3,
        in_c0_exit4102_0_4 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_4,
        in_c0_exit4102_0_5 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_5,
        in_c0_exit4102_0_6 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_6,
        in_c0_exit4102_0_7 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_7,
        in_c0_exit4102_0_8 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_8,
        in_c0_exit4102_0_9 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_9,
        in_c0_exit4102_0_10 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_10,
        in_c0_exit4102_0_11 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_11,
        in_c0_exit4102_0_12 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_12,
        in_c0_exit4102_0_13 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_13,
        in_c0_exit4102_0_14 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_14,
        in_c0_exit4102_0_15 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_15,
        in_c0_exit4102_0_16 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_16,
        in_c0_exit4102_0_17 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_17,
        in_c0_exit4102_0_18 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_18,
        in_c0_exit4102_0_19 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_19,
        in_c0_exit4102_0_20 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_20,
        in_c0_exit4102_0_21 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_21,
        in_c0_exit4102_0_22 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_22,
        in_c0_exit4102_0_23 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_23,
        in_c0_exit4102_0_24 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_24,
        in_c0_exit4102_0_25 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_25,
        in_c0_exit4102_0_26 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_26,
        in_c0_exit4102_0_27 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_27,
        in_c0_exit4102_0_28 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_28,
        in_c0_exit4102_0_29 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_29,
        in_c0_exit4102_0_30 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_30,
        in_c0_exit4102_0_31 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_31,
        in_c0_exit4102_0_32 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_32,
        in_c0_exit4102_0_33 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_33,
        in_c0_exit4102_0_34 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_34,
        in_c0_exit4102_0_35 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_35,
        in_c0_exit4102_0_36 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_36,
        in_c0_exit4102_0_37 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_37,
        in_c0_exit4102_0_38 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_38,
        in_c0_exit4102_0_39 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_39,
        in_c0_exit4102_0_40 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_40,
        in_c0_exit4102_0_41 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_41,
        in_c0_exit4102_0_42 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_42,
        in_c0_exit4102_0_43 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_43,
        in_c0_exit4102_0_44 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_44,
        in_c0_exit4102_0_45 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_45,
        in_c0_exit4102_0_46 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_46,
        in_c0_exit4102_0_47 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_47,
        in_c0_exit4102_0_48 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_48,
        in_c0_exit4102_0_49 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_49,
        in_c0_exit4102_0_50 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_50,
        in_c0_exit4102_0_51 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_51,
        in_c0_exit4102_0_52 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_52,
        in_c0_exit4102_0_53 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_53,
        in_c0_exit4102_0_54 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_54,
        in_c0_exit4102_0_55 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_55,
        in_c0_exit4102_0_56 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_56,
        in_c0_exit4102_0_57 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_57,
        in_c0_exit4102_0_58 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_58,
        in_c0_exit4102_0_59 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_59,
        in_c0_exit4102_0_60 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_60,
        in_c0_exit4102_0_61 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_61,
        in_c0_exit4102_0_62 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_62,
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_c0_exe116_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_64,
        in_c0_exe598_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_65,
        in_c0_exe6010_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_66,
        in_c0_exe6112_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_67,
        in_c0_exe74174_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_63,
        in_c1_exe114_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_68,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_pad => in_arg_pad,
        in_stall_in_0 => bb_conv_generic_B12_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_valid_in_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exe116 => bb_conv_generic_B11_aunroll_x_out_c0_exe116,
        out_c0_exe598 => bb_conv_generic_B11_aunroll_x_out_c0_exe598,
        out_c0_exe6010 => bb_conv_generic_B11_aunroll_x_out_c0_exe6010,
        out_c0_exe6112 => bb_conv_generic_B11_aunroll_x_out_c0_exe6112,
        out_c0_exe74174 => bb_conv_generic_B11_aunroll_x_out_c0_exe74174,
        out_c1_exe114 => bb_conv_generic_B11_aunroll_x_out_c1_exe114,
        out_stall_out_0 => bb_conv_generic_B11_aunroll_x_out_stall_out_0,
        out_valid_out_0 => bb_conv_generic_B11_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B11_sr_0_aunroll_x(BLACKBOX,5)
    thebb_conv_generic_B11_sr_0_aunroll_x : bb_conv_generic_B11_sr_0
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_0,
        in_i_data_1 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_1,
        in_i_data_2 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_2,
        in_i_data_3 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_3,
        in_i_data_4 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_4,
        in_i_data_5 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_5,
        in_i_data_6 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_6,
        in_i_data_7 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_7,
        in_i_data_8 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_8,
        in_i_data_9 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_9,
        in_i_data_10 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_10,
        in_i_data_11 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_11,
        in_i_data_12 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_12,
        in_i_data_13 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_13,
        in_i_data_14 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_14,
        in_i_data_15 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_15,
        in_i_data_16 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_16,
        in_i_data_17 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_17,
        in_i_data_18 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_18,
        in_i_data_19 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_19,
        in_i_data_20 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_20,
        in_i_data_21 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_21,
        in_i_data_22 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_22,
        in_i_data_23 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_23,
        in_i_data_24 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_24,
        in_i_data_25 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_25,
        in_i_data_26 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_26,
        in_i_data_27 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_27,
        in_i_data_28 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_28,
        in_i_data_29 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_29,
        in_i_data_30 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_30,
        in_i_data_31 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_31,
        in_i_data_32 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_32,
        in_i_data_33 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_33,
        in_i_data_34 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_34,
        in_i_data_35 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_35,
        in_i_data_36 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_36,
        in_i_data_37 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_37,
        in_i_data_38 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_38,
        in_i_data_39 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_39,
        in_i_data_40 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_40,
        in_i_data_41 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_41,
        in_i_data_42 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_42,
        in_i_data_43 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_43,
        in_i_data_44 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_44,
        in_i_data_45 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_45,
        in_i_data_46 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_46,
        in_i_data_47 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_47,
        in_i_data_48 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_48,
        in_i_data_49 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_49,
        in_i_data_50 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_50,
        in_i_data_51 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_51,
        in_i_data_52 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_52,
        in_i_data_53 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_53,
        in_i_data_54 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_54,
        in_i_data_55 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_55,
        in_i_data_56 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_56,
        in_i_data_57 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_57,
        in_i_data_58 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_58,
        in_i_data_59 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_59,
        in_i_data_60 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_60,
        in_i_data_61 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_61,
        in_i_data_62 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_62,
        in_i_data_63 => bb_conv_generic_B10_aunroll_x_out_c0_exe7417,
        in_i_data_64 => bb_conv_generic_B10_aunroll_x_out_c0_exe11,
        in_i_data_65 => bb_conv_generic_B10_aunroll_x_out_c0_exe59,
        in_i_data_66 => bb_conv_generic_B10_aunroll_x_out_c0_exe60,
        in_i_data_67 => bb_conv_generic_B10_aunroll_x_out_c0_exe61,
        in_i_data_68 => bb_conv_generic_B10_aunroll_x_out_c1_exe1,
        in_i_stall => bb_conv_generic_B11_aunroll_x_out_stall_out_0,
        in_i_valid => bb_conv_generic_B10_aunroll_x_out_valid_out_0,
        out_o_data_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_10,
        out_o_data_11 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_11,
        out_o_data_12 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_12,
        out_o_data_13 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_13,
        out_o_data_14 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_14,
        out_o_data_15 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_15,
        out_o_data_16 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_16,
        out_o_data_17 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_17,
        out_o_data_18 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_18,
        out_o_data_19 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_19,
        out_o_data_20 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_20,
        out_o_data_21 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_21,
        out_o_data_22 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_22,
        out_o_data_23 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_23,
        out_o_data_24 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_24,
        out_o_data_25 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_25,
        out_o_data_26 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_26,
        out_o_data_27 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_27,
        out_o_data_28 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_28,
        out_o_data_29 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_29,
        out_o_data_30 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_30,
        out_o_data_31 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_31,
        out_o_data_32 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_32,
        out_o_data_33 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_33,
        out_o_data_34 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_34,
        out_o_data_35 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_35,
        out_o_data_36 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_36,
        out_o_data_37 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_37,
        out_o_data_38 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_38,
        out_o_data_39 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_39,
        out_o_data_40 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_40,
        out_o_data_41 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_41,
        out_o_data_42 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_42,
        out_o_data_43 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_43,
        out_o_data_44 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_44,
        out_o_data_45 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_45,
        out_o_data_46 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_46,
        out_o_data_47 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_47,
        out_o_data_48 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_48,
        out_o_data_49 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_49,
        out_o_data_50 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_50,
        out_o_data_51 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_51,
        out_o_data_52 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_52,
        out_o_data_53 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_53,
        out_o_data_54 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_54,
        out_o_data_55 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_55,
        out_o_data_56 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_56,
        out_o_data_57 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_57,
        out_o_data_58 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_58,
        out_o_data_59 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_59,
        out_o_data_60 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_60,
        out_o_data_61 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_61,
        out_o_data_62 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_62,
        out_o_data_63 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_63,
        out_o_data_64 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_64,
        out_o_data_65 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_65,
        out_o_data_66 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_66,
        out_o_data_67 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_67,
        out_o_data_68 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_data_68,
        out_o_stall => bb_conv_generic_B11_sr_0_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B11_sr_0_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going219_conv_generic_sr(BLACKBOX,113)
    thei_acl_pipeline_keep_going219_conv_generic_sr : i_acl_pipeline_keep_going219_conv_generic_sr
    PORT MAP (
        in_i_data => GND_q,
        in_i_stall => i_acl_pipeline_keep_going219_conv_generic_valid_fifo_out_stall_out,
        in_i_valid => bb_conv_generic_B10_aunroll_x_out_pipeline_valid_out,
        out_o_stall => i_acl_pipeline_keep_going219_conv_generic_sr_out_o_stall,
        out_o_valid => i_acl_pipeline_keep_going219_conv_generic_sr_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,107)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- bb_conv_generic_B10_sr_1_aunroll_x(BLACKBOX,3)
    thebb_conv_generic_B10_sr_1_aunroll_x : bb_conv_generic_B10_sr_1
    PORT MAP (
        in_i_data_0 => bb_conv_generic_B9_out_c0_exe6385,
        in_i_data_1 => bb_conv_generic_B9_out_c0_exe5384,
        in_i_data_2 => VCC_q,
        in_i_data_3 => bb_conv_generic_B9_out_c0_exe7386,
        in_i_data_4 => bb_conv_generic_B9_out_c0_exe8387,
        in_i_data_5 => bb_conv_generic_B9_out_c0_exe1380,
        in_i_data_6 => bb_conv_generic_B9_out_c0_exe9,
        in_i_data_7 => bb_conv_generic_B9_out_c0_exe4383,
        in_i_data_8 => bb_conv_generic_B9_out_forked267,
        in_i_data_9 => bb_conv_generic_B9_out_c0_exe2381,
        in_i_data_10 => bb_conv_generic_B9_out_c0_exe3382,
        in_i_stall => bb_conv_generic_B10_aunroll_x_out_stall_out_1,
        in_i_valid => loop_limiter_conv_generic5_out_o_valid,
        out_o_data_0 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_0,
        out_o_data_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_1,
        out_o_data_2 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_2,
        out_o_data_3 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_3,
        out_o_data_4 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_4,
        out_o_data_5 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_5,
        out_o_data_6 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_6,
        out_o_data_7 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_7,
        out_o_data_8 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_8,
        out_o_data_9 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_9,
        out_o_data_10 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_10,
        out_o_stall => bb_conv_generic_B10_sr_1_aunroll_x_out_o_stall,
        out_o_valid => bb_conv_generic_B10_sr_1_aunroll_x_out_o_valid,
        clock => clock,
        resetn => resetn
    );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- bb_conv_generic_B10_aunroll_x(BLACKBOX,2)
    thebb_conv_generic_B10_aunroll_x : bb_conv_generic_B10
    PORT MAP (
        in_M_mult => in_arg_M_mult,
        in_M_shift => in_arg_M_shift,
        in_flush => in_start,
        in_forked216_0 => GND_q,
        in_forked216_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_2,
        in_forked267283_0 => GND_q,
        in_forked267283_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_8,
        in_forked268280_0 => GND_q,
        in_forked268280_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_5,
        in_fpgaindvars_iv_in_0 => c_i33_undef_q,
        in_fpgaindvars_iv_in_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_0,
        in_h => in_arg_h,
        in_in_c => in_arg_in_c,
        in_iord_bl_ch_in_i_fifodata => in_iord_bl_ch_in_i_fifodata,
        in_iord_bl_ch_in_i_fifovalid => in_iord_bl_ch_in_i_fifovalid,
        in_notexit250284_0 => GND_q,
        in_notexit250284_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_10,
        in_notexit254282_0 => GND_q,
        in_notexit254282_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_7,
        in_pad => in_arg_pad,
        in_pipeline_stall_in => i_acl_pipeline_keep_going219_conv_generic_sr_out_o_stall,
        in_stall_in_0 => bb_conv_generic_B11_sr_0_aunroll_x_out_o_stall,
        in_stall_in_1 => GND_q,
        in_stride => in_arg_stride,
        in_tile_channels => in_arg_tile_channels,
        in_unnamed_conv_generic45_0 => GND_q,
        in_unnamed_conv_generic45_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_3,
        in_unnamed_conv_generic46_0 => GND_q,
        in_unnamed_conv_generic46_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_4,
        in_unnamed_conv_generic47_0 => GND_q,
        in_unnamed_conv_generic47_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_6,
        in_unnamed_conv_generic48_0 => GND_q,
        in_unnamed_conv_generic48_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_9,
        in_unnamed_conv_generic50_avm_readdata => in_unnamed_conv_generic50_avm_readdata,
        in_unnamed_conv_generic50_avm_readdatavalid => in_unnamed_conv_generic50_avm_readdatavalid,
        in_unnamed_conv_generic50_avm_waitrequest => in_unnamed_conv_generic50_avm_waitrequest,
        in_unnamed_conv_generic50_avm_writeack => in_unnamed_conv_generic50_avm_writeack,
        in_unnamed_conv_generic51_avm_readdata => in_unnamed_conv_generic51_avm_readdata,
        in_unnamed_conv_generic51_avm_readdatavalid => in_unnamed_conv_generic51_avm_readdatavalid,
        in_unnamed_conv_generic51_avm_waitrequest => in_unnamed_conv_generic51_avm_waitrequest,
        in_unnamed_conv_generic51_avm_writeack => in_unnamed_conv_generic51_avm_writeack,
        in_unnamed_conv_generic52_avm_readdata => in_unnamed_conv_generic52_avm_readdata,
        in_unnamed_conv_generic52_avm_readdatavalid => in_unnamed_conv_generic52_avm_readdatavalid,
        in_unnamed_conv_generic52_avm_waitrequest => in_unnamed_conv_generic52_avm_waitrequest,
        in_unnamed_conv_generic52_avm_writeack => in_unnamed_conv_generic52_avm_writeack,
        in_unnamed_conv_generic53_avm_readdata => in_unnamed_conv_generic53_avm_readdata,
        in_unnamed_conv_generic53_avm_readdatavalid => in_unnamed_conv_generic53_avm_readdatavalid,
        in_unnamed_conv_generic53_avm_waitrequest => in_unnamed_conv_generic53_avm_waitrequest,
        in_unnamed_conv_generic53_avm_writeack => in_unnamed_conv_generic53_avm_writeack,
        in_unnamed_conv_generic54_avm_readdata => in_unnamed_conv_generic54_avm_readdata,
        in_unnamed_conv_generic54_avm_readdatavalid => in_unnamed_conv_generic54_avm_readdatavalid,
        in_unnamed_conv_generic54_avm_waitrequest => in_unnamed_conv_generic54_avm_waitrequest,
        in_unnamed_conv_generic54_avm_writeack => in_unnamed_conv_generic54_avm_writeack,
        in_unnamed_conv_generic55_avm_readdata => in_unnamed_conv_generic55_avm_readdata,
        in_unnamed_conv_generic55_avm_readdatavalid => in_unnamed_conv_generic55_avm_readdatavalid,
        in_unnamed_conv_generic55_avm_waitrequest => in_unnamed_conv_generic55_avm_waitrequest,
        in_unnamed_conv_generic55_avm_writeack => in_unnamed_conv_generic55_avm_writeack,
        in_unnamed_conv_generic56_avm_readdata => in_unnamed_conv_generic56_avm_readdata,
        in_unnamed_conv_generic56_avm_readdatavalid => in_unnamed_conv_generic56_avm_readdatavalid,
        in_unnamed_conv_generic56_avm_waitrequest => in_unnamed_conv_generic56_avm_waitrequest,
        in_unnamed_conv_generic56_avm_writeack => in_unnamed_conv_generic56_avm_writeack,
        in_unnamed_conv_generic57_avm_readdata => in_unnamed_conv_generic57_avm_readdata,
        in_unnamed_conv_generic57_avm_readdatavalid => in_unnamed_conv_generic57_avm_readdatavalid,
        in_unnamed_conv_generic57_avm_waitrequest => in_unnamed_conv_generic57_avm_waitrequest,
        in_unnamed_conv_generic57_avm_writeack => in_unnamed_conv_generic57_avm_writeack,
        in_unnamed_conv_generic58_avm_readdata => in_unnamed_conv_generic58_avm_readdata,
        in_unnamed_conv_generic58_avm_readdatavalid => in_unnamed_conv_generic58_avm_readdatavalid,
        in_unnamed_conv_generic58_avm_waitrequest => in_unnamed_conv_generic58_avm_waitrequest,
        in_unnamed_conv_generic58_avm_writeack => in_unnamed_conv_generic58_avm_writeack,
        in_unnamed_conv_generic59_avm_readdata => in_unnamed_conv_generic59_avm_readdata,
        in_unnamed_conv_generic59_avm_readdatavalid => in_unnamed_conv_generic59_avm_readdatavalid,
        in_unnamed_conv_generic59_avm_waitrequest => in_unnamed_conv_generic59_avm_waitrequest,
        in_unnamed_conv_generic59_avm_writeack => in_unnamed_conv_generic59_avm_writeack,
        in_unnamed_conv_generic60_avm_readdata => in_unnamed_conv_generic60_avm_readdata,
        in_unnamed_conv_generic60_avm_readdatavalid => in_unnamed_conv_generic60_avm_readdatavalid,
        in_unnamed_conv_generic60_avm_waitrequest => in_unnamed_conv_generic60_avm_waitrequest,
        in_unnamed_conv_generic60_avm_writeack => in_unnamed_conv_generic60_avm_writeack,
        in_unnamed_conv_generic61_avm_readdata => in_unnamed_conv_generic61_avm_readdata,
        in_unnamed_conv_generic61_avm_readdatavalid => in_unnamed_conv_generic61_avm_readdatavalid,
        in_unnamed_conv_generic61_avm_waitrequest => in_unnamed_conv_generic61_avm_waitrequest,
        in_unnamed_conv_generic61_avm_writeack => in_unnamed_conv_generic61_avm_writeack,
        in_unnamed_conv_generic62_avm_readdata => in_unnamed_conv_generic62_avm_readdata,
        in_unnamed_conv_generic62_avm_readdatavalid => in_unnamed_conv_generic62_avm_readdatavalid,
        in_unnamed_conv_generic62_avm_waitrequest => in_unnamed_conv_generic62_avm_waitrequest,
        in_unnamed_conv_generic62_avm_writeack => in_unnamed_conv_generic62_avm_writeack,
        in_unnamed_conv_generic63_avm_readdata => in_unnamed_conv_generic63_avm_readdata,
        in_unnamed_conv_generic63_avm_readdatavalid => in_unnamed_conv_generic63_avm_readdatavalid,
        in_unnamed_conv_generic63_avm_waitrequest => in_unnamed_conv_generic63_avm_waitrequest,
        in_unnamed_conv_generic63_avm_writeack => in_unnamed_conv_generic63_avm_writeack,
        in_unnamed_conv_generic64_avm_readdata => in_unnamed_conv_generic64_avm_readdata,
        in_unnamed_conv_generic64_avm_readdatavalid => in_unnamed_conv_generic64_avm_readdatavalid,
        in_unnamed_conv_generic64_avm_waitrequest => in_unnamed_conv_generic64_avm_waitrequest,
        in_unnamed_conv_generic64_avm_writeack => in_unnamed_conv_generic64_avm_writeack,
        in_unnamed_conv_generic65_avm_readdata => in_unnamed_conv_generic65_avm_readdata,
        in_unnamed_conv_generic65_avm_readdatavalid => in_unnamed_conv_generic65_avm_readdatavalid,
        in_unnamed_conv_generic65_avm_waitrequest => in_unnamed_conv_generic65_avm_waitrequest,
        in_unnamed_conv_generic65_avm_writeack => in_unnamed_conv_generic65_avm_writeack,
        in_valid_in_0 => i_acl_pipeline_keep_going219_conv_generic_valid_fifo_out_valid_out,
        in_valid_in_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_valid,
        in_w => in_arg_w,
        in_w_idx_44_0 => dupName_0_c_i32_undef_x_q,
        in_w_idx_44_1 => bb_conv_generic_B10_sr_1_aunroll_x_out_o_data_1,
        in_w_zero => in_arg_w_zero,
        in_x_zero => in_arg_x_zero,
        in_y_zero => in_arg_y_zero,
        out_c0_exit410_0 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_0,
        out_c0_exit410_1 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_1,
        out_c0_exit410_2 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_2,
        out_c0_exit410_3 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_3,
        out_c0_exit410_4 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_4,
        out_c0_exit410_5 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_5,
        out_c0_exit410_6 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_6,
        out_c0_exit410_7 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_7,
        out_c0_exit410_8 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_8,
        out_c0_exit410_9 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_9,
        out_c0_exit410_10 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_10,
        out_c0_exit410_11 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_11,
        out_c0_exit410_12 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_12,
        out_c0_exit410_13 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_13,
        out_c0_exit410_14 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_14,
        out_c0_exit410_15 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_15,
        out_c0_exit410_16 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_16,
        out_c0_exit410_17 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_17,
        out_c0_exit410_18 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_18,
        out_c0_exit410_19 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_19,
        out_c0_exit410_20 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_20,
        out_c0_exit410_21 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_21,
        out_c0_exit410_22 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_22,
        out_c0_exit410_23 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_23,
        out_c0_exit410_24 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_24,
        out_c0_exit410_25 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_25,
        out_c0_exit410_26 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_26,
        out_c0_exit410_27 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_27,
        out_c0_exit410_28 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_28,
        out_c0_exit410_29 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_29,
        out_c0_exit410_30 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_30,
        out_c0_exit410_31 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_31,
        out_c0_exit410_32 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_32,
        out_c0_exit410_33 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_33,
        out_c0_exit410_34 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_34,
        out_c0_exit410_35 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_35,
        out_c0_exit410_36 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_36,
        out_c0_exit410_37 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_37,
        out_c0_exit410_38 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_38,
        out_c0_exit410_39 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_39,
        out_c0_exit410_40 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_40,
        out_c0_exit410_41 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_41,
        out_c0_exit410_42 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_42,
        out_c0_exit410_43 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_43,
        out_c0_exit410_44 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_44,
        out_c0_exit410_45 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_45,
        out_c0_exit410_46 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_46,
        out_c0_exit410_47 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_47,
        out_c0_exit410_48 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_48,
        out_c0_exit410_49 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_49,
        out_c0_exit410_50 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_50,
        out_c0_exit410_51 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_51,
        out_c0_exit410_52 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_52,
        out_c0_exit410_53 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_53,
        out_c0_exit410_54 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_54,
        out_c0_exit410_55 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_55,
        out_c0_exit410_56 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_56,
        out_c0_exit410_57 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_57,
        out_c0_exit410_58 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_58,
        out_c0_exit410_59 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_59,
        out_c0_exit410_60 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_60,
        out_c0_exit410_61 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_61,
        out_c0_exit410_62 => bb_conv_generic_B10_aunroll_x_out_c0_exit410_62,
        out_c0_exe11 => bb_conv_generic_B10_aunroll_x_out_c0_exe11,
        out_c0_exe59 => bb_conv_generic_B10_aunroll_x_out_c0_exe59,
        out_c0_exe60 => bb_conv_generic_B10_aunroll_x_out_c0_exe60,
        out_c0_exe61 => bb_conv_generic_B10_aunroll_x_out_c0_exe61,
        out_c0_exe7417 => bb_conv_generic_B10_aunroll_x_out_c0_exe7417,
        out_c1_exe1 => bb_conv_generic_B10_aunroll_x_out_c1_exe1,
        out_exiting_stall_out => bb_conv_generic_B10_aunroll_x_out_exiting_stall_out,
        out_exiting_valid_out => bb_conv_generic_B10_aunroll_x_out_exiting_valid_out,
        out_iord_bl_ch_in_o_fifoready => bb_conv_generic_B10_aunroll_x_out_iord_bl_ch_in_o_fifoready,
        out_pipeline_valid_out => bb_conv_generic_B10_aunroll_x_out_pipeline_valid_out,
        out_stall_out_0 => bb_conv_generic_B10_aunroll_x_out_stall_out_0,
        out_stall_out_1 => bb_conv_generic_B10_aunroll_x_out_stall_out_1,
        out_unnamed_conv_generic50_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_address,
        out_unnamed_conv_generic50_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_burstcount,
        out_unnamed_conv_generic50_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_byteenable,
        out_unnamed_conv_generic50_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_enable,
        out_unnamed_conv_generic50_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_read,
        out_unnamed_conv_generic50_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_write,
        out_unnamed_conv_generic50_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_writedata,
        out_unnamed_conv_generic51_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_address,
        out_unnamed_conv_generic51_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_burstcount,
        out_unnamed_conv_generic51_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_byteenable,
        out_unnamed_conv_generic51_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_enable,
        out_unnamed_conv_generic51_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_read,
        out_unnamed_conv_generic51_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_write,
        out_unnamed_conv_generic51_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_writedata,
        out_unnamed_conv_generic52_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_address,
        out_unnamed_conv_generic52_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_burstcount,
        out_unnamed_conv_generic52_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_byteenable,
        out_unnamed_conv_generic52_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_enable,
        out_unnamed_conv_generic52_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_read,
        out_unnamed_conv_generic52_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_write,
        out_unnamed_conv_generic52_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_writedata,
        out_unnamed_conv_generic53_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_address,
        out_unnamed_conv_generic53_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_burstcount,
        out_unnamed_conv_generic53_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_byteenable,
        out_unnamed_conv_generic53_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_enable,
        out_unnamed_conv_generic53_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_read,
        out_unnamed_conv_generic53_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_write,
        out_unnamed_conv_generic53_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_writedata,
        out_unnamed_conv_generic54_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_address,
        out_unnamed_conv_generic54_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_burstcount,
        out_unnamed_conv_generic54_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_byteenable,
        out_unnamed_conv_generic54_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_enable,
        out_unnamed_conv_generic54_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_read,
        out_unnamed_conv_generic54_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_write,
        out_unnamed_conv_generic54_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_writedata,
        out_unnamed_conv_generic55_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_address,
        out_unnamed_conv_generic55_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_burstcount,
        out_unnamed_conv_generic55_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_byteenable,
        out_unnamed_conv_generic55_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_enable,
        out_unnamed_conv_generic55_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_read,
        out_unnamed_conv_generic55_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_write,
        out_unnamed_conv_generic55_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_writedata,
        out_unnamed_conv_generic56_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_address,
        out_unnamed_conv_generic56_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_burstcount,
        out_unnamed_conv_generic56_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_byteenable,
        out_unnamed_conv_generic56_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_enable,
        out_unnamed_conv_generic56_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_read,
        out_unnamed_conv_generic56_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_write,
        out_unnamed_conv_generic56_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_writedata,
        out_unnamed_conv_generic57_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_address,
        out_unnamed_conv_generic57_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_burstcount,
        out_unnamed_conv_generic57_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_byteenable,
        out_unnamed_conv_generic57_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_enable,
        out_unnamed_conv_generic57_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_read,
        out_unnamed_conv_generic57_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_write,
        out_unnamed_conv_generic57_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_writedata,
        out_unnamed_conv_generic58_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_address,
        out_unnamed_conv_generic58_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_burstcount,
        out_unnamed_conv_generic58_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_byteenable,
        out_unnamed_conv_generic58_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_enable,
        out_unnamed_conv_generic58_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_read,
        out_unnamed_conv_generic58_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_write,
        out_unnamed_conv_generic58_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_writedata,
        out_unnamed_conv_generic59_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_address,
        out_unnamed_conv_generic59_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_burstcount,
        out_unnamed_conv_generic59_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_byteenable,
        out_unnamed_conv_generic59_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_enable,
        out_unnamed_conv_generic59_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_read,
        out_unnamed_conv_generic59_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_write,
        out_unnamed_conv_generic59_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_writedata,
        out_unnamed_conv_generic60_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_address,
        out_unnamed_conv_generic60_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_burstcount,
        out_unnamed_conv_generic60_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_byteenable,
        out_unnamed_conv_generic60_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_enable,
        out_unnamed_conv_generic60_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_read,
        out_unnamed_conv_generic60_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_write,
        out_unnamed_conv_generic60_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_writedata,
        out_unnamed_conv_generic61_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_address,
        out_unnamed_conv_generic61_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_burstcount,
        out_unnamed_conv_generic61_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_byteenable,
        out_unnamed_conv_generic61_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_enable,
        out_unnamed_conv_generic61_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_read,
        out_unnamed_conv_generic61_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_write,
        out_unnamed_conv_generic61_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_writedata,
        out_unnamed_conv_generic62_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_address,
        out_unnamed_conv_generic62_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_burstcount,
        out_unnamed_conv_generic62_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_byteenable,
        out_unnamed_conv_generic62_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_enable,
        out_unnamed_conv_generic62_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_read,
        out_unnamed_conv_generic62_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_write,
        out_unnamed_conv_generic62_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_writedata,
        out_unnamed_conv_generic63_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_address,
        out_unnamed_conv_generic63_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_burstcount,
        out_unnamed_conv_generic63_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_byteenable,
        out_unnamed_conv_generic63_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_enable,
        out_unnamed_conv_generic63_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_read,
        out_unnamed_conv_generic63_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_write,
        out_unnamed_conv_generic63_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_writedata,
        out_unnamed_conv_generic64_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_address,
        out_unnamed_conv_generic64_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_burstcount,
        out_unnamed_conv_generic64_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_byteenable,
        out_unnamed_conv_generic64_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_enable,
        out_unnamed_conv_generic64_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_read,
        out_unnamed_conv_generic64_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_write,
        out_unnamed_conv_generic64_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_writedata,
        out_unnamed_conv_generic65_avm_address => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_address,
        out_unnamed_conv_generic65_avm_burstcount => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_burstcount,
        out_unnamed_conv_generic65_avm_byteenable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_byteenable,
        out_unnamed_conv_generic65_avm_enable => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_enable,
        out_unnamed_conv_generic65_avm_read => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_read,
        out_unnamed_conv_generic65_avm_write => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_write,
        out_unnamed_conv_generic65_avm_writedata => bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_writedata,
        out_valid_out_0 => bb_conv_generic_B10_aunroll_x_out_valid_out_0,
        clock => clock,
        resetn => resetn
    );

    -- out_iord_bl_ch_in_o_fifoready(GPOUT,236)
    out_iord_bl_ch_in_o_fifoready <= bb_conv_generic_B10_aunroll_x_out_iord_bl_ch_in_o_fifoready;

    -- out_iowr_bl_ch_out_o_fifodata(GPOUT,237)
    out_iowr_bl_ch_out_o_fifodata <= bb_conv_generic_B13_aunroll_x_out_iowr_bl_ch_out_o_fifodata;

    -- out_iowr_bl_ch_out_o_fifovalid(GPOUT,238)
    out_iowr_bl_ch_out_o_fifovalid <= bb_conv_generic_B13_aunroll_x_out_iowr_bl_ch_out_o_fifovalid;

    -- out_stall_out(GPOUT,239)
    out_stall_out <= bb_conv_generic_B0_out_stall_out_0;

    -- out_unnamed_conv_generic0_avm_address(GPOUT,240)
    out_unnamed_conv_generic0_avm_address <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_address;

    -- out_unnamed_conv_generic0_avm_burstcount(GPOUT,241)
    out_unnamed_conv_generic0_avm_burstcount <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_burstcount;

    -- out_unnamed_conv_generic0_avm_byteenable(GPOUT,242)
    out_unnamed_conv_generic0_avm_byteenable <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_byteenable;

    -- out_unnamed_conv_generic0_avm_enable(GPOUT,243)
    out_unnamed_conv_generic0_avm_enable <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_enable;

    -- out_unnamed_conv_generic0_avm_read(GPOUT,244)
    out_unnamed_conv_generic0_avm_read <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_read;

    -- out_unnamed_conv_generic0_avm_write(GPOUT,245)
    out_unnamed_conv_generic0_avm_write <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_write;

    -- out_unnamed_conv_generic0_avm_writedata(GPOUT,246)
    out_unnamed_conv_generic0_avm_writedata <= bb_conv_generic_B1_out_unnamed_conv_generic0_avm_writedata;

    -- out_unnamed_conv_generic37_avm_address(GPOUT,247)
    out_unnamed_conv_generic37_avm_address <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_address;

    -- out_unnamed_conv_generic37_avm_burstcount(GPOUT,248)
    out_unnamed_conv_generic37_avm_burstcount <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_burstcount;

    -- out_unnamed_conv_generic37_avm_byteenable(GPOUT,249)
    out_unnamed_conv_generic37_avm_byteenable <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_byteenable;

    -- out_unnamed_conv_generic37_avm_enable(GPOUT,250)
    out_unnamed_conv_generic37_avm_enable <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_enable;

    -- out_unnamed_conv_generic37_avm_read(GPOUT,251)
    out_unnamed_conv_generic37_avm_read <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_read;

    -- out_unnamed_conv_generic37_avm_write(GPOUT,252)
    out_unnamed_conv_generic37_avm_write <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_write;

    -- out_unnamed_conv_generic37_avm_writedata(GPOUT,253)
    out_unnamed_conv_generic37_avm_writedata <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic37_avm_writedata;

    -- out_unnamed_conv_generic38_avm_address(GPOUT,254)
    out_unnamed_conv_generic38_avm_address <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_address;

    -- out_unnamed_conv_generic38_avm_burstcount(GPOUT,255)
    out_unnamed_conv_generic38_avm_burstcount <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_burstcount;

    -- out_unnamed_conv_generic38_avm_byteenable(GPOUT,256)
    out_unnamed_conv_generic38_avm_byteenable <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_byteenable;

    -- out_unnamed_conv_generic38_avm_enable(GPOUT,257)
    out_unnamed_conv_generic38_avm_enable <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_enable;

    -- out_unnamed_conv_generic38_avm_read(GPOUT,258)
    out_unnamed_conv_generic38_avm_read <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_read;

    -- out_unnamed_conv_generic38_avm_write(GPOUT,259)
    out_unnamed_conv_generic38_avm_write <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_write;

    -- out_unnamed_conv_generic38_avm_writedata(GPOUT,260)
    out_unnamed_conv_generic38_avm_writedata <= bb_conv_generic_B4_aunroll_x_out_unnamed_conv_generic38_avm_writedata;

    -- out_unnamed_conv_generic50_avm_address(GPOUT,261)
    out_unnamed_conv_generic50_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_address;

    -- out_unnamed_conv_generic50_avm_burstcount(GPOUT,262)
    out_unnamed_conv_generic50_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_burstcount;

    -- out_unnamed_conv_generic50_avm_byteenable(GPOUT,263)
    out_unnamed_conv_generic50_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_byteenable;

    -- out_unnamed_conv_generic50_avm_enable(GPOUT,264)
    out_unnamed_conv_generic50_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_enable;

    -- out_unnamed_conv_generic50_avm_read(GPOUT,265)
    out_unnamed_conv_generic50_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_read;

    -- out_unnamed_conv_generic50_avm_write(GPOUT,266)
    out_unnamed_conv_generic50_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_write;

    -- out_unnamed_conv_generic50_avm_writedata(GPOUT,267)
    out_unnamed_conv_generic50_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic50_avm_writedata;

    -- out_unnamed_conv_generic51_avm_address(GPOUT,268)
    out_unnamed_conv_generic51_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_address;

    -- out_unnamed_conv_generic51_avm_burstcount(GPOUT,269)
    out_unnamed_conv_generic51_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_burstcount;

    -- out_unnamed_conv_generic51_avm_byteenable(GPOUT,270)
    out_unnamed_conv_generic51_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_byteenable;

    -- out_unnamed_conv_generic51_avm_enable(GPOUT,271)
    out_unnamed_conv_generic51_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_enable;

    -- out_unnamed_conv_generic51_avm_read(GPOUT,272)
    out_unnamed_conv_generic51_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_read;

    -- out_unnamed_conv_generic51_avm_write(GPOUT,273)
    out_unnamed_conv_generic51_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_write;

    -- out_unnamed_conv_generic51_avm_writedata(GPOUT,274)
    out_unnamed_conv_generic51_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic51_avm_writedata;

    -- out_unnamed_conv_generic52_avm_address(GPOUT,275)
    out_unnamed_conv_generic52_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_address;

    -- out_unnamed_conv_generic52_avm_burstcount(GPOUT,276)
    out_unnamed_conv_generic52_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_burstcount;

    -- out_unnamed_conv_generic52_avm_byteenable(GPOUT,277)
    out_unnamed_conv_generic52_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_byteenable;

    -- out_unnamed_conv_generic52_avm_enable(GPOUT,278)
    out_unnamed_conv_generic52_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_enable;

    -- out_unnamed_conv_generic52_avm_read(GPOUT,279)
    out_unnamed_conv_generic52_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_read;

    -- out_unnamed_conv_generic52_avm_write(GPOUT,280)
    out_unnamed_conv_generic52_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_write;

    -- out_unnamed_conv_generic52_avm_writedata(GPOUT,281)
    out_unnamed_conv_generic52_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic52_avm_writedata;

    -- out_unnamed_conv_generic53_avm_address(GPOUT,282)
    out_unnamed_conv_generic53_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_address;

    -- out_unnamed_conv_generic53_avm_burstcount(GPOUT,283)
    out_unnamed_conv_generic53_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_burstcount;

    -- out_unnamed_conv_generic53_avm_byteenable(GPOUT,284)
    out_unnamed_conv_generic53_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_byteenable;

    -- out_unnamed_conv_generic53_avm_enable(GPOUT,285)
    out_unnamed_conv_generic53_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_enable;

    -- out_unnamed_conv_generic53_avm_read(GPOUT,286)
    out_unnamed_conv_generic53_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_read;

    -- out_unnamed_conv_generic53_avm_write(GPOUT,287)
    out_unnamed_conv_generic53_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_write;

    -- out_unnamed_conv_generic53_avm_writedata(GPOUT,288)
    out_unnamed_conv_generic53_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic53_avm_writedata;

    -- out_unnamed_conv_generic54_avm_address(GPOUT,289)
    out_unnamed_conv_generic54_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_address;

    -- out_unnamed_conv_generic54_avm_burstcount(GPOUT,290)
    out_unnamed_conv_generic54_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_burstcount;

    -- out_unnamed_conv_generic54_avm_byteenable(GPOUT,291)
    out_unnamed_conv_generic54_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_byteenable;

    -- out_unnamed_conv_generic54_avm_enable(GPOUT,292)
    out_unnamed_conv_generic54_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_enable;

    -- out_unnamed_conv_generic54_avm_read(GPOUT,293)
    out_unnamed_conv_generic54_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_read;

    -- out_unnamed_conv_generic54_avm_write(GPOUT,294)
    out_unnamed_conv_generic54_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_write;

    -- out_unnamed_conv_generic54_avm_writedata(GPOUT,295)
    out_unnamed_conv_generic54_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic54_avm_writedata;

    -- out_unnamed_conv_generic55_avm_address(GPOUT,296)
    out_unnamed_conv_generic55_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_address;

    -- out_unnamed_conv_generic55_avm_burstcount(GPOUT,297)
    out_unnamed_conv_generic55_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_burstcount;

    -- out_unnamed_conv_generic55_avm_byteenable(GPOUT,298)
    out_unnamed_conv_generic55_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_byteenable;

    -- out_unnamed_conv_generic55_avm_enable(GPOUT,299)
    out_unnamed_conv_generic55_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_enable;

    -- out_unnamed_conv_generic55_avm_read(GPOUT,300)
    out_unnamed_conv_generic55_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_read;

    -- out_unnamed_conv_generic55_avm_write(GPOUT,301)
    out_unnamed_conv_generic55_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_write;

    -- out_unnamed_conv_generic55_avm_writedata(GPOUT,302)
    out_unnamed_conv_generic55_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic55_avm_writedata;

    -- out_unnamed_conv_generic56_avm_address(GPOUT,303)
    out_unnamed_conv_generic56_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_address;

    -- out_unnamed_conv_generic56_avm_burstcount(GPOUT,304)
    out_unnamed_conv_generic56_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_burstcount;

    -- out_unnamed_conv_generic56_avm_byteenable(GPOUT,305)
    out_unnamed_conv_generic56_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_byteenable;

    -- out_unnamed_conv_generic56_avm_enable(GPOUT,306)
    out_unnamed_conv_generic56_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_enable;

    -- out_unnamed_conv_generic56_avm_read(GPOUT,307)
    out_unnamed_conv_generic56_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_read;

    -- out_unnamed_conv_generic56_avm_write(GPOUT,308)
    out_unnamed_conv_generic56_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_write;

    -- out_unnamed_conv_generic56_avm_writedata(GPOUT,309)
    out_unnamed_conv_generic56_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic56_avm_writedata;

    -- out_unnamed_conv_generic57_avm_address(GPOUT,310)
    out_unnamed_conv_generic57_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_address;

    -- out_unnamed_conv_generic57_avm_burstcount(GPOUT,311)
    out_unnamed_conv_generic57_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_burstcount;

    -- out_unnamed_conv_generic57_avm_byteenable(GPOUT,312)
    out_unnamed_conv_generic57_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_byteenable;

    -- out_unnamed_conv_generic57_avm_enable(GPOUT,313)
    out_unnamed_conv_generic57_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_enable;

    -- out_unnamed_conv_generic57_avm_read(GPOUT,314)
    out_unnamed_conv_generic57_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_read;

    -- out_unnamed_conv_generic57_avm_write(GPOUT,315)
    out_unnamed_conv_generic57_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_write;

    -- out_unnamed_conv_generic57_avm_writedata(GPOUT,316)
    out_unnamed_conv_generic57_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic57_avm_writedata;

    -- out_unnamed_conv_generic58_avm_address(GPOUT,317)
    out_unnamed_conv_generic58_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_address;

    -- out_unnamed_conv_generic58_avm_burstcount(GPOUT,318)
    out_unnamed_conv_generic58_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_burstcount;

    -- out_unnamed_conv_generic58_avm_byteenable(GPOUT,319)
    out_unnamed_conv_generic58_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_byteenable;

    -- out_unnamed_conv_generic58_avm_enable(GPOUT,320)
    out_unnamed_conv_generic58_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_enable;

    -- out_unnamed_conv_generic58_avm_read(GPOUT,321)
    out_unnamed_conv_generic58_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_read;

    -- out_unnamed_conv_generic58_avm_write(GPOUT,322)
    out_unnamed_conv_generic58_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_write;

    -- out_unnamed_conv_generic58_avm_writedata(GPOUT,323)
    out_unnamed_conv_generic58_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic58_avm_writedata;

    -- out_unnamed_conv_generic59_avm_address(GPOUT,324)
    out_unnamed_conv_generic59_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_address;

    -- out_unnamed_conv_generic59_avm_burstcount(GPOUT,325)
    out_unnamed_conv_generic59_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_burstcount;

    -- out_unnamed_conv_generic59_avm_byteenable(GPOUT,326)
    out_unnamed_conv_generic59_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_byteenable;

    -- out_unnamed_conv_generic59_avm_enable(GPOUT,327)
    out_unnamed_conv_generic59_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_enable;

    -- out_unnamed_conv_generic59_avm_read(GPOUT,328)
    out_unnamed_conv_generic59_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_read;

    -- out_unnamed_conv_generic59_avm_write(GPOUT,329)
    out_unnamed_conv_generic59_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_write;

    -- out_unnamed_conv_generic59_avm_writedata(GPOUT,330)
    out_unnamed_conv_generic59_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic59_avm_writedata;

    -- out_unnamed_conv_generic60_avm_address(GPOUT,331)
    out_unnamed_conv_generic60_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_address;

    -- out_unnamed_conv_generic60_avm_burstcount(GPOUT,332)
    out_unnamed_conv_generic60_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_burstcount;

    -- out_unnamed_conv_generic60_avm_byteenable(GPOUT,333)
    out_unnamed_conv_generic60_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_byteenable;

    -- out_unnamed_conv_generic60_avm_enable(GPOUT,334)
    out_unnamed_conv_generic60_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_enable;

    -- out_unnamed_conv_generic60_avm_read(GPOUT,335)
    out_unnamed_conv_generic60_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_read;

    -- out_unnamed_conv_generic60_avm_write(GPOUT,336)
    out_unnamed_conv_generic60_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_write;

    -- out_unnamed_conv_generic60_avm_writedata(GPOUT,337)
    out_unnamed_conv_generic60_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic60_avm_writedata;

    -- out_unnamed_conv_generic61_avm_address(GPOUT,338)
    out_unnamed_conv_generic61_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_address;

    -- out_unnamed_conv_generic61_avm_burstcount(GPOUT,339)
    out_unnamed_conv_generic61_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_burstcount;

    -- out_unnamed_conv_generic61_avm_byteenable(GPOUT,340)
    out_unnamed_conv_generic61_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_byteenable;

    -- out_unnamed_conv_generic61_avm_enable(GPOUT,341)
    out_unnamed_conv_generic61_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_enable;

    -- out_unnamed_conv_generic61_avm_read(GPOUT,342)
    out_unnamed_conv_generic61_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_read;

    -- out_unnamed_conv_generic61_avm_write(GPOUT,343)
    out_unnamed_conv_generic61_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_write;

    -- out_unnamed_conv_generic61_avm_writedata(GPOUT,344)
    out_unnamed_conv_generic61_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic61_avm_writedata;

    -- out_unnamed_conv_generic62_avm_address(GPOUT,345)
    out_unnamed_conv_generic62_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_address;

    -- out_unnamed_conv_generic62_avm_burstcount(GPOUT,346)
    out_unnamed_conv_generic62_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_burstcount;

    -- out_unnamed_conv_generic62_avm_byteenable(GPOUT,347)
    out_unnamed_conv_generic62_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_byteenable;

    -- out_unnamed_conv_generic62_avm_enable(GPOUT,348)
    out_unnamed_conv_generic62_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_enable;

    -- out_unnamed_conv_generic62_avm_read(GPOUT,349)
    out_unnamed_conv_generic62_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_read;

    -- out_unnamed_conv_generic62_avm_write(GPOUT,350)
    out_unnamed_conv_generic62_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_write;

    -- out_unnamed_conv_generic62_avm_writedata(GPOUT,351)
    out_unnamed_conv_generic62_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic62_avm_writedata;

    -- out_unnamed_conv_generic63_avm_address(GPOUT,352)
    out_unnamed_conv_generic63_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_address;

    -- out_unnamed_conv_generic63_avm_burstcount(GPOUT,353)
    out_unnamed_conv_generic63_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_burstcount;

    -- out_unnamed_conv_generic63_avm_byteenable(GPOUT,354)
    out_unnamed_conv_generic63_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_byteenable;

    -- out_unnamed_conv_generic63_avm_enable(GPOUT,355)
    out_unnamed_conv_generic63_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_enable;

    -- out_unnamed_conv_generic63_avm_read(GPOUT,356)
    out_unnamed_conv_generic63_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_read;

    -- out_unnamed_conv_generic63_avm_write(GPOUT,357)
    out_unnamed_conv_generic63_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_write;

    -- out_unnamed_conv_generic63_avm_writedata(GPOUT,358)
    out_unnamed_conv_generic63_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic63_avm_writedata;

    -- out_unnamed_conv_generic64_avm_address(GPOUT,359)
    out_unnamed_conv_generic64_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_address;

    -- out_unnamed_conv_generic64_avm_burstcount(GPOUT,360)
    out_unnamed_conv_generic64_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_burstcount;

    -- out_unnamed_conv_generic64_avm_byteenable(GPOUT,361)
    out_unnamed_conv_generic64_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_byteenable;

    -- out_unnamed_conv_generic64_avm_enable(GPOUT,362)
    out_unnamed_conv_generic64_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_enable;

    -- out_unnamed_conv_generic64_avm_read(GPOUT,363)
    out_unnamed_conv_generic64_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_read;

    -- out_unnamed_conv_generic64_avm_write(GPOUT,364)
    out_unnamed_conv_generic64_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_write;

    -- out_unnamed_conv_generic64_avm_writedata(GPOUT,365)
    out_unnamed_conv_generic64_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic64_avm_writedata;

    -- out_unnamed_conv_generic65_avm_address(GPOUT,366)
    out_unnamed_conv_generic65_avm_address <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_address;

    -- out_unnamed_conv_generic65_avm_burstcount(GPOUT,367)
    out_unnamed_conv_generic65_avm_burstcount <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_burstcount;

    -- out_unnamed_conv_generic65_avm_byteenable(GPOUT,368)
    out_unnamed_conv_generic65_avm_byteenable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_byteenable;

    -- out_unnamed_conv_generic65_avm_enable(GPOUT,369)
    out_unnamed_conv_generic65_avm_enable <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_enable;

    -- out_unnamed_conv_generic65_avm_read(GPOUT,370)
    out_unnamed_conv_generic65_avm_read <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_read;

    -- out_unnamed_conv_generic65_avm_write(GPOUT,371)
    out_unnamed_conv_generic65_avm_write <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_write;

    -- out_unnamed_conv_generic65_avm_writedata(GPOUT,372)
    out_unnamed_conv_generic65_avm_writedata <= bb_conv_generic_B10_aunroll_x_out_unnamed_conv_generic65_avm_writedata;

    -- out_valid_out(GPOUT,373)
    out_valid_out <= bb_conv_generic_B16_out_valid_out_0;

END normal;
