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

-- VHDL created from mem_read_generic_function_cra_slave
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

entity mem_read_generic_function_cra_slave is
    port (
        acl_counter_full : in std_logic_vector(0 downto 0);  -- ufix1
        acl_counter_size : in std_logic_vector(31 downto 0);  -- ufix32
        avs_cra_address : in std_logic_vector(4 downto 0);  -- ufix5
        avs_cra_byteenable : in std_logic_vector(7 downto 0);  -- ufix8
        avs_cra_enable : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_read : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_write : in std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_writedata : in std_logic_vector(63 downto 0);  -- ufix64
        finish : in std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : in std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        acl_counter_reset : out std_logic_vector(0 downto 0);  -- ufix1
        avs_cra_readdata : out std_logic_vector(63 downto 0);  -- ufix64
        avs_cra_readdatavalid : out std_logic_vector(0 downto 0);  -- ufix1
        cra_irq : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_arguments : out std_logic_vector(287 downto 0);  -- ufix288
        start : out std_logic_vector(0 downto 0);  -- ufix1
        status : out std_logic_vector(31 downto 0);  -- ufix32
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_function_cra_slave;

architecture normal of mem_read_generic_function_cra_slave is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_const_0_x_q : STD_LOGIC_VECTOR (23 downto 0);
    signal dupName_0_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_mask1_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_0_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_mask1_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_4_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_4_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_5_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_5_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_6_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_6_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_7_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_7_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_8_NO_NAME_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_address_ref_x_q : STD_LOGIC_VECTOR (4 downto 0);
    signal dupName_8_can_write_x_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_8_mask0_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_8_new_data_x_q : STD_LOGIC_VECTOR (31 downto 0);
    signal NO_NAME_q : STD_LOGIC_VECTOR (0 downto 0);
    signal address_ref_q : STD_LOGIC_VECTOR (4 downto 0);
    signal arg_bit_join_q : STD_LOGIC_VECTOR (63 downto 0);
    signal arguments_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_1_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_2_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_3_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_4_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_5_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_6_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_7_q : STD_LOGIC_VECTOR (31 downto 0);
    signal arguments_8_q : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_enable_bar_q : STD_LOGIC_VECTOR (63 downto 0);
    signal bit_enable_bottom_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_bottom_bar_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_top_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bit_enable_top_bar_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bus_high_b : STD_LOGIC_VECTOR (31 downto 0);
    signal bus_low_b : STD_LOGIC_VECTOR (31 downto 0);
    signal can_write_q : STD_LOGIC_VECTOR (0 downto 0);
    signal compute_finished_q : STD_LOGIC_VECTOR (0 downto 0);
    signal compute_running_q : STD_LOGIC_VECTOR (0 downto 0);
    signal compute_running_done_q : STD_LOGIC_VECTOR (0 downto 0);
    signal const_padding_q : STD_LOGIC_VECTOR (31 downto 0);
    signal cra_output_readdata_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal cra_output_readdatavalid_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal cra_stage1_data_reg_q : STD_LOGIC_VECTOR (63 downto 0);
    signal done_or_printf_irq_signal_q : STD_LOGIC_VECTOR (0 downto 0);
    signal extracted_b : STD_LOGIC_VECTOR (7 downto 0);
    signal extracted_high_b : STD_LOGIC_VECTOR (31 downto 0);
    signal finished_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal kernel_arg_bit_join_q : STD_LOGIC_VECTOR (287 downto 0);
    signal mask0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal mask_finished_when_not_running_q : STD_LOGIC_VECTOR (0 downto 0);
    signal new_data_q : STD_LOGIC_VECTOR (31 downto 0);
    signal next_start_reg_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal next_started_value_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_finished_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_start_q : STD_LOGIC_VECTOR (0 downto 0);
    signal not_started_q : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_bit_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_bit_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_counter_reset_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_counter_reset_mux_q : STD_LOGIC_VECTOR (0 downto 0);
    signal printf_reset_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal readdata_bus_out_q : STD_LOGIC_VECTOR (63 downto 0);
    signal readdata_upper_bits_mux_s : STD_LOGIC_VECTOR (0 downto 0);
    signal readdata_upper_bits_mux_q : STD_LOGIC_VECTOR (31 downto 0);
    signal readdata_valid_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal running_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_1_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_2_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_3_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_4_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_5_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_6_b : STD_LOGIC_VECTOR (0 downto 0);
    signal select_7_b : STD_LOGIC_VECTOR (0 downto 0);
    signal start_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal start_bit_b : STD_LOGIC_VECTOR (0 downto 0);
    signal start_bit_computation_q : STD_LOGIC_VECTOR (0 downto 0);
    signal start_is_or_going_high_q : STD_LOGIC_VECTOR (0 downto 0);
    signal started_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal status_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (31 downto 0);
    signal status_bit_2_b : STD_LOGIC_VECTOR (0 downto 0);
    signal status_from_cra_q : STD_LOGIC_VECTOR (31 downto 0);
    signal status_low_b : STD_LOGIC_VECTOR (15 downto 0);
    signal status_select_s : STD_LOGIC_VECTOR (0 downto 0);
    signal status_select_q : STD_LOGIC_VECTOR (31 downto 0);
    signal status_self_update_q : STD_LOGIC_VECTOR (31 downto 0);
    signal unchanged_status_data_b : STD_LOGIC_VECTOR (6 downto 0);
    signal version_number_q : STD_LOGIC_VECTOR (15 downto 0);
    signal will_be_started_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- version_number(CONSTANT,141)
    version_number_q <= "0000000000000011";

    -- bus_low(BITSELECT,66)
    bus_low_b <= avs_cra_writedata(31 downto 0);

    -- select_7(BITSELECT,126)
    select_7_b <= avs_cra_byteenable(7 downto 7);

    -- select_6(BITSELECT,125)
    select_6_b <= avs_cra_byteenable(6 downto 6);

    -- select_5(BITSELECT,124)
    select_5_b <= avs_cra_byteenable(5 downto 5);

    -- select_4(BITSELECT,123)
    select_4_b <= avs_cra_byteenable(4 downto 4);

    -- select_3(BITSELECT,122)
    select_3_b <= avs_cra_byteenable(3 downto 3);

    -- select_2(BITSELECT,121)
    select_2_b <= avs_cra_byteenable(2 downto 2);

    -- select_1(BITSELECT,120)
    select_1_b <= avs_cra_byteenable(1 downto 1);

    -- select_0(BITSELECT,119)
    select_0_b <= avs_cra_byteenable(0 downto 0);

    -- bit_enable(BITJOIN,59)
    bit_enable_q <= select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_7_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_6_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_5_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_4_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_3_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_2_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_1_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b & select_0_b;

    -- bit_enable_bottom(BITSELECT,61)
    bit_enable_bottom_b <= bit_enable_q(31 downto 0);

    -- dupName_0_mask1_x(LOGICAL,5)
    dupName_0_mask1_x_q <= bit_enable_bottom_b and bus_low_b;

    -- bit_enable_bar(LOGICAL,60)
    bit_enable_bar_q <= not (bit_enable_q);

    -- bit_enable_bottom_bar(BITSELECT,62)
    bit_enable_bottom_bar_b <= bit_enable_bar_q(31 downto 0);

    -- mask0(LOGICAL,95)
    mask0_q <= bit_enable_bottom_bar_b and status_NO_SHIFT_REG_q;

    -- new_data(LOGICAL,98)
    new_data_q <= mask0_q or dupName_0_mask1_x_q;

    -- status_low(BITSELECT,136)
    status_low_b <= new_data_q(15 downto 0);

    -- status_from_cra(BITJOIN,135)
    status_from_cra_q <= version_number_q & status_low_b;

    -- running_bit(BITSELECT,118)
    running_bit_b <= status_NO_SHIFT_REG_q(15 downto 15);

    -- not_finished(LOGICAL,101)
    not_finished_q <= not (finish);

    -- compute_running_done(LOGICAL,71)
    compute_running_done_q <= not_finished_q and running_bit_b;

    -- start_bit(BITSELECT,128)
    start_bit_b <= status_NO_SHIFT_REG_q(0 downto 0);

    -- compute_running(LOGICAL,70)
    compute_running_q <= start_bit_b or compute_running_done_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- unchanged_status_data(BITSELECT,140)
    unchanged_status_data_b <= status_NO_SHIFT_REG_q(11 downto 5);

    -- printf_counter_reset_mux(MUX,113)
    printf_counter_reset_mux_s <= printf_reset_bit_b;
    printf_counter_reset_mux_combproc: PROCESS (printf_counter_reset_mux_s, printf_reset_bit_b, GND_q)
    BEGIN
        CASE (printf_counter_reset_mux_s) IS
            WHEN "0" => printf_counter_reset_mux_q <= printf_reset_bit_b;
            WHEN "1" => printf_counter_reset_mux_q <= GND_q;
            WHEN OTHERS => printf_counter_reset_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- printf_bit(BITSELECT,111)
    printf_bit_b <= status_NO_SHIFT_REG_q(3 downto 3);

    -- printf_bit_mux(MUX,112)
    printf_bit_mux_s <= acl_counter_full;
    printf_bit_mux_combproc: PROCESS (printf_bit_mux_s, printf_bit_b, VCC_q)
    BEGIN
        CASE (printf_bit_mux_s) IS
            WHEN "0" => printf_bit_mux_q <= printf_bit_b;
            WHEN "1" => printf_bit_mux_q <= VCC_q;
            WHEN OTHERS => printf_bit_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- status_bit_2(BITSELECT,133)
    status_bit_2_b <= status_NO_SHIFT_REG_q(2 downto 2);

    -- finished_bit(BITSELECT,81)
    finished_bit_b <= status_NO_SHIFT_REG_q(1 downto 1);

    -- mask_finished_when_not_running(LOGICAL,97)
    mask_finished_when_not_running_q <= finish and running_bit_b;

    -- compute_finished(LOGICAL,69)
    compute_finished_q <= mask_finished_when_not_running_q or finished_bit_b;

    -- not_start(LOGICAL,102)
    not_start_q <= not (start_bit_b);

    -- start_bit_computation(LOGICAL,129)
    start_bit_computation_q <= not_start_q and start_bit_b;

    -- status_self_update(BITJOIN,139)
    status_self_update_q <= version_number_q & compute_running_q & GND_q & has_a_write_pending & has_a_lsu_active & unchanged_status_data_b & printf_counter_reset_mux_q & printf_bit_mux_q & status_bit_2_b & compute_finished_q & start_bit_computation_q;

    -- address_ref(CONSTANT,48)
    address_ref_q <= "00000";

    -- NO_NAME(LOGICAL,46)
    NO_NAME_q <= "1" WHEN avs_cra_address = address_ref_q ELSE "0";

    -- can_write(LOGICAL,67)
    can_write_q <= NO_NAME_q and avs_cra_write;

    -- status_select(MUX,138)
    status_select_s <= can_write_q;
    status_select_combproc: PROCESS (status_select_s, status_self_update_q, status_from_cra_q)
    BEGIN
        CASE (status_select_s) IS
            WHEN "0" => status_select_q <= status_self_update_q;
            WHEN "1" => status_select_q <= status_from_cra_q;
            WHEN OTHERS => status_select_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- status_NO_SHIFT_REG(REG,132)
    status_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            status_NO_SHIFT_REG_q <= "00000000000000110000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            status_NO_SHIFT_REG_q <= status_select_q;
        END IF;
    END PROCESS;

    -- printf_reset_bit(BITSELECT,114)
    printf_reset_bit_b <= status_NO_SHIFT_REG_q(4 downto 4);

    -- acl_counter_reset(GPOUT,104)
    acl_counter_reset <= printf_reset_bit_b;

    -- const_padding(CONSTANT,74)
    const_padding_q <= "00000000000000000000000000000000";

    -- readdata_upper_bits_mux(MUX,116)
    readdata_upper_bits_mux_s <= NO_NAME_q;
    readdata_upper_bits_mux_combproc: PROCESS (readdata_upper_bits_mux_s, const_padding_q, acl_counter_size)
    BEGIN
        CASE (readdata_upper_bits_mux_s) IS
            WHEN "0" => readdata_upper_bits_mux_q <= const_padding_q;
            WHEN "1" => readdata_upper_bits_mux_q <= acl_counter_size;
            WHEN OTHERS => readdata_upper_bits_mux_q <= (others => '0');
        END CASE;
    END PROCESS;

    -- readdata_bus_out(BITJOIN,115)
    readdata_bus_out_q <= readdata_upper_bits_mux_q & status_NO_SHIFT_REG_q;

    -- cra_stage1_data_reg(REG,77)
    cra_stage1_data_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cra_stage1_data_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            cra_stage1_data_reg_q <= readdata_bus_out_q;
        END IF;
    END PROCESS;

    -- cra_output_readdata_reg(REG,75)
    cra_output_readdata_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cra_output_readdata_reg_q <= "0000000000000000000000000000000000000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            cra_output_readdata_reg_q <= cra_stage1_data_reg_q;
        END IF;
    END PROCESS;

    -- avs_cra_readdata(GPOUT,105)
    avs_cra_readdata <= cra_output_readdata_reg_q;

    -- readdata_valid_reg(REG,117)
    readdata_valid_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            readdata_valid_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            readdata_valid_reg_q <= avs_cra_read;
        END IF;
    END PROCESS;

    -- cra_output_readdatavalid_reg(REG,76)
    cra_output_readdatavalid_reg_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            cra_output_readdatavalid_reg_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            cra_output_readdatavalid_reg_q <= readdata_valid_reg_q;
        END IF;
    END PROCESS;

    -- avs_cra_readdatavalid(GPOUT,106)
    avs_cra_readdatavalid <= cra_output_readdatavalid_reg_q;

    -- done_or_printf_irq_signal(LOGICAL,78)
    done_or_printf_irq_signal_q <= finished_bit_b or printf_bit_b;

    -- cra_irq(GPOUT,107)
    cra_irq <= done_or_printf_irq_signal_q;

    -- dupName_0_const_0_x(CONSTANT,2)
    dupName_0_const_0_x_q <= "000000000000000000000000";

    -- dupName_8_address_ref_x(CONSTANT,41)
    dupName_8_address_ref_x_q <= "10000";

    -- dupName_8_NO_NAME_x(LOGICAL,40)
    dupName_8_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_8_address_ref_x_q ELSE "0";

    -- dupName_8_can_write_x(LOGICAL,42)
    dupName_8_can_write_x_q <= dupName_8_NO_NAME_x_q and avs_cra_write;

    -- dupName_8_mask0_x(LOGICAL,43)
    dupName_8_mask0_x_q <= bit_enable_bottom_bar_b and arguments_8_q;

    -- dupName_8_new_data_x(LOGICAL,45)
    dupName_8_new_data_x_q <= dupName_8_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_8(REG,58)
    arguments_8_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_8_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_8_can_write_x_q = "1") THEN
                arguments_8_q <= dupName_8_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- extracted(BITSELECT,79)
    extracted_b <= arguments_8_q(7 downto 0);

    -- dupName_7_address_ref_x(CONSTANT,35)
    dupName_7_address_ref_x_q <= "01111";

    -- dupName_7_NO_NAME_x(LOGICAL,34)
    dupName_7_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_7_address_ref_x_q ELSE "0";

    -- dupName_7_can_write_x(LOGICAL,36)
    dupName_7_can_write_x_q <= dupName_7_NO_NAME_x_q and avs_cra_write;

    -- bus_high(BITSELECT,65)
    bus_high_b <= avs_cra_writedata(63 downto 32);

    -- bit_enable_top(BITSELECT,63)
    bit_enable_top_b <= bit_enable_q(63 downto 32);

    -- dupName_1_mask1_x(LOGICAL,8)
    dupName_1_mask1_x_q <= bit_enable_top_b and bus_high_b;

    -- bit_enable_top_bar(BITSELECT,64)
    bit_enable_top_bar_b <= bit_enable_bar_q(63 downto 32);

    -- dupName_7_mask0_x(LOGICAL,37)
    dupName_7_mask0_x_q <= bit_enable_top_bar_b and arguments_7_q;

    -- dupName_7_new_data_x(LOGICAL,39)
    dupName_7_new_data_x_q <= dupName_7_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_7(REG,57)
    arguments_7_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_7_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_7_can_write_x_q = "1") THEN
                arguments_7_q <= dupName_7_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_6_mask0_x(LOGICAL,31)
    dupName_6_mask0_x_q <= bit_enable_bottom_bar_b and arguments_6_q;

    -- dupName_6_new_data_x(LOGICAL,33)
    dupName_6_new_data_x_q <= dupName_6_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_6(REG,56)
    arguments_6_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_6_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_7_can_write_x_q = "1") THEN
                arguments_6_q <= dupName_6_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_6_address_ref_x(CONSTANT,29)
    dupName_6_address_ref_x_q <= "01110";

    -- dupName_6_NO_NAME_x(LOGICAL,28)
    dupName_6_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_6_address_ref_x_q ELSE "0";

    -- dupName_6_can_write_x(LOGICAL,30)
    dupName_6_can_write_x_q <= dupName_6_NO_NAME_x_q and avs_cra_write;

    -- dupName_5_mask0_x(LOGICAL,25)
    dupName_5_mask0_x_q <= bit_enable_top_bar_b and arguments_5_q;

    -- dupName_5_new_data_x(LOGICAL,27)
    dupName_5_new_data_x_q <= dupName_5_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_5(REG,55)
    arguments_5_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_5_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_6_can_write_x_q = "1") THEN
                arguments_5_q <= dupName_5_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_4_mask0_x(LOGICAL,19)
    dupName_4_mask0_x_q <= bit_enable_bottom_bar_b and arguments_4_q;

    -- dupName_4_new_data_x(LOGICAL,21)
    dupName_4_new_data_x_q <= dupName_4_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_4(REG,54)
    arguments_4_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_4_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_6_can_write_x_q = "1") THEN
                arguments_4_q <= dupName_4_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_5_address_ref_x(CONSTANT,23)
    dupName_5_address_ref_x_q <= "01101";

    -- dupName_5_NO_NAME_x(LOGICAL,22)
    dupName_5_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_5_address_ref_x_q ELSE "0";

    -- dupName_5_can_write_x(LOGICAL,24)
    dupName_5_can_write_x_q <= dupName_5_NO_NAME_x_q and avs_cra_write;

    -- dupName_3_mask0_x(LOGICAL,13)
    dupName_3_mask0_x_q <= bit_enable_top_bar_b and arguments_3_q;

    -- dupName_3_new_data_x(LOGICAL,15)
    dupName_3_new_data_x_q <= dupName_3_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_3(REG,53)
    arguments_3_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_3_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_5_can_write_x_q = "1") THEN
                arguments_3_q <= dupName_3_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_2_mask0_x(LOGICAL,10)
    dupName_2_mask0_x_q <= bit_enable_bottom_bar_b and arguments_2_q;

    -- dupName_2_new_data_x(LOGICAL,12)
    dupName_2_new_data_x_q <= dupName_2_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_2(REG,52)
    arguments_2_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_2_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_5_can_write_x_q = "1") THEN
                arguments_2_q <= dupName_2_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- dupName_4_address_ref_x(CONSTANT,17)
    dupName_4_address_ref_x_q <= "01100";

    -- dupName_4_NO_NAME_x(LOGICAL,16)
    dupName_4_NO_NAME_x_q <= "1" WHEN avs_cra_address = dupName_4_address_ref_x_q ELSE "0";

    -- dupName_4_can_write_x(LOGICAL,18)
    dupName_4_can_write_x_q <= dupName_4_NO_NAME_x_q and avs_cra_write;

    -- dupName_1_mask0_x(LOGICAL,7)
    dupName_1_mask0_x_q <= bit_enable_top_bar_b and arguments_1_q;

    -- dupName_1_new_data_x(LOGICAL,9)
    dupName_1_new_data_x_q <= dupName_1_mask0_x_q or dupName_1_mask1_x_q;

    -- arguments_1(REG,51)
    arguments_1_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_1_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_4_can_write_x_q = "1") THEN
                arguments_1_q <= dupName_1_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- extracted_high(BITSELECT,80)
    extracted_high_b <= arguments_1_q(31 downto 0);

    -- dupName_0_mask0_x(LOGICAL,4)
    dupName_0_mask0_x_q <= bit_enable_bottom_bar_b and arguments_0_q;

    -- dupName_0_new_data_x(LOGICAL,6)
    dupName_0_new_data_x_q <= dupName_0_mask0_x_q or dupName_0_mask1_x_q;

    -- arguments_0(REG,50)
    arguments_0_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            arguments_0_q <= "00000000000000000000000000000000";
        ELSIF (clock'EVENT AND clock = '1') THEN
            IF (dupName_4_can_write_x_q = "1") THEN
                arguments_0_q <= dupName_0_new_data_x_q;
            END IF;
        END IF;
    END PROCESS;

    -- arg_bit_join(BITJOIN,49)
    arg_bit_join_q <= extracted_high_b & arguments_0_q;

    -- kernel_arg_bit_join(BITJOIN,94)
    kernel_arg_bit_join_q <= dupName_0_const_0_x_q & extracted_b & arguments_7_q & arguments_6_q & arguments_5_q & arguments_4_q & arguments_3_q & arguments_2_q & arg_bit_join_q;

    -- kernel_arguments(GPOUT,108)
    kernel_arguments <= kernel_arg_bit_join_q;

    -- will_be_started(LOGICAL,142)
    will_be_started_q <= start_NO_SHIFT_REG_q or started_NO_SHIFT_REG_q;

    -- next_started_value(LOGICAL,100)
    next_started_value_q <= will_be_started_q and not_finished_q;

    -- started_NO_SHIFT_REG(REG,131)
    started_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            started_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            started_NO_SHIFT_REG_q <= next_started_value_q;
        END IF;
    END PROCESS;

    -- not_started(LOGICAL,103)
    not_started_q <= not (started_NO_SHIFT_REG_q);

    -- start_is_or_going_high(LOGICAL,130)
    start_is_or_going_high_q <= start_bit_b or start_NO_SHIFT_REG_q;

    -- next_start_reg_value(LOGICAL,99)
    next_start_reg_value_q <= start_is_or_going_high_q and not_started_q;

    -- start_NO_SHIFT_REG(REG,127)
    start_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            start_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            start_NO_SHIFT_REG_q <= next_start_reg_value_q;
        END IF;
    END PROCESS;

    -- start(GPOUT,109)
    start <= start_NO_SHIFT_REG_q;

    -- status(GPOUT,110)
    status <= status_NO_SHIFT_REG_q;

END normal;
