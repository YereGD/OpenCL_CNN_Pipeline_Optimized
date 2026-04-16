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

-- VHDL created from mem_read_generic_function_wrapper
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

entity mem_read_generic_function_wrapper is
    port (
        avm_unnamed_mem_read_generic11_readdata : in std_logic_vector(255 downto 0);  -- ufix256
        avm_unnamed_mem_read_generic11_readdatavalid : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_read_generic11_waitrequest : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_read_generic11_writeack : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_ch_in_almostfull : in std_logic_vector(0 downto 0);  -- ufix1
        avst_iowr_bl_ch_in_ready : in std_logic_vector(0 downto 0);  -- ufix1
        clock2x : in std_logic_vector(0 downto 0);  -- ufix1
        kernel_arguments : in std_logic_vector(287 downto 0);  -- ufix288
        local_router_hang : in std_logic_vector(0 downto 0);  -- ufix1
        stall_in : in std_logic_vector(0 downto 0);  -- ufix1
        start : in std_logic_vector(0 downto 0);  -- ufix1
        valid_in : in std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_read_generic11_address : out std_logic_vector(29 downto 0);  -- ufix30
        avm_unnamed_mem_read_generic11_burstcount : out std_logic_vector(4 downto 0);  -- ufix5
        avm_unnamed_mem_read_generic11_byteenable : out std_logic_vector(31 downto 0);  -- ufix32
        avm_unnamed_mem_read_generic11_enable : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_read_generic11_read : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_read_generic11_write : out std_logic_vector(0 downto 0);  -- ufix1
        avm_unnamed_mem_read_generic11_writedata : out std_logic_vector(255 downto 0);  -- ufix256
        avst_iowr_bl_ch_in_data : out std_logic_vector(7 downto 0);  -- ufix8
        avst_iowr_bl_ch_in_valid : out std_logic_vector(0 downto 0);  -- ufix1
        clock2x_output : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_lsu_active : out std_logic_vector(0 downto 0);  -- ufix1
        has_a_write_pending : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_in : out std_logic_vector(0 downto 0);  -- ufix1
        kernel_valid_out : out std_logic_vector(0 downto 0);  -- ufix1
        clock : in std_logic;
        resetn : in std_logic
    );
end mem_read_generic_function_wrapper;

