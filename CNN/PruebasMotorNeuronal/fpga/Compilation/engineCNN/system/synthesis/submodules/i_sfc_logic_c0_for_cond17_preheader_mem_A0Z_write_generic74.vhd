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

-- VHDL created from i_sfc_logic_c0_for_cond17_preheader_mem_write_generic_c0_enter29_mem_write_generic74
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

entity i_sfc_logic_c0_for_cond17_preheader_mem_write_generic_c0_enter29_mem_write_generic74 is
    port (
        in_c0_eni3_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni3_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni3_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- ufix33
        in_out_c : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi4_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi4_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi4_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond17_preheader_mem_write_generic_c0_enter29_mem_write_generic74;

architecture normal of i_sfc_logic_c0_for_cond17_preheader_mem_write_generic_c0_enter29_mem_write_generic74 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going17_mem_write_generic76 is
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


    component i_acl_pop_i1_pop11_mem_write_generic100 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_11 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic96 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_10 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic80 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_9 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond18_mem_write_generic92 is
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


    component i_acl_push_i1_push11_mem_write_generic102 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_11 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_11 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_11 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_current_out_idx_14_push10_mem_write_generic98 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_10 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_10 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_10 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic90 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_9 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_9 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_9 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_sub39_mem_write_generic84 is
        port (
            in_intel_reserved_ffwd_1_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_1_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_sub8_mem_write_generic82 is
        port (
            in_intel_reserved_ffwd_0_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_0_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic78 is
        port (
            in_intel_reserved_ffwd_6_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_6_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_out_c_sync_buffer_mem_write_generic94 is
        port (
            in_buffer_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_i_dependence : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_buffer_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_add21_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going17_mem_write_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop11_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop11_mem_write_generic_out_feedback_stall_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_feedback_stall_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_feedback_stall_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond18_mem_write_generic_out_feedback_out_4 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond18_mem_write_generic_out_feedback_valid_out_4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push11_mem_write_generic_out_feedback_out_11 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push11_mem_write_generic_out_feedback_valid_out_11 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_current_out_idx_14_push10_mem_write_generic_out_feedback_out_10 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_current_out_idx_14_push10_mem_write_generic_out_feedback_valid_out_10 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic_out_feedback_out_9 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic_out_feedback_valid_out_9 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add21_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add21_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add21_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add21_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cond10_rm351_mem_write_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_sub39_mem_write_generic_out_dest_data_out_1_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_sub8_mem_write_generic_out_dest_data_out_0_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic_out_dest_data_out_6_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next_mem_write_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_mem_write_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_mem_write_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next_mem_write_generic_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_replace_phi_mem_write_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_replace_phi_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_notexit19_demorgan_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit19_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_out_c_sync_buffer_mem_write_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_exitcond4_mem_write_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_write_generic86_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- i_acl_push_i1_push11_mem_write_generic(BLACKBOX,33)@1
    -- out out_feedback_out_11@20000000
    -- out out_feedback_valid_out_11@20000000
    thei_acl_push_i1_push11_mem_write_generic : i_acl_push_i1_push11_mem_write_generic102
    PORT MAP (
        in_data_in => i_acl_pop_i1_pop11_mem_write_generic_out_data_out,
        in_feedback_stall_in_11 => i_acl_pop_i1_pop11_mem_write_generic_out_feedback_stall_out_11,
        in_notexit19 => i_notexit19_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_11 => i_acl_push_i1_push11_mem_write_generic_out_feedback_out_11,
        out_feedback_valid_out_11 => i_acl_push_i1_push11_mem_write_generic_out_feedback_valid_out_11,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop11_mem_write_generic(BLACKBOX,29)@1
    -- out out_feedback_stall_out_11@20000000
    thei_acl_pop_i1_pop11_mem_write_generic : i_acl_pop_i1_pop11_mem_write_generic100
    PORT MAP (
        in_data_in => in_c0_eni3_3,
        in_dir => in_c0_eni3_1,
        in_feedback_in_11 => i_acl_push_i1_push11_mem_write_generic_out_feedback_out_11,
        in_feedback_valid_in_11 => i_acl_push_i1_push11_mem_write_generic_out_feedback_valid_out_11,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop11_mem_write_generic_out_data_out,
        out_feedback_stall_out_11 => i_acl_pop_i1_pop11_mem_write_generic_out_feedback_stall_out_11,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_out_c_sync_buffer_mem_write_generic(BLACKBOX,46)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_out_c_sync_buffer_mem_write_generic : i_syncbuf_out_c_sync_buffer_mem_write_generic94
    PORT MAP (
        in_buffer_in => in_out_c,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_out_c_sync_buffer_mem_write_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add21_mem_write_generic(ADD,36)@1
    i_add21_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_data_out);
    i_add21_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_out_c_sync_buffer_mem_write_generic_out_buffer_out);
    i_add21_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add21_mem_write_generic_a) + UNSIGNED(i_add21_mem_write_generic_b));
    i_add21_mem_write_generic_q <= i_add21_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_add21_mem_write_generic_sel_x(BITSELECT,2)@1
    bgTrunc_i_add21_mem_write_generic_sel_x_b <= i_add21_mem_write_generic_q(31 downto 0);

    -- i_acl_push_i32_current_out_idx_14_push10_mem_write_generic(BLACKBOX,34)@1
    -- out out_feedback_out_10@20000000
    -- out out_feedback_valid_out_10@20000000
    thei_acl_push_i32_current_out_idx_14_push10_mem_write_generic : i_acl_push_i32_current_out_idx_14_push10_mem_write_generic98
    PORT MAP (
        in_data_in => bgTrunc_i_add21_mem_write_generic_sel_x_b,
        in_feedback_stall_in_10 => i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_feedback_stall_out_10,
        in_notexit19 => i_notexit19_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_10 => i_acl_push_i32_current_out_idx_14_push10_mem_write_generic_out_feedback_out_10,
        out_feedback_valid_out_10 => i_acl_push_i32_current_out_idx_14_push10_mem_write_generic_out_feedback_valid_out_10,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic(BLACKBOX,30)@1
    -- out out_feedback_stall_out_10@20000000
    thei_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic : i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic96
    PORT MAP (
        in_data_in => in_c0_eni3_2,
        in_dir => in_c0_eni3_1,
        in_feedback_in_10 => i_acl_push_i32_current_out_idx_14_push10_mem_write_generic_out_feedback_out_10,
        in_feedback_valid_in_10 => i_acl_push_i32_current_out_idx_14_push10_mem_write_generic_out_feedback_valid_out_10,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_data_out,
        out_feedback_stall_out_10 => i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_feedback_stall_out_10,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_notexit19_mem_write_generic(LOGICAL,45)@1
    i_notexit19_mem_write_generic_q <= i_notexit19_demorgan_mem_write_generic_q xor VCC_q;

    -- i_ffwd_dst_sub8_mem_write_generic(BLACKBOX,40)@1
    thei_ffwd_dst_sub8_mem_write_generic : i_ffwd_dst_sub8_mem_write_generic82
    PORT MAP (
        in_intel_reserved_ffwd_0_0 => in_intel_reserved_ffwd_0_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_0_0 => i_ffwd_dst_sub8_mem_write_generic_out_dest_data_out_0_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_sub39_mem_write_generic(BLACKBOX,39)@1
    thei_ffwd_dst_sub39_mem_write_generic : i_ffwd_dst_sub39_mem_write_generic84
    PORT MAP (
        in_intel_reserved_ffwd_1_0 => in_intel_reserved_ffwd_1_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_1_0 => i_ffwd_dst_sub39_mem_write_generic_out_dest_data_out_1_0,
        clock => clock,
        resetn => resetn
    );

    -- i_cond10_rm351_mem_write_generic(LOGICAL,37)@1
    i_cond10_rm351_mem_write_generic_q <= i_ffwd_dst_sub39_mem_write_generic_out_dest_data_out_1_0 or i_ffwd_dst_sub8_mem_write_generic_out_dest_data_out_0_0;

    -- i_unnamed_mem_write_generic86_cmp_sign(LOGICAL,59)@1
    i_unnamed_mem_write_generic86_cmp_sign_q <= STD_LOGIC_VECTOR(i_cond10_rm351_mem_write_generic_q(31 downto 31));

    -- i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic(BLACKBOX,41)@1
    thei_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic : i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic78
    PORT MAP (
        in_intel_reserved_ffwd_6_0 => in_intel_reserved_ffwd_6_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_6_0 => i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic_out_dest_data_out_6_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,25)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next_mem_write_generic(ADD,42)@1
    i_fpgaindvars_iv_next_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv_replace_phi_mem_write_generic_q);
    i_fpgaindvars_iv_next_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next_mem_write_generic_a) + UNSIGNED(i_fpgaindvars_iv_next_mem_write_generic_b));
    i_fpgaindvars_iv_next_mem_write_generic_q <= i_fpgaindvars_iv_next_mem_write_generic_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next_mem_write_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next_mem_write_generic_sel_x_b <= i_fpgaindvars_iv_next_mem_write_generic_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic(BLACKBOX,35)@1
    -- out out_feedback_out_9@20000000
    -- out out_feedback_valid_out_9@20000000
    thei_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic : i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic90
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next_mem_write_generic_sel_x_b,
        in_feedback_stall_in_9 => i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_feedback_stall_out_9,
        in_notexit19 => i_notexit19_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_9 => i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic_out_feedback_out_9,
        out_feedback_valid_out_9 => i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic_out_feedback_valid_out_9,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,26)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic(BLACKBOX,31)@1
    -- out out_feedback_stall_out_9@20000000
    thei_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic : i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic80
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni3_1,
        in_feedback_in_9 => i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic_out_feedback_out_9,
        in_feedback_valid_in_9 => i_acl_push_i33_fpgaindvars_iv_push9_mem_write_generic_out_feedback_valid_out_9,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_data_out,
        out_feedback_stall_out_9 => i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_feedback_stall_out_9,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv_replace_phi_mem_write_generic(MUX,43)@1
    i_fpgaindvars_iv_replace_phi_mem_write_generic_s <= in_c0_eni3_1;
    i_fpgaindvars_iv_replace_phi_mem_write_generic_combproc: PROCESS (i_fpgaindvars_iv_replace_phi_mem_write_generic_s, i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_data_out, i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic_out_dest_data_out_6_0)
    BEGIN
        CASE (i_fpgaindvars_iv_replace_phi_mem_write_generic_s) IS
            WHEN "0" => i_fpgaindvars_iv_replace_phi_mem_write_generic_q <= i_acl_pop_i33_fpgaindvars_iv_pop9_mem_write_generic_out_data_out;
            WHEN "1" => i_fpgaindvars_iv_replace_phi_mem_write_generic_q <= i_ffwd_dst_unnamed_mem_write_generic12_mem_write_generic_out_dest_data_out_6_0;
            WHEN OTHERS => i_fpgaindvars_iv_replace_phi_mem_write_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond4_mem_write_generic_cmp_sign(LOGICAL,57)@1
    i_exitcond4_mem_write_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv_replace_phi_mem_write_generic_q(32 downto 32));

    -- i_notexit19_demorgan_mem_write_generic(LOGICAL,44)@1
    i_notexit19_demorgan_mem_write_generic_q <= i_exitcond4_mem_write_generic_cmp_sign_q or i_unnamed_mem_write_generic86_cmp_sign_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,18)@1
    out_c0_exi4_0 <= GND_q;
    out_c0_exi4_1 <= i_notexit19_demorgan_mem_write_generic_q;
    out_c0_exi4_2 <= i_notexit19_mem_write_generic_q;
    out_c0_exi4_3 <= i_acl_pop_i32_current_out_idx_14_pop10_mem_write_generic_out_data_out;
    out_c0_exi4_4 <= i_acl_pop_i1_pop11_mem_write_generic_out_data_out;
    out_o_valid <= in_i_valid;

    -- i_acl_push_i1_notexitcond18_mem_write_generic(BLACKBOX,32)@1
    -- out out_feedback_out_4@20000000
    -- out out_feedback_valid_out_4@20000000
    thei_acl_push_i1_notexitcond18_mem_write_generic : i_acl_push_i1_notexitcond18_mem_write_generic92
    PORT MAP (
        in_data_in => i_notexit19_mem_write_generic_q,
        in_feedback_stall_in_4 => i_acl_pipeline_keep_going17_mem_write_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_4 => i_acl_push_i1_notexitcond18_mem_write_generic_out_feedback_out_4,
        out_feedback_valid_out_4 => i_acl_push_i1_notexitcond18_mem_write_generic_out_feedback_valid_out_4,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going17_mem_write_generic(BLACKBOX,28)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going17_mem_write_generic : i_acl_pipeline_keep_going17_mem_write_generic76
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond18_mem_write_generic_out_feedback_out_4,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond18_mem_write_generic_out_feedback_valid_out_4,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going17_mem_write_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going17_mem_write_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going17_mem_write_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going17_mem_write_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,27)
    out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_valid_out <= i_acl_pipeline_keep_going17_mem_write_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going17_mem_write_generic_exiting_stall_out <= i_acl_pipeline_keep_going17_mem_write_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,52)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going17_mem_write_generic_out_pipeline_valid_out;

END normal;
