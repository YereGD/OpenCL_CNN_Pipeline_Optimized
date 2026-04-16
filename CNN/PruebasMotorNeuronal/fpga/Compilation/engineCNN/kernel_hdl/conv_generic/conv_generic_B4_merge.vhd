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

-- VHDL created from conv_generic_B4_merge
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

entity conv_generic_B4_merge is
    port (
        in_add25273_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_add25273_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_brmerge272_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_brmerge272_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_exitcond169274_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_exitcond169274_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_forked_1 : in std_logic_vector(0 downto 0);  -- ufix1
        in_oc18_033_pop40271_0 : in std_logic_vector(31 downto 0);  -- ufix32
        in_oc18_033_pop40271_1 : in std_logic_vector(31 downto 0);  -- ufix32
        in_stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_0 : in std_logic_vector(0 downto 0);  -- ufix1
        in_valid_in_1 : in std_logic_vector(0 downto 0);  -- ufix1
        out_add25273 : out std_logic_vector(31 downto 0);  -- ufix32
        out_brmerge272 : out std_logic_vector(0 downto 0);  -- ufix1
        out_exitcond169274 : out std_logic_vector(0 downto 0);  -- ufix1
        out_forked : out std_logic_vector(0 downto 0);  -- ufix1
        out_oc18_033_pop40271 : out std_logic_vector(31 downto 0);  -- ufix32
        out_stall_out_0 : out std_logic_vector(0 downto 0);  -- ufix1
        out_stall_out_1 : out std_logic_vector(0 downto 0);  -- ufix1
        out_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end conv_generic_B4_merge;

architecture normal of conv_generic_B4_merge is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal add25273_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal add25273_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal brmerge272_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge272_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond169274_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond169274_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal forked_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal forked_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal oc18_033_pop40271_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal oc18_033_pop40271_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal stall_out_q : STD_LOGIC_VECTOR (0 downto 0);
    signal stall_out_1_specific_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_or_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- add25273_mux(MUX,2)
    add25273_mux_s <= in_valid_in_0;
    add25273_mux_combproc: PROCESS (add25273_mux_s, in_add25273_1, in_add25273_0)
    BEGIN
        CASE (add25273_mux_s) IS
            WHEN "0" => add25273_mux_q <= in_add25273_1;
            WHEN "1" => add25273_mux_q <= in_add25273_0;
            WHEN OTHERS => add25273_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_add25273(GPOUT,20)
    out_add25273 <= add25273_mux_q;

    -- brmerge272_mux(MUX,3)
    brmerge272_mux_s <= in_valid_in_0;
    brmerge272_mux_combproc: PROCESS (brmerge272_mux_s, in_brmerge272_1, in_brmerge272_0)
    BEGIN
        CASE (brmerge272_mux_s) IS
            WHEN "0" => brmerge272_mux_q <= in_brmerge272_1;
            WHEN "1" => brmerge272_mux_q <= in_brmerge272_0;
            WHEN OTHERS => brmerge272_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_brmerge272(GPOUT,21)
    out_brmerge272 <= brmerge272_mux_q;

    -- exitcond169274_mux(MUX,4)
    exitcond169274_mux_s <= in_valid_in_0;
    exitcond169274_mux_combproc: PROCESS (exitcond169274_mux_s, in_exitcond169274_1, in_exitcond169274_0)
    BEGIN
        CASE (exitcond169274_mux_s) IS
            WHEN "0" => exitcond169274_mux_q <= in_exitcond169274_1;
            WHEN "1" => exitcond169274_mux_q <= in_exitcond169274_0;
            WHEN OTHERS => exitcond169274_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_exitcond169274(GPOUT,22)
    out_exitcond169274 <= exitcond169274_mux_q;

    -- forked_mux(MUX,5)
    forked_mux_s <= in_valid_in_0;
    forked_mux_combproc: PROCESS (forked_mux_s, in_forked_1, in_forked_0)
    BEGIN
        CASE (forked_mux_s) IS
            WHEN "0" => forked_mux_q <= in_forked_1;
            WHEN "1" => forked_mux_q <= in_forked_0;
            WHEN OTHERS => forked_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_forked(GPOUT,23)
    out_forked <= forked_mux_q;

    -- oc18_033_pop40271_mux(MUX,19)
    oc18_033_pop40271_mux_s <= in_valid_in_0;
    oc18_033_pop40271_mux_combproc: PROCESS (oc18_033_pop40271_mux_s, in_oc18_033_pop40271_1, in_oc18_033_pop40271_0)
    BEGIN
        CASE (oc18_033_pop40271_mux_s) IS
            WHEN "0" => oc18_033_pop40271_mux_q <= in_oc18_033_pop40271_1;
            WHEN "1" => oc18_033_pop40271_mux_q <= in_oc18_033_pop40271_0;
            WHEN OTHERS => oc18_033_pop40271_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- out_oc18_033_pop40271(GPOUT,24)
    out_oc18_033_pop40271 <= oc18_033_pop40271_mux_q;

    -- valid_or(LOGICAL,30)
    valid_or_q <= in_valid_in_0 or in_valid_in_1;

    -- stall_out(LOGICAL,28)
    stall_out_q <= valid_or_q and in_stall_in;

    -- out_stall_out_0(GPOUT,25)
    out_stall_out_0 <= stall_out_q;

    -- stall_out_1_specific(LOGICAL,29)
    stall_out_1_specific_q <= in_valid_in_0 or stall_out_q;

    -- out_stall_out_1(GPOUT,26)
    out_stall_out_1 <= stall_out_1_specific_q;

    -- out_valid_out(GPOUT,27)
    out_valid_out <= valid_or_q;

END normal;
