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

-- VHDL created from mem_read_generic_B5_merge
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

entity mem_read_generic_B5_merge is
    port (
        in_acl_77_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_acl_77_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked76_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked76_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_mul3475_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_mul3475_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_or_cond73_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_or_cond73_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_phi_decision46_xor_RM79_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_phi_decision46_xor_RM79_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_sub2466_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2466_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2770_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_sub2770_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp278_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_tmp278_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_unnamed_mem_read_generic10_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_unnamed_mem_read_generic10_1 : in std_logic_vector(0 downto 0);  -- ufix1
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
        out_acl_77 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked76 : out std_logic_vector(0 downto 0);  -- ufix1
        out_mul3475 : out std_logic_vector(31 downto 0);  -- ufix32
        out_or_cond73 : out std_logic_vector(0 downto 0);  -- ufix1
        out_phi_decision46_xor_RM79 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_sub2466 : out std_logic_vector(31 downto 0);  -- ufix32
        out_sub2770 : out std_logic_vector(31 downto 0);  -- ufix32
        out_tmp278 : out std_logic_vector(31 downto 0);  -- ufix32
        out_unnamed_mem_read_generic10 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic6 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic7 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic8 : out std_logic_vector(0 downto 0);  -- ufix1
        out_unnamed_mem_read_generic9 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_B5_merge;

architecture normal of mem_read_generic_B5_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_77_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_77_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked76_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked76_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal mul3475_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal mul3475_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal or_cond73_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond73_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal phi_decision46_xor_RM79_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal phi_decision46_xor_RM79_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2466_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2466_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal sub2770_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal sub2770_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp278_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp278_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal unnamed_mem_read_generic10_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic10_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic6_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic6_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic7_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic7_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic8_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic8_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic9_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal unnamed_mem_read_generic9_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- acl_77_mux(MUX,2)
    acl_77_mux_s <= in_valid_in_0;
    acl_77_mux_combproc: PROCESS (acl_77_mux_s, in_acl_77_1, in_acl_77_0)
    BEGIN
        CASE (acl_77_mux_s) IS
            WHEN "0" => acl_77_mux_q <= in_acl_77_1;
            WHEN "1" => acl_77_mux_q <= in_acl_77_0;
            WHEN OTHERS => acl_77_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_acl_77(GPOUT,35)
    out_acl_77 <= acl_77_mux_q;

    -- forked76_mux(MUX,3)
    forked76_mux_s <= in_valid_in_0;
    forked76_mux_combproc: PROCESS (forked76_mux_s, in_forked76_1, in_forked76_0)
    BEGIN
        CASE (forked76_mux_s) IS
            WHEN "0" => forked76_mux_q <= in_forked76_1;
            WHEN "1" => forked76_mux_q <= in_forked76_0;
            WHEN OTHERS => forked76_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked76(GPOUT,36)
    out_forked76 <= forked76_mux_q;

    -- mul3475_mux(MUX,33)
    mul3475_mux_s <= in_valid_in_0;
    mul3475_mux_combproc: PROCESS (mul3475_mux_s, in_mul3475_1, in_mul3475_0)
    BEGIN
        CASE (mul3475_mux_s) IS
            WHEN "0" => mul3475_mux_q <= in_mul3475_1;
            WHEN "1" => mul3475_mux_q <= in_mul3475_0;
            WHEN OTHERS => mul3475_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_mul3475(GPOUT,37)
    out_mul3475 <= mul3475_mux_q;

    -- or_cond73_mux(MUX,34)
    or_cond73_mux_s <= in_valid_in_0;
    or_cond73_mux_combproc: PROCESS (or_cond73_mux_s, in_or_cond73_1, in_or_cond73_0)
    BEGIN
        CASE (or_cond73_mux_s) IS
            WHEN "0" => or_cond73_mux_q <= in_or_cond73_1;
            WHEN "1" => or_cond73_mux_q <= in_or_cond73_0;
            WHEN OTHERS => or_cond73_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_or_cond73(GPOUT,38)
    out_or_cond73 <= or_cond73_mux_q;

    -- phi_decision46_xor_RM79_mux(MUX,51)
    phi_decision46_xor_RM79_mux_s <= in_valid_in_0;
    phi_decision46_xor_RM79_mux_combproc: PROCESS (phi_decision46_xor_RM79_mux_s, in_phi_decision46_xor_RM79_1, in_phi_decision46_xor_RM79_0)
    BEGIN
        CASE (phi_decision46_xor_RM79_mux_s) IS
            WHEN "0" => phi_decision46_xor_RM79_mux_q <= in_phi_decision46_xor_RM79_1;
            WHEN "1" => phi_decision46_xor_RM79_mux_q <= in_phi_decision46_xor_RM79_0;
            WHEN OTHERS => phi_decision46_xor_RM79_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_phi_decision46_xor_RM79(GPOUT,39)
    out_phi_decision46_xor_RM79 <= phi_decision46_xor_RM79_mux_q;

    -- valid_or(LOGICAL,62)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,52)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,40)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,53)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,41)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- sub2466_mux(MUX,54)
    sub2466_mux_s <= in_valid_in_0;
    sub2466_mux_combproc: PROCESS (sub2466_mux_s, in_sub2466_1, in_sub2466_0)
    BEGIN
        CASE (sub2466_mux_s) IS
            WHEN "0" => sub2466_mux_q <= in_sub2466_1;
            WHEN "1" => sub2466_mux_q <= in_sub2466_0;
            WHEN OTHERS => sub2466_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sub2466(GPOUT,42)
    out_sub2466 <= sub2466_mux_q;

    -- sub2770_mux(MUX,55)
    sub2770_mux_s <= in_valid_in_0;
    sub2770_mux_combproc: PROCESS (sub2770_mux_s, in_sub2770_1, in_sub2770_0)
    BEGIN
        CASE (sub2770_mux_s) IS
            WHEN "0" => sub2770_mux_q <= in_sub2770_1;
            WHEN "1" => sub2770_mux_q <= in_sub2770_0;
            WHEN OTHERS => sub2770_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_sub2770(GPOUT,43)
    out_sub2770 <= sub2770_mux_q;

    -- tmp278_mux(MUX,56)
    tmp278_mux_s <= in_valid_in_0;
    tmp278_mux_combproc: PROCESS (tmp278_mux_s, in_tmp278_1, in_tmp278_0)
    BEGIN
        CASE (tmp278_mux_s) IS
            WHEN "0" => tmp278_mux_q <= in_tmp278_1;
            WHEN "1" => tmp278_mux_q <= in_tmp278_0;
            WHEN OTHERS => tmp278_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_tmp278(GPOUT,44)
    out_tmp278 <= tmp278_mux_q;

    -- unnamed_mem_read_generic10_mux(MUX,57)
    unnamed_mem_read_generic10_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic10_mux_combproc: PROCESS (unnamed_mem_read_generic10_mux_s, in_unnamed_mem_read_generic10_1, in_unnamed_mem_read_generic10_0)
    BEGIN
        CASE (unnamed_mem_read_generic10_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic10_mux_q <= in_unnamed_mem_read_generic10_1;
            WHEN "1" => unnamed_mem_read_generic10_mux_q <= in_unnamed_mem_read_generic10_0;
            WHEN OTHERS => unnamed_mem_read_generic10_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic10(GPOUT,45)
    out_unnamed_mem_read_generic10 <= unnamed_mem_read_generic10_mux_q;

    -- unnamed_mem_read_generic6_mux(MUX,58)
    unnamed_mem_read_generic6_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic6_mux_combproc: PROCESS (unnamed_mem_read_generic6_mux_s, in_unnamed_mem_read_generic6_1, in_unnamed_mem_read_generic6_0)
    BEGIN
        CASE (unnamed_mem_read_generic6_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic6_mux_q <= in_unnamed_mem_read_generic6_1;
            WHEN "1" => unnamed_mem_read_generic6_mux_q <= in_unnamed_mem_read_generic6_0;
            WHEN OTHERS => unnamed_mem_read_generic6_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic6(GPOUT,46)
    out_unnamed_mem_read_generic6 <= unnamed_mem_read_generic6_mux_q;

    -- unnamed_mem_read_generic7_mux(MUX,59)
    unnamed_mem_read_generic7_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic7_mux_combproc: PROCESS (unnamed_mem_read_generic7_mux_s, in_unnamed_mem_read_generic7_1, in_unnamed_mem_read_generic7_0)
    BEGIN
        CASE (unnamed_mem_read_generic7_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic7_mux_q <= in_unnamed_mem_read_generic7_1;
            WHEN "1" => unnamed_mem_read_generic7_mux_q <= in_unnamed_mem_read_generic7_0;
            WHEN OTHERS => unnamed_mem_read_generic7_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic7(GPOUT,47)
    out_unnamed_mem_read_generic7 <= unnamed_mem_read_generic7_mux_q;

    -- unnamed_mem_read_generic8_mux(MUX,60)
    unnamed_mem_read_generic8_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic8_mux_combproc: PROCESS (unnamed_mem_read_generic8_mux_s, in_unnamed_mem_read_generic8_1, in_unnamed_mem_read_generic8_0)
    BEGIN
        CASE (unnamed_mem_read_generic8_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic8_mux_q <= in_unnamed_mem_read_generic8_1;
            WHEN "1" => unnamed_mem_read_generic8_mux_q <= in_unnamed_mem_read_generic8_0;
            WHEN OTHERS => unnamed_mem_read_generic8_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic8(GPOUT,48)
    out_unnamed_mem_read_generic8 <= unnamed_mem_read_generic8_mux_q;

    -- unnamed_mem_read_generic9_mux(MUX,61)
    unnamed_mem_read_generic9_mux_s <= in_valid_in_0;
    unnamed_mem_read_generic9_mux_combproc: PROCESS (unnamed_mem_read_generic9_mux_s, in_unnamed_mem_read_generic9_1, in_unnamed_mem_read_generic9_0)
    BEGIN
        CASE (unnamed_mem_read_generic9_mux_s) IS
            WHEN "0" => unnamed_mem_read_generic9_mux_q <= in_unnamed_mem_read_generic9_1;
            WHEN "1" => unnamed_mem_read_generic9_mux_q <= in_unnamed_mem_read_generic9_0;
            WHEN OTHERS => unnamed_mem_read_generic9_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_unnamed_mem_read_generic9(GPOUT,49)
    out_unnamed_mem_read_generic9 <= unnamed_mem_read_generic9_mux_q;

    -- out_valid_out(GPOUT,50)
    out_valid_out <= valid_or_q;

END normal;
