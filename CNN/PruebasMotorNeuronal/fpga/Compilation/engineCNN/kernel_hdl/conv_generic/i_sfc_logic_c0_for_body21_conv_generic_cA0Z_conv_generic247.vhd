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

-- VHDL created from i_sfc_logic_c0_for_body21_conv_generic_c0_enter295_conv_generic247
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

entity i_sfc_logic_c0_for_body21_conv_generic_c0_enter295_conv_generic247 is
    port (
        in_c0_eni1294_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c0_eni1294_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        in_intel_reserved_ffwd_16_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_intel_reserved_ffwd_17_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_tile_channels : in std_logic_vector(31 downto 0);  -- ufix32
        in_w_off : in std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5301_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5301_1 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5301_2 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5301_3 : out std_logic_vector(31 downto 0);  -- ufix32
        out_c0_exi5301_4 : out std_logic_vector(0 downto 0);  -- ufix1
        out_c0_exi5301_5 : out std_logic_vector(0 downto 0);  -- ufix1
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going213_conv_generic_exiting_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        out_aclp_to_limiter_i_acl_pipeline_keep_going213_conv_generic_exiting_stall_out : out std_logic_vector(0 downto 0);  -- ufix1
        in_pipeline_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        out_pipeline_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c0_for_body21_conv_generic_c0_enter295_conv_generic247;

architecture normal of i_sfc_logic_c0_for_body21_conv_generic_c0_enter295_conv_generic247 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pipeline_keep_going213_conv_generic249 is
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


    component i_acl_pop_i32_oc18_033_pop40_conv_generic253 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_40 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_40 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_40 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic262 is
        port (
            in_data_in : in std_logic_vector(4 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_39 : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_feedback_valid_in_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_feedback_stall_out_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i1_notexitcond214_conv_generic267 is
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


    component i_acl_push_i32_oc18_033_push40_conv_generic265 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_40 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit215 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_40 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_40 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic269 is
        port (
            in_data_in : in std_logic_vector(4 downto 0);  -- Fixed Point
            in_feedback_stall_in_39 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_notexit215 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_feedback_out_39 : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_feedback_valid_out_39 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_cmp2731_not190_conv_generic256 is
        port (
            in_intel_reserved_ffwd_17_0 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_17_0 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_dst_mul17_add62189_conv_generic258 is
        port (
            in_intel_reserved_ffwd_16_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_dest_data_out_16_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_syncbuf_tile_channels_sync_buffer129_conv_generic251 is
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


    component i_syncbuf_w_off_sync_buffer_conv_generic260 is
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
    signal bgTrunc_i_add25_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_fpgaindvars_iv_next168_conv_generic_sel_x_b : STD_LOGIC_VECTOR (4 downto 0);
    signal bgTrunc_i_inc41_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_conv_generic_sel_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_0gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i32_1gr_q : STD_LOGIC_VECTOR (31 downto 0);
    signal c_i5_14_q : STD_LOGIC_VECTOR (4 downto 0);
    signal c_i5_1gr_q : STD_LOGIC_VECTOR (4 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_out_exiting_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_out_exiting_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_out_not_exitcond_stall_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pipeline_keep_going213_conv_generic_out_pipeline_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_oc18_033_pop40_conv_generic_out_feedback_stall_out_40 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_data_out : STD_LOGIC_VECTOR (4 downto 0);
    signal i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_feedback_stall_out_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i1_notexitcond214_conv_generic_out_feedback_out_6 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i1_notexitcond214_conv_generic_out_feedback_valid_out_6 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_oc18_033_push40_conv_generic_out_feedback_out_40 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_oc18_033_push40_conv_generic_out_feedback_valid_out_40 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic_out_feedback_out_39 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic_out_feedback_valid_out_39 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_add25_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add25_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add25_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_add25_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_brmerge_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_cmp22_not_conv_generic_a : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_not_conv_generic_b : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_not_conv_generic_o : STD_LOGIC_VECTOR (33 downto 0);
    signal i_cmp22_not_conv_generic_n : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_cmp2731_not190_conv_generic_out_dest_data_out_17_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_dst_mul17_add62189_conv_generic_out_dest_data_out_16_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_fpgaindvars_iv_next168_conv_generic_a : STD_LOGIC_VECTOR (5 downto 0);
    signal i_fpgaindvars_iv_next168_conv_generic_b : STD_LOGIC_VECTOR (5 downto 0);
    signal i_fpgaindvars_iv_next168_conv_generic_o : STD_LOGIC_VECTOR (5 downto 0);
    signal i_fpgaindvars_iv_next168_conv_generic_q : STD_LOGIC_VECTOR (5 downto 0);
    signal i_inc41_conv_generic_a : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc41_conv_generic_b : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc41_conv_generic_o : STD_LOGIC_VECTOR (32 downto 0);
    signal i_inc41_conv_generic_q : STD_LOGIC_VECTOR (32 downto 0);
    signal i_notexit215_conv_generic_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_syncbuf_tile_channels_sync_buffer129_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_syncbuf_w_off_sync_buffer_conv_generic_out_buffer_out : STD_LOGIC_VECTOR (31 downto 0);
    signal bgTrunc_i_mul24_conv_generic_rnd_sel_in : STD_LOGIC_VECTOR (63 downto 0);
    signal bgTrunc_i_mul24_conv_generic_rnd_sel_b : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul24_conv_generic_bs1_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_generic_bs1_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_generic_bs4_in : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_generic_bs4_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_generic_bjA5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul24_conv_generic_bs7_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul24_conv_generic_bjB9_q : STD_LOGIC_VECTOR (18 downto 0);
    signal i_mul24_conv_generic_bs11_b : STD_LOGIC_VECTOR (13 downto 0);
    signal i_mul24_conv_generic_join_13_q : STD_LOGIC_VECTOR (63 downto 0);
    signal i_mul24_conv_generic_align_14_q : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul24_conv_generic_align_14_qint : STD_LOGIC_VECTOR (51 downto 0);
    signal i_mul24_conv_generic_result_add_0_0_a : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul24_conv_generic_result_add_0_0_b : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul24_conv_generic_result_add_0_0_o : STD_LOGIC_VECTOR (66 downto 0);
    signal i_mul24_conv_generic_result_add_0_0_q : STD_LOGIC_VECTOR (65 downto 0);
    signal i_exitcond169_conv_generic_cmp_sign_q : STD_LOGIC_VECTOR (0 downto 0);
    signal i_mul24_conv_generic_im0_cma_reset : std_logic;
    type i_mul24_conv_generic_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal i_mul24_conv_generic_im0_cma_a0 : i_mul24_conv_generic_im0_cma_a0type(0 to 0);
    attribute preserve : boolean;
    attribute preserve of i_mul24_conv_generic_im0_cma_a0 : signal is true;
    signal i_mul24_conv_generic_im0_cma_c0 : i_mul24_conv_generic_im0_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_generic_im0_cma_c0 : signal is true;
    type i_mul24_conv_generic_im0_cma_ptype is array(NATURAL range <>) of UNSIGNED(35 downto 0);
    signal i_mul24_conv_generic_im0_cma_p : i_mul24_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im0_cma_u : i_mul24_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im0_cma_w : i_mul24_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im0_cma_x : i_mul24_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im0_cma_y : i_mul24_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im0_cma_s : i_mul24_conv_generic_im0_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im0_cma_qq : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul24_conv_generic_im0_cma_q : STD_LOGIC_VECTOR (35 downto 0);
    signal i_mul24_conv_generic_im0_cma_ena0 : std_logic;
    signal i_mul24_conv_generic_im0_cma_ena1 : std_logic;
    signal i_mul24_conv_generic_im10_cma_reset : std_logic;
    type i_mul24_conv_generic_im10_cma_a0type is array(NATURAL range <>) of UNSIGNED(13 downto 0);
    signal i_mul24_conv_generic_im10_cma_a0 : i_mul24_conv_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_generic_im10_cma_a0 : signal is true;
    signal i_mul24_conv_generic_im10_cma_c0 : i_mul24_conv_generic_im10_cma_a0type(0 to 0);
    attribute preserve of i_mul24_conv_generic_im10_cma_c0 : signal is true;
    type i_mul24_conv_generic_im10_cma_ptype is array(NATURAL range <>) of UNSIGNED(27 downto 0);
    signal i_mul24_conv_generic_im10_cma_p : i_mul24_conv_generic_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im10_cma_u : i_mul24_conv_generic_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im10_cma_w : i_mul24_conv_generic_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im10_cma_x : i_mul24_conv_generic_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im10_cma_y : i_mul24_conv_generic_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im10_cma_s : i_mul24_conv_generic_im10_cma_ptype(0 to 0);
    signal i_mul24_conv_generic_im10_cma_qq : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul24_conv_generic_im10_cma_q : STD_LOGIC_VECTOR (27 downto 0);
    signal i_mul24_conv_generic_im10_cma_ena0 : std_logic;
    signal i_mul24_conv_generic_im10_cma_ena1 : std_logic;
    signal i_mul24_conv_generic_ma3_cma_reset : std_logic;
    signal i_mul24_conv_generic_ma3_cma_a0 : i_mul24_conv_generic_im10_cma_a0type(0 to 1);
    attribute preserve of i_mul24_conv_generic_ma3_cma_a0 : signal is true;
    type i_mul24_conv_generic_ma3_cma_c0type is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal i_mul24_conv_generic_ma3_cma_c0 : i_mul24_conv_generic_ma3_cma_c0type(0 to 1);
    attribute preserve of i_mul24_conv_generic_ma3_cma_c0 : signal is true;
    type i_mul24_conv_generic_ma3_cma_ltype is array(NATURAL range <>) of SIGNED(14 downto 0);
    signal i_mul24_conv_generic_ma3_cma_l : i_mul24_conv_generic_ma3_cma_ltype(0 to 1);
    type i_mul24_conv_generic_ma3_cma_ptype is array(NATURAL range <>) of SIGNED(33 downto 0);
    signal i_mul24_conv_generic_ma3_cma_p : i_mul24_conv_generic_ma3_cma_ptype(0 to 1);
    type i_mul24_conv_generic_ma3_cma_utype is array(NATURAL range <>) of SIGNED(34 downto 0);
    signal i_mul24_conv_generic_ma3_cma_u : i_mul24_conv_generic_ma3_cma_utype(0 to 1);
    signal i_mul24_conv_generic_ma3_cma_w : i_mul24_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_generic_ma3_cma_x : i_mul24_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_generic_ma3_cma_y : i_mul24_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_generic_ma3_cma_s : i_mul24_conv_generic_ma3_cma_utype(0 to 0);
    signal i_mul24_conv_generic_ma3_cma_qq : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul24_conv_generic_ma3_cma_q : STD_LOGIC_VECTOR (33 downto 0);
    signal i_mul24_conv_generic_ma3_cma_ena0 : std_logic;
    signal i_mul24_conv_generic_ma3_cma_ena1 : std_logic;
    signal i_mul24_conv_generic_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal i_mul24_conv_generic_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal redist0_i_mul24_conv_generic_ma3_cma_q_1_q : STD_LOGIC_VECTOR (33 downto 0);
    signal redist1_i_mul24_conv_generic_im10_cma_q_1_q : STD_LOGIC_VECTOR (27 downto 0);
    signal redist2_i_mul24_conv_generic_im0_cma_q_1_q : STD_LOGIC_VECTOR (35 downto 0);
    signal redist3_i_exitcond169_conv_generic_cmp_sign_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist4_i_notexit215_conv_generic_q_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist6_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist7_sync_in_aunroll_x_in_i_valid_3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist8_sync_in_aunroll_x_in_i_valid_4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal redist9_bgTrunc_i_mul24_conv_generic_sel_x_b_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg_q : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- redist7_sync_in_aunroll_x_in_i_valid_3(DELAY,89)
    redist7_sync_in_aunroll_x_in_i_valid_3 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => in_i_valid, xout => redist7_sync_in_aunroll_x_in_i_valid_3_q, clk => clock, aclr => resetn );

    -- redist8_sync_in_aunroll_x_in_i_valid_4(DELAY,90)
    redist8_sync_in_aunroll_x_in_i_valid_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist7_sync_in_aunroll_x_in_i_valid_3_q, xout => redist8_sync_in_aunroll_x_in_i_valid_4_q, clk => clock, aclr => resetn );

    -- c_i5_1gr(CONSTANT,29)
    c_i5_1gr_q <= "11111";

    -- i_fpgaindvars_iv_next168_conv_generic(ADD,43)@1
    i_fpgaindvars_iv_next168_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_data_out);
    i_fpgaindvars_iv_next168_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i5_1gr_q);
    i_fpgaindvars_iv_next168_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_fpgaindvars_iv_next168_conv_generic_a) + UNSIGNED(i_fpgaindvars_iv_next168_conv_generic_b));
    i_fpgaindvars_iv_next168_conv_generic_q <= i_fpgaindvars_iv_next168_conv_generic_o(5 downto 0);

    -- bgTrunc_i_fpgaindvars_iv_next168_conv_generic_sel_x(BITSELECT,3)@1
    bgTrunc_i_fpgaindvars_iv_next168_conv_generic_sel_x_b <= i_fpgaindvars_iv_next168_conv_generic_q(4 downto 0);

    -- i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic(BLACKBOX,36)@1
    -- out out_feedback_out_39@20000000
    -- out out_feedback_valid_out_39@20000000
    thei_acl_push_i5_fpgaindvars_iv167_push39_conv_generic : i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic269
    PORT MAP (
        in_data_in => bgTrunc_i_fpgaindvars_iv_next168_conv_generic_sel_x_b,
        in_feedback_stall_in_39 => i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_feedback_stall_out_39,
        in_notexit215 => i_notexit215_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_39 => i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic_out_feedback_out_39,
        out_feedback_valid_out_39 => i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic_out_feedback_valid_out_39,
        clock => clock,
        resetn => resetn
    );

    -- c_i5_14(CONSTANT,28)
    c_i5_14_q <= "01110";

    -- i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic(BLACKBOX,33)@1
    -- out out_feedback_stall_out_39@20000000
    thei_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic : i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic262
    PORT MAP (
        in_data_in => c_i5_14_q,
        in_dir => in_c0_eni1294_1,
        in_feedback_in_39 => i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic_out_feedback_out_39,
        in_feedback_valid_in_39 => i_acl_push_i5_fpgaindvars_iv167_push39_conv_generic_out_feedback_valid_out_39,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_data_out,
        out_feedback_stall_out_39 => i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_feedback_stall_out_39,
        clock => clock,
        resetn => resetn
    );

    -- i_exitcond169_conv_generic_cmp_sign(LOGICAL,76)@1
    i_exitcond169_conv_generic_cmp_sign_q <= STD_LOGIC_VECTOR(i_acl_pop_i5_fpgaindvars_iv167_pop39_conv_generic_out_data_out(4 downto 4));

    -- i_notexit215_conv_generic(LOGICAL,46)@1
    i_notexit215_conv_generic_q <= i_exitcond169_conv_generic_cmp_sign_q xor VCC_q;

    -- redist4_i_notexit215_conv_generic_q_4(DELAY,86)
    redist4_i_notexit215_conv_generic_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_notexit215_conv_generic_q, xout => redist4_i_notexit215_conv_generic_q_4_q, clk => clock, aclr => resetn );

    -- redist3_i_exitcond169_conv_generic_cmp_sign_q_4(DELAY,85)
    redist3_i_exitcond169_conv_generic_cmp_sign_q_4 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_exitcond169_conv_generic_cmp_sign_q, xout => redist3_i_exitcond169_conv_generic_cmp_sign_q_4_q, clk => clock, aclr => resetn );

    -- i_syncbuf_w_off_sync_buffer_conv_generic(BLACKBOX,48)@0
    -- in in_i_dependence@5
    -- in in_valid_in@5
    -- out out_buffer_out@5
    -- out out_valid_out@5
    thei_syncbuf_w_off_sync_buffer_conv_generic : i_syncbuf_w_off_sync_buffer_conv_generic260
    PORT MAP (
        in_buffer_in => in_w_off,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_buffer_out => i_syncbuf_w_off_sync_buffer_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_1gr(CONSTANT,26)
    c_i32_1gr_q <= "00000000000000000000000000000001";

    -- i_inc41_conv_generic(ADD,44)@1
    i_inc41_conv_generic_a <= STD_LOGIC_VECTOR("0" & i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out);
    i_inc41_conv_generic_b <= STD_LOGIC_VECTOR("0" & c_i32_1gr_q);
    i_inc41_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_inc41_conv_generic_a) + UNSIGNED(i_inc41_conv_generic_b));
    i_inc41_conv_generic_q <= i_inc41_conv_generic_o(32 downto 0);

    -- bgTrunc_i_inc41_conv_generic_sel_x(BITSELECT,4)@1
    bgTrunc_i_inc41_conv_generic_sel_x_b <= i_inc41_conv_generic_q(31 downto 0);

    -- i_acl_push_i32_oc18_033_push40_conv_generic(BLACKBOX,35)@1
    -- out out_feedback_out_40@20000000
    -- out out_feedback_valid_out_40@20000000
    thei_acl_push_i32_oc18_033_push40_conv_generic : i_acl_push_i32_oc18_033_push40_conv_generic265
    PORT MAP (
        in_data_in => bgTrunc_i_inc41_conv_generic_sel_x_b,
        in_feedback_stall_in_40 => i_acl_pop_i32_oc18_033_pop40_conv_generic_out_feedback_stall_out_40,
        in_notexit215 => i_notexit215_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_40 => i_acl_push_i32_oc18_033_push40_conv_generic_out_feedback_out_40,
        out_feedback_valid_out_40 => i_acl_push_i32_oc18_033_push40_conv_generic_out_feedback_valid_out_40,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_0gr(CONSTANT,25)
    c_i32_0gr_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_oc18_033_pop40_conv_generic(BLACKBOX,32)@1
    -- out out_feedback_stall_out_40@20000000
    thei_acl_pop_i32_oc18_033_pop40_conv_generic : i_acl_pop_i32_oc18_033_pop40_conv_generic253
    PORT MAP (
        in_data_in => c_i32_0gr_q,
        in_dir => in_c0_eni1294_1,
        in_feedback_in_40 => i_acl_push_i32_oc18_033_push40_conv_generic_out_feedback_out_40,
        in_feedback_valid_in_40 => i_acl_push_i32_oc18_033_push40_conv_generic_out_feedback_valid_out_40,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out,
        out_feedback_stall_out_40 => i_acl_pop_i32_oc18_033_pop40_conv_generic_out_feedback_stall_out_40,
        clock => clock,
        resetn => resetn
    );

    -- i_mul24_conv_generic_bs4(BITSELECT,63)@1
    i_mul24_conv_generic_bs4_in <= STD_LOGIC_VECTOR(i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out(17 downto 0));
    i_mul24_conv_generic_bs4_b <= STD_LOGIC_VECTOR(i_mul24_conv_generic_bs4_in(17 downto 0));

    -- i_mul24_conv_generic_bjA5(BITJOIN,64)@1
    i_mul24_conv_generic_bjA5_q <= GND_q & i_mul24_conv_generic_bs4_b;

    -- i_ffwd_dst_mul17_add62189_conv_generic(BLACKBOX,42)@1
    thei_ffwd_dst_mul17_add62189_conv_generic : i_ffwd_dst_mul17_add62189_conv_generic258
    PORT MAP (
        in_intel_reserved_ffwd_16_0 => in_intel_reserved_ffwd_16_0,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_dest_data_out_16_0 => i_ffwd_dst_mul17_add62189_conv_generic_out_dest_data_out_16_0,
        clock => clock,
        resetn => resetn
    );

    -- i_mul24_conv_generic_bs2_merged_bit_select(BITSELECT,81)@1
    i_mul24_conv_generic_bs2_merged_bit_select_b <= i_ffwd_dst_mul17_add62189_conv_generic_out_dest_data_out_16_0(17 downto 0);
    i_mul24_conv_generic_bs2_merged_bit_select_c <= i_ffwd_dst_mul17_add62189_conv_generic_out_dest_data_out_16_0(31 downto 18);

    -- i_mul24_conv_generic_bjB9(BITJOIN,68)@1
    i_mul24_conv_generic_bjB9_q <= GND_q & i_mul24_conv_generic_bs2_merged_bit_select_b;

    -- i_mul24_conv_generic_bs7(BITSELECT,66)@1
    i_mul24_conv_generic_bs7_b <= STD_LOGIC_VECTOR(i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out(31 downto 18));

    -- i_mul24_conv_generic_ma3_cma(CHAINMULTADD,80)@1 + 2
    i_mul24_conv_generic_ma3_cma_reset <= not (resetn);
    i_mul24_conv_generic_ma3_cma_ena0 <= '1';
    i_mul24_conv_generic_ma3_cma_ena1 <= i_mul24_conv_generic_ma3_cma_ena0;
    i_mul24_conv_generic_ma3_cma_l(0) <= SIGNED(RESIZE(i_mul24_conv_generic_ma3_cma_a0(0),15));
    i_mul24_conv_generic_ma3_cma_l(1) <= SIGNED(RESIZE(i_mul24_conv_generic_ma3_cma_a0(1),15));
    i_mul24_conv_generic_ma3_cma_p(0) <= i_mul24_conv_generic_ma3_cma_l(0) * i_mul24_conv_generic_ma3_cma_c0(0);
    i_mul24_conv_generic_ma3_cma_p(1) <= i_mul24_conv_generic_ma3_cma_l(1) * i_mul24_conv_generic_ma3_cma_c0(1);
    i_mul24_conv_generic_ma3_cma_u(0) <= RESIZE(i_mul24_conv_generic_ma3_cma_p(0),35);
    i_mul24_conv_generic_ma3_cma_u(1) <= RESIZE(i_mul24_conv_generic_ma3_cma_p(1),35);
    i_mul24_conv_generic_ma3_cma_w(0) <= i_mul24_conv_generic_ma3_cma_u(0) + i_mul24_conv_generic_ma3_cma_u(1);
    i_mul24_conv_generic_ma3_cma_x(0) <= i_mul24_conv_generic_ma3_cma_w(0);
    i_mul24_conv_generic_ma3_cma_y(0) <= i_mul24_conv_generic_ma3_cma_x(0);
    i_mul24_conv_generic_ma3_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_generic_ma3_cma_a0 <= (others => (others => '0'));
            i_mul24_conv_generic_ma3_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_generic_ma3_cma_ena0 = '1') THEN
                i_mul24_conv_generic_ma3_cma_a0(0) <= RESIZE(UNSIGNED(i_mul24_conv_generic_bs7_b),14);
                i_mul24_conv_generic_ma3_cma_a0(1) <= RESIZE(UNSIGNED(i_mul24_conv_generic_bs2_merged_bit_select_c),14);
                i_mul24_conv_generic_ma3_cma_c0(0) <= RESIZE(SIGNED(i_mul24_conv_generic_bjB9_q),19);
                i_mul24_conv_generic_ma3_cma_c0(1) <= RESIZE(SIGNED(i_mul24_conv_generic_bjA5_q),19);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_generic_ma3_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_generic_ma3_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_generic_ma3_cma_ena1 = '1') THEN
                i_mul24_conv_generic_ma3_cma_s(0) <= i_mul24_conv_generic_ma3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_generic_ma3_cma_delay : dspba_delay
    GENERIC MAP ( width => 34, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul24_conv_generic_ma3_cma_s(0)(33 downto 0)), xout => i_mul24_conv_generic_ma3_cma_qq, clk => clock, aclr => resetn );
    i_mul24_conv_generic_ma3_cma_q <= STD_LOGIC_VECTOR(i_mul24_conv_generic_ma3_cma_qq(33 downto 0));

    -- redist0_i_mul24_conv_generic_ma3_cma_q_1(DELAY,82)
    redist0_i_mul24_conv_generic_ma3_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 34, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_conv_generic_ma3_cma_q, xout => redist0_i_mul24_conv_generic_ma3_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_generic_align_14(BITSHIFT,73)@4
    i_mul24_conv_generic_align_14_qint <= redist0_i_mul24_conv_generic_ma3_cma_q_1_q & "000000000000000000";
    i_mul24_conv_generic_align_14_q <= i_mul24_conv_generic_align_14_qint(51 downto 0);

    -- i_mul24_conv_generic_bs11(BITSELECT,70)@1
    i_mul24_conv_generic_bs11_b <= i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out(31 downto 18);

    -- i_mul24_conv_generic_im10_cma(CHAINMULTADD,79)@1 + 2
    i_mul24_conv_generic_im10_cma_reset <= not (resetn);
    i_mul24_conv_generic_im10_cma_ena0 <= '1';
    i_mul24_conv_generic_im10_cma_ena1 <= i_mul24_conv_generic_im10_cma_ena0;
    i_mul24_conv_generic_im10_cma_p(0) <= i_mul24_conv_generic_im10_cma_a0(0) * i_mul24_conv_generic_im10_cma_c0(0);
    i_mul24_conv_generic_im10_cma_u(0) <= RESIZE(i_mul24_conv_generic_im10_cma_p(0),28);
    i_mul24_conv_generic_im10_cma_w(0) <= i_mul24_conv_generic_im10_cma_u(0);
    i_mul24_conv_generic_im10_cma_x(0) <= i_mul24_conv_generic_im10_cma_w(0);
    i_mul24_conv_generic_im10_cma_y(0) <= i_mul24_conv_generic_im10_cma_x(0);
    i_mul24_conv_generic_im10_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_generic_im10_cma_a0 <= (others => (others => '0'));
            i_mul24_conv_generic_im10_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_generic_im10_cma_ena0 = '1') THEN
                i_mul24_conv_generic_im10_cma_a0(0) <= RESIZE(UNSIGNED(i_mul24_conv_generic_bs11_b),14);
                i_mul24_conv_generic_im10_cma_c0(0) <= RESIZE(UNSIGNED(i_mul24_conv_generic_bs2_merged_bit_select_c),14);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_generic_im10_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_generic_im10_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_generic_im10_cma_ena1 = '1') THEN
                i_mul24_conv_generic_im10_cma_s(0) <= i_mul24_conv_generic_im10_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_generic_im10_cma_delay : dspba_delay
    GENERIC MAP ( width => 28, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul24_conv_generic_im10_cma_s(0)(27 downto 0)), xout => i_mul24_conv_generic_im10_cma_qq, clk => clock, aclr => resetn );
    i_mul24_conv_generic_im10_cma_q <= STD_LOGIC_VECTOR(i_mul24_conv_generic_im10_cma_qq(27 downto 0));

    -- redist1_i_mul24_conv_generic_im10_cma_q_1(DELAY,83)
    redist1_i_mul24_conv_generic_im10_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 28, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_conv_generic_im10_cma_q, xout => redist1_i_mul24_conv_generic_im10_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_generic_bs1(BITSELECT,60)@1
    i_mul24_conv_generic_bs1_in <= i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out(17 downto 0);
    i_mul24_conv_generic_bs1_b <= i_mul24_conv_generic_bs1_in(17 downto 0);

    -- i_mul24_conv_generic_im0_cma(CHAINMULTADD,78)@1 + 2
    i_mul24_conv_generic_im0_cma_reset <= not (resetn);
    i_mul24_conv_generic_im0_cma_ena0 <= '1';
    i_mul24_conv_generic_im0_cma_ena1 <= i_mul24_conv_generic_im0_cma_ena0;
    i_mul24_conv_generic_im0_cma_p(0) <= i_mul24_conv_generic_im0_cma_a0(0) * i_mul24_conv_generic_im0_cma_c0(0);
    i_mul24_conv_generic_im0_cma_u(0) <= RESIZE(i_mul24_conv_generic_im0_cma_p(0),36);
    i_mul24_conv_generic_im0_cma_w(0) <= i_mul24_conv_generic_im0_cma_u(0);
    i_mul24_conv_generic_im0_cma_x(0) <= i_mul24_conv_generic_im0_cma_w(0);
    i_mul24_conv_generic_im0_cma_y(0) <= i_mul24_conv_generic_im0_cma_x(0);
    i_mul24_conv_generic_im0_cma_chainmultadd_input: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_generic_im0_cma_a0 <= (others => (others => '0'));
            i_mul24_conv_generic_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_generic_im0_cma_ena0 = '1') THEN
                i_mul24_conv_generic_im0_cma_a0(0) <= RESIZE(UNSIGNED(i_mul24_conv_generic_bs1_b),18);
                i_mul24_conv_generic_im0_cma_c0(0) <= RESIZE(UNSIGNED(i_mul24_conv_generic_bs2_merged_bit_select_b),18);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_generic_im0_cma_chainmultadd_output: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_mul24_conv_generic_im0_cma_s <= (others => (others => '0'));
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (i_mul24_conv_generic_im0_cma_ena1 = '1') THEN
                i_mul24_conv_generic_im0_cma_s(0) <= i_mul24_conv_generic_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    i_mul24_conv_generic_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 36, depth => 0, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => STD_LOGIC_VECTOR(i_mul24_conv_generic_im0_cma_s(0)(35 downto 0)), xout => i_mul24_conv_generic_im0_cma_qq, clk => clock, aclr => resetn );
    i_mul24_conv_generic_im0_cma_q <= STD_LOGIC_VECTOR(i_mul24_conv_generic_im0_cma_qq(35 downto 0));

    -- redist2_i_mul24_conv_generic_im0_cma_q_1(DELAY,84)
    redist2_i_mul24_conv_generic_im0_cma_q_1 : dspba_delay
    GENERIC MAP ( width => 36, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_mul24_conv_generic_im0_cma_q, xout => redist2_i_mul24_conv_generic_im0_cma_q_1_q, clk => clock, aclr => resetn );

    -- i_mul24_conv_generic_join_13(BITJOIN,72)@4
    i_mul24_conv_generic_join_13_q <= redist1_i_mul24_conv_generic_im10_cma_q_1_q & redist2_i_mul24_conv_generic_im0_cma_q_1_q;

    -- i_mul24_conv_generic_result_add_0_0(ADD,75)@4
    i_mul24_conv_generic_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR("000" & i_mul24_conv_generic_join_13_q));
    i_mul24_conv_generic_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((66 downto 52 => i_mul24_conv_generic_align_14_q(51)) & i_mul24_conv_generic_align_14_q));
    i_mul24_conv_generic_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(i_mul24_conv_generic_result_add_0_0_a) + SIGNED(i_mul24_conv_generic_result_add_0_0_b));
    i_mul24_conv_generic_result_add_0_0_q <= i_mul24_conv_generic_result_add_0_0_o(65 downto 0);

    -- bgTrunc_i_mul24_conv_generic_rnd_sel(BITSELECT,58)@4
    bgTrunc_i_mul24_conv_generic_rnd_sel_in <= i_mul24_conv_generic_result_add_0_0_q(63 downto 0);
    bgTrunc_i_mul24_conv_generic_rnd_sel_b <= bgTrunc_i_mul24_conv_generic_rnd_sel_in(63 downto 0);

    -- bgTrunc_i_mul24_conv_generic_sel_x(BITSELECT,5)@4
    bgTrunc_i_mul24_conv_generic_sel_x_b <= bgTrunc_i_mul24_conv_generic_rnd_sel_b(31 downto 0);

    -- redist9_bgTrunc_i_mul24_conv_generic_sel_x_b_1(DELAY,91)
    redist9_bgTrunc_i_mul24_conv_generic_sel_x_b_1 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => bgTrunc_i_mul24_conv_generic_sel_x_b, xout => redist9_bgTrunc_i_mul24_conv_generic_sel_x_b_1_q, clk => clock, aclr => resetn );

    -- i_add25_conv_generic(ADD,37)@5
    i_add25_conv_generic_a <= STD_LOGIC_VECTOR("0" & redist9_bgTrunc_i_mul24_conv_generic_sel_x_b_1_q);
    i_add25_conv_generic_b <= STD_LOGIC_VECTOR("0" & i_syncbuf_w_off_sync_buffer_conv_generic_out_buffer_out);
    i_add25_conv_generic_o <= STD_LOGIC_VECTOR(UNSIGNED(i_add25_conv_generic_a) + UNSIGNED(i_add25_conv_generic_b));
    i_add25_conv_generic_q <= i_add25_conv_generic_o(32 downto 0);

    -- bgTrunc_i_add25_conv_generic_sel_x(BITSELECT,2)@5
    bgTrunc_i_add25_conv_generic_sel_x_b <= i_add25_conv_generic_q(31 downto 0);

    -- i_ffwd_dst_cmp2731_not190_conv_generic(BLACKBOX,41)@5
    thei_ffwd_dst_cmp2731_not190_conv_generic : i_ffwd_dst_cmp2731_not190_conv_generic256
    PORT MAP (
        in_intel_reserved_ffwd_17_0 => in_intel_reserved_ffwd_17_0,
        in_stall_in => GND_q,
        in_valid_in => redist8_sync_in_aunroll_x_in_i_valid_4_q,
        out_dest_data_out_17_0 => i_ffwd_dst_cmp2731_not190_conv_generic_out_dest_data_out_17_0,
        clock => clock,
        resetn => resetn
    );

    -- i_syncbuf_tile_channels_sync_buffer129_conv_generic(BLACKBOX,47)@0
    -- in in_i_dependence@4
    -- in in_valid_in@4
    -- out out_buffer_out@4
    -- out out_valid_out@4
    thei_syncbuf_tile_channels_sync_buffer129_conv_generic : i_syncbuf_tile_channels_sync_buffer129_conv_generic251
    PORT MAP (
        in_buffer_in => in_tile_channels,
        in_i_dependence => GND_q,
        in_stall_in => GND_q,
        in_valid_in => redist7_sync_in_aunroll_x_in_i_valid_3_q,
        out_buffer_out => i_syncbuf_tile_channels_sync_buffer129_conv_generic_out_buffer_out,
        clock => clock,
        resetn => resetn
    );

    -- redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3(DELAY,87)
    redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3 : dspba_delay
    GENERIC MAP ( width => 32, depth => 2, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out, xout => redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_q, clk => clock, aclr => resetn );

    -- redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg(DELAY,92)
    redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_q, xout => redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg_q, clk => clock, aclr => resetn );

    -- i_cmp22_not_conv_generic(COMPARE,39)@4 + 1
    i_cmp22_not_conv_generic_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg_q(31)) & redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg_q));
    i_cmp22_not_conv_generic_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((33 downto 32 => i_syncbuf_tile_channels_sync_buffer129_conv_generic_out_buffer_out(31)) & i_syncbuf_tile_channels_sync_buffer129_conv_generic_out_buffer_out));
    i_cmp22_not_conv_generic_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            i_cmp22_not_conv_generic_o <= (others => '0');
        ELSIF (clock'EVENT AND clock = '1') THEN
            i_cmp22_not_conv_generic_o <= STD_LOGIC_VECTOR(SIGNED(i_cmp22_not_conv_generic_a) - SIGNED(i_cmp22_not_conv_generic_b));
        END IF;
    END PROCESS;
    i_cmp22_not_conv_generic_n(0) <= not (i_cmp22_not_conv_generic_o(33));

    -- i_brmerge_conv_generic(LOGICAL,38)@5
    i_brmerge_conv_generic_q <= i_cmp22_not_conv_generic_n or i_ffwd_dst_cmp2731_not190_conv_generic_out_dest_data_out_17_0;

    -- redist6_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_4(DELAY,88)
    redist6_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_4 : dspba_delay
    GENERIC MAP ( width => 32, depth => 1, reset_kind => "ASYNC", reset_high => '0' )
    PORT MAP ( xin => redist5_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_3_outputreg_q, xout => redist6_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_4_q, clk => clock, aclr => resetn );

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- sync_out_aunroll_x(GPOUT,18)@5
    out_c0_exi5301_0 <= GND_q;
    out_c0_exi5301_1 <= redist6_i_acl_pop_i32_oc18_033_pop40_conv_generic_out_data_out_4_q;
    out_c0_exi5301_2 <= i_brmerge_conv_generic_q;
    out_c0_exi5301_3 <= bgTrunc_i_add25_conv_generic_sel_x_b;
    out_c0_exi5301_4 <= redist3_i_exitcond169_conv_generic_cmp_sign_q_4_q;
    out_c0_exi5301_5 <= redist4_i_notexit215_conv_generic_q_4_q;
    out_o_valid <= redist8_sync_in_aunroll_x_in_i_valid_4_q;

    -- i_acl_push_i1_notexitcond214_conv_generic(BLACKBOX,34)@1
    -- out out_feedback_out_6@20000000
    -- out out_feedback_valid_out_6@20000000
    thei_acl_push_i1_notexitcond214_conv_generic : i_acl_push_i1_notexitcond214_conv_generic267
    PORT MAP (
        in_data_in => i_notexit215_conv_generic_q,
        in_feedback_stall_in_6 => i_acl_pipeline_keep_going213_conv_generic_out_not_exitcond_stall_out,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_6 => i_acl_push_i1_notexitcond214_conv_generic_out_feedback_out_6,
        out_feedback_valid_out_6 => i_acl_push_i1_notexitcond214_conv_generic_out_feedback_valid_out_6,
        clock => clock,
        resetn => resetn
    );

    -- i_acl_pipeline_keep_going213_conv_generic(BLACKBOX,31)@1
    -- out out_exiting_stall_out@20000000
    -- out out_exiting_valid_out@20000000
    -- out out_initeration_stall_out@20000000
    -- out out_not_exitcond_stall_out@20000000
    -- out out_pipeline_valid_out@20000000
    thei_acl_pipeline_keep_going213_conv_generic : i_acl_pipeline_keep_going213_conv_generic249
    PORT MAP (
        in_data_in => VCC_q,
        in_initeration_in => GND_q,
        in_initeration_valid_in => GND_q,
        in_not_exitcond_in => i_acl_push_i1_notexitcond214_conv_generic_out_feedback_out_6,
        in_not_exitcond_valid_in => i_acl_push_i1_notexitcond214_conv_generic_out_feedback_valid_out_6,
        in_pipeline_stall_in => in_pipeline_stall_in,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_exiting_stall_out => i_acl_pipeline_keep_going213_conv_generic_out_exiting_stall_out,
        out_exiting_valid_out => i_acl_pipeline_keep_going213_conv_generic_out_exiting_valid_out,
        out_not_exitcond_stall_out => i_acl_pipeline_keep_going213_conv_generic_out_not_exitcond_stall_out,
        out_pipeline_valid_out => i_acl_pipeline_keep_going213_conv_generic_out_pipeline_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- ext_sig_sync_out(GPOUT,30)
    out_aclp_to_limiter_i_acl_pipeline_keep_going213_conv_generic_exiting_valid_out <= i_acl_pipeline_keep_going213_conv_generic_out_exiting_valid_out;
    out_aclp_to_limiter_i_acl_pipeline_keep_going213_conv_generic_exiting_stall_out <= i_acl_pipeline_keep_going213_conv_generic_out_exiting_stall_out;

    -- pipeline_valid_out_sync(GPOUT,52)
    out_pipeline_valid_out <= i_acl_pipeline_keep_going213_conv_generic_out_pipeline_valid_out;

END normal;
