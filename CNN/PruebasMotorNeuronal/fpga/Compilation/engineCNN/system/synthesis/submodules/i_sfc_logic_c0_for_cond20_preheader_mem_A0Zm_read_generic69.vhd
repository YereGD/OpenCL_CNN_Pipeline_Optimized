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

-- VHDL created from i_sfc_logic_c0_for_cond20_preheader_mem_read_generic_c0_enter93_mem_read_generic69
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

entity i_sfc_logic_c0_for_cond20_preheader_mem_read_generic_c0_enter93_mem_read_generic69 is
    port (
        in_c0_eni5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni5_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni5_2 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni5_3 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni5_4 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c0_eni5_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_h : in std_logic_vector(31 downto 0);  -- ufix32
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_pad : in std_logic_vector(31 downto 0);  -- ufix32
        in_w : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi8_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi8_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi8_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi8_7 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi8_8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_cond20_preheader_mem_read_generic_c0_enter93_mem_read_generic69;

architecture normal of i_sfc_logic_c0_for_cond20_preheader_mem_read_generic_c0_enter93_mem_read_generic69 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going51_mem_read_generic71 is
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


    component i_acl_pop_i1_pop18_mem_read_generic105 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_18 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i1_pop20_mem_read_generic113 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_20 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_stall_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_ky_28_pop16_mem_read_generic73 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_16 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_sub2464_pop17_mem_read_generic75 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_17 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i32_sub2768_pop19_mem_read_generic109 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_19 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic93 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_15 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_stall_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond52_mem_read_generic103 is
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


    component i_acl_push_i1_push18_mem_read_generic107 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_18 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_18 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_18 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_push20_mem_read_generic115 is
        port (
            in_data_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_stall_in_20 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_feedback_out_20 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_20 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_ky_28_push16_mem_read_generic99 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_16 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_16 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_16 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_sub2464_push17_mem_read_generic97 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_17 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_17 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_sub2768_push19_mem_read_generic111 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_19 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_19 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_19 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic101 is
        port (
            in_data_in : in std_logic_vector(2 downto 0);  -- Fixed Point
            in_feedback_stall_in_15 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit53 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(2 downto 0);  -- Fixed Point
            out_feedback_out_15 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_15 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_h_sync_buffer28_mem_read_generic83 is
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


    component i_syncbuf_h_sync_buffer29_mem_read_generic78 is
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


    component i_syncbuf_pad_sync_buffer38_mem_read_generic85 is
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


    component i_syncbuf_w_sync_buffer23_mem_read_generic88 is
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


    component i_syncbuf_w_sync_buffer25_mem_read_generic81 is
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
    signal bgTrunc_i_add25_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add2_rm5_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_add_rm2_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next44_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (2 downto 0);
    signal bgTrunc_i_inc46_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul34_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub3_rm6_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_sub_rm4_mem_read_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_c_i3_1gr_x_q : STD_LOGIC_VECTOR (2 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_3gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i3_1gr_q : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going51_mem_read_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop18_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop18_mem_read_generic_out_feedback_stall_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop20_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i1_pop20_mem_read_generic_out_feedback_stall_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_feedback_stall_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_feedback_stall_out_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_feedback_stall_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_data_out : STD_LOGIC_VECTOR (2 downto 0);
    signal i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_feedback_stall_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond52_mem_read_generic_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond52_mem_read_generic_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push18_mem_read_generic_out_feedback_out_18 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push18_mem_read_generic_out_feedback_valid_out_18 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_push20_mem_read_generic_out_feedback_out_20 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_push20_mem_read_generic_out_feedback_valid_out_20 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_ky_28_push16_mem_read_generic_out_feedback_out_16 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_ky_28_push16_mem_read_generic_out_feedback_valid_out_16 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sub2464_push17_mem_read_generic_out_feedback_out_17 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sub2464_push17_mem_read_generic_out_feedback_valid_out_17 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_sub2768_push19_mem_read_generic_out_feedback_out_19 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_sub2768_push19_mem_read_generic_out_feedback_valid_out_19 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic_out_feedback_out_15 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic_out_feedback_valid_out_15 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add25_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add25_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add25_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add25_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm5_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm5_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm5_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add2_rm5_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm2_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm2_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm2_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add_rm2_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_cmp30_mem_read_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp30_mem_read_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp30_mem_read_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp30_mem_read_generic_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_fpgaindvars_iv_next44_mem_read_generic_a : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next44_mem_read_generic_b : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next44_mem_read_generic_o : STD_LOGIC_VECTOR (3 downto 0);
    signal i_fpgaindvars_iv_next44_mem_read_generic_q : STD_LOGIC_VECTOR (3 downto 0);
    signal i_inc46_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc46_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_mul_rm3_mem_read_generic_vt_join_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_mul_rm3_mem_read_generic_vt_select_31_b : STD_LOGIC_VECTOR (30 downto 0);
    signal i_notexit53_demorgan_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_notexit53_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_mem_read_generic_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_or_cond_mem_read_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_sub3_rm6_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm6_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm6_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub3_rm6_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm4_mem_read_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm4_mem_read_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm4_mem_read_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_sub_rm4_mem_read_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_syncbuf_h_sync_buffer28_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_h_sync_buffer29_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_pad_sync_buffer38_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer23_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_sync_buffer25_mem_read_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_unnamed_mem_read_generic90_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_in : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_b : STD_LOGIC_VECTOR (30 downto 0);
    signal leftShiftStage0Idx1_uid108_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_s : STD_LOGIC_VECTOR (0 downto 0);
    signal leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul34_mem_read_generic_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul34_mem_read_generic_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul34_mem_read_generic_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul34_mem_read_generic_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul34_mem_read_generic_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul34_mem_read_generic_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul34_mem_read_generic_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul34_mem_read_generic_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul34_mem_read_generic_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul34_mem_read_generic_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul34_mem_read_generic_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul34_mem_read_generic_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul34_mem_read_generic_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul34_mem_read_generic_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul34_mem_read_generic_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul34_mem_read_generic_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul34_mem_read_generic_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_cmp29_mem_read_generic_cmp_sign_qi : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp29_mem_read_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_exitcond45_mem_read_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_unnamed_mem_read_generic91_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul34_mem_read_generic_im0_cma_reset : std_logic;
    type i_mul34_mem_read_generic_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul34_mem_read_generic_im0_cma_a0 : i_mul34_mem_read_generic_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul34_mem_read_generic_im0_cma_a0 : signal is true;
    signal i_mul34_mem_read_generic_im0_cma_c0 : i_mul34_mem_read_generic_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul34_mem_read_generic_im0_cma_c0 : signal is true;
    type i_mul34_mem_read_generic_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul34_mem_read_generic_im0_cma_p : i_mul34_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im0_cma_u : i_mul34_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im0_cma_w : i_mul34_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im0_cma_x : i_mul34_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im0_cma_y : i_mul34_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im0_cma_s : i_mul34_mem_read_generic_im0_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul34_mem_read_generic_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul34_mem_read_generic_im0_cma_ena0 : std_logic;
    signal i_mul34_mem_read_generic_im0_cma_ena1 : std_logic;
    signal i_mul34_mem_read_generic_im10_cma_reset : std_logic;
    type i_mul34_mem_read_generic_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul34_mem_read_generic_im10_cma_a0 : i_mul34_mem_read_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul34_mem_read_generic_im10_cma_a0 : signal is true;
    signal i_mul34_mem_read_generic_im10_cma_c0 : i_mul34_mem_read_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul34_mem_read_generic_im10_cma_c0 : signal is true;
    type i_mul34_mem_read_generic_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul34_mem_read_generic_im10_cma_p : i_mul34_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im10_cma_u : i_mul34_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im10_cma_w : i_mul34_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im10_cma_x : i_mul34_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im10_cma_y : i_mul34_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im10_cma_s : i_mul34_mem_read_generic_im10_cma_ptype(0 to 0);
    signal i_mul34_mem_read_generic_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul34_mem_read_generic_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul34_mem_read_generic_im10_cma_ena0 : std_logic;
    signal i_mul34_mem_read_generic_im10_cma_ena1 : std_logic;
    signal i_mul34_mem_read_generic_ma3_cma_reset : std_logic;
    signal i_mul34_mem_read_generic_ma3_cma_a0 : i_mul34_mem_read_generic_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul34_mem_read_generic_ma3_cma_a0 : signal is true;
    type i_mul34_mem_read_generic_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul34_mem_read_generic_ma3_cma_c0 : i_mul34_mem_read_generic_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul34_mem_read_generic_ma3_cma_c0 : signal is true;
    type i_mul34_mem_read_generic_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul34_mem_read_generic_ma3_cma_l : i_mul34_mem_read_generic_ma3_cma_ltype(0 to 1);
    type i_mul34_mem_read_generic_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul34_mem_read_generic_ma3_cma_p : i_mul34_mem_read_generic_ma3_cma_ptype(0 to 1);
    type i_mul34_mem_read_generic_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul34_mem_read_generic_ma3_cma_u : i_mul34_mem_read_generic_ma3_cma_utype(0 to 1);
    signal i_mul34_mem_read_generic_ma3_cma_w : i_mul34_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul34_mem_read_generic_ma3_cma_x : i_mul34_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul34_mem_read_generic_ma3_cma_y : i_mul34_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul34_mem_read_generic_ma3_cma_s : i_mul34_mem_read_generic_ma3_cma_utype(0 to 0);
    signal i_mul34_mem_read_generic_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul34_mem_read_generic_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul34_mem_read_generic_ma3_cma_ena0 : std_logic;
    signal i_mul34_mem_read_generic_ma3_cma_ena1 : std_logic;
    signal i_mul34_mem_read_generic_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul34_mem_read_generic_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_mul34_mem_read_generic_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul34_mem_read_generic_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_mul34_mem_read_generic_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist3_i_or_cond_mem_read_generic_q_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_notexit53_mem_read_generic_q_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_notexit53_mem_read_generic_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist6_i_notexit53_demorgan_mem_read_generic_q_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist7_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist11_i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist12_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist13_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist14_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist15_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist16_sync_in_aunroll_x_in_i_valid_1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist17_sync_in_aunroll_x_in_i_valid_2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist18_sync_in_aunroll_x_in_i_valid_5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_reset0 : std_logic;
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i : signal is true;
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_eq : std_logic;
    attribute preserve of redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_eq : signal is true;
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_q : signal is true;
    signal redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_reset0 : std_logic;
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_aa : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_ab : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i : UNSIGNED (1 downto 0);
    attribute preserve of redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i : signal is true;
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_eq : std_logic;
    attribute preserve of redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_eq : signal is true;
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_wraddr_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_last_q : STD_LOGIC_VECTOR (1 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmp_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge of redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_q : signal is true;
    signal redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist16_sync_in_aunroll_x_in_i_valid_1(DELAY,162)
    redist16_sync_in_aunroll_x_in_i_valid_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist16_sync_in_aunroll_x_in_i_valid_1_q, clk => clock, aclr => resetn );

    -- redist17_sync_in_aunroll_x_in_i_valid_2(DELAY,163)
    redist17_sync_in_aunroll_x_in_i_valid_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist16_sync_in_aunroll_x_in_i_valid_1_q, xout => redist17_sync_in_aunroll_x_in_i_valid_2_q, clk => clock, aclr => resetn );

    -- redist18_sync_in_aunroll_x_in_i_valid_5(DELAY,164)
    redist18_sync_in_aunroll_x_in_i_valid_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist17_sync_in_aunroll_x_in_i_valid_2_q, xout => redist18_sync_in_aunroll_x_in_i_valid_5_q, clk => clock, aclr => resetn );

    -- leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x(BITSELECT,106)@1
    leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_in <= i_syncbuf_pad_sync_buffer38_mem_read_generic_out_buffer_out(30 downto 0);
    leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_b <= leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_in(30 downto 0);

    -- leftShiftStage0Idx1_uid108_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x(BITJOIN,107)@1
    leftShiftStage0Idx1_uid108_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q <= leftShiftStage0Idx1Rng1_uid107_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_b & GND_q;

    -- i_syncbuf_pad_sync_buffer38_mem_read_generic(BLACKBOX,86)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_pad_sync_buffer38_mem_read_generic : i_syncbuf_pad_sync_buffer38_mem_read_generic85
    PORT MAP (
        in_buffer_in => in_pad,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_pad_sync_buffer38_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x(MUX,109)@1
    leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_s <= VCC_q;
    leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_combproc: PROCESS (leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_s, i_syncbuf_pad_sync_buffer38_mem_read_generic_out_buffer_out, leftShiftStage0Idx1_uid108_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q)
    BEGIN
        CASE (leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_s) IS
            WHEN "0" => leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q <= i_syncbuf_pad_sync_buffer38_mem_read_generic_out_buffer_out;
            WHEN "1" => leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q <= leftShiftStage0Idx1_uid108_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q;
            WHEN OTHERS => leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_mul_rm3_mem_read_generic_vt_select_31(BITSELECT,78)@1
    i_mul_rm3_mem_read_generic_vt_select_31_b <= leftShiftStage0_uid110_i_mul_rm3_mem_read_generic_mem_read_generic87_shift_x_q(31 downto 1);

    -- i_mul_rm3_mem_read_generic_vt_join(BITJOIN,77)@1
    i_mul_rm3_mem_read_generic_vt_join_q <= i_mul_rm3_mem_read_generic_vt_select_31_b & GND_q;

    -- c_i32_3gr(CONSTANT,49)
    c_i32_3gr_q <= "11111111111111111111111111111101";

    -- i_syncbuf_h_sync_buffer28_mem_read_generic(BLACKBOX,84)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_h_sync_buffer28_mem_read_generic : i_syncbuf_h_sync_buffer28_mem_read_generic83
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_h_sync_buffer28_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add_rm2_mem_read_generic(ADD,69)@1
    i_add_rm2_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_h_sync_buffer28_mem_read_generic_out_buffer_out);
    i_add_rm2_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add_rm2_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add_rm2_mem_read_generic_a) + UNSIGNED(i_add_rm2_mem_read_generic_b));
    i_add_rm2_mem_read_generic_q <= i_add_rm2_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add_rm2_mem_read_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_add_rm2_mem_read_generic_sel_x_b <= i_add_rm2_mem_read_generic_q(31 downto 0);

    -- i_sub_rm4_mem_read_generic(ADD,83)@1
    i_sub_rm4_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add_rm2_mem_read_generic_sel_x_b);
    i_sub_rm4_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm3_mem_read_generic_vt_join_q);
    i_sub_rm4_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub_rm4_mem_read_generic_a) + UNSIGNED(i_sub_rm4_mem_read_generic_b));
    i_sub_rm4_mem_read_generic_q <= i_sub_rm4_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub_rm4_mem_read_generic_sel_x(BITSELECT,9)@1
    bgTrunc_i_sub_rm4_mem_read_generic_sel_x_b <= i_sub_rm4_mem_read_generic_q(31 downto 0);

    -- i_syncbuf_w_sync_buffer23_mem_read_generic(BLACKBOX,87)@0
    -- in in_i_dependence@1
    -- in in_valid_in@1
    -- out out_buffer_out@1
    -- out out_valid_out@1
    thei_syncbuf_w_sync_buffer23_mem_read_generic : i_syncbuf_w_sync_buffer23_mem_read_generic88
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_buffer_out => i_syncbuf_w_sync_buffer23_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_add2_rm5_mem_read_generic(ADD,68)@1
    i_add2_rm5_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_sync_buffer23_mem_read_generic_out_buffer_out);
    i_add2_rm5_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_3gr_q);
    i_add2_rm5_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add2_rm5_mem_read_generic_a) + UNSIGNED(i_add2_rm5_mem_read_generic_b));
    i_add2_rm5_mem_read_generic_q <= i_add2_rm5_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add2_rm5_mem_read_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_add2_rm5_mem_read_generic_sel_x_b <= i_add2_rm5_mem_read_generic_q(31 downto 0);

    -- i_sub3_rm6_mem_read_generic(ADD,82)@1
    i_sub3_rm6_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & bgTrunc_i_add2_rm5_mem_read_generic_sel_x_b);
    i_sub3_rm6_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & i_mul_rm3_mem_read_generic_vt_join_q);
    i_sub3_rm6_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_sub3_rm6_mem_read_generic_a) + UNSIGNED(i_sub3_rm6_mem_read_generic_b));
    i_sub3_rm6_mem_read_generic_q <= i_sub3_rm6_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_sub3_rm6_mem_read_generic_sel_x(BITSELECT,8)@1
    bgTrunc_i_sub3_rm6_mem_read_generic_sel_x_b <= i_sub3_rm6_mem_read_generic_q(31 downto 0);

    -- i_unnamed_mem_read_generic90(LOGICAL,89)@1
    i_unnamed_mem_read_generic90_q <= bgTrunc_i_sub3_rm6_mem_read_generic_sel_x_b or bgTrunc_i_sub_rm4_mem_read_generic_sel_x_b;

    -- i_unnamed_mem_read_generic91_cmp_sign(LOGICAL,140)@1
    i_unnamed_mem_read_generic91_cmp_sign_q <= STD_LOGIC_VECTOR(i_unnamed_mem_read_generic90_q(31 downto 31));

    -- dupName_0_c_i3_1gr_x(CONSTANT,11)
    dupName_0_c_i3_1gr_x_q <= "111";

    -- i_fpgaindvars_iv_next44_mem_read_generic(ADD,73)@1
    i_fpgaindvars_iv_next44_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_data_out);
    i_fpgaindvars_iv_next44_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & dupName_0_c_i3_1gr_x_q);
    i_fpgaindvars_iv_next44_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next44_mem_read_generic_a) + UNSIGNED(i_fpgaindvars_iv_next44_mem_read_generic_b));
    i_fpgaindvars_iv_next44_mem_read_generic_q <= i_fpgaindvars_iv_next44_mem_read_generic_o(3 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next44_mem_read_generic_sel_x(BITSELECT,5)@1
    bgTrunc_i_fpgaindvars_iv_next44_mem_read_generic_sel_x_b <= i_fpgaindvars_iv_next44_mem_read_generic_q(2 downto 0);

    -- i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic(BLACKBOX,66)@1
    -- out out_feedback_out_15@20000000
    -- out out_feedback_valid_out_15@20000000
    thei_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic : i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic101
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next44_mem_read_generic_sel_x_b,
        in_feedback_stall_in_15 => i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_feedback_stall_out_15,
        in_notexit53 => i_notexit53_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_15 => i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic_out_feedback_out_15,
        out_feedback_valid_out_15 => i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic_out_feedback_valid_out_15,
        clock => clock,
        resetn => resetn
    );

    -- c_i3_1gr(CONSTANT,51)
    c_i3_1gr_q <= "001";

    -- i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic(BLACKBOX,59)@1
    -- out out_feedback_stall_out_15@20000000
    thei_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic : i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic93
    PORT MAP (
        in_data_in => c_i3_1gr_q,
        in_dir => in_c0_eni5_1,
        in_feedback_in_15 => i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic_out_feedback_out_15,
        in_feedback_valid_in_15 => i_acl_push_i3_fpgaindvars_iv43_push15_mem_read_generic_out_feedback_valid_out_15,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_data_out,
        out_feedback_stall_out_15 => i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_feedback_stall_out_15,
        clock => clock,
        resetn => resetn
    );

    -- i_exitcond45_mem_read_generic_cmp_sign(LOGICAL,138)@1
    i_exitcond45_mem_read_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_acl_pop_i3_fpgaindvars_iv43_pop15_mem_read_generic_out_data_out(2 downto 2));

    -- i_notexit53_demorgan_mem_read_generic(LOGICAL,79)@1
    i_notexit53_demorgan_mem_read_generic_q <= i_exitcond45_mem_read_generic_cmp_sign_q or i_unnamed_mem_read_generic91_cmp_sign_q;

    -- i_notexit53_mem_read_generic(LOGICAL,80)@1
    i_notexit53_mem_read_generic_q <= i_notexit53_demorgan_mem_read_generic_q xor VCC_q;

    -- redist4_i_notexit53_mem_read_generic_q_1(DELAY,150)
    redist4_i_notexit53_mem_read_generic_q_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit53_mem_read_generic_q, xout => redist4_i_notexit53_mem_read_generic_q_1_q, clk => clock, aclr => resetn );

    -- i_acl_push_i1_push20_mem_read_generic(BLACKBOX,62)@2
    -- out out_feedback_out_20@20000000
    -- out out_feedback_valid_out_20@20000000
    thei_acl_push_i1_push20_mem_read_generic : i_acl_push_i1_push20_mem_read_generic115
    PORT MAP (
        in_data_in => redist12_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_20 => i_acl_pop_i1_pop20_mem_read_generic_out_feedback_stall_out_20,
        in_notexit53 => redist4_i_notexit53_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_20 => i_acl_push_i1_push20_mem_read_generic_out_feedback_out_20,
        out_feedback_valid_out_20 => i_acl_push_i1_push20_mem_read_generic_out_feedback_valid_out_20,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop20_mem_read_generic(BLACKBOX,55)@1
    -- out out_feedback_stall_out_20@20000000
    thei_acl_pop_i1_pop20_mem_read_generic : i_acl_pop_i1_pop20_mem_read_generic113
    PORT MAP (
        in_data_in => in_c0_eni5_5,
        in_dir => in_c0_eni5_1,
        in_feedback_in_20 => i_acl_push_i1_push20_mem_read_generic_out_feedback_out_20,
        in_feedback_valid_in_20 => i_acl_push_i1_push20_mem_read_generic_out_feedback_valid_out_20,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop20_mem_read_generic_out_data_out,
        out_feedback_stall_out_20 => i_acl_pop_i1_pop20_mem_read_generic_out_feedback_stall_out_20,
        clock => clock,
        resetn => resetn
    );

    -- redist12_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_1(DELAY,158)
    redist12_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop20_mem_read_generic_out_data_out, xout => redist12_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist13_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_5(DELAY,159)
    redist13_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist12_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_1_q, xout => redist13_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_5_q, clk => clock, aclr => resetn );

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_notEnable(LOGICAL,172)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_nor(LOGICAL,173)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_nor_q <= not (redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_notEnable_q or redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_q);

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_last(CONSTANT,169)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_last_q <= "01";

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmp(LOGICAL,170)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmp_q <= "1" WHEN redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_last_q = redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_q ELSE "0";

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmpReg(REG,171)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmpReg_q <= STD_LOGIC_VECTOR(redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena(REG,174)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_nor_q = "1") THEN
                redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_enaAnd(LOGICAL,175)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_enaAnd_q <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_sticky_ena_q and VCC_q;

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt(COUNTER,167)
    -- low=0, high=2, step=1, init=0
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_eq <= '1';
            ELSE
                redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_eq <= '0';
            END IF;
            IF (redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_eq = '1') THEN
                redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i + 2;
            ELSE
                redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_i, 2)));

    -- i_acl_push_i32_sub2768_push19_mem_read_generic(BLACKBOX,65)@2
    -- out out_feedback_out_19@20000000
    -- out out_feedback_valid_out_19@20000000
    thei_acl_push_i32_sub2768_push19_mem_read_generic : i_acl_push_i32_sub2768_push19_mem_read_generic111
    PORT MAP (
        in_data_in => redist7_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_19 => i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_feedback_stall_out_19,
        in_notexit53 => redist4_i_notexit53_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_19 => i_acl_push_i32_sub2768_push19_mem_read_generic_out_feedback_out_19,
        out_feedback_valid_out_19 => i_acl_push_i32_sub2768_push19_mem_read_generic_out_feedback_valid_out_19,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_sub2768_pop19_mem_read_generic(BLACKBOX,58)@1
    -- out out_feedback_stall_out_19@20000000
    thei_acl_pop_i32_sub2768_pop19_mem_read_generic : i_acl_pop_i32_sub2768_pop19_mem_read_generic109
    PORT MAP (
        in_data_in => in_c0_eni5_4,
        in_dir => in_c0_eni5_1,
        in_feedback_in_19 => i_acl_push_i32_sub2768_push19_mem_read_generic_out_feedback_out_19,
        in_feedback_valid_in_19 => i_acl_push_i32_sub2768_push19_mem_read_generic_out_feedback_valid_out_19,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out,
        out_feedback_stall_out_19 => i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_feedback_stall_out_19,
        clock => clock,
        resetn => resetn
    );

    -- redist7_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_1(DELAY,153)
    redist7_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out, xout => redist7_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_wraddr(REG,168)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_wraddr_q <= STD_LOGIC_VECTOR(redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem(DUALMEM,166)
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_ia <= STD_LOGIC_VECTOR(redist7_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_1_q);
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_aa <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_wraddr_q;
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_ab <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_rdcnt_q;
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_reset0 <= not (resetn);
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_reset0,
        clock1 => clock,
        address_a => redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_aa,
        data_a => redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_ab,
        q_b => redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_iq
    );
    redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_q <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_iq(31 downto 0);

    -- i_acl_push_i1_push18_mem_read_generic(BLACKBOX,61)@2
    -- out out_feedback_out_18@20000000
    -- out out_feedback_valid_out_18@20000000
    thei_acl_push_i1_push18_mem_read_generic : i_acl_push_i1_push18_mem_read_generic107
    PORT MAP (
        in_data_in => redist14_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_18 => i_acl_pop_i1_pop18_mem_read_generic_out_feedback_stall_out_18,
        in_notexit53 => redist4_i_notexit53_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_18 => i_acl_push_i1_push18_mem_read_generic_out_feedback_out_18,
        out_feedback_valid_out_18 => i_acl_push_i1_push18_mem_read_generic_out_feedback_valid_out_18,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i1_pop18_mem_read_generic(BLACKBOX,54)@1
    -- out out_feedback_stall_out_18@20000000
    thei_acl_pop_i1_pop18_mem_read_generic : i_acl_pop_i1_pop18_mem_read_generic105
    PORT MAP (
        in_data_in => in_c0_eni5_3,
        in_dir => in_c0_eni5_1,
        in_feedback_in_18 => i_acl_push_i1_push18_mem_read_generic_out_feedback_out_18,
        in_feedback_valid_in_18 => i_acl_push_i1_push18_mem_read_generic_out_feedback_valid_out_18,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i1_pop18_mem_read_generic_out_data_out,
        out_feedback_stall_out_18 => i_acl_pop_i1_pop18_mem_read_generic_out_feedback_stall_out_18,
        clock => clock,
        resetn => resetn
    );

    -- redist14_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_1(DELAY,160)
    redist14_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i1_pop18_mem_read_generic_out_data_out, xout => redist14_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- redist15_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_5(DELAY,161)
    redist15_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist14_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_1_q, xout => redist15_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_5_q, clk => clock, aclr => resetn );

    -- redist5_i_notexit53_mem_read_generic_q_5(DELAY,151)
    redist5_i_notexit53_mem_read_generic_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist4_i_notexit53_mem_read_generic_q_1_q, xout => redist5_i_notexit53_mem_read_generic_q_5_q, clk => clock, aclr => resetn );

    -- redist6_i_notexit53_demorgan_mem_read_generic_q_5(DELAY,152)
    redist6_i_notexit53_demorgan_mem_read_generic_q_5 : dspba_delay
    GENERIC MAP ( width => 1, depth => 5, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit53_demorgan_mem_read_generic_q, xout => redist6_i_notexit53_demorgan_mem_read_generic_q_5_q, clk => clock, aclr => resetn );

    -- i_acl_push_i32_sub2464_push17_mem_read_generic(BLACKBOX,64)@2
    -- out out_feedback_out_17@20000000
    -- out out_feedback_valid_out_17@20000000
    thei_acl_push_i32_sub2464_push17_mem_read_generic : i_acl_push_i32_sub2464_push17_mem_read_generic97
    PORT MAP (
        in_data_in => redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1_q,
        in_feedback_stall_in_17 => i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_feedback_stall_out_17,
        in_notexit53 => redist4_i_notexit53_mem_read_generic_q_1_q,
        in_stall_in => GND_q,
        in_valid_in => redist16_sync_in_aunroll_x_in_i_valid_1_q,
        out_feedback_out_17 => i_acl_push_i32_sub2464_push17_mem_read_generic_out_feedback_out_17,
        out_feedback_valid_out_17 => i_acl_push_i32_sub2464_push17_mem_read_generic_out_feedback_valid_out_17,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pop_i32_sub2464_pop17_mem_read_generic(BLACKBOX,57)@1
    -- out out_feedback_stall_out_17@20000000
    thei_acl_pop_i32_sub2464_pop17_mem_read_generic : i_acl_pop_i32_sub2464_pop17_mem_read_generic75
    PORT MAP (
        in_data_in => in_c0_eni5_2,
        in_dir => in_c0_eni5_1,
        in_feedback_in_17 => i_acl_push_i32_sub2464_push17_mem_read_generic_out_feedback_out_17,
        in_feedback_valid_in_17 => i_acl_push_i32_sub2464_push17_mem_read_generic_out_feedback_valid_out_17,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out,
        out_feedback_stall_out_17 => i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_feedback_stall_out_17,
        clock => clock,
        resetn => resetn
    );

    -- redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1(DELAY,155)
    redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out, xout => redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- c_i32_1gr(CONSTANT,48)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc46_mem_read_generic(ADD,74)@1
    i_inc46_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out);
    i_inc46_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc46_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc46_mem_read_generic_a) + UNSIGNED(i_inc46_mem_read_generic_b));
    i_inc46_mem_read_generic_q <= i_inc46_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_inc46_mem_read_generic_sel_x(BITSELECT,6)@1
    bgTrunc_i_inc46_mem_read_generic_sel_x_b <= i_inc46_mem_read_generic_q(31 downto 0);

    -- i_acl_push_i32_ky_28_push16_mem_read_generic(BLACKBOX,63)@1
    -- out out_feedback_out_16@20000000
    -- out out_feedback_valid_out_16@20000000
    thei_acl_push_i32_ky_28_push16_mem_read_generic : i_acl_push_i32_ky_28_push16_mem_read_generic99
    PORT MAP (
        in_data_in => bgTrunc_i_inc46_mem_read_generic_sel_x_b,
        in_feedback_stall_in_16 => i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_feedback_stall_out_16,
        in_notexit53 => i_notexit53_mem_read_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_16 => i_acl_push_i32_ky_28_push16_mem_read_generic_out_feedback_out_16,
        out_feedback_valid_out_16 => i_acl_push_i32_ky_28_push16_mem_read_generic_out_feedback_valid_out_16,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,47)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_ky_28_pop16_mem_read_generic(BLACKBOX,56)@1
    -- out out_feedback_stall_out_16@20000000
    thei_acl_pop_i32_ky_28_pop16_mem_read_generic : i_acl_pop_i32_ky_28_pop16_mem_read_generic73
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni5_1,
        in_feedback_in_16 => i_acl_push_i32_ky_28_push16_mem_read_generic_out_feedback_out_16,
        in_feedback_valid_in_16 => i_acl_push_i32_ky_28_push16_mem_read_generic_out_feedback_valid_out_16,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out,
        out_feedback_stall_out_16 => i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_feedback_stall_out_16,
        clock => clock,
        resetn => resetn
    );

    -- redist11_i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out_1(DELAY,157)
    redist11_i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out, xout => redist11_i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out_1_q, clk => clock, aclr => resetn );

    -- i_add25_mem_read_generic(ADD,67)@2
    i_add25_mem_read_generic_a <= STD_LOGIC_VECTOR("0" & redist11_i_acl_pop_i32_ky_28_pop16_mem_read_generic_out_data_out_1_q);
    i_add25_mem_read_generic_b <= STD_LOGIC_VECTOR("0" & redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1_q);
    i_add25_mem_read_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add25_mem_read_generic_a) + UNSIGNED(i_add25_mem_read_generic_b));
    i_add25_mem_read_generic_q <= i_add25_mem_read_generic_o(32 downto 0);

    -- bgTrunc_i_add25_mem_read_generic_sel_x(BITSELECT,2)@2
    bgTrunc_i_add25_mem_read_generic_sel_x_b <= i_add25_mem_read_generic_q(31 downto 0);

    -- redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1(DELAY,165)
    redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_add25_mem_read_generic_sel_x_b, xout => redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_mul34_mem_read_generic_bs4(BITSELECT,123)@3
    i_mul34_mem_read_generic_bs4_in <= STD_LOGIC_VECTOR(redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q(17 downto 0));
    i_mul34_mem_read_generic_bs4_b <= STD_LOGIC_VECTOR(i_mul34_mem_read_generic_bs4_in(17 downto 0));

    -- i_mul34_mem_read_generic_bjA5(BITJOIN,124)@3
    i_mul34_mem_read_generic_bjA5_q <= GND_q & i_mul34_mem_read_generic_bs4_b;

    -- i_syncbuf_w_sync_buffer25_mem_read_generic(BLACKBOX,88)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_w_sync_buffer25_mem_read_generic : i_syncbuf_w_sync_buffer25_mem_read_generic81
    PORT MAP (
        in_buffer_in => in_w,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_w_sync_buffer25_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_mul34_mem_read_generic_bs2_merged_bit_select(BITSELECT,145)@3
    i_mul34_mem_read_generic_bs2_merged_bit_select_b <= i_syncbuf_w_sync_buffer25_mem_read_generic_out_buffer_out(17 downto 0);
    i_mul34_mem_read_generic_bs2_merged_bit_select_c <= i_syncbuf_w_sync_buffer25_mem_read_generic_out_buffer_out(31 downto 18);

    -- i_mul34_mem_read_generic_bjB9(BITJOIN,128)@3
    i_mul34_mem_read_generic_bjB9_q <= GND_q & i_mul34_mem_read_generic_bs2_merged_bit_select_b;

    -- i_mul34_mem_read_generic_bs7(BITSELECT,126)@3
    i_mul34_mem_read_generic_bs7_b <= STD_LOGIC_VECTOR(redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q(31 downto 18));

    -- i_mul34_mem_read_generic_ma3_cma(CHAINMULTADD,144)@3 + 2
    i_mul34_mem_read_generic_ma3_cma_reset <= not (resetn);
    i_mul34_mem_read_generic_ma3_cma_ena0 <= '1';
    i_mul34_mem_read_generic_ma3_cma_ena1 <= i_mul34_mem_read_generic_ma3_cma_ena0;
    i_mul34_mem_read_generic_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul34_mem_read_generic_ma3_cma_a0(0),15));
    i_mul34_mem_read_generic_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul34_mem_read_generic_ma3_cma_a0(1),15));
    i_mul34_mem_read_generic_ma3_cma_p(0) <= i_mul34_mem_read_generic_ma3_cma_l(0) * i_mul34_mem_read_generic_ma3_cma_c0(0);
    i_mul34_mem_read_generic_ma3_cma_p(1) <= i_mul34_mem_read_generic_ma3_cma_l(1) * i_mul34_mem_read_generic_ma3_cma_c0(1);
    i_mul34_mem_read_generic_ma3_cma_u(0) <= RESIZE(i_mul34_mem_read_generic_ma3_cma_p(0),35);
    i_mul34_mem_read_generic_ma3_cma_u(1) <= RESIZE(i_mul34_mem_read_generic_ma3_cma_p(1),35);
    i_mul34_mem_read_generic_ma3_cma_w(0) <= i_mul34_mem_read_generic_ma3_cma_u(0) + i_mul34_mem_read_generic_ma3_cma_u(1);
    i_mul34_mem_read_generic_ma3_cma_x(0) <= i_mul34_mem_read_generic_ma3_cma_w(0);
    i_mul34_mem_read_generic_ma3_cma_y(0) <= i_mul34_mem_read_generic_ma3_cma_x(0);
    i_mul34_mem_read_generic_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_mem_read_generic_ma3_cma_a0 <= (others => (others => '0'));
            i_mul34_mem_read_generic_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_mem_read_generic_ma3_cma_ena0 = '1') THEN
                i_mul34_mem_read_generic_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul34_mem_read_generic_bs7_b),14);
                i_mul34_mem_read_generic_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul34_mem_read_generic_bs2_merged_bit_select_c),14);
                i_mul34_mem_read_generic_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul34_mem_read_generic_bjB9_q),19);
                i_mul34_mem_read_generic_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul34_mem_read_generic_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_mem_read_generic_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_mem_read_generic_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_mem_read_generic_ma3_cma_ena1 = '1') THEN
                i_mul34_mem_read_generic_ma3_cma_s(0) <= i_mul34_mem_read_generic_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_mem_read_generic_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul34_mem_read_generic_ma3_cma_s(0)(33 downto 0)), xout => i_mul34_mem_read_generic_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul34_mem_read_generic_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul34_mem_read_generic_ma3_cma_qq(33 downto 0));

    -- redist0_i_mul34_mem_read_generic_ma3_cma_q_1(DELAY,146)
    redist0_i_mul34_mem_read_generic_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_mem_read_generic_ma3_cma_q, xout => redist0_i_mul34_mem_read_generic_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul34_mem_read_generic_align_14(BITSHIFT,133)@6
    i_mul34_mem_read_generic_align_14_qint <= redist0_i_mul34_mem_read_generic_ma3_cma_q_1_q & "000000000000000000";
    i_mul34_mem_read_generic_align_14_q <= i_mul34_mem_read_generic_align_14_qint(51 downto 0);

    -- i_mul34_mem_read_generic_bs11(BITSELECT,130)@3
    i_mul34_mem_read_generic_bs11_b <= redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q(31 downto 18);

    -- i_mul34_mem_read_generic_im10_cma(CHAINMULTADD,143)@3 + 2
    i_mul34_mem_read_generic_im10_cma_reset <= not (resetn);
    i_mul34_mem_read_generic_im10_cma_ena0 <= '1';
    i_mul34_mem_read_generic_im10_cma_ena1 <= i_mul34_mem_read_generic_im10_cma_ena0;
    i_mul34_mem_read_generic_im10_cma_p(0) <= i_mul34_mem_read_generic_im10_cma_a0(0) * i_mul34_mem_read_generic_im10_cma_c0(0);
    i_mul34_mem_read_generic_im10_cma_u(0) <= RESIZE(i_mul34_mem_read_generic_im10_cma_p(0),28);
    i_mul34_mem_read_generic_im10_cma_w(0) <= i_mul34_mem_read_generic_im10_cma_u(0);
    i_mul34_mem_read_generic_im10_cma_x(0) <= i_mul34_mem_read_generic_im10_cma_w(0);
    i_mul34_mem_read_generic_im10_cma_y(0) <= i_mul34_mem_read_generic_im10_cma_x(0);
    i_mul34_mem_read_generic_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_mem_read_generic_im10_cma_a0 <= (others => (others => '0'));
            i_mul34_mem_read_generic_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_mem_read_generic_im10_cma_ena0 = '1') THEN
                i_mul34_mem_read_generic_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul34_mem_read_generic_bs11_b),14);
                i_mul34_mem_read_generic_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul34_mem_read_generic_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_mem_read_generic_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_mem_read_generic_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_mem_read_generic_im10_cma_ena1 = '1') THEN
                i_mul34_mem_read_generic_im10_cma_s(0) <= i_mul34_mem_read_generic_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_mem_read_generic_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul34_mem_read_generic_im10_cma_s(0)(27 downto 0)), xout => i_mul34_mem_read_generic_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul34_mem_read_generic_im10_cma_q <= STD_LOGIC_VECTOR(i_mul34_mem_read_generic_im10_cma_qq(27 downto 0));

    -- redist1_i_mul34_mem_read_generic_im10_cma_q_1(DELAY,147)
    redist1_i_mul34_mem_read_generic_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_mem_read_generic_im10_cma_q, xout => redist1_i_mul34_mem_read_generic_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul34_mem_read_generic_bs1(BITSELECT,120)@3
    i_mul34_mem_read_generic_bs1_in <= redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q(17 downto 0);
    i_mul34_mem_read_generic_bs1_b <= i_mul34_mem_read_generic_bs1_in(17 downto 0);

    -- i_mul34_mem_read_generic_im0_cma(CHAINMULTADD,142)@3 + 2
    i_mul34_mem_read_generic_im0_cma_reset <= not (resetn);
    i_mul34_mem_read_generic_im0_cma_ena0 <= '1';
    i_mul34_mem_read_generic_im0_cma_ena1 <= i_mul34_mem_read_generic_im0_cma_ena0;
    i_mul34_mem_read_generic_im0_cma_p(0) <= i_mul34_mem_read_generic_im0_cma_a0(0) * i_mul34_mem_read_generic_im0_cma_c0(0);
    i_mul34_mem_read_generic_im0_cma_u(0) <= RESIZE(i_mul34_mem_read_generic_im0_cma_p(0),36);
    i_mul34_mem_read_generic_im0_cma_w(0) <= i_mul34_mem_read_generic_im0_cma_u(0);
    i_mul34_mem_read_generic_im0_cma_x(0) <= i_mul34_mem_read_generic_im0_cma_w(0);
    i_mul34_mem_read_generic_im0_cma_y(0) <= i_mul34_mem_read_generic_im0_cma_x(0);
    i_mul34_mem_read_generic_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_mem_read_generic_im0_cma_a0 <= (others => (others => '0'));
            i_mul34_mem_read_generic_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_mem_read_generic_im0_cma_ena0 = '1') THEN
                i_mul34_mem_read_generic_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul34_mem_read_generic_bs1_b),18);
                i_mul34_mem_read_generic_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul34_mem_read_generic_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_mem_read_generic_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul34_mem_read_generic_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul34_mem_read_generic_im0_cma_ena1 = '1') THEN
                i_mul34_mem_read_generic_im0_cma_s(0) <= i_mul34_mem_read_generic_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul34_mem_read_generic_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul34_mem_read_generic_im0_cma_s(0)(35 downto 0)), xout => i_mul34_mem_read_generic_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul34_mem_read_generic_im0_cma_q <= STD_LOGIC_VECTOR(i_mul34_mem_read_generic_im0_cma_qq(35 downto 0));

    -- redist2_i_mul34_mem_read_generic_im0_cma_q_1(DELAY,148)
    redist2_i_mul34_mem_read_generic_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul34_mem_read_generic_im0_cma_q, xout => redist2_i_mul34_mem_read_generic_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul34_mem_read_generic_join_13(BITJOIN,132)@6
    i_mul34_mem_read_generic_join_13_q <= redist1_i_mul34_mem_read_generic_im10_cma_q_1_q & redist2_i_mul34_mem_read_generic_im0_cma_q_1_q;

    -- i_mul34_mem_read_generic_result_add_0_0(ADD,135)@6
    i_mul34_mem_read_generic_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul34_mem_read_generic_join_13_q));
    i_mul34_mem_read_generic_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul34_mem_read_generic_align_14_q(51)) & i_mul34_mem_read_generic_align_14_q));
    i_mul34_mem_read_generic_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul34_mem_read_generic_result_add_0_0_a) + SIGNED(i_mul34_mem_read_generic_result_add_0_0_b));
    i_mul34_mem_read_generic_result_add_0_0_q <= i_mul34_mem_read_generic_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul34_mem_read_generic_rnd_sel(BITSELECT,116)@6
    bgTrunc_i_mul34_mem_read_generic_rnd_sel_in <= i_mul34_mem_read_generic_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul34_mem_read_generic_rnd_sel_b <= bgTrunc_i_mul34_mem_read_generic_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul34_mem_read_generic_sel_x(BITSELECT,7)@6
    bgTrunc_i_mul34_mem_read_generic_sel_x_b <= bgTrunc_i_mul34_mem_read_generic_rnd_sel_b(31 downto 0);

    -- i_syncbuf_h_sync_buffer29_mem_read_generic(BLACKBOX,85)@0
    -- in in_i_dependence@3
    -- in in_valid_in@3
    -- out out_buffer_out@3
    -- out out_valid_out@3
    thei_syncbuf_h_sync_buffer29_mem_read_generic : i_syncbuf_h_sync_buffer29_mem_read_generic78
    PORT MAP (
        in_buffer_in => in_h,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist17_sync_in_aunroll_x_in_i_valid_2_q,
        out_buffer_out => i_syncbuf_h_sync_buffer29_mem_read_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- i_cmp30_mem_read_generic(COMPARE,71)@3 + 1
    i_cmp30_mem_read_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q(31)) & redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q));
    i_cmp30_mem_read_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_h_sync_buffer29_mem_read_generic_out_buffer_out(31)) & i_syncbuf_h_sync_buffer29_mem_read_generic_out_buffer_out));
    i_cmp30_mem_read_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp30_mem_read_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp30_mem_read_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp30_mem_read_generic_a) - SIGNED(i_cmp30_mem_read_generic_b));
        END IF;
    END PROCESS;
    i_cmp30_mem_read_generic_n(0) <= not (i_cmp30_mem_read_generic_o(33));

    -- i_cmp29_mem_read_generic_cmp_sign(LOGICAL,136)@3 + 1
    i_cmp29_mem_read_generic_cmp_sign_qi <= STD_LOGIC_VECTOR(redist19_bgTrunc_i_add25_mem_read_generic_sel_x_b_1_q(31 downto 31));
    i_cmp29_mem_read_generic_cmp_sign_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_cmp29_mem_read_generic_cmp_sign_qi, xout => i_cmp29_mem_read_generic_cmp_sign_q, clk => clock, aclr => resetn );

    -- i_or_cond_mem_read_generic(LOGICAL,81)@4 + 1
    i_or_cond_mem_read_generic_qi <= i_cmp29_mem_read_generic_cmp_sign_q or i_cmp30_mem_read_generic_n;
    i_or_cond_mem_read_generic_delay : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or_cond_mem_read_generic_qi, xout => i_or_cond_mem_read_generic_q, clk => clock, aclr => resetn );

    -- redist3_i_or_cond_mem_read_generic_q_2(DELAY,149)
    redist3_i_or_cond_mem_read_generic_q_2 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_or_cond_mem_read_generic_q, xout => redist3_i_or_cond_mem_read_generic_q_2_q, clk => clock, aclr => resetn );

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_notEnable(LOGICAL,182)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_nor(LOGICAL,183)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_nor_q <= not (redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_notEnable_q or redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_q);

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_last(CONSTANT,179)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_last_q <= "01";

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmp(LOGICAL,180)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmp_q <= "1" WHEN redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_last_q = redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_q ELSE "0";

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmpReg(REG,181)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmpReg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmpReg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmpReg_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmp_q);
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena(REG,184)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_nor_q = "1") THEN
                redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_enaAnd(LOGICAL,185)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_enaAnd_q <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_sticky_ena_q and VCC_q;

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt(COUNTER,177)
    -- low=0, high=2, step=1, init=0
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i <= TO_UNSIGNED(0, 2);
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_eq <= '0';
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i = TO_UNSIGNED(1, 2)) THEN
                redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_eq <= '1';
            ELSE
                redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_eq <= '0';
            END IF;
            IF (redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_eq = '1') THEN
                redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i + 2;
            ELSE
                redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i + 1;
            END IF;
        END IF;
    END PROCESS;
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_i, 2)));

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_wraddr(REG,178)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_wraddr_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_wraddr_q <= "10";
        ELSIF (clock'EVENT AND clock = '1') THEN
            redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_wraddr_q <= STD_LOGIC_VECTOR(redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_q);
        END IF;
    END PROCESS;

    -- redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem(DUALMEM,176)
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_ia <= STD_LOGIC_VECTOR(redist9_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_1_q);
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_aa <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_wraddr_q;
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_ab <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_rdcnt_q;
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_reset0 <= not (resetn);
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 2,
        numwords_a => 3,
        width_b => 32,
        widthad_b => 2,
        numwords_b => 3,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clock,
        aclr1 => redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_reset0,
        clock1 => clock,
        address_a => redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_aa,
        data_a => redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_ia,
        wren_a => VCC_q(0),
        address_b => redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_ab,
        q_b => redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_iq
    );
    redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_q <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_iq(31 downto 0);

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,36)@6
    out_c0_exi8_0 <= GND_q;
    out_c0_exi8_1 <= redist10_i_acl_pop_i32_sub2464_pop17_mem_read_generic_out_data_out_5_mem_q;
    out_c0_exi8_2 <= redist3_i_or_cond_mem_read_generic_q_2_q;
    out_c0_exi8_3 <= bgTrunc_i_mul34_mem_read_generic_sel_x_b;
    out_c0_exi8_4 <= redist6_i_notexit53_demorgan_mem_read_generic_q_5_q;
    out_c0_exi8_5 <= redist5_i_notexit53_mem_read_generic_q_5_q;
    out_c0_exi8_6 <= redist15_i_acl_pop_i1_pop18_mem_read_generic_out_data_out_5_q;
    out_c0_exi8_7 <= redist8_i_acl_pop_i32_sub2768_pop19_mem_read_generic_out_data_out_5_mem_q;
    out_c0_exi8_8 <= redist13_i_acl_pop_i1_pop20_mem_read_generic_out_data_out_5_q;
    out_o_valid <= redist18_sync_in_aunroll_x_in_i_valid_5_q;

    -- i_acl_push_i1_notexitcond52_mem_read_generic(BLACKBOX,60)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i1_notexitcond52_mem_read_generic : i_acl_push_i1_notexitcond52_mem_read_generic103
    PORT MAP (
        in_data_in => i_notexit53_mem_read_generic_q,
        in_feedback_stall_in_6 => i_acl_pipeline_keep_going51_mem_read_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i1_notexitcond52_mem_read_generic_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i1_notexitcond52_mem_read_generic_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going51_mem_read_generic(BLACKBOX,53)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going51_mem_read_generic : i_acl_pipeline_keep_going51_mem_read_generic71
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond52_mem_read_generic_out_feedback_out_6,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond52_mem_read_generic_out_feedback_valid_out_6,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going51_mem_read_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going51_mem_read_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going51_mem_read_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going51_mem_read_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,52)
    out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_valid_out <= i_acl_pipeline_keep_going51_mem_read_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going51_mem_read_generic_exiting_stall_out <= i_acl_pipeline_keep_going51_mem_read_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,97)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going51_mem_read_generic_out_pipeline_valid_out;

END normal;
