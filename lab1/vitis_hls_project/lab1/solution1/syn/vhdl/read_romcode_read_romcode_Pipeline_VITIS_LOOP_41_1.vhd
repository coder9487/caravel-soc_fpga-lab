-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_romcode_read_romcode_Pipeline_VITIS_LOOP_41_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_BUS0_AWVALID : OUT STD_LOGIC;
    m_axi_BUS0_AWREADY : IN STD_LOGIC;
    m_axi_BUS0_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_BUS0_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_BUS0_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_BUS0_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_BUS0_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_BUS0_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_BUS0_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_WVALID : OUT STD_LOGIC;
    m_axi_BUS0_WREADY : IN STD_LOGIC;
    m_axi_BUS0_WDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_BUS0_WSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_WLAST : OUT STD_LOGIC;
    m_axi_BUS0_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_ARVALID : OUT STD_LOGIC;
    m_axi_BUS0_ARREADY : IN STD_LOGIC;
    m_axi_BUS0_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_BUS0_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_BUS0_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_BUS0_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_BUS0_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_BUS0_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_BUS0_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_BUS0_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_RVALID : IN STD_LOGIC;
    m_axi_BUS0_RREADY : OUT STD_LOGIC;
    m_axi_BUS0_RDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    m_axi_BUS0_RLAST : IN STD_LOGIC;
    m_axi_BUS0_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_RFIFONUM : IN STD_LOGIC_VECTOR (10 downto 0);
    m_axi_BUS0_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_BUS0_BVALID : IN STD_LOGIC;
    m_axi_BUS0_BREADY : OUT STD_LOGIC;
    m_axi_BUS0_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_BUS0_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_BUS0_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln41 : IN STD_LOGIC_VECTOR (61 downto 0);
    internal_bram_Addr_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    internal_bram_EN_A : OUT STD_LOGIC;
    internal_bram_WEN_A : OUT STD_LOGIC_VECTOR (3 downto 0);
    internal_bram_Din_A : OUT STD_LOGIC_VECTOR (31 downto 0);
    internal_bram_Dout_A : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of read_romcode_read_romcode_Pipeline_VITIS_LOOP_41_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln41_reg_136 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln41_fu_92_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal BUS0_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_2_reg_131 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_2_reg_131_pp0_iter1_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal BUS0_addr_read_reg_140 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal zext_ln41_fu_115_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_52 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln41_fu_98_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_2 : STD_LOGIC_VECTOR (10 downto 0);
    signal internal_bram_Addr_A_orig : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component read_romcode_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component read_romcode_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln41_fu_92_p2 = ap_const_lv1_0))) then 
                    i_fu_52 <= add_ln41_fu_98_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_52 <= ap_const_lv11_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln41_reg_136 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                BUS0_addr_read_reg_140 <= m_axi_BUS0_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                i_2_reg_131 <= ap_sig_allocacmp_i_2;
                i_2_reg_131_pp0_iter1_reg <= i_2_reg_131;
                icmp_ln41_reg_136 <= icmp_ln41_fu_92_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    BUS0_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_BUS0_RVALID, icmp_ln41_reg_136, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln41_reg_136 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            BUS0_blk_n_R <= m_axi_BUS0_RVALID;
        else 
            BUS0_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    add_ln41_fu_98_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_2) + unsigned(ap_const_lv11_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_BUS0_RVALID, icmp_ln41_reg_136)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln41_reg_136 = ap_const_lv1_0) and (m_axi_BUS0_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, m_axi_BUS0_RVALID, icmp_ln41_reg_136)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln41_reg_136 = ap_const_lv1_0) and (m_axi_BUS0_RVALID = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_BUS0_RVALID, icmp_ln41_reg_136)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((icmp_ln41_reg_136 = ap_const_lv1_0) and (m_axi_BUS0_RVALID = ap_const_logic_0));
    end process;

        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln41_fu_92_p2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln41_fu_92_p2 = ap_const_lv1_1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln41_reg_136, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln41_reg_136 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, i_fu_52, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_i_2 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_i_2 <= i_fu_52;
        end if; 
    end process;

    icmp_ln41_fu_92_p2 <= "1" when (ap_sig_allocacmp_i_2 = ap_const_lv11_400) else "0";
    internal_bram_Addr_A <= std_logic_vector(shift_left(unsigned(internal_bram_Addr_A_orig),to_integer(unsigned('0' & ap_const_lv32_2(31-1 downto 0)))));
    internal_bram_Addr_A_orig <= zext_ln41_fu_115_p1(32 - 1 downto 0);
    internal_bram_Din_A <= BUS0_addr_read_reg_140;

    internal_bram_EN_A_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            internal_bram_EN_A <= ap_const_logic_1;
        else 
            internal_bram_EN_A <= ap_const_logic_0;
        end if; 
    end process;


    internal_bram_WEN_A_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            internal_bram_WEN_A <= ap_const_lv4_F;
        else 
            internal_bram_WEN_A <= ap_const_lv4_0;
        end if; 
    end process;

    m_axi_BUS0_ARADDR <= ap_const_lv64_0;
    m_axi_BUS0_ARBURST <= ap_const_lv2_0;
    m_axi_BUS0_ARCACHE <= ap_const_lv4_0;
    m_axi_BUS0_ARID <= ap_const_lv1_0;
    m_axi_BUS0_ARLEN <= ap_const_lv32_0;
    m_axi_BUS0_ARLOCK <= ap_const_lv2_0;
    m_axi_BUS0_ARPROT <= ap_const_lv3_0;
    m_axi_BUS0_ARQOS <= ap_const_lv4_0;
    m_axi_BUS0_ARREGION <= ap_const_lv4_0;
    m_axi_BUS0_ARSIZE <= ap_const_lv3_0;
    m_axi_BUS0_ARUSER <= ap_const_lv1_0;
    m_axi_BUS0_ARVALID <= ap_const_logic_0;
    m_axi_BUS0_AWADDR <= ap_const_lv64_0;
    m_axi_BUS0_AWBURST <= ap_const_lv2_0;
    m_axi_BUS0_AWCACHE <= ap_const_lv4_0;
    m_axi_BUS0_AWID <= ap_const_lv1_0;
    m_axi_BUS0_AWLEN <= ap_const_lv32_0;
    m_axi_BUS0_AWLOCK <= ap_const_lv2_0;
    m_axi_BUS0_AWPROT <= ap_const_lv3_0;
    m_axi_BUS0_AWQOS <= ap_const_lv4_0;
    m_axi_BUS0_AWREGION <= ap_const_lv4_0;
    m_axi_BUS0_AWSIZE <= ap_const_lv3_0;
    m_axi_BUS0_AWUSER <= ap_const_lv1_0;
    m_axi_BUS0_AWVALID <= ap_const_logic_0;
    m_axi_BUS0_BREADY <= ap_const_logic_0;

    m_axi_BUS0_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln41_reg_136, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln41_reg_136 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_BUS0_RREADY <= ap_const_logic_1;
        else 
            m_axi_BUS0_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_BUS0_WDATA <= ap_const_lv32_0;
    m_axi_BUS0_WID <= ap_const_lv1_0;
    m_axi_BUS0_WLAST <= ap_const_logic_0;
    m_axi_BUS0_WSTRB <= ap_const_lv4_0;
    m_axi_BUS0_WUSER <= ap_const_lv1_0;
    m_axi_BUS0_WVALID <= ap_const_logic_0;
    zext_ln41_fu_115_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_2_reg_131_pp0_iter1_reg),64));
end behav;
