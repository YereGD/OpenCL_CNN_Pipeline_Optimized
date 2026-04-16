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

-- VHDL created from bb_conv_generic_B4
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

entity bb_conv_generic_B4 is
    port (
        out_c0_exit317_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit317_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_3 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exit317_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exit317_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
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
        out_valid_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        in_M_mult : in std_logic_vector(31 downto 0);  -- ufix32
        in_M_shift : in std_logic_vector(31 downto 0);  -- ufix32
        in_add25273_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add25273_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_brmerge272_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_brmerge272_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_exitcond169274_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_exitcond169274_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_flush : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_in_c : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_oc18_033_pop40271_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_oc18_033_pop40271_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stride : in std_logic_vector(31 downto 0);  -- ufix32
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- ufix8
        in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_off : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_weights : in std_logic_vector(63 downto 0);  -- ufix64
        in_x_zero : in std_logic_vector(7 downto 0);  -- ufix8
        in_y_zero : in std_logic_vector(31 downto 0);  -- ufix32
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end bb_conv_generic_B4;

architecture normal of bb_conv_generic_B4 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component conv_generic_B4_branch is
        port (
            in_c0_exit317_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit317_1 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit317_2 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit317_3 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_c0_exit317_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit317_5 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exit317_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_c0_exe4321 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_1 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_2 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_3 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_c0_exit317_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_5 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_c0_exit317_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component bb_conv_generic_B4_stall_region is
        port (
            in_add25273 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_brmerge272 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exitcond169274 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_flush : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_oc18_033_pop40271 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic37_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_conv_generic38_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_c0_exe4321 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
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
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component conv_generic_B4_merge is
        port (
            in_add25273_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_add25273_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_brmerge272_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_brmerge272_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exitcond169274_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_exitcond169274_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_forked_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_oc18_033_pop40271_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_oc18_033_pop40271_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in_1 : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_add25273 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_brmerge272 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exitcond169274 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_forked : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_oc18_033_pop40271 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out_1 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_c0_exit317_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_valid_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_branch_aunroll_x_out_valid_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_1 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_3 : STD_LOGIC_VECTOR (63 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_5 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exit317_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_c0_exe4321 : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_address : STD_LOGIC_VECTOR (31 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_burstcount : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_byteenable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_writedata : STD_LOGIC_VECTOR (7 downto 0);
    signal bb_conv_generic_B4_stall_region_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_out_add25273 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_B4_merge_out_brmerge272 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_out_exitcond169274 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_out_forked : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_out_oc18_033_pop40271 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv_generic_B4_merge_out_stall_out_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_out_stall_out_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv_generic_B4_merge_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- conv_generic_B4_merge(BLACKBOX,31)
    theconv_generic_B4_merge : conv_generic_B4_merge
    PORT MAP (
        in_add25273_0 => in_add25273_0,
        in_add25273_1 => in_add25273_1,
        in_brmerge272_0 => in_brmerge272_0,
        in_brmerge272_1 => in_brmerge272_1,
        in_exitcond169274_0 => in_exitcond169274_0,
        in_exitcond169274_1 => in_exitcond169274_1,
        in_forked_0 => in_forked_0,
        in_forked_1 => in_forked_1,
        in_oc18_033_pop40271_0 => in_oc18_033_pop40271_0,
        in_oc18_033_pop40271_1 => in_oc18_033_pop40271_1,
        in_stall_in => bb_conv_generic_B4_stall_region_out_stall_out,
        in_valid_in_0 => in_valid_in_0,
        in_valid_in_1 => in_valid_in_1,
        out_add25273 => conv_generic_B4_merge_out_add25273,
        out_brmerge272 => conv_generic_B4_merge_out_brmerge272,
        out_exitcond169274 => conv_generic_B4_merge_out_exitcond169274,
        out_forked => conv_generic_B4_merge_out_forked,
        out_oc18_033_pop40271 => conv_generic_B4_merge_out_oc18_033_pop40271,
        out_stall_out_0 => conv_generic_B4_merge_out_stall_out_0,
        out_stall_out_1 => conv_generic_B4_merge_out_stall_out_1,
        out_valid_out => conv_generic_B4_merge_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- bb_conv_generic_B4_stall_region(BLACKBOX,30)
    thebb_conv_generic_B4_stall_region : bb_conv_generic_B4_stall_region
    PORT MAP (
        in_add25273 => conv_generic_B4_merge_out_add25273,
        in_brmerge272 => conv_generic_B4_merge_out_brmerge272,
        in_exitcond169274 => conv_generic_B4_merge_out_exitcond169274,
        in_flush => in_flush,
        in_forked => conv_generic_B4_merge_out_forked,
        in_intel_reserved_ffwd_18_0 => in_intel_reserved_ffwd_18_0,
        in_oc18_033_pop40271 => conv_generic_B4_merge_out_oc18_033_pop40271,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => conv_generic_B4_branch_aunroll_x_out_stall_out,
        in_unnamed_conv_generic37_avm_readdata => in_unnamed_conv_generic37_avm_readdata,
        in_unnamed_conv_generic37_avm_readdatavalid => in_unnamed_conv_generic37_avm_readdatavalid,
        in_unnamed_conv_generic37_avm_waitrequest => in_unnamed_conv_generic37_avm_waitrequest,
        in_unnamed_conv_generic37_avm_writeack => in_unnamed_conv_generic37_avm_writeack,
        in_unnamed_conv_generic38_avm_readdata => in_unnamed_conv_generic38_avm_readdata,
        in_unnamed_conv_generic38_avm_readdatavalid => in_unnamed_conv_generic38_avm_readdatavalid,
        in_unnamed_conv_generic38_avm_waitrequest => in_unnamed_conv_generic38_avm_waitrequest,
        in_unnamed_conv_generic38_avm_writeack => in_unnamed_conv_generic38_avm_writeack,
        in_valid_in => conv_generic_B4_merge_out_valid_out,
        in_weights => in_weights,
        out_c0_exit317_0 => bb_conv_generic_B4_stall_region_out_c0_exit317_0,
        out_c0_exit317_1 => bb_conv_generic_B4_stall_region_out_c0_exit317_1,
        out_c0_exit317_2 => bb_conv_generic_B4_stall_region_out_c0_exit317_2,
        out_c0_exit317_3 => bb_conv_generic_B4_stall_region_out_c0_exit317_3,
        out_c0_exit317_4 => bb_conv_generic_B4_stall_region_out_c0_exit317_4,
        out_c0_exit317_5 => bb_conv_generic_B4_stall_region_out_c0_exit317_5,
        out_c0_exit317_6 => bb_conv_generic_B4_stall_region_out_c0_exit317_6,
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out => bb_conv_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out,
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out => bb_conv_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out,
        out_c0_exe4321 => bb_conv_generic_B4_stall_region_out_c0_exe4321,
        out_pipeline_valid_out => bb_conv_generic_B4_stall_region_out_pipeline_valid_out,
        out_stall_out => bb_conv_generic_B4_stall_region_out_stall_out,
        out_unnamed_conv_generic37_avm_address => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_address,
        out_unnamed_conv_generic37_avm_burstcount => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_burstcount,
        out_unnamed_conv_generic37_avm_byteenable => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_byteenable,
        out_unnamed_conv_generic37_avm_enable => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_enable,
        out_unnamed_conv_generic37_avm_read => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_read,
        out_unnamed_conv_generic37_avm_write => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_write,
        out_unnamed_conv_generic37_avm_writedata => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_writedata,
        out_unnamed_conv_generic38_avm_address => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_address,
        out_unnamed_conv_generic38_avm_burstcount => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_burstcount,
        out_unnamed_conv_generic38_avm_byteenable => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_byteenable,
        out_unnamed_conv_generic38_avm_enable => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_enable,
        out_unnamed_conv_generic38_avm_read => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_read,
        out_unnamed_conv_generic38_avm_write => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_write,
        out_unnamed_conv_generic38_avm_writedata => bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_writedata,
        out_valid_out => bb_conv_generic_B4_stall_region_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- conv_generic_B4_branch_aunroll_x(BLACKBOX,2)
    theconv_generic_B4_branch_aunroll_x : conv_generic_B4_branch
    PORT MAP (
        in_c0_exit317_0 => bb_conv_generic_B4_stall_region_out_c0_exit317_0,
        in_c0_exit317_1 => bb_conv_generic_B4_stall_region_out_c0_exit317_1,
        in_c0_exit317_2 => bb_conv_generic_B4_stall_region_out_c0_exit317_2,
        in_c0_exit317_3 => bb_conv_generic_B4_stall_region_out_c0_exit317_3,
        in_c0_exit317_4 => bb_conv_generic_B4_stall_region_out_c0_exit317_4,
        in_c0_exit317_5 => bb_conv_generic_B4_stall_region_out_c0_exit317_5,
        in_c0_exit317_6 => bb_conv_generic_B4_stall_region_out_c0_exit317_6,
        in_c0_exe4321 => bb_conv_generic_B4_stall_region_out_c0_exe4321,
        in_stall_in_0 => in_stall_in_0,
        in_stall_in_1 => in_stall_in_1,
        in_valid_in => bb_conv_generic_B4_stall_region_out_valid_out,
        out_c0_exit317_0 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_0,
        out_c0_exit317_1 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_1,
        out_c0_exit317_2 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_2,
        out_c0_exit317_3 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_3,
        out_c0_exit317_4 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_4,
        out_c0_exit317_5 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_5,
        out_c0_exit317_6 => conv_generic_B4_branch_aunroll_x_out_c0_exit317_6,
        out_stall_out => conv_generic_B4_branch_aunroll_x_out_stall_out,
        out_valid_out_0 => conv_generic_B4_branch_aunroll_x_out_valid_out_0,
        out_valid_out_1 => conv_generic_B4_branch_aunroll_x_out_valid_out_1,
        clock => clock,
        resetn => resetn
    );

    -- out_c0_exit317_0(GPOUT,3)
    out_c0_exit317_0 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_0;

    -- out_c0_exit317_1(GPOUT,4)
    out_c0_exit317_1 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_1;

    -- out_c0_exit317_2(GPOUT,5)
    out_c0_exit317_2 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_2;

    -- out_c0_exit317_3(GPOUT,6)
    out_c0_exit317_3 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_3;

    -- out_c0_exit317_4(GPOUT,7)
    out_c0_exit317_4 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_4;

    -- out_c0_exit317_5(GPOUT,8)
    out_c0_exit317_5 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_5;

    -- out_c0_exit317_6(GPOUT,9)
    out_c0_exit317_6 <= conv_generic_B4_branch_aunroll_x_out_c0_exit317_6;

    -- out_exiting_stall_out(GPOUT,10)
    out_exiting_stall_out <= bb_conv_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out;

    -- out_exiting_valid_out(GPOUT,11)
    out_exiting_valid_out <= bb_conv_generic_B4_stall_region_out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out;

    -- out_stall_out_0(GPOUT,12)
    out_stall_out_0 <= conv_generic_B4_merge_out_stall_out_0;

    -- out_stall_out_1(GPOUT,13)
    out_stall_out_1 <= conv_generic_B4_merge_out_stall_out_1;

    -- out_unnamed_conv_generic37_avm_address(GPOUT,14)
    out_unnamed_conv_generic37_avm_address <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_address;

    -- out_unnamed_conv_generic37_avm_burstcount(GPOUT,15)
    out_unnamed_conv_generic37_avm_burstcount <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_burstcount;

    -- out_unnamed_conv_generic37_avm_byteenable(GPOUT,16)
    out_unnamed_conv_generic37_avm_byteenable <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_byteenable;

    -- out_unnamed_conv_generic37_avm_enable(GPOUT,17)
    out_unnamed_conv_generic37_avm_enable <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_enable;

    -- out_unnamed_conv_generic37_avm_read(GPOUT,18)
    out_unnamed_conv_generic37_avm_read <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_read;

    -- out_unnamed_conv_generic37_avm_write(GPOUT,19)
    out_unnamed_conv_generic37_avm_write <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_write;

    -- out_unnamed_conv_generic37_avm_writedata(GPOUT,20)
    out_unnamed_conv_generic37_avm_writedata <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic37_avm_writedata;

    -- out_unnamed_conv_generic38_avm_address(GPOUT,21)
    out_unnamed_conv_generic38_avm_address <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_address;

    -- out_unnamed_conv_generic38_avm_burstcount(GPOUT,22)
    out_unnamed_conv_generic38_avm_burstcount <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_burstcount;

    -- out_unnamed_conv_generic38_avm_byteenable(GPOUT,23)
    out_unnamed_conv_generic38_avm_byteenable <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_byteenable;

    -- out_unnamed_conv_generic38_avm_enable(GPOUT,24)
    out_unnamed_conv_generic38_avm_enable <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_enable;

    -- out_unnamed_conv_generic38_avm_read(GPOUT,25)
    out_unnamed_conv_generic38_avm_read <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_read;

    -- out_unnamed_conv_generic38_avm_write(GPOUT,26)
    out_unnamed_conv_generic38_avm_write <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_write;

    -- out_unnamed_conv_generic38_avm_writedata(GPOUT,27)
    out_unnamed_conv_generic38_avm_writedata <= bb_conv_generic_B4_stall_region_out_unnamed_conv_generic38_avm_writedata;

    -- out_valid_out_0(GPOUT,28)
    out_valid_out_0 <= conv_generic_B4_branch_aunroll_x_out_valid_out_0;

    -- out_valid_out_1(GPOUT,29)
    out_valid_out_1 <= conv_generic_B4_branch_aunroll_x_out_valid_out_1;

    -- pipeline_valid_out_sync(GPOUT,70)
    out_pipeline_valid_out <= bb_conv_generic_B4_stall_region_out_pipeline_valid_out;

END normal;
