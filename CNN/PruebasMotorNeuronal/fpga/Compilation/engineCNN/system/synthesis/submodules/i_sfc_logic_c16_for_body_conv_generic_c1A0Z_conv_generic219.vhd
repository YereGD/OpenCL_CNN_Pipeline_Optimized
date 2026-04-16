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

-- VHDL created from i_sfc_logic_c16_for_body_conv_generic_c16_enter_conv_generic219
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

entity i_sfc_logic_c16_for_body_conv_generic_c16_enter_conv_generic219 is
    port (
        in_c16_eni5_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c16_eni5_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c16_eni5_2 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c16_eni5_3 : in std_logic_vector(31 downto 0);  -- ufix32
        in_c16_eni5_4 : in std_logic_vector(0 downto 0);  -- ufix1
        in_c16_eni5_5 : in std_logic_vector(0 downto 0);  -- ufix1
        in_i_valid : in std_logic_vector(0 downto 0);  -- ufix1
        out_intel_reserved_ffwd_11_0 : out std_logic_vector(31 downto 0);  -- ufix32
        out_o_valid : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_conv_generic32_0 : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end i_sfc_logic_c16_for_body_conv_generic_c16_enter_conv_generic219;

architecture normal of i_sfc_logic_c16_for_body_conv_generic_c16_enter_conv_generic219 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component i_acl_pop_i32_pop31_conv_generic221 is
        port (
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_dir : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_feedback_in_31 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_valid_in_31 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_predicate : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_stall_out_31 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_acl_push_i32_push31_conv_generic223 is
        port (
            in_c16_ene4 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_data_in : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_feedback_stall_in_31 : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_data_out : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_out_31 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_feedback_valid_out_31 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component i_ffwd_src_unnamed_conv_generic31_conv_generic225 is
        port (
            in_enable_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_src_data_in_11_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_intel_reserved_ffwd_11_0 : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal c_i32_undef_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_286_conv_generic_s : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_286_conv_generic_q : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_pop31_conv_generic_out_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_pop_i32_pop31_conv_generic_out_feedback_stall_out_31 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_acl_push_i32_push31_conv_generic_out_feedback_out_31 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_acl_push_i32_push31_conv_generic_out_feedback_valid_out_31 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_ffwd_src_unnamed_conv_generic31_conv_generic_out_intel_reserved_ffwd_11_0 : STD_LOGIC_VECTOR (31 downto 0);

begin


    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- i_acl_push_i32_push31_conv_generic(BLACKBOX,10)@125
    -- out out_feedback_out_31@20000000
    -- out out_feedback_valid_out_31@20000000
    thei_acl_push_i32_push31_conv_generic : i_acl_push_i32_push31_conv_generic223
    PORT MAP (
        in_c16_ene4 => in_c16_eni5_4,
        in_data_in => i_acl_286_conv_generic_q,
        in_feedback_stall_in_31 => i_acl_pop_i32_pop31_conv_generic_out_feedback_stall_out_31,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_feedback_out_31 => i_acl_push_i32_push31_conv_generic_out_feedback_out_31,
        out_feedback_valid_out_31 => i_acl_push_i32_push31_conv_generic_out_feedback_valid_out_31,
        clock => clock,
        resetn => resetn
    );

    -- c_i32_undef(CONSTANT,7)
    c_i32_undef_q <= "00000000000000000000000000000000";

    -- i_acl_pop_i32_pop31_conv_generic(BLACKBOX,9)@125
    -- out out_feedback_stall_out_31@20000000
    thei_acl_pop_i32_pop31_conv_generic : i_acl_pop_i32_pop31_conv_generic221
    PORT MAP (
        in_data_in => c_i32_undef_q,
        in_dir => in_c16_eni5_1,
        in_feedback_in_31 => i_acl_push_i32_push31_conv_generic_out_feedback_out_31,
        in_feedback_valid_in_31 => i_acl_push_i32_push31_conv_generic_out_feedback_valid_out_31,
        in_predicate => GND_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_data_out => i_acl_pop_i32_pop31_conv_generic_out_data_out,
        out_feedback_stall_out_31 => i_acl_pop_i32_pop31_conv_generic_out_feedback_stall_out_31,
        clock => clock,
        resetn => resetn
    );

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- i_acl_286_conv_generic(MUX,8)@125
    i_acl_286_conv_generic_s <= in_c16_eni5_2;
    i_acl_286_conv_generic_combproc: PROCESS (i_acl_286_conv_generic_s, i_acl_pop_i32_pop31_conv_generic_out_data_out, in_c16_eni5_3)
    BEGIN
        CASE (i_acl_286_conv_generic_s) IS
            WHEN "0" => i_acl_286_conv_generic_q <= i_acl_pop_i32_pop31_conv_generic_out_data_out;
            WHEN "1" => i_acl_286_conv_generic_q <= in_c16_eni5_3;
            WHEN OTHERS => i_acl_286_conv_generic_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- i_ffwd_src_unnamed_conv_generic31_conv_generic(BLACKBOX,11)@125
    -- out out_intel_reserved_ffwd_11_0@20000000
    thei_ffwd_src_unnamed_conv_generic31_conv_generic : i_ffwd_src_unnamed_conv_generic31_conv_generic225
    PORT MAP (
        in_enable_in => in_c16_eni5_5,
        in_src_data_in_11_0 => i_acl_286_conv_generic_q,
        in_stall_in => GND_q,
        in_valid_in => in_i_valid,
        out_intel_reserved_ffwd_11_0 => i_ffwd_src_unnamed_conv_generic31_conv_generic_out_intel_reserved_ffwd_11_0,
        clock => clock,
        resetn => resetn
    );

    -- sync_out_aunroll_x(GPOUT,5)@125
    out_intel_reserved_ffwd_11_0 <= i_ffwd_src_unnamed_conv_generic31_conv_generic_out_intel_reserved_ffwd_11_0;
    out_o_valid <= in_i_valid;
    out_unnamed_conv_generic32_0 <= GND_q;

END normal;