architecture normal of mem_read_generic_function_wrapper is

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


    component mem_read_generic_function is
        port (
            in_arg_global_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_global_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_h : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_in_c : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_in_offset : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_0 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_1 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_local_size_2 : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_mem_in : in std_logic_vector(63 downto 0);  -- Fixed Point
            in_arg_pad : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_stride : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_w : in std_logic_vector(31 downto 0);  -- Fixed Point
            in_arg_x_zero : in std_logic_vector(7 downto 0);  -- Fixed Point
            in_iowr_bl_ch_in_i_fifoready : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_stall_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_start : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdata : in std_logic_vector(255 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_readdatavalid : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_waitrequest : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_unnamed_mem_read_generic11_avm_writeack : in std_logic_vector(0 downto 0);  -- Fixed Point
            in_valid_in : in std_logic_vector(0 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifodata : out std_logic_vector(7 downto 0);  -- Fixed Point
            out_iowr_bl_ch_in_o_fifovalid : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_stall_out : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_address : out std_logic_vector(29 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_burstcount : out std_logic_vector(4 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_byteenable : out std_logic_vector(31 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_enable : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_read : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_write : out std_logic_vector(0 downto 0);  -- Fixed Point
            out_unnamed_mem_read_generic11_avm_writedata : out std_logic_vector(255 downto 0);  -- Fixed Point
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
    signal dupName_6_ip_dsdk_adapt_cast_x_b : STD_LOGIC_VECTOR (7 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_clock2x_bitsignaltemp : std_logic;
    signal acl_clock2x_dummy_consumer_myout : STD_LOGIC_VECTOR (0 downto 0);
    signal acl_clock2x_dummy_consumer_myout_bitsignaltemp : std_logic;
    signal arg_h_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_in_c_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_in_offset_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_mem_in_select_b : STD_LOGIC_VECTOR (63 downto 0);
    signal arg_pad_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_stride_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_w_select_b : STD_LOGIC_VECTOR (31 downto 0);
    signal arg_x_zero_select_b : STD_LOGIC_VECTOR (7 downto 0);
    signal const_32b_zero_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal ip_dsdk_adapt_cast_b : STD_LOGIC_VECTOR (63 downto 0);
    signal mem_read_generic_function_out_iowr_bl_ch_in_o_fifodata : STD_LOGIC_VECTOR (7 downto 0);
    signal mem_read_generic_function_out_iowr_bl_ch_in_o_fifovalid : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_address : STD_LOGIC_VECTOR (29 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_burstcount : STD_LOGIC_VECTOR (4 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_byteenable : STD_LOGIC_VECTOR (31 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_enable : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_read : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_write : STD_LOGIC_VECTOR (0 downto 0);
    signal mem_read_generic_function_out_unnamed_mem_read_generic11_avm_writedata : STD_LOGIC_VECTOR (255 downto 0);
    signal mem_read_generic_function_out_valid_out : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_in_pulse_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_pulse_reg1_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);
    signal valid_pulse_reg2_NO_SHIFT_REG_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- valid_pulse_reg2_NO_SHIFT_REG(REG,52)
    valid_pulse_reg2_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_pulse_reg2_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            valid_pulse_reg2_NO_SHIFT_REG_q <= valid_pulse_reg1_NO_SHIFT_REG_q;
        END IF;
    END PROCESS;

    -- valid_pulse_reg1_NO_SHIFT_REG(REG,51)
    valid_pulse_reg1_NO_SHIFT_REG_clkproc: PROCESS (clock, resetn)
    BEGIN
        IF (resetn = '0') THEN
            valid_pulse_reg1_NO_SHIFT_REG_q <= "0";
        ELSIF (clock'EVENT AND clock = '1') THEN
            valid_pulse_reg1_NO_SHIFT_REG_q <= start;
        END IF;
    END PROCESS;

    -- valid_in_pulse(LOGICAL,50)
    valid_in_pulse_q <= valid_pulse_reg1_NO_SHIFT_REG_q and valid_pulse_reg2_NO_SHIFT_REG_q;

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- arg_x_zero_select(BITSELECT,17)
    arg_x_zero_select_b <= kernel_arguments(263 downto 256);

    -- dupName_6_ip_dsdk_adapt_cast_x(BITSELECT,8)
    dupName_6_ip_dsdk_adapt_cast_x_b <= arg_x_zero_select_b(7 downto 0);

    -- arg_w_select(BITSELECT,16)
    arg_w_select_b <= kernel_arguments(127 downto 96);

    -- dupName_1_ip_dsdk_adapt_cast_x(BITSELECT,3)
    dupName_1_ip_dsdk_adapt_cast_x_b <= arg_w_select_b(31 downto 0);

    -- arg_stride_select(BITSELECT,15)
    arg_stride_select_b <= kernel_arguments(223 downto 192);

    -- dupName_4_ip_dsdk_adapt_cast_x(BITSELECT,6)
    dupName_4_ip_dsdk_adapt_cast_x_b <= arg_stride_select_b(31 downto 0);

    -- arg_pad_select(BITSELECT,14)
    arg_pad_select_b <= kernel_arguments(255 downto 224);

    -- dupName_5_ip_dsdk_adapt_cast_x(BITSELECT,7)
    dupName_5_ip_dsdk_adapt_cast_x_b <= arg_pad_select_b(31 downto 0);

    -- arg_mem_in_select(BITSELECT,13)
    arg_mem_in_select_b <= kernel_arguments(63 downto 0);

    -- ip_dsdk_adapt_cast(BITSELECT,34)
    ip_dsdk_adapt_cast_b <= arg_mem_in_select_b(63 downto 0);

    -- arg_in_offset_select(BITSELECT,12)
    arg_in_offset_select_b <= kernel_arguments(95 downto 64);

    -- dupName_0_ip_dsdk_adapt_cast_x(BITSELECT,2)
    dupName_0_ip_dsdk_adapt_cast_x_b <= arg_in_offset_select_b(31 downto 0);

    -- arg_in_c_select(BITSELECT,11)
    arg_in_c_select_b <= kernel_arguments(191 downto 160);

    -- dupName_3_ip_dsdk_adapt_cast_x(BITSELECT,5)
    dupName_3_ip_dsdk_adapt_cast_x_b <= arg_in_c_select_b(31 downto 0);

    -- arg_h_select(BITSELECT,10)
    arg_h_select_b <= kernel_arguments(159 downto 128);

    -- dupName_2_ip_dsdk_adapt_cast_x(BITSELECT,4)
    dupName_2_ip_dsdk_adapt_cast_x_b <= arg_h_select_b(31 downto 0);

    -- const_32b_zero_0(CONSTANT,19)
    const_32b_zero_0_q <= "00000000000000000000000000000000";

    -- mem_read_generic_function(BLACKBOX,35)
    themem_read_generic_function : mem_read_generic_function
    PORT MAP (
        in_arg_global_size_0 => const_32b_zero_0_q,
        in_arg_global_size_1 => const_32b_zero_0_q,
        in_arg_global_size_2 => const_32b_zero_0_q,
        in_arg_h => dupName_2_ip_dsdk_adapt_cast_x_b,
        in_arg_in_c => dupName_3_ip_dsdk_adapt_cast_x_b,
        in_arg_in_offset => dupName_0_ip_dsdk_adapt_cast_x_b,
        in_arg_local_size_0 => const_32b_zero_0_q,
        in_arg_local_size_1 => const_32b_zero_0_q,
        in_arg_local_size_2 => const_32b_zero_0_q,
        in_arg_mem_in => ip_dsdk_adapt_cast_b,
        in_arg_pad => dupName_5_ip_dsdk_adapt_cast_x_b,
        in_arg_stride => dupName_4_ip_dsdk_adapt_cast_x_b,
        in_arg_w => dupName_1_ip_dsdk_adapt_cast_x_b,
        in_arg_x_zero => dupName_6_ip_dsdk_adapt_cast_x_b,
        in_iowr_bl_ch_in_i_fifoready => avst_iowr_bl_ch_in_ready,
        in_stall_in => GND_q,
        in_start => start,
        in_unnamed_mem_read_generic11_avm_readdata => avm_unnamed_mem_read_generic11_readdata,
        in_unnamed_mem_read_generic11_avm_readdatavalid => avm_unnamed_mem_read_generic11_readdatavalid,
        in_unnamed_mem_read_generic11_avm_waitrequest => avm_unnamed_mem_read_generic11_waitrequest,
        in_unnamed_mem_read_generic11_avm_writeack => avm_unnamed_mem_read_generic11_writeack,
        in_valid_in => valid_in_pulse_q,
        out_iowr_bl_ch_in_o_fifodata => mem_read_generic_function_out_iowr_bl_ch_in_o_fifodata,
        out_iowr_bl_ch_in_o_fifovalid => mem_read_generic_function_out_iowr_bl_ch_in_o_fifovalid,
        out_unnamed_mem_read_generic11_avm_address => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_address,
        out_unnamed_mem_read_generic11_avm_burstcount => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_burstcount,
        out_unnamed_mem_read_generic11_avm_byteenable => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_byteenable,
        out_unnamed_mem_read_generic11_avm_enable => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_enable,
        out_unnamed_mem_read_generic11_avm_read => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_read,
        out_unnamed_mem_read_generic11_avm_write => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_write,
        out_unnamed_mem_read_generic11_avm_writedata => mem_read_generic_function_out_unnamed_mem_read_generic11_avm_writedata,
        out_valid_out => mem_read_generic_function_out_valid_out,
        clock => clock,
        resetn => resetn
    );

    -- avm_unnamed_mem_read_generic11_address(GPOUT,36)
    avm_unnamed_mem_read_generic11_address <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_address;

    -- avm_unnamed_mem_read_generic11_burstcount(GPOUT,37)
    avm_unnamed_mem_read_generic11_burstcount <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_burstcount;

    -- avm_unnamed_mem_read_generic11_byteenable(GPOUT,38)
    avm_unnamed_mem_read_generic11_byteenable <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_byteenable;

    -- avm_unnamed_mem_read_generic11_enable(GPOUT,39)
    avm_unnamed_mem_read_generic11_enable <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_enable;

    -- avm_unnamed_mem_read_generic11_read(GPOUT,40)
    avm_unnamed_mem_read_generic11_read <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_read;

    -- avm_unnamed_mem_read_generic11_write(GPOUT,41)
    avm_unnamed_mem_read_generic11_write <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_write;

    -- avm_unnamed_mem_read_generic11_writedata(GPOUT,42)
    avm_unnamed_mem_read_generic11_writedata <= mem_read_generic_function_out_unnamed_mem_read_generic11_avm_writedata;

    -- avst_iowr_bl_ch_in_data(GPOUT,43)
    avst_iowr_bl_ch_in_data <= mem_read_generic_function_out_iowr_bl_ch_in_o_fifodata;

    -- avst_iowr_bl_ch_in_valid(GPOUT,44)
    avst_iowr_bl_ch_in_valid <= mem_read_generic_function_out_iowr_bl_ch_in_o_fifovalid;

    -- acl_clock2x_dummy_consumer(EXTIFACE,9)
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

    -- clock2x_output(GPOUT,45)
    clock2x_output <= acl_clock2x_dummy_consumer_myout;

    -- has_a_lsu_active(GPOUT,46)
    has_a_lsu_active <= GND_q;

    -- has_a_write_pending(GPOUT,47)
    has_a_write_pending <= GND_q;

    -- kernel_valid_in(GPOUT,48)
    kernel_valid_in <= valid_in_pulse_q;

    -- kernel_valid_out(GPOUT,49)
    kernel_valid_out <= mem_read_generic_function_out_valid_out;

END normal;
