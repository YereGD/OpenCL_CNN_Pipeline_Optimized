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

-- VHDL created from conv_generic_function_wrapper
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

entity conv_generic_function_wrapper is
    port (
        avm_unnamed_conv_generic0_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv_generic0_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic0_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic0_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic37_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv_generic37_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic37_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic37_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic38_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic50_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic51_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic52_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic53_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic54_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic55_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic56_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic57_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic58_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic59_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic60_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic61_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic62_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic63_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic64_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic65_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_ch_in_data : in std_logic_vector(7 downto 0);  -- ufix8
        avst_iord_bl_ch_in_valid : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_ch_out_almostfull : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_ch_out_ready : in std_logic_vector(0 downto 0);  -- ufix1
        clock2x : in std_logic_vector(0 downto 0);  -- ufix1
        kernel_arguments : in std_logic_vector(511 downto 0);  -- ufix512
        local_router_hang : in std_logic_vector(0 downto 0);  -- ufix1
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic0_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv_generic0_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv_generic0_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic0_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic0_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic0_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic0_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv_generic37_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_conv_generic37_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_conv_generic37_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic37_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic37_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic37_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic37_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_conv_generic38_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic38_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic38_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic50_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic50_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic50_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic51_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic51_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic51_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic52_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic52_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic52_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic53_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic53_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic53_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic54_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic54_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic54_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic55_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic55_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic55_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic56_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic56_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic56_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic57_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic57_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic57_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic58_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic58_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic58_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic59_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic59_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic59_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic60_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic60_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic60_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic61_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic61_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic61_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic62_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic62_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic62_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic63_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic63_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic63_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic64_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic64_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic64_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avm_unnamed_conv_generic65_address : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_conv_generic65_burstcount : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_byteenable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_conv_generic65_writedata : out std_logic_vector(7 downto 0);  -- ufix8
        avst_iord_bl_ch_in_ready : out std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_ch_out_data : out std_logic_vector(7 downto 0);  -- ufix8
        avst_iowr_bl_ch_out_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock2x_output : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_function_wrapper;

architecture normal of conv_generic_function_wrapper is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_clock2x_holder is
        port (
            clock2x : in std_logic;
            myout : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_function is
        port (
            in_arg_M_mult : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_M_shift : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_b_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_bias : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_w_off : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_w_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_arg_weights : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_arg_y_zero : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_ch_in_i_fifodata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iord_bl_ch_in_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_iowr_bl_ch_out_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic0_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_ch_in_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_out_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_conv_generic0_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
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
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal dupName_1_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_8_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_9_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_10_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal dupName_11_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_12_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_13_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x_bitsignaltemp : std_logic;
    signal acl_clock2x_dummy_consumer_myout : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_myout_bitsignaltemp : std_logic;
    signal arg_M_mult_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_M_shift_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_b_off_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_bias_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_h_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_in_c_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_pad_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_stride_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_tile_channels_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_w_off_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_w_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_w_zero_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal arg_weights_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_x_zero_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal arg_y_zero_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal const_32b_zero_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_iord_bl_ch_in_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_iowr_bl_ch_out_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_iowr_bl_ch_out_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic0_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic37_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic38_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic50_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic51_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic52_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic53_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic54_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic55_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic56_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic57_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic58_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic59_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic60_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic61_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic62_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic63_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic64_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_function_out_unnamed_conv_generic65_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal conv_generic_function_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);
    signal valid_in_pulse_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_pulse_reg1_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_pulse_reg2_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- valid_pulse_reg2_NO_SHIFT_REG(REG,267)
    valid_pulse_reg2_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_pulse_reg2_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            valid_pulse_reg2_NO_SHIFT_REG_q <= valid_pulse_reg1_NO_SHIFT_REG_q;
        END IF;
    END PROCESS;

    -- valid_pulse_reg1_NO_SHIFT_REG(REG,266)
    valid_pulse_reg1_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_pulse_reg1_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            valid_pulse_reg1_NO_SHIFT_REG_q <= start;
        END IF;
    END PROCESS;

    -- valid_in_pulse(LOGICAL,265)
    valid_in_pulse_q <= valid_pulse_reg1_NO_SHIFT_REG_q and valid_pulse_reg2_NO_SHIFT_REG_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- arg_y_zero_select(BITSELECT,31)
    arg_y_zero_select_b <= kernel_arguments(431 downto 400);

    -- dupName_11_ip_dsdk_adapt_cast_x(BITSELECT,13)
    dupName_11_ip_dsdk_adapt_cast_x_b <= arg_y_zero_select_b(31 downto 0);

    -- arg_x_zero_select(BITSELECT,30)
    arg_x_zero_select_b <= kernel_arguments(391 downto 384);

    -- dupName_9_ip_dsdk_adapt_cast_x(BITSELECT,11)
    dupName_9_ip_dsdk_adapt_cast_x_b <= arg_x_zero_select_b(7 downto 0);

    -- arg_weights_select(BITSELECT,29)
    arg_weights_select_b <= kernel_arguments(63 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,123)
    ip_dsdk_adapt_cast_b <= arg_weights_select_b(63 downto 0);

    -- arg_w_zero_select(BITSELECT,28)
    arg_w_zero_select_b <= kernel_arguments(399 downto 392);

    -- dupName_10_ip_dsdk_adapt_cast_x(BITSELECT,12)
    dupName_10_ip_dsdk_adapt_cast_x_b <= arg_w_zero_select_b(7 downto 0);

    -- arg_w_off_select(BITSELECT,26)
    arg_w_off_select_b <= kernel_arguments(159 downto 128);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,3)
    dupName_1_ip_dsdk_adapt_cast_x_b <= arg_w_off_select_b(31 downto 0);

    -- arg_w_select(BITSELECT,27)
    arg_w_select_b <= kernel_arguments(223 downto 192);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,5)
    dupName_3_ip_dsdk_adapt_cast_x_b <= arg_w_select_b(31 downto 0);

    -- arg_tile_channels_select(BITSELECT,25)
    arg_tile_channels_select_b <= kernel_arguments(319 downto 288);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,8)
    dupName_6_ip_dsdk_adapt_cast_x_b <= arg_tile_channels_select_b(31 downto 0);

    -- arg_stride_select(BITSELECT,24)
    arg_stride_select_b <= kernel_arguments(351 downto 320);

    -- dupName_7_ip_dsdk_adapt_cast_x(BITSELECT,9)
    dupName_7_ip_dsdk_adapt_cast_x_b <= arg_stride_select_b(31 downto 0);

    -- arg_pad_select(BITSELECT,23)
    arg_pad_select_b <= kernel_arguments(383 downto 352);

    -- dupName_8_ip_dsdk_adapt_cast_x(BITSELECT,10)
    dupName_8_ip_dsdk_adapt_cast_x_b <= arg_pad_select_b(31 downto 0);

    -- arg_in_c_select(BITSELECT,22)
    arg_in_c_select_b <= kernel_arguments(287 downto 256);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,7)
    dupName_5_ip_dsdk_adapt_cast_x_b <= arg_in_c_select_b(31 downto 0);

    -- arg_h_select(BITSELECT,21)
    arg_h_select_b <= kernel_arguments(255 downto 224);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,6)
    dupName_4_ip_dsdk_adapt_cast_x_b <= arg_h_select_b(31 downto 0);

    -- const_32b_zero_0(CONSTANT,33)
    const_32b_zero_0_q <= "00000000000000000000000000000000";

    -- arg_bias_select(BITSELECT,20)
    arg_bias_select_b <= kernel_arguments(127 downto 64);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,2)
    dupName_0_ip_dsdk_adapt_cast_x_b <= arg_bias_select_b(63 downto 0);

    -- arg_b_off_select(BITSELECT,19)
    arg_b_off_select_b <= kernel_arguments(191 downto 160);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,4)
    dupName_2_ip_dsdk_adapt_cast_x_b <= arg_b_off_select_b(31 downto 0);

    -- arg_M_shift_select(BITSELECT,18)
    arg_M_shift_select_b <= kernel_arguments(495 downto 464);

    -- dupName_13_ip_dsdk_adapt_cast_x(BITSELECT,15)
    dupName_13_ip_dsdk_adapt_cast_x_b <= arg_M_shift_select_b(31 downto 0);

    -- arg_M_mult_select(BITSELECT,17)
    arg_M_mult_select_b <= kernel_arguments(463 downto 432);

    -- dupName_12_ip_dsdk_adapt_cast_x(BITSELECT,14)
    dupName_12_ip_dsdk_adapt_cast_x_b <= arg_M_mult_select_b(31 downto 0);

    -- conv_generic_function(BLACKBOX,36)
    theconv_generic_function : conv_generic_function
    PORT MAP (
        in_arg_M_mult => dupName_12_ip_dsdk_adapt_cast_x_b,
        in_arg_M_shift => dupName_13_ip_dsdk_adapt_cast_x_b,
        in_arg_b_off => dupName_2_ip_dsdk_adapt_cast_x_b,
        in_arg_bias => dupName_0_ip_dsdk_adapt_cast_x_b,
        in_arg_global_size_0 => const_32b_zero_0_q,
        in_arg_global_size_1 => const_32b_zero_0_q,
        in_arg_global_size_2 => const_32b_zero_0_q,
        in_arg_h => dupName_4_ip_dsdk_adapt_cast_x_b,
        in_arg_in_c => dupName_5_ip_dsdk_adapt_cast_x_b,
        in_arg_local_size_0 => const_32b_zero_0_q,
        in_arg_local_size_1 => const_32b_zero_0_q,
        in_arg_local_size_2 => const_32b_zero_0_q,
        in_arg_pad => dupName_8_ip_dsdk_adapt_cast_x_b,
        in_arg_stride => dupName_7_ip_dsdk_adapt_cast_x_b,
        in_arg_tile_channels => dupName_6_ip_dsdk_adapt_cast_x_b,
        in_arg_w => dupName_3_ip_dsdk_adapt_cast_x_b,
        in_arg_w_off => dupName_1_ip_dsdk_adapt_cast_x_b,
        in_arg_w_zero => dupName_10_ip_dsdk_adapt_cast_x_b,
        in_arg_weights => ip_dsdk_adapt_cast_b,
        in_arg_x_zero => dupName_9_ip_dsdk_adapt_cast_x_b,
        in_arg_y_zero => dupName_11_ip_dsdk_adapt_cast_x_b,
        in_iord_bl_ch_in_i_fifodata => avst_iord_bl_ch_in_data,
        in_iord_bl_ch_in_i_fifovalid => avst_iord_bl_ch_in_valid,
        in_iowr_bl_ch_out_i_fifoready => avst_iowr_bl_ch_out_ready,
        in_stall_in => GND_q,
        in_start => start,
        in_unnamed_conv_generic0_avm_readdata => avm_unnamed_conv_generic0_readdata,
        in_unnamed_conv_generic0_avm_readdatavalid => avm_unnamed_conv_generic0_readdatavalid,
        in_unnamed_conv_generic0_avm_waitrequest => avm_unnamed_conv_generic0_waitrequest,
        in_unnamed_conv_generic0_avm_writeack => avm_unnamed_conv_generic0_writeack,
        in_unnamed_conv_generic37_avm_readdata => avm_unnamed_conv_generic37_readdata,
        in_unnamed_conv_generic37_avm_readdatavalid => avm_unnamed_conv_generic37_readdatavalid,
        in_unnamed_conv_generic37_avm_waitrequest => avm_unnamed_conv_generic37_waitrequest,
        in_unnamed_conv_generic37_avm_writeack => avm_unnamed_conv_generic37_writeack,
        in_unnamed_conv_generic38_avm_readdata => avm_unnamed_conv_generic38_readdata,
        in_unnamed_conv_generic38_avm_readdatavalid => avm_unnamed_conv_generic38_readdatavalid,
        in_unnamed_conv_generic38_avm_waitrequest => avm_unnamed_conv_generic38_waitrequest,
        in_unnamed_conv_generic38_avm_writeack => avm_unnamed_conv_generic38_writeack,
        in_unnamed_conv_generic50_avm_readdata => avm_unnamed_conv_generic50_readdata,
        in_unnamed_conv_generic50_avm_readdatavalid => avm_unnamed_conv_generic50_readdatavalid,
        in_unnamed_conv_generic50_avm_waitrequest => avm_unnamed_conv_generic50_waitrequest,
        in_unnamed_conv_generic50_avm_writeack => avm_unnamed_conv_generic50_writeack,
        in_unnamed_conv_generic51_avm_readdata => avm_unnamed_conv_generic51_readdata,
        in_unnamed_conv_generic51_avm_readdatavalid => avm_unnamed_conv_generic51_readdatavalid,
        in_unnamed_conv_generic51_avm_waitrequest => avm_unnamed_conv_generic51_waitrequest,
        in_unnamed_conv_generic51_avm_writeack => avm_unnamed_conv_generic51_writeack,
        in_unnamed_conv_generic52_avm_readdata => avm_unnamed_conv_generic52_readdata,
        in_unnamed_conv_generic52_avm_readdatavalid => avm_unnamed_conv_generic52_readdatavalid,
        in_unnamed_conv_generic52_avm_waitrequest => avm_unnamed_conv_generic52_waitrequest,
        in_unnamed_conv_generic52_avm_writeack => avm_unnamed_conv_generic52_writeack,
        in_unnamed_conv_generic53_avm_readdata => avm_unnamed_conv_generic53_readdata,
        in_unnamed_conv_generic53_avm_readdatavalid => avm_unnamed_conv_generic53_readdatavalid,
        in_unnamed_conv_generic53_avm_waitrequest => avm_unnamed_conv_generic53_waitrequest,
        in_unnamed_conv_generic53_avm_writeack => avm_unnamed_conv_generic53_writeack,
        in_unnamed_conv_generic54_avm_readdata => avm_unnamed_conv_generic54_readdata,
        in_unnamed_conv_generic54_avm_readdatavalid => avm_unnamed_conv_generic54_readdatavalid,
        in_unnamed_conv_generic54_avm_waitrequest => avm_unnamed_conv_generic54_waitrequest,
        in_unnamed_conv_generic54_avm_writeack => avm_unnamed_conv_generic54_writeack,
        in_unnamed_conv_generic55_avm_readdata => avm_unnamed_conv_generic55_readdata,
        in_unnamed_conv_generic55_avm_readdatavalid => avm_unnamed_conv_generic55_readdatavalid,
        in_unnamed_conv_generic55_avm_waitrequest => avm_unnamed_conv_generic55_waitrequest,
        in_unnamed_conv_generic55_avm_writeack => avm_unnamed_conv_generic55_writeack,
        in_unnamed_conv_generic56_avm_readdata => avm_unnamed_conv_generic56_readdata,
        in_unnamed_conv_generic56_avm_readdatavalid => avm_unnamed_conv_generic56_readdatavalid,
        in_unnamed_conv_generic56_avm_waitrequest => avm_unnamed_conv_generic56_waitrequest,
        in_unnamed_conv_generic56_avm_writeack => avm_unnamed_conv_generic56_writeack,
        in_unnamed_conv_generic57_avm_readdata => avm_unnamed_conv_generic57_readdata,
        in_unnamed_conv_generic57_avm_readdatavalid => avm_unnamed_conv_generic57_readdatavalid,
        in_unnamed_conv_generic57_avm_waitrequest => avm_unnamed_conv_generic57_waitrequest,
        in_unnamed_conv_generic57_avm_writeack => avm_unnamed_conv_generic57_writeack,
        in_unnamed_conv_generic58_avm_readdata => avm_unnamed_conv_generic58_readdata,
        in_unnamed_conv_generic58_avm_readdatavalid => avm_unnamed_conv_generic58_readdatavalid,
        in_unnamed_conv_generic58_avm_waitrequest => avm_unnamed_conv_generic58_waitrequest,
        in_unnamed_conv_generic58_avm_writeack => avm_unnamed_conv_generic58_writeack,
        in_unnamed_conv_generic59_avm_readdata => avm_unnamed_conv_generic59_readdata,
        in_unnamed_conv_generic59_avm_readdatavalid => avm_unnamed_conv_generic59_readdatavalid,
        in_unnamed_conv_generic59_avm_waitrequest => avm_unnamed_conv_generic59_waitrequest,
        in_unnamed_conv_generic59_avm_writeack => avm_unnamed_conv_generic59_writeack,
        in_unnamed_conv_generic60_avm_readdata => avm_unnamed_conv_generic60_readdata,
        in_unnamed_conv_generic60_avm_readdatavalid => avm_unnamed_conv_generic60_readdatavalid,
        in_unnamed_conv_generic60_avm_waitrequest => avm_unnamed_conv_generic60_waitrequest,
        in_unnamed_conv_generic60_avm_writeack => avm_unnamed_conv_generic60_writeack,
        in_unnamed_conv_generic61_avm_readdata => avm_unnamed_conv_generic61_readdata,
        in_unnamed_conv_generic61_avm_readdatavalid => avm_unnamed_conv_generic61_readdatavalid,
        in_unnamed_conv_generic61_avm_waitrequest => avm_unnamed_conv_generic61_waitrequest,
        in_unnamed_conv_generic61_avm_writeack => avm_unnamed_conv_generic61_writeack,
        in_unnamed_conv_generic62_avm_readdata => avm_unnamed_conv_generic62_readdata,
        in_unnamed_conv_generic62_avm_readdatavalid => avm_unnamed_conv_generic62_readdatavalid,
        in_unnamed_conv_generic62_avm_waitrequest => avm_unnamed_conv_generic62_waitrequest,
        in_unnamed_conv_generic62_avm_writeack => avm_unnamed_conv_generic62_writeack,
        in_unnamed_conv_generic63_avm_readdata => avm_unnamed_conv_generic63_readdata,
        in_unnamed_conv_generic63_avm_readdatavalid => avm_unnamed_conv_generic63_readdatavalid,
        in_unnamed_conv_generic63_avm_waitrequest => avm_unnamed_conv_generic63_waitrequest,
        in_unnamed_conv_generic63_avm_writeack => avm_unnamed_conv_generic63_writeack,
        in_unnamed_conv_generic64_avm_readdata => avm_unnamed_conv_generic64_readdata,
        in_unnamed_conv_generic64_avm_readdatavalid => avm_unnamed_conv_generic64_readdatavalid,
        in_unnamed_conv_generic64_avm_waitrequest => avm_unnamed_conv_generic64_waitrequest,
        in_unnamed_conv_generic64_avm_writeack => avm_unnamed_conv_generic64_writeack,
        in_unnamed_conv_generic65_avm_readdata => avm_unnamed_conv_generic65_readdata,
        in_unnamed_conv_generic65_avm_readdatavalid => avm_unnamed_conv_generic65_readdatavalid,
        in_unnamed_conv_generic65_avm_waitrequest => avm_unnamed_conv_generic65_waitrequest,
        in_unnamed_conv_generic65_avm_writeack => avm_unnamed_conv_generic65_writeack,
        in_valid_in => valid_in_pulse_q,
        out_iord_bl_ch_in_o_fifoready => conv_generic_function_out_iord_bl_ch_in_o_fifoready,
        out_iowr_bl_ch_out_o_fifodata => conv_generic_function_out_iowr_bl_ch_out_o_fifodata,
        out_iowr_bl_ch_out_o_fifovalid => conv_generic_function_out_iowr_bl_ch_out_o_fifovalid,
        out_unnamed_conv_generic0_avm_address => conv_generic_function_out_unnamed_conv_generic0_avm_address,
        out_unnamed_conv_generic0_avm_burstcount => conv_generic_function_out_unnamed_conv_generic0_avm_burstcount,
        out_unnamed_conv_generic0_avm_byteenable => conv_generic_function_out_unnamed_conv_generic0_avm_byteenable,
        out_unnamed_conv_generic0_avm_enable => conv_generic_function_out_unnamed_conv_generic0_avm_enable,
        out_unnamed_conv_generic0_avm_read => conv_generic_function_out_unnamed_conv_generic0_avm_read,
        out_unnamed_conv_generic0_avm_write => conv_generic_function_out_unnamed_conv_generic0_avm_write,
        out_unnamed_conv_generic0_avm_writedata => conv_generic_function_out_unnamed_conv_generic0_avm_writedata,
        out_unnamed_conv_generic37_avm_address => conv_generic_function_out_unnamed_conv_generic37_avm_address,
        out_unnamed_conv_generic37_avm_burstcount => conv_generic_function_out_unnamed_conv_generic37_avm_burstcount,
        out_unnamed_conv_generic37_avm_byteenable => conv_generic_function_out_unnamed_conv_generic37_avm_byteenable,
        out_unnamed_conv_generic37_avm_enable => conv_generic_function_out_unnamed_conv_generic37_avm_enable,
        out_unnamed_conv_generic37_avm_read => conv_generic_function_out_unnamed_conv_generic37_avm_read,
        out_unnamed_conv_generic37_avm_write => conv_generic_function_out_unnamed_conv_generic37_avm_write,
        out_unnamed_conv_generic37_avm_writedata => conv_generic_function_out_unnamed_conv_generic37_avm_writedata,
        out_unnamed_conv_generic38_avm_address => conv_generic_function_out_unnamed_conv_generic38_avm_address,
        out_unnamed_conv_generic38_avm_burstcount => conv_generic_function_out_unnamed_conv_generic38_avm_burstcount,
        out_unnamed_conv_generic38_avm_byteenable => conv_generic_function_out_unnamed_conv_generic38_avm_byteenable,
        out_unnamed_conv_generic38_avm_enable => conv_generic_function_out_unnamed_conv_generic38_avm_enable,
        out_unnamed_conv_generic38_avm_read => conv_generic_function_out_unnamed_conv_generic38_avm_read,
        out_unnamed_conv_generic38_avm_write => conv_generic_function_out_unnamed_conv_generic38_avm_write,
        out_unnamed_conv_generic38_avm_writedata => conv_generic_function_out_unnamed_conv_generic38_avm_writedata,
        out_unnamed_conv_generic50_avm_address => conv_generic_function_out_unnamed_conv_generic50_avm_address,
        out_unnamed_conv_generic50_avm_burstcount => conv_generic_function_out_unnamed_conv_generic50_avm_burstcount,
        out_unnamed_conv_generic50_avm_byteenable => conv_generic_function_out_unnamed_conv_generic50_avm_byteenable,
        out_unnamed_conv_generic50_avm_enable => conv_generic_function_out_unnamed_conv_generic50_avm_enable,
        out_unnamed_conv_generic50_avm_read => conv_generic_function_out_unnamed_conv_generic50_avm_read,
        out_unnamed_conv_generic50_avm_write => conv_generic_function_out_unnamed_conv_generic50_avm_write,
        out_unnamed_conv_generic50_avm_writedata => conv_generic_function_out_unnamed_conv_generic50_avm_writedata,
        out_unnamed_conv_generic51_avm_address => conv_generic_function_out_unnamed_conv_generic51_avm_address,
        out_unnamed_conv_generic51_avm_burstcount => conv_generic_function_out_unnamed_conv_generic51_avm_burstcount,
        out_unnamed_conv_generic51_avm_byteenable => conv_generic_function_out_unnamed_conv_generic51_avm_byteenable,
        out_unnamed_conv_generic51_avm_enable => conv_generic_function_out_unnamed_conv_generic51_avm_enable,
        out_unnamed_conv_generic51_avm_read => conv_generic_function_out_unnamed_conv_generic51_avm_read,
        out_unnamed_conv_generic51_avm_write => conv_generic_function_out_unnamed_conv_generic51_avm_write,
        out_unnamed_conv_generic51_avm_writedata => conv_generic_function_out_unnamed_conv_generic51_avm_writedata,
        out_unnamed_conv_generic52_avm_address => conv_generic_function_out_unnamed_conv_generic52_avm_address,
        out_unnamed_conv_generic52_avm_burstcount => conv_generic_function_out_unnamed_conv_generic52_avm_burstcount,
        out_unnamed_conv_generic52_avm_byteenable => conv_generic_function_out_unnamed_conv_generic52_avm_byteenable,
        out_unnamed_conv_generic52_avm_enable => conv_generic_function_out_unnamed_conv_generic52_avm_enable,
        out_unnamed_conv_generic52_avm_read => conv_generic_function_out_unnamed_conv_generic52_avm_read,
        out_unnamed_conv_generic52_avm_write => conv_generic_function_out_unnamed_conv_generic52_avm_write,
        out_unnamed_conv_generic52_avm_writedata => conv_generic_function_out_unnamed_conv_generic52_avm_writedata,
        out_unnamed_conv_generic53_avm_address => conv_generic_function_out_unnamed_conv_generic53_avm_address,
        out_unnamed_conv_generic53_avm_burstcount => conv_generic_function_out_unnamed_conv_generic53_avm_burstcount,
        out_unnamed_conv_generic53_avm_byteenable => conv_generic_function_out_unnamed_conv_generic53_avm_byteenable,
        out_unnamed_conv_generic53_avm_enable => conv_generic_function_out_unnamed_conv_generic53_avm_enable,
        out_unnamed_conv_generic53_avm_read => conv_generic_function_out_unnamed_conv_generic53_avm_read,
        out_unnamed_conv_generic53_avm_write => conv_generic_function_out_unnamed_conv_generic53_avm_write,
        out_unnamed_conv_generic53_avm_writedata => conv_generic_function_out_unnamed_conv_generic53_avm_writedata,
        out_unnamed_conv_generic54_avm_address => conv_generic_function_out_unnamed_conv_generic54_avm_address,
        out_unnamed_conv_generic54_avm_burstcount => conv_generic_function_out_unnamed_conv_generic54_avm_burstcount,
        out_unnamed_conv_generic54_avm_byteenable => conv_generic_function_out_unnamed_conv_generic54_avm_byteenable,
        out_unnamed_conv_generic54_avm_enable => conv_generic_function_out_unnamed_conv_generic54_avm_enable,
        out_unnamed_conv_generic54_avm_read => conv_generic_function_out_unnamed_conv_generic54_avm_read,
        out_unnamed_conv_generic54_avm_write => conv_generic_function_out_unnamed_conv_generic54_avm_write,
        out_unnamed_conv_generic54_avm_writedata => conv_generic_function_out_unnamed_conv_generic54_avm_writedata,
        out_unnamed_conv_generic55_avm_address => conv_generic_function_out_unnamed_conv_generic55_avm_address,
        out_unnamed_conv_generic55_avm_burstcount => conv_generic_function_out_unnamed_conv_generic55_avm_burstcount,
        out_unnamed_conv_generic55_avm_byteenable => conv_generic_function_out_unnamed_conv_generic55_avm_byteenable,
        out_unnamed_conv_generic55_avm_enable => conv_generic_function_out_unnamed_conv_generic55_avm_enable,
        out_unnamed_conv_generic55_avm_read => conv_generic_function_out_unnamed_conv_generic55_avm_read,
        out_unnamed_conv_generic55_avm_write => conv_generic_function_out_unnamed_conv_generic55_avm_write,
        out_unnamed_conv_generic55_avm_writedata => conv_generic_function_out_unnamed_conv_generic55_avm_writedata,
        out_unnamed_conv_generic56_avm_address => conv_generic_function_out_unnamed_conv_generic56_avm_address,
        out_unnamed_conv_generic56_avm_burstcount => conv_generic_function_out_unnamed_conv_generic56_avm_burstcount,
        out_unnamed_conv_generic56_avm_byteenable => conv_generic_function_out_unnamed_conv_generic56_avm_byteenable,
        out_unnamed_conv_generic56_avm_enable => conv_generic_function_out_unnamed_conv_generic56_avm_enable,
        out_unnamed_conv_generic56_avm_read => conv_generic_function_out_unnamed_conv_generic56_avm_read,
        out_unnamed_conv_generic56_avm_write => conv_generic_function_out_unnamed_conv_generic56_avm_write,
        out_unnamed_conv_generic56_avm_writedata => conv_generic_function_out_unnamed_conv_generic56_avm_writedata,
        out_unnamed_conv_generic57_avm_address => conv_generic_function_out_unnamed_conv_generic57_avm_address,
        out_unnamed_conv_generic57_avm_burstcount => conv_generic_function_out_unnamed_conv_generic57_avm_burstcount,
        out_unnamed_conv_generic57_avm_byteenable => conv_generic_function_out_unnamed_conv_generic57_avm_byteenable,
        out_unnamed_conv_generic57_avm_enable => conv_generic_function_out_unnamed_conv_generic57_avm_enable,
        out_unnamed_conv_generic57_avm_read => conv_generic_function_out_unnamed_conv_generic57_avm_read,
        out_unnamed_conv_generic57_avm_write => conv_generic_function_out_unnamed_conv_generic57_avm_write,
        out_unnamed_conv_generic57_avm_writedata => conv_generic_function_out_unnamed_conv_generic57_avm_writedata,
        out_unnamed_conv_generic58_avm_address => conv_generic_function_out_unnamed_conv_generic58_avm_address,
        out_unnamed_conv_generic58_avm_burstcount => conv_generic_function_out_unnamed_conv_generic58_avm_burstcount,
        out_unnamed_conv_generic58_avm_byteenable => conv_generic_function_out_unnamed_conv_generic58_avm_byteenable,
        out_unnamed_conv_generic58_avm_enable => conv_generic_function_out_unnamed_conv_generic58_avm_enable,
        out_unnamed_conv_generic58_avm_read => conv_generic_function_out_unnamed_conv_generic58_avm_read,
        out_unnamed_conv_generic58_avm_write => conv_generic_function_out_unnamed_conv_generic58_avm_write,
        out_unnamed_conv_generic58_avm_writedata => conv_generic_function_out_unnamed_conv_generic58_avm_writedata,
        out_unnamed_conv_generic59_avm_address => conv_generic_function_out_unnamed_conv_generic59_avm_address,
        out_unnamed_conv_generic59_avm_burstcount => conv_generic_function_out_unnamed_conv_generic59_avm_burstcount,
        out_unnamed_conv_generic59_avm_byteenable => conv_generic_function_out_unnamed_conv_generic59_avm_byteenable,
        out_unnamed_conv_generic59_avm_enable => conv_generic_function_out_unnamed_conv_generic59_avm_enable,
        out_unnamed_conv_generic59_avm_read => conv_generic_function_out_unnamed_conv_generic59_avm_read,
        out_unnamed_conv_generic59_avm_write => conv_generic_function_out_unnamed_conv_generic59_avm_write,
        out_unnamed_conv_generic59_avm_writedata => conv_generic_function_out_unnamed_conv_generic59_avm_writedata,
        out_unnamed_conv_generic60_avm_address => conv_generic_function_out_unnamed_conv_generic60_avm_address,
        out_unnamed_conv_generic60_avm_burstcount => conv_generic_function_out_unnamed_conv_generic60_avm_burstcount,
        out_unnamed_conv_generic60_avm_byteenable => conv_generic_function_out_unnamed_conv_generic60_avm_byteenable,
        out_unnamed_conv_generic60_avm_enable => conv_generic_function_out_unnamed_conv_generic60_avm_enable,
        out_unnamed_conv_generic60_avm_read => conv_generic_function_out_unnamed_conv_generic60_avm_read,
        out_unnamed_conv_generic60_avm_write => conv_generic_function_out_unnamed_conv_generic60_avm_write,
        out_unnamed_conv_generic60_avm_writedata => conv_generic_function_out_unnamed_conv_generic60_avm_writedata,
        out_unnamed_conv_generic61_avm_address => conv_generic_function_out_unnamed_conv_generic61_avm_address,
        out_unnamed_conv_generic61_avm_burstcount => conv_generic_function_out_unnamed_conv_generic61_avm_burstcount,
        out_unnamed_conv_generic61_avm_byteenable => conv_generic_function_out_unnamed_conv_generic61_avm_byteenable,
        out_unnamed_conv_generic61_avm_enable => conv_generic_function_out_unnamed_conv_generic61_avm_enable,
        out_unnamed_conv_generic61_avm_read => conv_generic_function_out_unnamed_conv_generic61_avm_read,
        out_unnamed_conv_generic61_avm_write => conv_generic_function_out_unnamed_conv_generic61_avm_write,
        out_unnamed_conv_generic61_avm_writedata => conv_generic_function_out_unnamed_conv_generic61_avm_writedata,
        out_unnamed_conv_generic62_avm_address => conv_generic_function_out_unnamed_conv_generic62_avm_address,
        out_unnamed_conv_generic62_avm_burstcount => conv_generic_function_out_unnamed_conv_generic62_avm_burstcount,
        out_unnamed_conv_generic62_avm_byteenable => conv_generic_function_out_unnamed_conv_generic62_avm_byteenable,
        out_unnamed_conv_generic62_avm_enable => conv_generic_function_out_unnamed_conv_generic62_avm_enable,
        out_unnamed_conv_generic62_avm_read => conv_generic_function_out_unnamed_conv_generic62_avm_read,
        out_unnamed_conv_generic62_avm_write => conv_generic_function_out_unnamed_conv_generic62_avm_write,
        out_unnamed_conv_generic62_avm_writedata => conv_generic_function_out_unnamed_conv_generic62_avm_writedata,
        out_unnamed_conv_generic63_avm_address => conv_generic_function_out_unnamed_conv_generic63_avm_address,
        out_unnamed_conv_generic63_avm_burstcount => conv_generic_function_out_unnamed_conv_generic63_avm_burstcount,
        out_unnamed_conv_generic63_avm_byteenable => conv_generic_function_out_unnamed_conv_generic63_avm_byteenable,
        out_unnamed_conv_generic63_avm_enable => conv_generic_function_out_unnamed_conv_generic63_avm_enable,
        out_unnamed_conv_generic63_avm_read => conv_generic_function_out_unnamed_conv_generic63_avm_read,
        out_unnamed_conv_generic63_avm_write => conv_generic_function_out_unnamed_conv_generic63_avm_write,
        out_unnamed_conv_generic63_avm_writedata => conv_generic_function_out_unnamed_conv_generic63_avm_writedata,
        out_unnamed_conv_generic64_avm_address => conv_generic_function_out_unnamed_conv_generic64_avm_address,
        out_unnamed_conv_generic64_avm_burstcount => conv_generic_function_out_unnamed_conv_generic64_avm_burstcount,
        out_unnamed_conv_generic64_avm_byteenable => conv_generic_function_out_unnamed_conv_generic64_avm_byteenable,
        out_unnamed_conv_generic64_avm_enable => conv_generic_function_out_unnamed_conv_generic64_avm_enable,
        out_unnamed_conv_generic64_avm_read => conv_generic_function_out_unnamed_conv_generic64_avm_read,
        out_unnamed_conv_generic64_avm_write => conv_generic_function_out_unnamed_conv_generic64_avm_write,
        out_unnamed_conv_generic64_avm_writedata => conv_generic_function_out_unnamed_conv_generic64_avm_writedata,
        out_unnamed_conv_generic65_avm_address => conv_generic_function_out_unnamed_conv_generic65_avm_address,
        out_unnamed_conv_generic65_avm_burstcount => conv_generic_function_out_unnamed_conv_generic65_avm_burstcount,
        out_unnamed_conv_generic65_avm_byteenable => conv_generic_function_out_unnamed_conv_generic65_avm_byteenable,
        out_unnamed_conv_generic65_avm_enable => conv_generic_function_out_unnamed_conv_generic65_avm_enable,
        out_unnamed_conv_generic65_avm_read => conv_generic_function_out_unnamed_conv_generic65_avm_read,
        out_unnamed_conv_generic65_avm_write => conv_generic_function_out_unnamed_conv_generic65_avm_write,
        out_unnamed_conv_generic65_avm_writedata => conv_generic_function_out_unnamed_conv_generic65_avm_writedata,
        out_valid_out => conv_generic_function_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- avm_unnamed_conv_generic0_address(GPOUT,124)
    avm_unnamed_conv_generic0_address <= conv_generic_function_out_unnamed_conv_generic0_avm_address;

    -- avm_unnamed_conv_generic0_burstcount(GPOUT,125)
    avm_unnamed_conv_generic0_burstcount <= conv_generic_function_out_unnamed_conv_generic0_avm_burstcount;

    -- avm_unnamed_conv_generic0_byteenable(GPOUT,126)
    avm_unnamed_conv_generic0_byteenable <= conv_generic_function_out_unnamed_conv_generic0_avm_byteenable;

    -- avm_unnamed_conv_generic0_enable(GPOUT,127)
    avm_unnamed_conv_generic0_enable <= conv_generic_function_out_unnamed_conv_generic0_avm_enable;

    -- avm_unnamed_conv_generic0_read(GPOUT,128)
    avm_unnamed_conv_generic0_read <= conv_generic_function_out_unnamed_conv_generic0_avm_read;

    -- avm_unnamed_conv_generic0_write(GPOUT,129)
    avm_unnamed_conv_generic0_write <= conv_generic_function_out_unnamed_conv_generic0_avm_write;

    -- avm_unnamed_conv_generic0_writedata(GPOUT,130)
    avm_unnamed_conv_generic0_writedata <= conv_generic_function_out_unnamed_conv_generic0_avm_writedata;

    -- avm_unnamed_conv_generic37_address(GPOUT,131)
    avm_unnamed_conv_generic37_address <= conv_generic_function_out_unnamed_conv_generic37_avm_address;

    -- avm_unnamed_conv_generic37_burstcount(GPOUT,132)
    avm_unnamed_conv_generic37_burstcount <= conv_generic_function_out_unnamed_conv_generic37_avm_burstcount;

    -- avm_unnamed_conv_generic37_byteenable(GPOUT,133)
    avm_unnamed_conv_generic37_byteenable <= conv_generic_function_out_unnamed_conv_generic37_avm_byteenable;

    -- avm_unnamed_conv_generic37_enable(GPOUT,134)
    avm_unnamed_conv_generic37_enable <= conv_generic_function_out_unnamed_conv_generic37_avm_enable;

    -- avm_unnamed_conv_generic37_read(GPOUT,135)
    avm_unnamed_conv_generic37_read <= conv_generic_function_out_unnamed_conv_generic37_avm_read;

    -- avm_unnamed_conv_generic37_write(GPOUT,136)
    avm_unnamed_conv_generic37_write <= conv_generic_function_out_unnamed_conv_generic37_avm_write;

    -- avm_unnamed_conv_generic37_writedata(GPOUT,137)
    avm_unnamed_conv_generic37_writedata <= conv_generic_function_out_unnamed_conv_generic37_avm_writedata;

    -- avm_unnamed_conv_generic38_address(GPOUT,138)
    avm_unnamed_conv_generic38_address <= conv_generic_function_out_unnamed_conv_generic38_avm_address;

    -- avm_unnamed_conv_generic38_burstcount(GPOUT,139)
    avm_unnamed_conv_generic38_burstcount <= conv_generic_function_out_unnamed_conv_generic38_avm_burstcount;

    -- avm_unnamed_conv_generic38_byteenable(GPOUT,140)
    avm_unnamed_conv_generic38_byteenable <= conv_generic_function_out_unnamed_conv_generic38_avm_byteenable;

    -- avm_unnamed_conv_generic38_enable(GPOUT,141)
    avm_unnamed_conv_generic38_enable <= conv_generic_function_out_unnamed_conv_generic38_avm_enable;

    -- avm_unnamed_conv_generic38_read(GPOUT,142)
    avm_unnamed_conv_generic38_read <= conv_generic_function_out_unnamed_conv_generic38_avm_read;

    -- avm_unnamed_conv_generic38_write(GPOUT,143)
    avm_unnamed_conv_generic38_write <= conv_generic_function_out_unnamed_conv_generic38_avm_write;

    -- avm_unnamed_conv_generic38_writedata(GPOUT,144)
    avm_unnamed_conv_generic38_writedata <= conv_generic_function_out_unnamed_conv_generic38_avm_writedata;

    -- avm_unnamed_conv_generic50_address(GPOUT,145)
    avm_unnamed_conv_generic50_address <= conv_generic_function_out_unnamed_conv_generic50_avm_address;

    -- avm_unnamed_conv_generic50_burstcount(GPOUT,146)
    avm_unnamed_conv_generic50_burstcount <= conv_generic_function_out_unnamed_conv_generic50_avm_burstcount;

    -- avm_unnamed_conv_generic50_byteenable(GPOUT,147)
    avm_unnamed_conv_generic50_byteenable <= conv_generic_function_out_unnamed_conv_generic50_avm_byteenable;

    -- avm_unnamed_conv_generic50_enable(GPOUT,148)
    avm_unnamed_conv_generic50_enable <= conv_generic_function_out_unnamed_conv_generic50_avm_enable;

    -- avm_unnamed_conv_generic50_read(GPOUT,149)
    avm_unnamed_conv_generic50_read <= conv_generic_function_out_unnamed_conv_generic50_avm_read;

    -- avm_unnamed_conv_generic50_write(GPOUT,150)
    avm_unnamed_conv_generic50_write <= conv_generic_function_out_unnamed_conv_generic50_avm_write;

    -- avm_unnamed_conv_generic50_writedata(GPOUT,151)
    avm_unnamed_conv_generic50_writedata <= conv_generic_function_out_unnamed_conv_generic50_avm_writedata;

    -- avm_unnamed_conv_generic51_address(GPOUT,152)
    avm_unnamed_conv_generic51_address <= conv_generic_function_out_unnamed_conv_generic51_avm_address;

    -- avm_unnamed_conv_generic51_burstcount(GPOUT,153)
    avm_unnamed_conv_generic51_burstcount <= conv_generic_function_out_unnamed_conv_generic51_avm_burstcount;

    -- avm_unnamed_conv_generic51_byteenable(GPOUT,154)
    avm_unnamed_conv_generic51_byteenable <= conv_generic_function_out_unnamed_conv_generic51_avm_byteenable;

    -- avm_unnamed_conv_generic51_enable(GPOUT,155)
    avm_unnamed_conv_generic51_enable <= conv_generic_function_out_unnamed_conv_generic51_avm_enable;

    -- avm_unnamed_conv_generic51_read(GPOUT,156)
    avm_unnamed_conv_generic51_read <= conv_generic_function_out_unnamed_conv_generic51_avm_read;

    -- avm_unnamed_conv_generic51_write(GPOUT,157)
    avm_unnamed_conv_generic51_write <= conv_generic_function_out_unnamed_conv_generic51_avm_write;

    -- avm_unnamed_conv_generic51_writedata(GPOUT,158)
    avm_unnamed_conv_generic51_writedata <= conv_generic_function_out_unnamed_conv_generic51_avm_writedata;

    -- avm_unnamed_conv_generic52_address(GPOUT,159)
    avm_unnamed_conv_generic52_address <= conv_generic_function_out_unnamed_conv_generic52_avm_address;

    -- avm_unnamed_conv_generic52_burstcount(GPOUT,160)
    avm_unnamed_conv_generic52_burstcount <= conv_generic_function_out_unnamed_conv_generic52_avm_burstcount;

    -- avm_unnamed_conv_generic52_byteenable(GPOUT,161)
    avm_unnamed_conv_generic52_byteenable <= conv_generic_function_out_unnamed_conv_generic52_avm_byteenable;

    -- avm_unnamed_conv_generic52_enable(GPOUT,162)
    avm_unnamed_conv_generic52_enable <= conv_generic_function_out_unnamed_conv_generic52_avm_enable;

    -- avm_unnamed_conv_generic52_read(GPOUT,163)
    avm_unnamed_conv_generic52_read <= conv_generic_function_out_unnamed_conv_generic52_avm_read;

    -- avm_unnamed_conv_generic52_write(GPOUT,164)
    avm_unnamed_conv_generic52_write <= conv_generic_function_out_unnamed_conv_generic52_avm_write;

    -- avm_unnamed_conv_generic52_writedata(GPOUT,165)
    avm_unnamed_conv_generic52_writedata <= conv_generic_function_out_unnamed_conv_generic52_avm_writedata;

    -- avm_unnamed_conv_generic53_address(GPOUT,166)
    avm_unnamed_conv_generic53_address <= conv_generic_function_out_unnamed_conv_generic53_avm_address;

    -- avm_unnamed_conv_generic53_burstcount(GPOUT,167)
    avm_unnamed_conv_generic53_burstcount <= conv_generic_function_out_unnamed_conv_generic53_avm_burstcount;

    -- avm_unnamed_conv_generic53_byteenable(GPOUT,168)
    avm_unnamed_conv_generic53_byteenable <= conv_generic_function_out_unnamed_conv_generic53_avm_byteenable;

    -- avm_unnamed_conv_generic53_enable(GPOUT,169)
    avm_unnamed_conv_generic53_enable <= conv_generic_function_out_unnamed_conv_generic53_avm_enable;

    -- avm_unnamed_conv_generic53_read(GPOUT,170)
    avm_unnamed_conv_generic53_read <= conv_generic_function_out_unnamed_conv_generic53_avm_read;

    -- avm_unnamed_conv_generic53_write(GPOUT,171)
    avm_unnamed_conv_generic53_write <= conv_generic_function_out_unnamed_conv_generic53_avm_write;

    -- avm_unnamed_conv_generic53_writedata(GPOUT,172)
    avm_unnamed_conv_generic53_writedata <= conv_generic_function_out_unnamed_conv_generic53_avm_writedata;

    -- avm_unnamed_conv_generic54_address(GPOUT,173)
    avm_unnamed_conv_generic54_address <= conv_generic_function_out_unnamed_conv_generic54_avm_address;

    -- avm_unnamed_conv_generic54_burstcount(GPOUT,174)
    avm_unnamed_conv_generic54_burstcount <= conv_generic_function_out_unnamed_conv_generic54_avm_burstcount;

    -- avm_unnamed_conv_generic54_byteenable(GPOUT,175)
    avm_unnamed_conv_generic54_byteenable <= conv_generic_function_out_unnamed_conv_generic54_avm_byteenable;

    -- avm_unnamed_conv_generic54_enable(GPOUT,176)
    avm_unnamed_conv_generic54_enable <= conv_generic_function_out_unnamed_conv_generic54_avm_enable;

    -- avm_unnamed_conv_generic54_read(GPOUT,177)
    avm_unnamed_conv_generic54_read <= conv_generic_function_out_unnamed_conv_generic54_avm_read;

    -- avm_unnamed_conv_generic54_write(GPOUT,178)
    avm_unnamed_conv_generic54_write <= conv_generic_function_out_unnamed_conv_generic54_avm_write;

    -- avm_unnamed_conv_generic54_writedata(GPOUT,179)
    avm_unnamed_conv_generic54_writedata <= conv_generic_function_out_unnamed_conv_generic54_avm_writedata;

    -- avm_unnamed_conv_generic55_address(GPOUT,180)
    avm_unnamed_conv_generic55_address <= conv_generic_function_out_unnamed_conv_generic55_avm_address;

    -- avm_unnamed_conv_generic55_burstcount(GPOUT,181)
    avm_unnamed_conv_generic55_burstcount <= conv_generic_function_out_unnamed_conv_generic55_avm_burstcount;

    -- avm_unnamed_conv_generic55_byteenable(GPOUT,182)
    avm_unnamed_conv_generic55_byteenable <= conv_generic_function_out_unnamed_conv_generic55_avm_byteenable;

    -- avm_unnamed_conv_generic55_enable(GPOUT,183)
    avm_unnamed_conv_generic55_enable <= conv_generic_function_out_unnamed_conv_generic55_avm_enable;

    -- avm_unnamed_conv_generic55_read(GPOUT,184)
    avm_unnamed_conv_generic55_read <= conv_generic_function_out_unnamed_conv_generic55_avm_read;

    -- avm_unnamed_conv_generic55_write(GPOUT,185)
    avm_unnamed_conv_generic55_write <= conv_generic_function_out_unnamed_conv_generic55_avm_write;

    -- avm_unnamed_conv_generic55_writedata(GPOUT,186)
    avm_unnamed_conv_generic55_writedata <= conv_generic_function_out_unnamed_conv_generic55_avm_writedata;

    -- avm_unnamed_conv_generic56_address(GPOUT,187)
    avm_unnamed_conv_generic56_address <= conv_generic_function_out_unnamed_conv_generic56_avm_address;

    -- avm_unnamed_conv_generic56_burstcount(GPOUT,188)
    avm_unnamed_conv_generic56_burstcount <= conv_generic_function_out_unnamed_conv_generic56_avm_burstcount;

    -- avm_unnamed_conv_generic56_byteenable(GPOUT,189)
    avm_unnamed_conv_generic56_byteenable <= conv_generic_function_out_unnamed_conv_generic56_avm_byteenable;

    -- avm_unnamed_conv_generic56_enable(GPOUT,190)
    avm_unnamed_conv_generic56_enable <= conv_generic_function_out_unnamed_conv_generic56_avm_enable;

    -- avm_unnamed_conv_generic56_read(GPOUT,191)
    avm_unnamed_conv_generic56_read <= conv_generic_function_out_unnamed_conv_generic56_avm_read;

    -- avm_unnamed_conv_generic56_write(GPOUT,192)
    avm_unnamed_conv_generic56_write <= conv_generic_function_out_unnamed_conv_generic56_avm_write;

    -- avm_unnamed_conv_generic56_writedata(GPOUT,193)
    avm_unnamed_conv_generic56_writedata <= conv_generic_function_out_unnamed_conv_generic56_avm_writedata;

    -- avm_unnamed_conv_generic57_address(GPOUT,194)
    avm_unnamed_conv_generic57_address <= conv_generic_function_out_unnamed_conv_generic57_avm_address;

    -- avm_unnamed_conv_generic57_burstcount(GPOUT,195)
    avm_unnamed_conv_generic57_burstcount <= conv_generic_function_out_unnamed_conv_generic57_avm_burstcount;

    -- avm_unnamed_conv_generic57_byteenable(GPOUT,196)
    avm_unnamed_conv_generic57_byteenable <= conv_generic_function_out_unnamed_conv_generic57_avm_byteenable;

    -- avm_unnamed_conv_generic57_enable(GPOUT,197)
    avm_unnamed_conv_generic57_enable <= conv_generic_function_out_unnamed_conv_generic57_avm_enable;

    -- avm_unnamed_conv_generic57_read(GPOUT,198)
    avm_unnamed_conv_generic57_read <= conv_generic_function_out_unnamed_conv_generic57_avm_read;

    -- avm_unnamed_conv_generic57_write(GPOUT,199)
    avm_unnamed_conv_generic57_write <= conv_generic_function_out_unnamed_conv_generic57_avm_write;

    -- avm_unnamed_conv_generic57_writedata(GPOUT,200)
    avm_unnamed_conv_generic57_writedata <= conv_generic_function_out_unnamed_conv_generic57_avm_writedata;

    -- avm_unnamed_conv_generic58_address(GPOUT,201)
    avm_unnamed_conv_generic58_address <= conv_generic_function_out_unnamed_conv_generic58_avm_address;

    -- avm_unnamed_conv_generic58_burstcount(GPOUT,202)
    avm_unnamed_conv_generic58_burstcount <= conv_generic_function_out_unnamed_conv_generic58_avm_burstcount;

    -- avm_unnamed_conv_generic58_byteenable(GPOUT,203)
    avm_unnamed_conv_generic58_byteenable <= conv_generic_function_out_unnamed_conv_generic58_avm_byteenable;

    -- avm_unnamed_conv_generic58_enable(GPOUT,204)
    avm_unnamed_conv_generic58_enable <= conv_generic_function_out_unnamed_conv_generic58_avm_enable;

    -- avm_unnamed_conv_generic58_read(GPOUT,205)
    avm_unnamed_conv_generic58_read <= conv_generic_function_out_unnamed_conv_generic58_avm_read;

    -- avm_unnamed_conv_generic58_write(GPOUT,206)
    avm_unnamed_conv_generic58_write <= conv_generic_function_out_unnamed_conv_generic58_avm_write;

    -- avm_unnamed_conv_generic58_writedata(GPOUT,207)
    avm_unnamed_conv_generic58_writedata <= conv_generic_function_out_unnamed_conv_generic58_avm_writedata;

    -- avm_unnamed_conv_generic59_address(GPOUT,208)
    avm_unnamed_conv_generic59_address <= conv_generic_function_out_unnamed_conv_generic59_avm_address;

    -- avm_unnamed_conv_generic59_burstcount(GPOUT,209)
    avm_unnamed_conv_generic59_burstcount <= conv_generic_function_out_unnamed_conv_generic59_avm_burstcount;

    -- avm_unnamed_conv_generic59_byteenable(GPOUT,210)
    avm_unnamed_conv_generic59_byteenable <= conv_generic_function_out_unnamed_conv_generic59_avm_byteenable;

    -- avm_unnamed_conv_generic59_enable(GPOUT,211)
    avm_unnamed_conv_generic59_enable <= conv_generic_function_out_unnamed_conv_generic59_avm_enable;

    -- avm_unnamed_conv_generic59_read(GPOUT,212)
    avm_unnamed_conv_generic59_read <= conv_generic_function_out_unnamed_conv_generic59_avm_read;

    -- avm_unnamed_conv_generic59_write(GPOUT,213)
    avm_unnamed_conv_generic59_write <= conv_generic_function_out_unnamed_conv_generic59_avm_write;

    -- avm_unnamed_conv_generic59_writedata(GPOUT,214)
    avm_unnamed_conv_generic59_writedata <= conv_generic_function_out_unnamed_conv_generic59_avm_writedata;

    -- avm_unnamed_conv_generic60_address(GPOUT,215)
    avm_unnamed_conv_generic60_address <= conv_generic_function_out_unnamed_conv_generic60_avm_address;

    -- avm_unnamed_conv_generic60_burstcount(GPOUT,216)
    avm_unnamed_conv_generic60_burstcount <= conv_generic_function_out_unnamed_conv_generic60_avm_burstcount;

    -- avm_unnamed_conv_generic60_byteenable(GPOUT,217)
    avm_unnamed_conv_generic60_byteenable <= conv_generic_function_out_unnamed_conv_generic60_avm_byteenable;

    -- avm_unnamed_conv_generic60_enable(GPOUT,218)
    avm_unnamed_conv_generic60_enable <= conv_generic_function_out_unnamed_conv_generic60_avm_enable;

    -- avm_unnamed_conv_generic60_read(GPOUT,219)
    avm_unnamed_conv_generic60_read <= conv_generic_function_out_unnamed_conv_generic60_avm_read;

    -- avm_unnamed_conv_generic60_write(GPOUT,220)
    avm_unnamed_conv_generic60_write <= conv_generic_function_out_unnamed_conv_generic60_avm_write;

    -- avm_unnamed_conv_generic60_writedata(GPOUT,221)
    avm_unnamed_conv_generic60_writedata <= conv_generic_function_out_unnamed_conv_generic60_avm_writedata;

    -- avm_unnamed_conv_generic61_address(GPOUT,222)
    avm_unnamed_conv_generic61_address <= conv_generic_function_out_unnamed_conv_generic61_avm_address;

    -- avm_unnamed_conv_generic61_burstcount(GPOUT,223)
    avm_unnamed_conv_generic61_burstcount <= conv_generic_function_out_unnamed_conv_generic61_avm_burstcount;

    -- avm_unnamed_conv_generic61_byteenable(GPOUT,224)
    avm_unnamed_conv_generic61_byteenable <= conv_generic_function_out_unnamed_conv_generic61_avm_byteenable;

    -- avm_unnamed_conv_generic61_enable(GPOUT,225)
    avm_unnamed_conv_generic61_enable <= conv_generic_function_out_unnamed_conv_generic61_avm_enable;

    -- avm_unnamed_conv_generic61_read(GPOUT,226)
    avm_unnamed_conv_generic61_read <= conv_generic_function_out_unnamed_conv_generic61_avm_read;

    -- avm_unnamed_conv_generic61_write(GPOUT,227)
    avm_unnamed_conv_generic61_write <= conv_generic_function_out_unnamed_conv_generic61_avm_write;

    -- avm_unnamed_conv_generic61_writedata(GPOUT,228)
    avm_unnamed_conv_generic61_writedata <= conv_generic_function_out_unnamed_conv_generic61_avm_writedata;

    -- avm_unnamed_conv_generic62_address(GPOUT,229)
    avm_unnamed_conv_generic62_address <= conv_generic_function_out_unnamed_conv_generic62_avm_address;

    -- avm_unnamed_conv_generic62_burstcount(GPOUT,230)
    avm_unnamed_conv_generic62_burstcount <= conv_generic_function_out_unnamed_conv_generic62_avm_burstcount;

    -- avm_unnamed_conv_generic62_byteenable(GPOUT,231)
    avm_unnamed_conv_generic62_byteenable <= conv_generic_function_out_unnamed_conv_generic62_avm_byteenable;

    -- avm_unnamed_conv_generic62_enable(GPOUT,232)
    avm_unnamed_conv_generic62_enable <= conv_generic_function_out_unnamed_conv_generic62_avm_enable;

    -- avm_unnamed_conv_generic62_read(GPOUT,233)
    avm_unnamed_conv_generic62_read <= conv_generic_function_out_unnamed_conv_generic62_avm_read;

    -- avm_unnamed_conv_generic62_write(GPOUT,234)
    avm_unnamed_conv_generic62_write <= conv_generic_function_out_unnamed_conv_generic62_avm_write;

    -- avm_unnamed_conv_generic62_writedata(GPOUT,235)
    avm_unnamed_conv_generic62_writedata <= conv_generic_function_out_unnamed_conv_generic62_avm_writedata;

    -- avm_unnamed_conv_generic63_address(GPOUT,236)
    avm_unnamed_conv_generic63_address <= conv_generic_function_out_unnamed_conv_generic63_avm_address;

    -- avm_unnamed_conv_generic63_burstcount(GPOUT,237)
    avm_unnamed_conv_generic63_burstcount <= conv_generic_function_out_unnamed_conv_generic63_avm_burstcount;

    -- avm_unnamed_conv_generic63_byteenable(GPOUT,238)
    avm_unnamed_conv_generic63_byteenable <= conv_generic_function_out_unnamed_conv_generic63_avm_byteenable;

    -- avm_unnamed_conv_generic63_enable(GPOUT,239)
    avm_unnamed_conv_generic63_enable <= conv_generic_function_out_unnamed_conv_generic63_avm_enable;

    -- avm_unnamed_conv_generic63_read(GPOUT,240)
    avm_unnamed_conv_generic63_read <= conv_generic_function_out_unnamed_conv_generic63_avm_read;

    -- avm_unnamed_conv_generic63_write(GPOUT,241)
    avm_unnamed_conv_generic63_write <= conv_generic_function_out_unnamed_conv_generic63_avm_write;

    -- avm_unnamed_conv_generic63_writedata(GPOUT,242)
    avm_unnamed_conv_generic63_writedata <= conv_generic_function_out_unnamed_conv_generic63_avm_writedata;

    -- avm_unnamed_conv_generic64_address(GPOUT,243)
    avm_unnamed_conv_generic64_address <= conv_generic_function_out_unnamed_conv_generic64_avm_address;

    -- avm_unnamed_conv_generic64_burstcount(GPOUT,244)
    avm_unnamed_conv_generic64_burstcount <= conv_generic_function_out_unnamed_conv_generic64_avm_burstcount;

    -- avm_unnamed_conv_generic64_byteenable(GPOUT,245)
    avm_unnamed_conv_generic64_byteenable <= conv_generic_function_out_unnamed_conv_generic64_avm_byteenable;

    -- avm_unnamed_conv_generic64_enable(GPOUT,246)
    avm_unnamed_conv_generic64_enable <= conv_generic_function_out_unnamed_conv_generic64_avm_enable;

    -- avm_unnamed_conv_generic64_read(GPOUT,247)
    avm_unnamed_conv_generic64_read <= conv_generic_function_out_unnamed_conv_generic64_avm_read;

    -- avm_unnamed_conv_generic64_write(GPOUT,248)
    avm_unnamed_conv_generic64_write <= conv_generic_function_out_unnamed_conv_generic64_avm_write;

    -- avm_unnamed_conv_generic64_writedata(GPOUT,249)
    avm_unnamed_conv_generic64_writedata <= conv_generic_function_out_unnamed_conv_generic64_avm_writedata;

    -- avm_unnamed_conv_generic65_address(GPOUT,250)
    avm_unnamed_conv_generic65_address <= conv_generic_function_out_unnamed_conv_generic65_avm_address;

    -- avm_unnamed_conv_generic65_burstcount(GPOUT,251)
    avm_unnamed_conv_generic65_burstcount <= conv_generic_function_out_unnamed_conv_generic65_avm_burstcount;

    -- avm_unnamed_conv_generic65_byteenable(GPOUT,252)
    avm_unnamed_conv_generic65_byteenable <= conv_generic_function_out_unnamed_conv_generic65_avm_byteenable;

    -- avm_unnamed_conv_generic65_enable(GPOUT,253)
    avm_unnamed_conv_generic65_enable <= conv_generic_function_out_unnamed_conv_generic65_avm_enable;

    -- avm_unnamed_conv_generic65_read(GPOUT,254)
    avm_unnamed_conv_generic65_read <= conv_generic_function_out_unnamed_conv_generic65_avm_read;

    -- avm_unnamed_conv_generic65_write(GPOUT,255)
    avm_unnamed_conv_generic65_write <= conv_generic_function_out_unnamed_conv_generic65_avm_write;

    -- avm_unnamed_conv_generic65_writedata(GPOUT,256)
    avm_unnamed_conv_generic65_writedata <= conv_generic_function_out_unnamed_conv_generic65_avm_writedata;

    -- avst_iord_bl_ch_in_ready(GPOUT,257)
    avst_iord_bl_ch_in_ready <= conv_generic_function_out_iord_bl_ch_in_o_fifoready;

    -- avst_iowr_bl_ch_out_data(GPOUT,258)
    avst_iowr_bl_ch_out_data <= conv_generic_function_out_iowr_bl_ch_out_o_fifodata;

    -- avst_iowr_bl_ch_out_valid(GPOUT,259)
    avst_iowr_bl_ch_out_valid <= conv_generic_function_out_iowr_bl_ch_out_o_fifovalid;

    -- acl_clock2x_dummy_consumer(EXTIFACE,16)
    acl_clock2x_dummy_consumer_clock2x <= clock2x;
    acl_clock2x_dummy_consumer_clock2x_bitsignaltemp <= acl_clock2x_dummy_consumer_clock2x(0);
    acl_clock2x_dummy_consumer_myout(0) <= acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    theacl_clock2x_dummy_consumer : acl_clock2x_holder
    PORT MAP (
        clock2x => acl_clock2x_dummy_consumer_clock2x_bitsignaltemp,
        myout => acl_clock2x_dummy_consumer_myout_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- clock2x_output(GPOUT,260)
    clock2x_output <= acl_clock2x_dummy_consumer_myout;

    -- has_a_lsu_active(GPOUT,261)
    has_a_lsu_active <= GND_q;

    -- has_a_write_pending(GPOUT,262)
    has_a_write_pending <= GND_q;

    -- kernel_valid_in(GPOUT,263)
    kernel_valid_in <= valid_in_pulse_q;

    -- kernel_valid_out(GPOUT,264)
    kernel_valid_out <= conv_generic_function_out_valid_out;

END normal;
