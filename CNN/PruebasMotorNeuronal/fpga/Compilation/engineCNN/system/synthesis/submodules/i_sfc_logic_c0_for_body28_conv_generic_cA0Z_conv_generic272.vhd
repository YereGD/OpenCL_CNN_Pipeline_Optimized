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

-- VHDL created from i_sfc_logic_c0_for_body28_conv_generic_c0_enter309_conv_generic272
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

entity i_sfc_logic_c0_for_body28_conv_generic_c0_enter309_conv_generic272 is
    port (
        in_c0_eni5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni5_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni5_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni5_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni5_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni5_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_weights : in std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi6316_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6316_1 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi6316_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6316_3 : out std_logic_vector(63 downto 0);  -- ufix64
        out_c0_exi6316_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6316_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi6316_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body28_conv_generic_c0_enter309_conv_generic272;

architecture normal of i_sfc_logic_c0_for_body28_conv_generic_c0_enter309_conv_generic272 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going209_conv_generic274 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_initeration_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_not_exitcond_in : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_not_exitcond_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_exiting_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_initeration_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_not_exitcond_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_brmerge272_pop45_conv_generic289 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_45 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_45 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_45 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_exitcond169274_pop47_conv_generic306 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_47 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_47 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_47 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_add25273_pop46_conv_generic284 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_46 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_46 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_46 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_i_132_pop43_conv_generic282 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_43 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_43 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_43 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic276 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_44 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_44 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_44 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic280 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_42 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_brmerge272_push45_conv_generic296 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_45 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit211 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_45 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_45 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_exitcond169274_push47_conv_generic308 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_47 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit211 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_47 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_47 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond210_conv_generic304 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_4 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_4 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_add25273_push46_conv_generic294 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_46 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit211 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_46 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_46 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_i_132_push43_conv_generic300 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_43 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit211 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_43 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_43 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_oc18_033_pop40271_push44_conv_generic298 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_44 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit211 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_44 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_44 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic302 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_42 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit211 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_42 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_42 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_conv_generic36_conv_generic278 is
        port (
            in_intel_reserved_ffwd_18_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_18_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_weights_sync_buffer_conv_generic286 is
        port (
            in_buffer_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add29_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next165_conv_generic_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_inc37_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx31_conv_generic_conv_generic288_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx31_conv_generic_conv_generic288_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx31_conv_generic_conv_generic288_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx31_conv_generic_conv_generic288_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx31_conv_generic_conv_generic288_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x_in : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_1_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_a : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_b : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_o : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_q : STD_LOGIC_VECTOR (64 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_extender_x_q : STD_LOGIC_VECTOR (127 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_multconst_x_q : STD_LOGIC_VECTOR (49 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_trunc_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom30_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom32_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_idxprom33_conv_generic_sel_x_b : STD_LOGIC_VECTOR (63 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going209_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_brmerge272_pop45_conv_generic_out_feedback_stall_out_45 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_feedback_stall_out_47 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_add25273_pop46_conv_generic_out_feedback_stall_out_46 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_i_132_pop43_conv_generic_out_feedback_stall_out_43 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_feedback_stall_out_44 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_feedback_stall_out_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_brmerge272_push45_conv_generic_out_feedback_out_45 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_brmerge272_push45_conv_generic_out_feedback_valid_out_45 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_exitcond169274_push47_conv_generic_out_feedback_out_47 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_exitcond169274_push47_conv_generic_out_feedback_valid_out_47 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond210_conv_generic_out_feedback_out_4 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond210_conv_generic_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_add25273_push46_conv_generic_out_feedback_out_46 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_add25273_push46_conv_generic_out_feedback_valid_out_46 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_i_132_push43_conv_generic_out_feedback_out_43 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_i_132_push43_conv_generic_out_feedback_valid_out_43 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_oc18_033_pop40271_push44_conv_generic_out_feedback_out_44 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_oc18_033_pop40271_push44_conv_generic_out_feedback_valid_out_44 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic_out_feedback_out_42 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic_out_feedback_valid_out_42 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add29_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add29_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_ffwd_dst_unnamed_conv_generic36_conv_generic_out_dest_data_out_18_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv164_replace_phi_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv164_replace_phi_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next165_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next165_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next165_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next165_conv_generic_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_inc37_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc37_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc37_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc37_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_notexit211_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_weights_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (63 downto 0);
    signal i_unnamed_conv_generic293_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12_qint : STD_LOGIC_VECTOR (35 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14_q : STD_LOGIC_VECTOR (49 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14_qint : STD_LOGIC_VECTOR (49 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_qint : STD_LOGIC_VECTOR (27 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2_q : STD_LOGIC_VECTOR (23 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2_qint : STD_LOGIC_VECTOR (23 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0_q : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0_qint : STD_LOGIC_VECTOR (20 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_a : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_b : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_o : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_q : STD_LOGIC_VECTOR (21 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond166_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_UpperBits_for_a_q : STD_LOGIC_VECTOR (10 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_a : STD_LOGIC_VECTOR (73 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_b : STD_LOGIC_VECTOR (73 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_o : STD_LOGIC_VECTOR (73 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q : STD_LOGIC_VECTOR (72 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_a : STD_LOGIC_VECTOR (7 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_b : STD_LOGIC_VECTOR (7 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_o : STD_LOGIC_VECTOR (7 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_cin : STD_LOGIC_VECTOR (0 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitJoin_for_q_q : STD_LOGIC_VECTOR (78 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q : STD_LOGIC_VECTOR (72 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q : STD_LOGIC_VECTOR (72 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_c : STD_LOGIC_VECTOR (9 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_d : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_e : STD_LOGIC_VECTOR (17 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b : STD_LOGIC_VECTOR (22 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c : STD_LOGIC_VECTOR (4 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b : STD_LOGIC_VECTOR (4 downto 0);
    signal i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c : STD_LOGIC_VECTOR (5 downto 0);
    signal redist0_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q : STD_LOGIC_VECTOR (4 downto 0);
    signal redist1_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q_1_q : STD_LOGIC_VECTOR (72 downto 0);
    signal redist2_i_unnamed_conv_generic293_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist3_i_notexit211_conv_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_notexit211_conv_generic_q_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_notexit211_conv_generic_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist11_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist12_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_sync_in_aunroll_x_in_c0_eni5_2_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_sync_in_aunroll_x_in_c0_eni5_3_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist16_sync_in_aunroll_x_in_c0_eni5_5_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist20_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist21_bgTrunc_i_add29_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist17_sync_in_aunroll_x_in_i_valid_1(DELAY,170)
    redist17_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist17_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist18_sync_in_aunroll_x_in_i_valid_2(DELAY,171)
    redist18_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_1_q, xout => redist18_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist19_sync_in_aunroll_x_in_i_valid_3(DELAY,172)
    redist19_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist18_sync_in_aunroll_x_in_i_valid_2_q, xout => redist19_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist20_sync_in_aunroll_x_in_i_valid_4(DELAY,173)
    redist20_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist19_sync_in_aunroll_x_in_i_valid_3_q, xout => redist20_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- i_ffwd_dst_unnamed_conv_generic36_conv_generic(BLACKBOX,73)@1
    thei_ffwd_dst_unnamed_conv_generic36_conv_generic : i_ffwd_dst_unnamed_conv_generic36_conv_generic278
    PORT MAP (
        in_intel_reserved_ffwd_18_0 => in_intel_reserved_ffwd_18_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_18_0 => i_ffwd_dst_unnamed_conv_generic36_conv_generic_out_dest_data_out_18_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,54)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next165_conv_generic(ADD,75)@1
    i_fpgaindvars_iv_next165_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv164_replace_phi_conv_generic_q);
    i_fpgaindvars_iv_next165_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next165_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next165_conv_generic_a) + UNSIGNED(i_fpgaindvars_iv_next165_conv_generic_b));
    i_fpgaindvars_iv_next165_conv_generic_q <= i_fpgaindvars_iv_next165_conv_generic_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next165_conv_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next165_conv_generic_sel_x_b <= i_fpgaindvars_iv_next165_conv_generic_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic(BLACKBOX,70)@1
    -- out out_feedback_out_42@20000000
    -- out out_feedback_valid_out_42@20000000
    thei_acl_push_i33_fpgaindvars_iv164_push42_conv_generic : i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic302
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next165_conv_generic_sel_x_b,
        in_feedback_stall_in_42 => i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_feedback_stall_out_42,
        in_notexit211 => i_notexit211_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_42 => i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic_out_feedback_out_42,
        out_feedback_valid_out_42 => i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic_out_feedback_valid_out_42,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,55)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic(BLACKBOX,63)@1
    -- out out_feedback_stall_out_42@20000000
    thei_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic : i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic280
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni5_2,
        in_feedback_in_42 => i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic_out_feedback_out_42,
        in_feedback_valid_in_42 => i_acl_push_i33_fpgaindvars_iv164_push42_conv_generic_out_feedback_valid_out_42,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_data_out,
        out_feedback_stall_out_42 => i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_feedback_stall_out_42,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv164_replace_phi_conv_generic(MUX,74)@1
    i_fpgaindvars_iv164_replace_phi_conv_generic_s <= in_c0_eni5_2;
    i_fpgaindvars_iv164_replace_phi_conv_generic_combproc: PROCESS (i_fpgaindvars_iv164_replace_phi_conv_generic_s, i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_data_out, i_ffwd_dst_unnamed_conv_generic36_conv_generic_out_dest_data_out_18_0)
    BEGIN
        CASE (i_fpgaindvars_iv164_replace_phi_conv_generic_s) IS
            WHEN "0" => i_fpgaindvars_iv164_replace_phi_conv_generic_q <= i_acl_pop_i33_fpgaindvars_iv164_pop42_conv_generic_out_data_out;
            WHEN "1" => i_fpgaindvars_iv164_replace_phi_conv_generic_q <= i_ffwd_dst_unnamed_conv_generic36_conv_generic_out_dest_data_out_18_0;
            WHEN OTHERS => i_fpgaindvars_iv164_replace_phi_conv_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond166_conv_generic_cmp_sign(LOGICAL,127)@1
    i_exitcond166_conv_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv164_replace_phi_conv_generic_q(32 downto 32));

    -- redist12_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_1(DELAY,165)
    redist12_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out, xout => redist12_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_brmerge272_push45_conv_generic(BLACKBOX,64)@2
    -- out out_feedback_out_45@20000000
    -- out out_feedback_valid_out_45@20000000
    thei_acl_push_i1_brmerge272_push45_conv_generic : i_acl_push_i1_brmerge272_push45_conv_generic296
    PORT MAP (
        in_data_in => redist12_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_45 => i_acl_pop_i1_brmerge272_pop45_conv_generic_out_feedback_stall_out_45,
        in_notexit211 => redist3_i_notexit211_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_45 => i_acl_push_i1_brmerge272_push45_conv_generic_out_feedback_out_45,
        out_feedback_valid_out_45 => i_acl_push_i1_brmerge272_push45_conv_generic_out_feedback_valid_out_45,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_brmerge272_pop45_conv_generic(BLACKBOX,58)@1
    -- out out_feedback_stall_out_45@20000000
    thei_acl_pop_i1_brmerge272_pop45_conv_generic : i_acl_pop_i1_brmerge272_pop45_conv_generic289
    PORT MAP (
        in_data_in => in_c0_eni5_4,
        in_dir => in_c0_eni5_2,
        in_feedback_in_45 => i_acl_push_i1_brmerge272_push45_conv_generic_out_feedback_out_45,
        in_feedback_valid_in_45 => i_acl_push_i1_brmerge272_push45_conv_generic_out_feedback_valid_out_45,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out,
        out_feedback_stall_out_45 => i_acl_pop_i1_brmerge272_pop45_conv_generic_out_feedback_stall_out_45,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_conv_generic293(LOGICAL,85)@1
    i_unnamed_conv_generic293_q <= i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out or i_exitcond166_conv_generic_cmp_sign_q;

    -- i_notexit211_conv_generic(LOGICAL,83)@1
    i_notexit211_conv_generic_q <= i_unnamed_conv_generic293_q xor VCC_q;

    -- redist3_i_notexit211_conv_generic_q_1(DELAY,156)
    redist3_i_notexit211_conv_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit211_conv_generic_q, xout => redist3_i_notexit211_conv_generic_q_1_q, clk => clock, aclr => resetn );

    -- redist4_i_notexit211_conv_generic_q_3(DELAY,157)
    redist4_i_notexit211_conv_generic_q_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist3_i_notexit211_conv_generic_q_1_q, xout => redist4_i_notexit211_conv_generic_q_3_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_exitcond169274_push47_conv_generic(BLACKBOX,65)@4
    -- out out_feedback_out_47@20000000
    -- out out_feedback_valid_out_47@20000000
    thei_acl_push_i1_exitcond169274_push47_conv_generic : i_acl_push_i1_exitcond169274_push47_conv_generic308
    PORT MAP (
        in_data_in => redist10_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_47 => i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_feedback_stall_out_47,
        in_notexit211 => redist4_i_notexit211_conv_generic_q_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_47 => i_acl_push_i1_exitcond169274_push47_conv_generic_out_feedback_out_47,
        out_feedback_valid_out_47 => i_acl_push_i1_exitcond169274_push47_conv_generic_out_feedback_valid_out_47,
        clock => clock,
        resetn => resetn
    );

    -- redist14_sync_in_aunroll_x_in_c0_eni5_2_2(DELAY,167)
    redist14_sync_in_aunroll_x_in_c0_eni5_2_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni5_2, xout => redist14_sync_in_aunroll_x_in_c0_eni5_2_2_q, clk => clock, aclr => resetn );

    -- redist16_sync_in_aunroll_x_in_c0_eni5_5_2(DELAY,169)
    redist16_sync_in_aunroll_x_in_c0_eni5_5_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni5_5, xout => redist16_sync_in_aunroll_x_in_c0_eni5_5_2_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i1_exitcond169274_pop47_conv_generic(BLACKBOX,59)@3
    -- out out_feedback_stall_out_47@20000000
    thei_acl_pop_i1_exitcond169274_pop47_conv_generic : i_acl_pop_i1_exitcond169274_pop47_conv_generic306
    PORT MAP (
        in_data_in => redist16_sync_in_aunroll_x_in_c0_eni5_5_2_q,
        in_dir => redist14_sync_in_aunroll_x_in_c0_eni5_2_2_q,
        in_feedback_in_47 => i_acl_push_i1_exitcond169274_push47_conv_generic_out_feedback_out_47,
        in_feedback_valid_in_47 => i_acl_push_i1_exitcond169274_push47_conv_generic_out_feedback_valid_out_47,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out,
        out_feedback_stall_out_47 => i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_feedback_stall_out_47,
        clock => clock,
        resetn => resetn
    );

    -- redist10_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_1(DELAY,163)
    redist10_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out, xout => redist10_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist11_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_2(DELAY,164)
    redist11_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist10_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_1_q, xout => redist11_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- redist5_i_notexit211_conv_generic_q_4(DELAY,158)
    redist5_i_notexit211_conv_generic_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_notexit211_conv_generic_q_3_q, xout => redist5_i_notexit211_conv_generic_q_4_q, clk => clock, aclr => resetn );

    -- redist2_i_unnamed_conv_generic293_q_4(DELAY,155)
    redist2_i_unnamed_conv_generic293_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_unnamed_conv_generic293_q, xout => redist2_i_unnamed_conv_generic293_q_4_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,52)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc37_conv_generic(ADD,82)@4
    i_inc37_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1_q);
    i_inc37_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc37_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc37_conv_generic_a) + UNSIGNED(i_inc37_conv_generic_b));
    i_inc37_conv_generic_q <= i_inc37_conv_generic_o(32 downto 0);

    -- bgTrunc_i_inc37_conv_generic_sel_x(BITSELECT,4)@4
    bgTrunc_i_inc37_conv_generic_sel_x_b <= i_inc37_conv_generic_q(31 downto 0);

    -- i_acl_push_i32_i_132_push43_conv_generic(BLACKBOX,68)@4
    -- out out_feedback_out_43@20000000
    -- out out_feedback_valid_out_43@20000000
    thei_acl_push_i32_i_132_push43_conv_generic : i_acl_push_i32_i_132_push43_conv_generic300
    PORT MAP (
        in_data_in => bgTrunc_i_inc37_conv_generic_sel_x_b,
        in_feedback_stall_in_43 => i_acl_pop_i32_i_132_pop43_conv_generic_out_feedback_stall_out_43,
        in_notexit211 => redist4_i_notexit211_conv_generic_q_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_43 => i_acl_push_i32_i_132_push43_conv_generic_out_feedback_out_43,
        out_feedback_valid_out_43 => i_acl_push_i32_i_132_push43_conv_generic_out_feedback_valid_out_43,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,51)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_i_132_pop43_conv_generic(BLACKBOX,61)@3
    -- out out_feedback_stall_out_43@20000000
    thei_acl_pop_i32_i_132_pop43_conv_generic : i_acl_pop_i32_i_132_pop43_conv_generic282
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => redist14_sync_in_aunroll_x_in_c0_eni5_2_2_q,
        in_feedback_in_43 => i_acl_push_i32_i_132_push43_conv_generic_out_feedback_out_43,
        in_feedback_valid_in_43 => i_acl_push_i32_i_132_push43_conv_generic_out_feedback_valid_out_43,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out,
        out_feedback_stall_out_43 => i_acl_pop_i32_i_132_pop43_conv_generic_out_feedback_stall_out_43,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1(DELAY,160)
    redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out, xout => redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist8_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_2(DELAY,161)
    redist8_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1_q, xout => redist8_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_2_q, clk => clock, aclr => resetn );

    -- i_idxprom32_conv_generic_sel_x(BITSELECT,41)@5
    i_idxprom32_conv_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist8_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_2_q(31 downto 0)), 64)));

    -- i_arrayidx35_conv_generic_conv_generic291_mult_multconst_x(CONSTANT,34)
    i_arrayidx35_conv_generic_conv_generic291_mult_multconst_x_q <= "00000000000000000000000000000000000000000000000000";

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0(BITSHIFT,118)@2
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_c & "000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0_qint(12 downto 0);

    -- i_acl_push_i32_oc18_033_pop40271_push44_conv_generic(BLACKBOX,69)@2
    -- out out_feedback_out_44@20000000
    -- out out_feedback_valid_out_44@20000000
    thei_acl_push_i32_oc18_033_pop40271_push44_conv_generic : i_acl_push_i32_oc18_033_pop40271_push44_conv_generic298
    PORT MAP (
        in_data_in => redist6_i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_44 => i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_feedback_stall_out_44,
        in_notexit211 => redist3_i_notexit211_conv_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_44 => i_acl_push_i32_oc18_033_pop40271_push44_conv_generic_out_feedback_out_44,
        out_feedback_valid_out_44 => i_acl_push_i32_oc18_033_pop40271_push44_conv_generic_out_feedback_valid_out_44,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic(BLACKBOX,62)@1
    -- out out_feedback_stall_out_44@20000000
    thei_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic : i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic276
    PORT MAP (
        in_data_in => in_c0_eni5_1,
        in_dir => in_c0_eni5_2,
        in_feedback_in_44 => i_acl_push_i32_oc18_033_pop40271_push44_conv_generic_out_feedback_out_44,
        in_feedback_valid_in_44 => i_acl_push_i32_oc18_033_pop40271_push44_conv_generic_out_feedback_valid_out_44,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out,
        out_feedback_stall_out_44 => i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_feedback_stall_out_44,
        clock => clock,
        resetn => resetn
    );

    -- redist6_i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out_1(DELAY,159)
    redist6_i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out, xout => redist6_i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_idxprom33_conv_generic_sel_x(BITSELECT,42)@2
    i_idxprom33_conv_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist6_i_acl_pop_i32_oc18_033_pop40271_pop44_conv_generic_out_data_out_1_q(31 downto 0)), 64)));

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select(BITSELECT,150)@2
    i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_b <= i_idxprom33_conv_generic_sel_x_b(17 downto 0);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_c <= i_idxprom33_conv_generic_sel_x_b(63 downto 54);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_d <= i_idxprom33_conv_generic_sel_x_b(35 downto 18);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_e <= i_idxprom33_conv_generic_sel_x_b(53 downto 36);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1(ADD,119)@2 + 1
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_a <= STD_LOGIC_VECTOR("0000" & i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_c);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift0_q);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_o(13 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2(BITSHIFT,120)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_add_1_q & "0000000000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2_qint(23 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15(BITSHIFT,106)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im3_shift2_q & "0000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_qint(27 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,151)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b <= STD_LOGIC_VECTOR(i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_q(22 downto 0));
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c <= STD_LOGIC_VECTOR(i_arrayidx35_conv_generic_conv_generic291_mult_x_align_15_q(27 downto 23));

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0(BITSHIFT,121)@2
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_d & "000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0_qint(20 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1(ADD,122)@2 + 1
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_a <= STD_LOGIC_VECTOR("0000" & i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_d);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift0_q);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_o(21 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2(BITSHIFT,123)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_add_1_q & "0000000000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2_qint(31 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14(BITSHIFT,105)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im6_shift2_q & "000000000000000000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14_qint(49 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,146)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b & i_arrayidx35_conv_generic_conv_generic291_mult_x_align_14_q;

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0(BITSHIFT,124)@2
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_e & "000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0_qint(20 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1(ADD,125)@2 + 1
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_a <= STD_LOGIC_VECTOR("0000" & i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_e);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift0_q);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_o(21 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2(BITSHIFT,126)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_add_1_q & "0000000000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2_qint(31 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12(BITSHIFT,103)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im9_shift2_q & "0000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12_qint(35 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0(BITSHIFT,115)@2
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_b & "000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0_qint(20 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1(ADD,116)@2 + 1
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_a <= STD_LOGIC_VECTOR("0000" & i_arrayidx35_conv_generic_conv_generic291_mult_x_bs1_merged_bit_select_b);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_b <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift0_q);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_b));
        END IF;
    END PROCESS;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_o(21 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2(BITSHIFT,117)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2_qint <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_add_1_q & "0000000000";
    i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2_qint(31 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,141)@3
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b & i_arrayidx35_conv_generic_conv_generic291_mult_x_align_12_q & i_arrayidx35_conv_generic_conv_generic291_mult_x_im0_shift2_q;

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2(ADD,135)@3 + 1
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_a <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_b <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_b));
        END IF;
    END PROCESS;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_c(0) <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_o(73);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_o(72 downto 0);

    -- redist0_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1(DELAY,153)
    redist0_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1 : dspba_delay
    GENERIC MAP ( width => 5, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c, xout => redist0_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c(BITJOIN,149)@4
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q <= GND_q & redist0_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c_1_q;

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_UpperBits_for_a(CONSTANT,130)
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_UpperBits_for_a_q <= "00000000000";

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select(BITSELECT,152)
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_b <= STD_LOGIC_VECTOR(i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_UpperBits_for_a_q(4 downto 0));
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c <= STD_LOGIC_VECTOR(i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_UpperBits_for_a_q(10 downto 5));

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2(ADD,136)@4 + 1
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_cin <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_c;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_a <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_a_tessel0_2_merged_bit_select_c) & '1';
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_b <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitSelect_for_b_BitJoin_for_c_q) & i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_cin(0);
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_b));
        END IF;
    END PROCESS;
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_o(6 downto 1);

    -- redist1_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q_1(DELAY,154)
    redist1_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q_1 : dspba_delay
    GENERIC MAP ( width => 73, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q, xout => redist1_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q_1_q, clk => clock, aclr => resetn );

    -- i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitJoin_for_q(BITJOIN,137)@5
    i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitJoin_for_q_q <= i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p2_of_2_q & redist1_i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_p1_of_2_q_1_q;

    -- i_arrayidx35_conv_generic_conv_generic291_mult_extender_x(BITJOIN,33)@5
    i_arrayidx35_conv_generic_conv_generic291_mult_extender_x_q <= i_arrayidx35_conv_generic_conv_generic291_mult_multconst_x_q & i_arrayidx35_conv_generic_conv_generic291_mult_x_result_add_0_0_BitJoin_for_q_q(77 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_trunc_sel_x(BITSELECT,35)@5
    i_arrayidx35_conv_generic_conv_generic291_trunc_sel_x_b <= i_arrayidx35_conv_generic_conv_generic291_mult_extender_x_q(63 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x(BITSELECT,27)@5
    i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x_in <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_trunc_sel_x_b);
    i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x_b <= i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x_in(63 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x(ADD,30)@5
    i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_a <= STD_LOGIC_VECTOR("0" & i_arrayidx35_conv_generic_conv_generic291_dupName_0_trunc_sel_x_b);
    i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_b <= STD_LOGIC_VECTOR("0" & i_idxprom32_conv_generic_sel_x_b);
    i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_a) + UNSIGNED(i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_b));
    i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_q <= i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_o(64 downto 0);

    -- i_arrayidx35_conv_generic_conv_generic291_dupName_1_trunc_sel_x(BITSELECT,28)@5
    i_arrayidx35_conv_generic_conv_generic291_dupName_1_trunc_sel_x_b <= i_arrayidx35_conv_generic_conv_generic291_dupName_0_add_x_q(63 downto 0);

    -- redist13_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_4(DELAY,166)
    redist13_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_1_q, xout => redist13_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_4_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_add25273_push46_conv_generic(BLACKBOX,67)@4
    -- out out_feedback_out_46@20000000
    -- out out_feedback_valid_out_46@20000000
    thei_acl_push_i32_add25273_push46_conv_generic : i_acl_push_i32_add25273_push46_conv_generic294
    PORT MAP (
        in_data_in => redist9_i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out_1_q,
        in_feedback_stall_in_46 => i_acl_pop_i32_add25273_pop46_conv_generic_out_feedback_stall_out_46,
        in_notexit211 => redist4_i_notexit211_conv_generic_q_3_q,
        in_stall_in => GND_q,
        in_valid_in => redist19_sync_in_aunroll_x_in_i_valid_3_q,
        out_feedback_out_46 => i_acl_push_i32_add25273_push46_conv_generic_out_feedback_out_46,
        out_feedback_valid_out_46 => i_acl_push_i32_add25273_push46_conv_generic_out_feedback_valid_out_46,
        clock => clock,
        resetn => resetn
    );

    -- redist15_sync_in_aunroll_x_in_c0_eni5_3_2(DELAY,168)
    redist15_sync_in_aunroll_x_in_c0_eni5_3_2 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_c0_eni5_3, xout => redist15_sync_in_aunroll_x_in_c0_eni5_3_2_q, clk => clock, aclr => resetn );

    -- i_acl_pop_i32_add25273_pop46_conv_generic(BLACKBOX,60)@3
    -- out out_feedback_stall_out_46@20000000
    thei_acl_pop_i32_add25273_pop46_conv_generic : i_acl_pop_i32_add25273_pop46_conv_generic284
    PORT MAP (
        in_data_in => redist15_sync_in_aunroll_x_in_c0_eni5_3_2_q,
        in_dir => redist14_sync_in_aunroll_x_in_c0_eni5_2_2_q,
        in_feedback_in_46 => i_acl_push_i32_add25273_push46_conv_generic_out_feedback_out_46,
        in_feedback_valid_in_46 => i_acl_push_i32_add25273_push46_conv_generic_out_feedback_valid_out_46,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist18_sync_in_aunroll_x_in_i_valid_2_q,
        out_data_out => i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out,
        out_feedback_stall_out_46 => i_acl_pop_i32_add25273_pop46_conv_generic_out_feedback_stall_out_46,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out_1(DELAY,162)
    redist9_i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out, xout => redist9_i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_add29_conv_generic(ADD,71)@4
    i_add29_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist9_i_acl_pop_i32_add25273_pop46_conv_generic_out_data_out_1_q);
    i_add29_conv_generic_b <= STD_LOGIC_VECTOR("0" & redist7_i_acl_pop_i32_i_132_pop43_conv_generic_out_data_out_1_q);
    i_add29_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add29_conv_generic_a) + UNSIGNED(i_add29_conv_generic_b));
    i_add29_conv_generic_q <= i_add29_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add29_conv_generic_sel_x(BITSELECT,2)@4
    bgTrunc_i_add29_conv_generic_sel_x_b <= i_add29_conv_generic_q(31 downto 0);

    -- redist21_bgTrunc_i_add29_conv_generic_sel_x_b_1(DELAY,174)
    redist21_bgTrunc_i_add29_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add29_conv_generic_sel_x_b, xout => redist21_bgTrunc_i_add29_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_idxprom30_conv_generic_sel_x(BITSELECT,40)@5
    i_idxprom30_conv_generic_sel_x_b <= STD_LOGIC_VECTOR(std_logic_vector(resize(signed(redist21_bgTrunc_i_add29_conv_generic_sel_x_b_1_q(31 downto 0)), 64)));

    -- i_syncbuf_weights_sync_buffer_conv_generic(BLACKBOX,84)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_weights_sync_buffer_conv_generic : i_syncbuf_weights_sync_buffer_conv_generic286
    PORT MAP (
        in_buffer_in => in_weights,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist20_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_weights_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_arrayidx31_conv_generic_conv_generic288_add_x(ADD,25)@5
    i_arrayidx31_conv_generic_conv_generic288_add_x_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_weights_sync_buffer_conv_generic_out_buffer_out);
    i_arrayidx31_conv_generic_conv_generic288_add_x_b <= STD_LOGIC_VECTOR("0" & i_idxprom30_conv_generic_sel_x_b);
    i_arrayidx31_conv_generic_conv_generic288_add_x_o <= STD_LOGIC_VECTOR(UNSIGNED(i_arrayidx31_conv_generic_conv_generic288_add_x_a) + UNSIGNED(i_arrayidx31_conv_generic_conv_generic288_add_x_b));
    i_arrayidx31_conv_generic_conv_generic288_add_x_q <= i_arrayidx31_conv_generic_conv_generic288_add_x_o(64 downto 0);

    -- i_arrayidx31_conv_generic_conv_generic288_trunc_sel_x(BITSELECT,24)@5
    i_arrayidx31_conv_generic_conv_generic288_trunc_sel_x_b <= i_arrayidx31_conv_generic_conv_generic288_add_x_q(63 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,44)@5
    out_c0_exi6316_0 <= GND_q;
    out_c0_exi6316_1 <= i_arrayidx31_conv_generic_conv_generic288_trunc_sel_x_b;
    out_c0_exi6316_2 <= redist13_i_acl_pop_i1_brmerge272_pop45_conv_generic_out_data_out_4_q;
    out_c0_exi6316_3 <= i_arrayidx35_conv_generic_conv_generic291_dupName_1_trunc_sel_x_b;
    out_c0_exi6316_4 <= redist2_i_unnamed_conv_generic293_q_4_q;
    out_c0_exi6316_5 <= redist5_i_notexit211_conv_generic_q_4_q;
    out_c0_exi6316_6 <= redist11_i_acl_pop_i1_exitcond169274_pop47_conv_generic_out_data_out_2_q;
    out_o_valid <= redist20_sync_in_aunroll_x_in_i_valid_4_q;

    -- i_acl_push_i1_notexitcond210_conv_generic(BLACKBOX,66)@1
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i1_notexitcond210_conv_generic : i_acl_push_i1_notexitcond210_conv_generic304
    PORT MAP (
        in_data_in => i_notexit211_conv_generic_q,
        in_feedback_stall_in_4 => i_acl_pipeline_keep_going209_conv_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_4 => i_acl_push_i1_notexitcond210_conv_generic_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i1_notexitcond210_conv_generic_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going209_conv_generic(BLACKBOX,57)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going209_conv_generic : i_acl_pipeline_keep_going209_conv_generic274
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond210_conv_generic_out_feedback_out_4,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond210_conv_generic_out_feedback_valid_out_4,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going209_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going209_conv_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going209_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going209_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,56)
    out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going209_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going209_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going209_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,89)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going209_conv_generic_out_pipeline_valid_out;

END normal;
