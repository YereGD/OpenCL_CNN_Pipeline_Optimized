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

-- VHDL created from i_sfc_logic_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic47
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

entity i_sfc_logic_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic47 is
    port (
        in_c0_eni1_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_7_0 : in std_logic_vector(32 downto 0);  -- ufix33
        out_c0_exi3_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi3_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi3_3 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic47;

architecture normal of i_sfc_logic_c0_for_cond14_preheader_mem_write_generic_c0_enter26_mem_write_generic47 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going21_mem_write_generic49 is
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


    component i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic57 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_8 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic53 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_7 : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_feedback_valid_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_stall_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond22_mem_write_generic67 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_6 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_6 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_6 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_current_out_idx_07_push8_mem_write_generic71 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_8 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_8 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_8 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic65 is
        port (
            in_data_in : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_feedback_stall_in_7 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit23 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_feedback_out_7 : out std_logic_vector(63 downto 0);  -- Fixed Point
            out_feedback_valid_out_7 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_add1212_mem_write_generic55 is
        port (
            in_intel_reserved_ffwd_3_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_3_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic69 is
        port (
            in_intel_reserved_ffwd_5_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_5_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cond11_mem_write_generic59 is
        port (
            in_intel_reserved_ffwd_2_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_2_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic51 is
        port (
            in_intel_reserved_ffwd_7_0 : in std_logic_vector(32 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_7_0 : out std_logic_vector(32 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next6_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (32 downto 0);
    signal bgTrunc_i_select11_mem_write_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i33_1gr_q : STD_LOGIC_VECTOR (32 downto 0);
    signal c_i33_undef_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going21_mem_write_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_feedback_stall_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_data_out : STD_LOGIC_VECTOR (32 downto 0);
    signal i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_feedback_stall_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond22_mem_write_generic_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond22_mem_write_generic_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_current_out_idx_07_push8_mem_write_generic_out_feedback_out_8 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_current_out_idx_07_push8_mem_write_generic_out_feedback_valid_out_8 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic_out_feedback_out_7 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic_out_feedback_valid_out_7 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_current_out_idx_07_replace_phi_mem_write_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_current_out_idx_07_replace_phi_mem_write_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_add1212_mem_write_generic_out_dest_data_out_3_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic_out_dest_data_out_5_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_cond11_mem_write_generic_out_dest_data_out_2_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic_out_dest_data_out_7_0 : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv5_replace_phi_mem_write_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv5_replace_phi_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_fpgaindvars_iv_next6_mem_write_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next6_mem_write_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next6_mem_write_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_fpgaindvars_iv_next6_mem_write_generic_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_notexit23_demorgan_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit23_mem_write_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_select11_mem_write_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_select11_mem_write_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_select11_mem_write_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_select11_mem_write_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_exitcond7_mem_write_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_write_generic61_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_notexit23_mem_write_generic(LOGICAL,42)@1
    i_notexit23_mem_write_generic_q <= i_notexit23_demorgan_mem_write_generic_q xor VCC_q;

    -- i_ffwd_dst_cond11_mem_write_generic(BLACKBOX,37)@1
    thei_ffwd_dst_cond11_mem_write_generic : i_ffwd_dst_cond11_mem_write_generic59
    PORT MAP (
        in_intel_reserved_ffwd_2_0 => in_intel_reserved_ffwd_2_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_2_0 => i_ffwd_dst_cond11_mem_write_generic_out_dest_data_out_2_0,
        clock => clock,
        resetn => resetn
    );

    -- i_unnamed_mem_write_generic61_cmp_sign(LOGICAL,56)@1
    i_unnamed_mem_write_generic61_cmp_sign_q <= STD_LOGIC_VECTOR(i_ffwd_dst_cond11_mem_write_generic_out_dest_data_out_2_0(31 downto 31));

    -- i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic(BLACKBOX,38)@1
    thei_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic : i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic51
    PORT MAP (
        in_intel_reserved_ffwd_7_0 => in_intel_reserved_ffwd_7_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_7_0 => i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic_out_dest_data_out_7_0,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_1gr(CONSTANT,24)
    c_i33_1gr_q <= "111111111111111111111111111111111";

    -- i_fpgaindvars_iv_next6_mem_write_generic(ADD,40)@1
    i_fpgaindvars_iv_next6_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_fpgaindvars_iv5_replace_phi_mem_write_generic_q);
    i_fpgaindvars_iv_next6_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & c_i33_1gr_q);
    i_fpgaindvars_iv_next6_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next6_mem_write_generic_a) + UNSIGNED(i_fpgaindvars_iv_next6_mem_write_generic_b));
    i_fpgaindvars_iv_next6_mem_write_generic_q <= i_fpgaindvars_iv_next6_mem_write_generic_o(33 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next6_mem_write_generic_sel_x(BITSELECT,2)@1
    bgTrunc_i_fpgaindvars_iv_next6_mem_write_generic_sel_x_b <= i_fpgaindvars_iv_next6_mem_write_generic_q(32 downto 0);

    -- i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic(BLACKBOX,32)@1
    -- out out_feedback_out_7@20000000
    -- out out_feedback_valid_out_7@20000000
    thei_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic : i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic65
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next6_mem_write_generic_sel_x_b,
        in_feedback_stall_in_7 => i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_feedback_stall_out_7,
        in_notexit23 => i_notexit23_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_7 => i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic_out_feedback_out_7,
        out_feedback_valid_out_7 => i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic_out_feedback_valid_out_7,
        clock => clock,
        resetn => resetn
    );

    -- c_i33_undef(CONSTANT,25)
    c_i33_undef_q <= "000000000000000000000000000000000";

    -- i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic(BLACKBOX,29)@1
    -- out out_feedback_stall_out_7@20000000
    thei_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic : i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic53
    PORT MAP (
        in_data_in => c_i33_undef_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_7 => i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic_out_feedback_out_7,
        in_feedback_valid_in_7 => i_acl_push_i33_fpgaindvars_iv5_push7_mem_write_generic_out_feedback_valid_out_7,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_data_out,
        out_feedback_stall_out_7 => i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_feedback_stall_out_7,
        clock => clock,
        resetn => resetn
    );

    -- i_fpgaindvars_iv5_replace_phi_mem_write_generic(MUX,39)@1
    i_fpgaindvars_iv5_replace_phi_mem_write_generic_s <= in_c0_eni1_1;
    i_fpgaindvars_iv5_replace_phi_mem_write_generic_combproc: PROCESS (i_fpgaindvars_iv5_replace_phi_mem_write_generic_s, i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_data_out, i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic_out_dest_data_out_7_0)
    BEGIN
        CASE (i_fpgaindvars_iv5_replace_phi_mem_write_generic_s) IS
            WHEN "0" => i_fpgaindvars_iv5_replace_phi_mem_write_generic_q <= i_acl_pop_i33_fpgaindvars_iv5_pop7_mem_write_generic_out_data_out;
            WHEN "1" => i_fpgaindvars_iv5_replace_phi_mem_write_generic_q <= i_ffwd_dst_unnamed_mem_write_generic10_mem_write_generic_out_dest_data_out_7_0;
            WHEN OTHERS => i_fpgaindvars_iv5_replace_phi_mem_write_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_exitcond7_mem_write_generic_cmp_sign(LOGICAL,54)@1
    i_exitcond7_mem_write_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_fpgaindvars_iv5_replace_phi_mem_write_generic_q(32 downto 32));

    -- i_notexit23_demorgan_mem_write_generic(LOGICAL,41)@1
    i_notexit23_demorgan_mem_write_generic_q <= i_exitcond7_mem_write_generic_cmp_sign_q or i_unnamed_mem_write_generic61_cmp_sign_q;

    -- i_ffwd_dst_add1212_mem_write_generic(BLACKBOX,35)@1
    thei_ffwd_dst_add1212_mem_write_generic : i_ffwd_dst_add1212_mem_write_generic55
    PORT MAP (
        in_intel_reserved_ffwd_3_0 => in_intel_reserved_ffwd_3_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_3_0 => i_ffwd_dst_add1212_mem_write_generic_out_dest_data_out_3_0,
        clock => clock,
        resetn => resetn
    );

    -- i_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic(BLACKBOX,36)@1
    thei_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic : i_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic69
    PORT MAP (
        in_intel_reserved_ffwd_5_0 => in_intel_reserved_ffwd_5_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_5_0 => i_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic_out_dest_data_out_5_0,
        clock => clock,
        resetn => resetn
    );

    -- i_select11_mem_write_generic(ADD,43)@1
    i_select11_mem_write_generic_a <= STD_LOGIC_VECTOR("0" & i_current_out_idx_07_replace_phi_mem_write_generic_q);
    i_select11_mem_write_generic_b <= STD_LOGIC_VECTOR("0" & i_ffwd_dst_came_from_for_cond14_preheader_select13_mem_write_generic_out_dest_data_out_5_0);
    i_select11_mem_write_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_select11_mem_write_generic_a) + UNSIGNED(i_select11_mem_write_generic_b));
    i_select11_mem_write_generic_q <= i_select11_mem_write_generic_o(32 downto 0);

    -- bgTrunc_i_select11_mem_write_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_select11_mem_write_generic_sel_x_b <= i_select11_mem_write_generic_q(31 downto 0);

    -- i_acl_push_i32_current_out_idx_07_push8_mem_write_generic(BLACKBOX,31)@1
    -- out out_feedback_out_8@20000000
    -- out out_feedback_valid_out_8@20000000
    thei_acl_push_i32_current_out_idx_07_push8_mem_write_generic : i_acl_push_i32_current_out_idx_07_push8_mem_write_generic71
    PORT MAP (
        in_data_in => bgTrunc_i_select11_mem_write_generic_sel_x_b,
        in_feedback_stall_in_8 => i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_feedback_stall_out_8,
        in_notexit23 => i_notexit23_mem_write_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_8 => i_acl_push_i32_current_out_idx_07_push8_mem_write_generic_out_feedback_out_8,
        out_feedback_valid_out_8 => i_acl_push_i32_current_out_idx_07_push8_mem_write_generic_out_feedback_valid_out_8,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_undef(CONSTANT,22)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic(BLACKBOX,28)@1
    -- out out_feedback_stall_out_8@20000000
    thei_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic : i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic57
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c0_eni1_1,
        in_feedback_in_8 => i_acl_push_i32_current_out_idx_07_push8_mem_write_generic_out_feedback_out_8,
        in_feedback_valid_in_8 => i_acl_push_i32_current_out_idx_07_push8_mem_write_generic_out_feedback_valid_out_8,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_data_out,
        out_feedback_stall_out_8 => i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_feedback_stall_out_8,
        clock => clock,
        resetn => resetn
    );

    -- i_current_out_idx_07_replace_phi_mem_write_generic(MUX,33)@1
    i_current_out_idx_07_replace_phi_mem_write_generic_s <= in_c0_eni1_1;
    i_current_out_idx_07_replace_phi_mem_write_generic_combproc: PROCESS (i_current_out_idx_07_replace_phi_mem_write_generic_s, i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_data_out, i_ffwd_dst_add1212_mem_write_generic_out_dest_data_out_3_0)
    BEGIN
        CASE (i_current_out_idx_07_replace_phi_mem_write_generic_s) IS
            WHEN "0" => i_current_out_idx_07_replace_phi_mem_write_generic_q <= i_acl_pop_i32_current_out_idx_07_pop8_mem_write_generic_out_data_out;
            WHEN "1" => i_current_out_idx_07_replace_phi_mem_write_generic_q <= i_ffwd_dst_add1212_mem_write_generic_out_dest_data_out_3_0;
            WHEN OTHERS => i_current_out_idx_07_replace_phi_mem_write_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,16)@1
    out_c0_exi3_0 <= GND_q;
    out_c0_exi3_1 <= i_current_out_idx_07_replace_phi_mem_write_generic_q;
    out_c0_exi3_2 <= i_notexit23_demorgan_mem_write_generic_q;
    out_c0_exi3_3 <= i_notexit23_mem_write_generic_q;
    out_o_valid <= in_i_valid;

    -- i_acl_push_i1_notexitcond22_mem_write_generic(BLACKBOX,30)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i1_notexitcond22_mem_write_generic : i_acl_push_i1_notexitcond22_mem_write_generic67
    PORT MAP (
        in_data_in => i_notexit23_mem_write_generic_q,
        in_feedback_stall_in_6 => i_acl_pipeline_keep_going21_mem_write_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i1_notexitcond22_mem_write_generic_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i1_notexitcond22_mem_write_generic_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going21_mem_write_generic(BLACKBOX,27)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going21_mem_write_generic : i_acl_pipeline_keep_going21_mem_write_generic49
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond22_mem_write_generic_out_feedback_out_6,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond22_mem_write_generic_out_feedback_valid_out_6,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going21_mem_write_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going21_mem_write_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going21_mem_write_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going21_mem_write_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,26)
    out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_valid_out <= i_acl_pipeline_keep_going21_mem_write_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going21_mem_write_generic_exiting_stall_out <= i_acl_pipeline_keep_going21_mem_write_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,49)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going21_mem_write_generic_out_pipeline_valid_out;

END normal;
