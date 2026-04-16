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

-- VHDL created from mem_write_generic_function_wrapper
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

entity mem_write_generic_function_wrapper is
    port (
        avm_unnamed_mem_write_generic17_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_mem_write_generic17_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_write_generic17_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_write_generic17_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iord_bl_ch_out_data : in std_logic_vector(7 downto 0);  -- ufix8
        avst_iord_bl_ch_out_valid : in std_logic_vector(0 downto 0);  -- ufix1
        clock2x : in std_logic_vector(0 downto 0);  -- ufix1
        kernel_arguments : in std_logic_vector(319 downto 0);  -- ufix320
        local_router_hang : in std_logic_vector(0 downto 0);  -- ufix1
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_write_generic17_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_mem_write_generic17_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_mem_write_generic17_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_mem_write_generic17_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_write_generic17_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_write_generic17_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_write_generic17_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avst_iord_bl_ch_out_ready : out std_logic_vector(0 downto 0);  -- ufix1
        clock2x_output : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_write_generic_function_wrapper;

architecture normal of mem_write_generic_function_wrapper is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    component acl_clock2x_holder is
        port (
            clock2x : in std_logic;
            myout : out std_logic;
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    component mem_write_generic_function is
        port (
            in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_mem_out : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_out_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_out_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_t_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_tile_channels : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifodata : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iord_bl_ch_out_i_fifovalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_write_generic17_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iord_bl_ch_out_o_fifoready : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_o_active_unnamed_mem_write_generic17 : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_write_generic17_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
            out_valid_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            clock : in std_logic;
            resetn : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal dupName_0_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_1_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_2_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_3_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_4_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_5_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_6_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal dupName_7_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (31 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x_bitsignaltemp : std_logic;
    signal acl_clock2x_dummy_consumer_myout : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_myout_bitsignaltemp : std_logic;
    signal arg_h_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_mem_out_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_out_c_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_out_offset_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_pad_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_stride_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_t_offset_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_tile_channels_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_w_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal const_32b_zero_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_write_generic_function_out_iord_bl_ch_out_o_fifoready : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_function_out_o_active_unnamed_mem_write_generic17 : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_write_generic_function_out_unnamed_mem_write_generic17_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal mem_write_generic_function_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_in_pulse_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_pulse_reg1_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_pulse_reg2_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- valid_pulse_reg2_NO_SHIFT_REG(REG,53)
    valid_pulse_reg2_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_pulse_reg2_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            valid_pulse_reg2_NO_SHIFT_REG_q <= valid_pulse_reg1_NO_SHIFT_REG_q;
        END IF;
    END PROCESS;

    -- valid_pulse_reg1_NO_SHIFT_REG(REG,52)
    valid_pulse_reg1_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_pulse_reg1_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            valid_pulse_reg1_NO_SHIFT_REG_q <= start;
        END IF;
    END PROCESS;

    -- valid_in_pulse(LOGICAL,51)
    valid_in_pulse_q <= valid_pulse_reg1_NO_SHIFT_REG_q and valid_pulse_reg2_NO_SHIFT_REG_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- arg_w_select(BITSELECT,19)
    arg_w_select_b <= kernel_arguments(127 downto 96);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,3)
    dupName_1_ip_dsdk_adapt_cast_x_b <= arg_w_select_b(31 downto 0);

    -- arg_tile_channels_select(BITSELECT,18)
    arg_tile_channels_select_b <= kernel_arguments(223 downto 192);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,6)
    dupName_4_ip_dsdk_adapt_cast_x_b <= arg_tile_channels_select_b(31 downto 0);

    -- arg_t_offset_select(BITSELECT,17)
    arg_t_offset_select_b <= kernel_arguments(255 downto 224);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,7)
    dupName_5_ip_dsdk_adapt_cast_x_b <= arg_t_offset_select_b(31 downto 0);

    -- arg_stride_select(BITSELECT,16)
    arg_stride_select_b <= kernel_arguments(287 downto 256);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,8)
    dupName_6_ip_dsdk_adapt_cast_x_b <= arg_stride_select_b(31 downto 0);

    -- arg_pad_select(BITSELECT,15)
    arg_pad_select_b <= kernel_arguments(319 downto 288);

    -- dupName_7_ip_dsdk_adapt_cast_x(BITSELECT,9)
    dupName_7_ip_dsdk_adapt_cast_x_b <= arg_pad_select_b(31 downto 0);

    -- arg_out_offset_select(BITSELECT,14)
    arg_out_offset_select_b <= kernel_arguments(95 downto 64);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,2)
    dupName_0_ip_dsdk_adapt_cast_x_b <= arg_out_offset_select_b(31 downto 0);

    -- arg_out_c_select(BITSELECT,13)
    arg_out_c_select_b <= kernel_arguments(191 downto 160);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,5)
    dupName_3_ip_dsdk_adapt_cast_x_b <= arg_out_c_select_b(31 downto 0);

    -- arg_mem_out_select(BITSELECT,12)
    arg_mem_out_select_b <= kernel_arguments(63 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,36)
    ip_dsdk_adapt_cast_b <= arg_mem_out_select_b(63 downto 0);

    -- arg_h_select(BITSELECT,11)
    arg_h_select_b <= kernel_arguments(159 downto 128);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,4)
    dupName_2_ip_dsdk_adapt_cast_x_b <= arg_h_select_b(31 downto 0);

    -- const_32b_zero_0(CONSTANT,21)
    const_32b_zero_0_q <= "00000000000000000000000000000000";

    -- mem_write_generic_function(BLACKBOX,37)
    themem_write_generic_function : mem_write_generic_function
    PORT MAP (
        in_arg_global_size_0 => const_32b_zero_0_q,
        in_arg_global_size_1 => const_32b_zero_0_q,
        in_arg_global_size_2 => const_32b_zero_0_q,
        in_arg_h => dupName_2_ip_dsdk_adapt_cast_x_b,
        in_arg_local_size_0 => const_32b_zero_0_q,
        in_arg_local_size_1 => const_32b_zero_0_q,
        in_arg_local_size_2 => const_32b_zero_0_q,
        in_arg_mem_out => ip_dsdk_adapt_cast_b,
        in_arg_out_c => dupName_3_ip_dsdk_adapt_cast_x_b,
        in_arg_out_offset => dupName_0_ip_dsdk_adapt_cast_x_b,
        in_arg_pad => dupName_7_ip_dsdk_adapt_cast_x_b,
        in_arg_stride => dupName_6_ip_dsdk_adapt_cast_x_b,
        in_arg_t_offset => dupName_5_ip_dsdk_adapt_cast_x_b,
        in_arg_tile_channels => dupName_4_ip_dsdk_adapt_cast_x_b,
        in_arg_w => dupName_1_ip_dsdk_adapt_cast_x_b,
        in_iord_bl_ch_out_i_fifodata => avst_iord_bl_ch_out_data,
        in_iord_bl_ch_out_i_fifovalid => avst_iord_bl_ch_out_valid,
        in_stall_in => GND_q,
        in_start => start,
        in_unnamed_mem_write_generic17_avm_readdata => avm_unnamed_mem_write_generic17_readdata,
        in_unnamed_mem_write_generic17_avm_readdatavalid => avm_unnamed_mem_write_generic17_readdatavalid,
        in_unnamed_mem_write_generic17_avm_waitrequest => avm_unnamed_mem_write_generic17_waitrequest,
        in_unnamed_mem_write_generic17_avm_writeack => avm_unnamed_mem_write_generic17_writeack,
        in_valid_in => valid_in_pulse_q,
        out_iord_bl_ch_out_o_fifoready => mem_write_generic_function_out_iord_bl_ch_out_o_fifoready,
        out_o_active_unnamed_mem_write_generic17 => mem_write_generic_function_out_o_active_unnamed_mem_write_generic17,
        out_unnamed_mem_write_generic17_avm_address => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_address,
        out_unnamed_mem_write_generic17_avm_burstcount => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_burstcount,
        out_unnamed_mem_write_generic17_avm_byteenable => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_byteenable,
        out_unnamed_mem_write_generic17_avm_enable => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_enable,
        out_unnamed_mem_write_generic17_avm_read => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_read,
        out_unnamed_mem_write_generic17_avm_write => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_write,
        out_unnamed_mem_write_generic17_avm_writedata => mem_write_generic_function_out_unnamed_mem_write_generic17_avm_writedata,
        out_valid_out => mem_write_generic_function_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- avm_unnamed_mem_write_generic17_address(GPOUT,38)
    avm_unnamed_mem_write_generic17_address <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_address;

    -- avm_unnamed_mem_write_generic17_burstcount(GPOUT,39)
    avm_unnamed_mem_write_generic17_burstcount <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_burstcount;

    -- avm_unnamed_mem_write_generic17_byteenable(GPOUT,40)
    avm_unnamed_mem_write_generic17_byteenable <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_byteenable;

    -- avm_unnamed_mem_write_generic17_enable(GPOUT,41)
    avm_unnamed_mem_write_generic17_enable <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_enable;

    -- avm_unnamed_mem_write_generic17_read(GPOUT,42)
    avm_unnamed_mem_write_generic17_read <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_read;

    -- avm_unnamed_mem_write_generic17_write(GPOUT,43)
    avm_unnamed_mem_write_generic17_write <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_write;

    -- avm_unnamed_mem_write_generic17_writedata(GPOUT,44)
    avm_unnamed_mem_write_generic17_writedata <= mem_write_generic_function_out_unnamed_mem_write_generic17_avm_writedata;

    -- avst_iord_bl_ch_out_ready(GPOUT,45)
    avst_iord_bl_ch_out_ready <= mem_write_generic_function_out_iord_bl_ch_out_o_fifoready;

    -- acl_clock2x_dummy_consumer(EXTIFACE,10)
    acl_clock2x_dummy_consumer_clock2x <= clock2x;
    acl_clock2x_dummy_consumer_clock2x_bitsignaltemp <= acl_clock2x_dummy_consumer_clock2x(0);
    acl_clock2x_dummy_consumer_myout(0) <= acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    theacl_clock2x_dummy_consumer : acl_clock2x_holder
    PORT MAP (
        clock2x => acl_clock2x_dummy_consumer_clock2x_bitsignaltemp,
        myout => acl_clock2x_dummy_consumer_myout_bitsignaltemp,
        clock => clock,
        resetn => resetn
    );

    -- clock2x_output(GPOUT,46)
    clock2x_output <= acl_clock2x_dummy_consumer_myout;

    -- has_a_lsu_active(GPOUT,47)
    has_a_lsu_active <= mem_write_generic_function_out_o_active_unnamed_mem_write_generic17;

    -- has_a_write_pending(GPOUT,48)
    has_a_write_pending <= mem_write_generic_function_out_o_active_unnamed_mem_write_generic17;

    -- kernel_valid_in(GPOUT,49)
    kernel_valid_in <= valid_in_pulse_q;

    -- kernel_valid_out(GPOUT,50)
    kernel_valid_out <= mem_write_generic_function_out_valid_out;

END normal;
